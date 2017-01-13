% Request input for data
A = csvread(input('What is the file path for the coefficients: \n'));
b = csvread(input('What is the file path for the constants: \n'));

[m,n] = size(A);

% square matrix
if m == n
    out = BRmethod(A,b);
    A\b;
% overdetermined matrix
elseif m > n
    C = A'*A;
    d = A'*b;
    out = BRmethod(C,d);
    C\d;
end

csvwrite(input('Where would you like your output? \n'),out);
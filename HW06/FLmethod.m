function [ X ] = FLmethod(A)
% BRmethod    Solves for the best approximations of a solution to A, b by
%             iterating over continually smaller errors in the values of xi
%             up through a convergence criterion
%
% Synopsis:   [X] = FLmethod(A)
%
% Input:      A = n x n matrix of coefficients for simultaneous linear 
%             algebraic equations
%
% Output:     X = approximations of x vector variable solutions

% setup variables
[~,n] = size(A);
I = eye(n);
P = cell(1,n);
P{1} = A;
p = cell(1,n);
p{1} = trace(P{1});

for ii=2:n
    P{ii} = A*(P{ii-1} - p{ii-1}*I);
    p{ii} = (1/ii)*trace(P{ii});
end

syms lambda 
charpoly = ((-1)^n)*(lambda^n - p{1}*lambda^(n-1) - p{2}*lambda^(n-2) - p{3}*lambda - p{4}) == 0;
solve(charpoly,lambda)

end
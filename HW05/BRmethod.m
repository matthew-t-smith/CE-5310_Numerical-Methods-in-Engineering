function [ S ] = BRmethod(A, b)
% BRmethod    Solves for the best approximations of a solution to A, b by
%             iterating over continually smaller errors in the values of xi
%             up through a convergence criterion
%
% Synopsis:   [X] = BRmethod(A,x,b)
%
% Input:      A = n x n matrix of coefficients for simultaneous linear 
%             algebraic equations
%             b = n x 1 vector of constants
%
% Output:     S = approximations of x vector variable solutions

% setup of variables
[~, n] = size(A);
W = 0.1:0.1:1.9;
I = [];
x = zeros(1,50);
xk = zeros(1,50);
S = [];
syms jj

% loop through different w's to optimize solution for least iterations
for w = 0.1:0.1:1.9
    % iterate until convergence criteria is met or 50 iterations are performed
    for iter = 1:50
        for ii = 1:n
            xk(ii) = x(ii) + ((w/A(ii,ii))*(b(ii) - (symsum(A(ii,jj)*xk(jj),jj,1,ii-1)) - (symsum(A(ii,jj)*x(jj),jj,ii,n))));
        end
        % check convergence criteria
        if norm(xk - x) <= 10^-6
            S = [S; xk];
            I = [I iter];
            x = xk;
            xk(1) = 0;
            continue;
        end
    end
    
% find solution with minimum number of iterations and return as best solution
[~, J] = min(I(:));
S = S(J);

end
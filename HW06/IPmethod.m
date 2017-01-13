clfunction [ R ] = IPmethod(B)
% BRmethod    Solves for the best approximations of a solution to A, b by
%             iterating over continually smaller errors in the values of xi
%             up through a convergence criterion
%
% Synopsis:   [Y] = IPmethod(B)
%
% Input:      B = n x n matrix of coefficients for simultaneous linear 
%             algebraic equations
%
% Output:     Y = approximations of x vector variable solutions

[~,n] = size(B);
C = inv(B);
% eigen = zeros(1,n)
% for mm = 1:n
%     EIGEN = 1/eigen(mm);
% end

X = cell(1,10);
X{1} = [1 -0.5 0.5 -0.25].';

for ii = 2:10
    X{ii} = [C*cell2mat(X(ii-1))];
end
S = X;
Y = cell(1:10);
for ii = 2:10
    for jj = 1:4
        Y{ii} = [X{ii}(jj)/X{ii-1}(jj)];
    end
end

% C = B^-1;
% [~,n] = size(C);
% 
% X = cell(10,1);
% X{1} = [1 -0.5 0.5 -0.25].';
% lambda = cell(1,10);
% 
% for ii = 2:10
%     X{ii} = C*X{ii-1};
%     lambda{ii-1} = [X{ii,1}/X{ii-1,1} X{ii,2}/X{ii-1,2} X{ii,3}/X{ii-1,3} X{ii,4}/X{ii-1,4}];
%     if lambda{ii-1,2} - lambda{ii-1,1} < 0.0001 && lambda{ii-1,3} - lambda{ii-1,2} < 0.0001 && lambda{ii-1,4} - lambda{ii-1,3} < 0.0001
%         break;
%     end
%         
% end

end
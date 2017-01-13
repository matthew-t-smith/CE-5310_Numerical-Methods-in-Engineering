% Problem 7.6
T = [2:0.05:2.5; 7.3891 7.7679 8.1662 8.5849 9.0250 9.4877 9.9742 10.486 11.023 11.588 12.182]; % given table
X = T(1,:);
Y = T(2,:);
T1 = zeros(1,10); % first derivative
T2 = zeros(1,9); % second derivative

% using forward-difference approximation for f'(x)
for ii = 1:10
    T1(ii) = (Y(ii+1) - Y(ii))/(X(ii+1) - X(ii));
end

% using forward-difference approximation for f''(x)
for jj = 1:9
    T2(jj) = (T1(jj+1) - T1(jj))/(X(jj+1) - X(jj));
end

% f(x) = f'(x) = f''(x)
F = exp(X);

% difference between exact results and calculated results
D1 = F(1:10) - T1;
D2 = F(1:9) - T2;

% cooresponding x and y's for approximations
T1 = [X(1:10); T1];
T2 = [X(1:9); T2];
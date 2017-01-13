function [ zero ] = bisection(func, a, b, epsilon)
% bisection   Evaluates zeroes of a function by means of bisection an
%             interval, converging to the zero, or within the convergence
%             tolerance given
%
% Synopsis:   [zero] = bisection(func, a, b, epsilon)
%
% Input:      func = the function for which roots are to be found
%             a = the left bracket for where the root is believed to be
%             b = the right bracket for where the root is believed to be
%             epsilon = convergence tolerance
%
% Output:     zero = the first zero of the given function found


% check for range where signs change
if b > 100
    return;
end
if func(a) * func(b) < 0
    mid = (a + b) / 2;
    if abs(func(mid)) < epsilon || func(mid) == 0
        zero = mid;
        return;
    end
% adjust brackets and retest
    if func(a) * func(mid) < 0
        b = mid;
        fprintf('%i is the current DL using bisection method.\n', b)
        bisection(func, a, b, epsilon);
    elseif func(mid) * func(b) < 0
        a = mid;
        fprintf('%i is the current DL using bisection method.\n', a)
        bisection(func, a, b, epsilon);
    else
        fprintf('There may be an asymptote or singularity here.\n')
        return;
    end
% signs are equal
elseif func(a) * func(b) > 0
    a = b;
    b = b + 1;
    fprintf('There is no current guess for DL yet using bisection method.\n')
    bisection(func, a, b, epsilon)
% either a or b are the zero
elseif func(a) * func(b) == 0
    if func(a) == 0
        zero = a
        return;
    elseif func(b) == 0
        zero = b
        return;
    end
end


end
function[ A ] = printop(s,i,j)
    if i == j
        fprintf('A%i', i);
    else
        fprintf('(');
        printop(s,i,s(i,j));
        printop(s,s(i,j)+1,j);
        fprintf(')');
        
    end
end
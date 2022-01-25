B = [1 2 3 4 5 6 7 8];
A = perms(B);
sizeA = size(A);
S=0;
Stot = 0;

for x = 1:40320
    for j = 2:length(A(x,1:8))
        Key = A(x,j); % Current element to be compared against
        i = j-1; % index of previous element
        if (i > 0 && A(x,i) <= Key)
            S = S+1;
        end
        while (i > 0 && A(x,i) > Key)
            A(x,i+1) = A(x,i);
            S = S+1;
            i = i - 1;
        end
        A(x,i+1) = Key;
    end
    Stot = Stot + S;
    S=0;
end

Stot = Stot ./ 40320;
disp(Stot)
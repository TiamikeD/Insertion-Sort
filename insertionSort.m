A  = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16];
A2 = [16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1];
A3 = [16 1 15 2 14 3 13 4 12 5 11 6 10 7 9 8];
%count = 0 % TOTAL number of steps
S = 0; % Numnber of comparisons made to previous element
S2 = 0;
S3 = 0;

for j = 2:length(A)
    Key = A(j); % Current element to be compared against
    i = j-1; % index of previous element
    if (i > 0 && A(i) <= Key)
        S = S+1;
    end
    while (i > 0 && A(i) > Key)
        A(i+1) = A(i);
        S = S+1;
        i = i - 1;
    end
    A(i+1) = Key;
end

for j = 2:length(A2)
    Key = A2(j); % Current element to be compared against
    i = j-1; % index of previous element
    while (i > 0 && A2(i) > Key)
        A2(i+1) = A2(i);
        S2 = S2+1;
        i = i - 1;
    end
    A2(i+1) = Key;
end

for j = 2:length(A3)
    Key = A3(j); % Current element to be compared against
    i = j-1; % index of previous element
    while (i > 0 && A3(i) > Key)
        A3(i+1) = A3(i);
        S3 = S3+1;
        i = i - 1;
    end
    A3(i+1) = Key;
end

disp('Already Sorted Array:')
disp(A)
disp('Reverse Sorted Array:')
disp(A2)
disp('Not Sorted Array:')
disp(A3)

disp('Already Sorted Count:')
disp(S)
disp('Reverse Sorted Count:')
disp(S2)
disp('Not Sorted Count:')
disp(S3)

function displaySudoku(board)
disp("+=============================+")
for i = 1:9
    if mod(i, 3) == 1 && i ~= 1
        disp("|=============================|")
    end
    for j = 1:9
        if mod(j, 3) == 1
        fprintf("|")
        end
        if board(i,j) ~= 0
            fprintf(' %d ', board(i,j));
        else
            fprintf('   ')
        end
    end
    disp("|")
end
disp("+=============================+")
end
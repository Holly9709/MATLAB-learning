% a simple Matlab function that receives a 9x9 matrix input representing an
% incomplete Sudoku game and returns the correctly solved board.

load sudoku.mat % unsolvedBoard

unsolvedBoard(isnan(unsolvedBoard)) = 0;
disp("The unsolved Sudoku is: ")
displaySudoku(unsolvedBoard);

disp("The solved Sudoku is: ")
solvedBoard = sudoku(unsolvedBoard);
displaySudoku(solvedBoard);

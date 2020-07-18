a=dir; % a is a struct array
for ii = 1:length(a) % go through all the elements of a
    if ~a(ii).isdir % if the element is not a directory 
        disp(['File ', a(ii).name, ' contains ', num2str(a(ii).bytes), ' bytes.']);
    end
end

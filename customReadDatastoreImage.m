function data = customReadDatastoreImage(filename)
% code from default function: 
% onState = warning('off', 'backtrace'); 
% c = onCleanup(@() warning(onState)); 
data = imread(filename); % added lines: 
[m,~] = size(data);
if m == 32
    data = imresize(data,[227 227]);
    data1 = zeros(227,227,3);
    for i=1:3
        data1(:,:,i) = data;
    end
    data = data1;
elseif m == 227
    data = imresize(data,[227 227]);
end
end
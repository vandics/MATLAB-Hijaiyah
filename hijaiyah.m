%%  Klasifikasi CNN
datapath='test';
 
% Image Datastore
imds=imageDatastore(datapath, ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames');

% (OPTIONAL) Count number of images per label 
labelCount = countEachLabel(imds);
 
%% Create training and validation sets
%[imdsTrainingSet, imdsValidationSet] = splitEachLabel(imds, 0.7, 'randomize');
[train, test] = splitEachLabel(imds, 0.8, 0.2);

%% Create simple CNN 
imageSize = [32 32 1];
% Specify the convolutional neural network architecture.
layers = [
    imageInputLayer(imageSize)
 
    convolution2dLayer(5,64,'Stride',2)
    batchNormalizationLayer
    reluLayer 
      
    maxPooling2dLayer(2,'Stride',2)
    
    convolution2dLayer(3,128,'Stride',1) 
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2,'Stride',2)
     
    convolution2dLayer(3,256,'Stride',1,'Padding','same')
    reluLayer  
    
    convolution2dLayer(3,256,'Stride',1,'Padding','same')
    reluLayer  
    
    convolution2dLayer(3,128,'Stride',1,'Padding','same')
    reluLayer  
     
    maxPooling2dLayer(2,'Stride',2) 
    
    fullyConnectedLayer(251)
    reluLayer
    dropoutLayer(0.5)
    
    fullyConnectedLayer(251)
    reluLayer 
    dropoutLayer(0.5)
    
    fullyConnectedLayer(10)
    softmaxLayer
    classificationLayer];


%% Specify training options (stochastic gradient descent with momentum)
options = trainingOptions('sgdm', ...
    'MaxEpochs',50, ...
    'ValidationData',test, ...
    'ValidationFrequency',30, ...
    'Verbose',false, ...
    'MiniBatchSize',64,...
    'InitialLearnRate',0.01,...
    'Plots','training-progress');
   
%% Train the network. 
net1 = trainNetwork(train,layers,options);
 
%% Report accuracy of baseline classifier on validation set
[YPred,score] = classify(net1,test);
YValidation = test.Labels;
 
imdsAccuracy = sum(YPred == YValidation)/numel(YValidation);
 
%% Confusion matrix
plotconfusion(YValidation,YPred);
[confMat,order] = confusionmat(YValidation,YPred);

for i=1:size(confMat,1)
    recall(i) = confMat(i,i)/sum(confMat(:,i));
    precision(i) = confMat(i,i)/sum(confMat(i,:));
end

recall = sum(recall)/size(confMat,1);
precision = sum(precision)/size(confMat,1);
%% PART 2: Baseline Classifier with Data Augmentation
%% Create augmented image data store
% Specify data augmentation options and values/ranges
%imageAugmenter = imageDataAugmenter( ...
   %'RandRotation',[-45,45],...
   %'RandXTranslation',[-5 5], ...
   %'RandYTranslation',[-5 5]);
 
% Apply transformations (using randmly picked values) and build augmented
% data store
%augImds = augmentedImageDatastore(imageSize,imds,'DataAugmentation',imageAugmenter);
 
%% Create training and validation sets
%[augImdsTrainingSet, augImdsValidationSet] = splitEachLabel(imds, 0.8, 0.2);
    
%% Train the network. 
%net2 = trainNetwork(augImdsTrainingSet,layers,options);
 
%% Report accuracy of baseline classifier with image data augmentation
%YPred = classify(net2,test);
%YValidation = augImdsValidationSet.Labels;
 
%augImdsAccuracy = sum(YPred == YValidation)/numel(YValidation);

%% Confusion matrix
%figure,plotconfusion (YValidation,YPred);


function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% init the values that can be tried for C and sigma
test_array = [0.01,0.03,0.1,0.3,1,3,10,30];

predictions = !yval;    % init the predictions, whos error is 100 %

for c = test_array,
    for s = test_array,
        model = svmTrain(X, y, c, @(x1, x2) gaussianKernel(x1, x2, s));  % Train model by using current C and sigma
        predictions_temp = svmPredict(model,Xval); % Get the predicts from model
        if mean(double(predictions_temp ~= yval)) < mean(double(predictions ~= yval)),
            predictions = predictions_temp; % Save the smaller error predictions
            % Save the prop C and sigma
            C = c;
            sigma = s;
    end;
end;


% =========================================================================

end

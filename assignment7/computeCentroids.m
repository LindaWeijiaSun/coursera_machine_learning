function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

% size(X) = [m n]
% X -> m training data, every data has n features

% size(idx) = [m 1]
% Every element ranges from 1 to K
% Every element corresponds to index of nearest cluster (stored in
% centroid)

% size(centroids) = [K n]
% Every row vector corresponds to position of centroid (centre of cluster)

% Goal: Update centre of every cluster  
for i = 1:K
    computeIDX = find(idx == i);
    centroids(i, :) = sum(X(computeIDX, :), 1) ./ size(computeIDX, 1);
end

% =============================================================

end


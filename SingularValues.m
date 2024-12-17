% MATLAB code for Problem 1
format long
% Define m
m = 20;

% List of matrices
matrices = {'rand', 'randn', 'hilb', 'invhilb', '1./hilb'};
titles = {'rand(20)', 'randn(20)', 'hilb(20)', 'invhilb(20)', '1./hilb(20)'};

% Loop through each matrix type
for i = 1:length(matrices)
    
    % Create the matrix
    switch matrices{i}
        case 'rand'
            A = rand(m);
        case 'randn'
            A = randn(m);
        case 'hilb'
            A = hilb(m);
        case 'invhilb'
            A = invhilb(m);
        case '1./hilb'
            A = 1 ./ hilb(m);
    end
    
    % Part (a): Compute the singular values
    s = svd(A);

    % Display the singular values in the command window
    fprintf('\nSingular values for %s:\n', titles{i});
    disp(s);
    
    % Part (b): Plot the singular values
    figure;
    plot(s, '-o');
    title([titles{i} ': Singular Values']);
    xlabel('Index (n)');
    ylabel('Singular Value (S)');
    
    % Part (c): Calculate various norms, determinant, and condition number
    norm_1 = norm(A, 1);      % 1-norm
    norm_2 = norm(A, 2);      % 2-norm (equivalent to the largest singular value)
    norm_inf = norm(A, inf);  % Infinity norm
    matrix_det = det(A);      % Determinant
    matrix_cond = cond(A);    % Condition number
    
    % Add text to the plot with the norms, determinant, and condition number
    % title(sprintf('%s: norm_1=%g, norm_2=%g, norm_inf=%g, det=%g, cond=%g', ...
       % titles{i}, norm_1, norm_2, norm_inf, matrix_det, matrix_cond));
    
    % Display the values in the console as well
    fprintf('%s: norm_1=%g, norm_2=%g, norm_inf=%g, det=%g, cond=%g\n', ...
        titles{i}, norm_1, norm_2, norm_inf, matrix_det, matrix_cond);
end

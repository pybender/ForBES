function forbes_test()

% build the paths to add
forbes_path = fileparts(mfilename('fullpath'));
tests_path = fullfile(forbes_path, 'tests');
addpath(tests_path);

fprintf('* testing library functions:\n');

fprintf('%40s', 'sumOp... ');                       t0 = tic(); test_sumOp;                        fprintf('OK (%5.2f s)\n', toc(t0));
fprintf('%40s', 'stackOp... ');                     t0 = tic(); test_stackOp;                      fprintf('OK (%5.2f s)\n', toc(t0));
fprintf('%40s', 'separableSum... ');                t0 = tic(); test_separableSum;                 fprintf('OK (%5.2f s)\n', toc(t0));

fprintf('* testing solver utilities:\n');

fprintf('%40s', 'MakeProblem... ');                 t0 = tic(); test_MakeProblem;                  fprintf('OK (%5.2f s)\n', toc(t0));
fprintf('%40s', 'CheckGamma... ');                  t0 = tic(); test_CheckGamma;                   fprintf('OK (%5.2f s)\n', toc(t0));
fprintf('%40s', 'DirFBE... ');                      t0 = tic(); test_DirFBE;                       fprintf('OK (%5.2f s)\n', toc(t0));

fprintf('* testing algorithms:\n');

fprintf('%40s', 'SolveLasso_small... ');            t0 = tic(); test_SolveLasso_small;             fprintf('OK (%5.2f s)\n', toc(t0));
fprintf('%40s', 'SolveLasso_random... ');           t0 = tic(); test_SolveLasso_random;            fprintf('OK (%5.2f s)\n', toc(t0));
fprintf('%40s', 'SolveSparseLogReg_small... ');     t0 = tic(); test_SolveSparseLogReg_small ;     fprintf('OK (%5.2f s)\n', toc(t0));
fprintf('%40s', 'SolveSVM_random... ');             t0 = tic(); test_SolveSVM_random;              fprintf('OK (%5.2f s)\n', toc(t0));
fprintf('%40s', 'SolveNuclearNormMC_random... ');	t0 = tic(); test_SolveNuclearNormMC_random;    fprintf('OK (%5.2f s)\n', toc(t0));
fprintf('%40s', 'SolveRankConstrMC_random... ');	t0 = tic(); test_SolveRankConstrMC_random;     fprintf('OK (%5.2f s)\n', toc(t0));

rmpath(tests_path);

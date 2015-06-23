% Solves problems of the form
%
%   minimize f(x) + g(z)
%   subject to Ax + Bz = 0
%
function out = amm(prob, opt)
    t0 = tic();
    
    if ~isfield(prob, 'processed') || ~prob.processed, [prob, dualprob] = ProcessSeparableProblem(prob, opt); end
    
    preprocess = toc(t0);
    if nargin > 1
        dualout = fbs(dualprob, opt);
    else
        dualout = fbs(dualprob);
    end
    out = GetPrimalOutput(prob, dualprob, dualout);
    out.preprocess = preprocess + dualout.preprocess;
    if nargin > 1
        out.opt = opt;
    end
    out.dual = dualout;
end
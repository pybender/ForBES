function obj = l1Norm(mu)
    obj.makeprox = @() @(x, gam) call_l1Norm_prox(x, gam, mu);
end

function [prox, g] = call_l1Norm_prox(x, gam, mu)
% prox(x) and g(prox(x)) for function g(x) = mu*||x||_1
    uz = max(0, abs(x)-gam*mu);
    if nargout >= 2
        g = mu*sum(uz);
    end
    prox = sign(x).*uz;
end

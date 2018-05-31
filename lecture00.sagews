︠d8f409d4-38cb-4d31-b07e-279258b55eb5si︠
%auto
%latex.add_to_preamble
\usepackage[all]{pabmacros}
︡f2454049-60cf-4f07-8199-eaae85d13ac8︡{"done":true}︡
︠c2d67962-4d0e-47d2-bb4f-c779e0ba66cfi︠
%md
# Basic setup and conventions <a name="sec:setup"></a>

We work with a Riemannian manifold \((M, g)\) with \(\nabla\) denoting the Levi-Civita connection.

Vector fields will be denoted \(X, Y, Z, W, \dots\). Most to the time we will abuse notation and write \(X, Y, Z, W, \dots\) for tangent __vectors__. We do this because many tensors, such as the curvature tensor are defined for vector fields, are tensorial so at a fixed point only depend on the value of the vector fields in question at that fixed point.
︡184bcd74-9efa-4fd8-8c88-3ca3fc2d850e︡{"done":true,"md":"# Basic setup and conventions <a name=\"sec:setup\"></a>\n\nWe work with a Riemannian manifold \\((M, g)\\) with \\(\\nabla\\) denoting the Levi-Civita connection.\n\nVector fields will be denoted \\(X, Y, Z, W, \\dots\\). Most to the time we will abuse notation and write \\(X, Y, Z, W, \\dots\\) for tangent __vectors__. We do this because many tensors, such as the curvature tensor are defined for vector fields, are tensorial so at a fixed point only depend on the value of the vector fields in question at that fixed point."}
︠177d7e48-3cf6-41c6-9b59-f273c584b851i︠
%md
# The Curvature Tensor


Let \(X, Y, Z\) be vector fields. Define a new vector field by
\[
\operatorname{Rm}(X, Y) Z = \nabla_X \nabla_Y Z - \nabla_Y \nabla_X Z - \nabla_{[X, Y]} Z.
\]

Notice that \(\nabla_X \nabla_Y Z\) will include the variation of \(Y\) along \(X\) - namely \(\nabla_X Y\). This is undesirable since we want to measure the curvature of the space itself at each point using \(\operatorname{Rm}\), and this should not depend on how any particular vector field varies. Likewise for \(\nabla_Y \nabla_X Z\). The term \(\nabla_{[X, Y]} Z\) compensates precisely for this undesirable effect.

Another way of expressing this compensation is to say that \(\operatorname{Rm}\) is __tensorial__ in \(X, Y\) so that for any smooth function \(f \in C^{\infty} (M)\) we have
\[
\operatorname{Rm}(fX, Y) Z = f \operatorname{Rm}(X, Y) Z = \operatorname{Rm}(X, fY) Z.
\]

**Exercise**: Using the Leibniz rule for the connection \(\nabla\) and the corresponding rule for the Lie bracket, prove the claimed tensorality in \(X, Y\).

As a consequence, although as written, \(\operatorname{Rm}\) is defined for vector __fields__, tensorality induces a well defined map defined on tangent vectors. As mentioned in [setup and conventions](#sec:setup), we will typically not differentiate by vector fields and tangent vectors when dealing with tensorial equations. But __just this time__, let us be very explicit: Let \(X, Y, Z \in T_x M\) be tangent vectors, let \(\bar{X}, \bar{Y}, \bar{Z}\) and \(\tilde{X}, \tilde{Y}, \tilde{Z}\) be vector fields defined on a neighbourhood of \(x\) such that
\[
\bar{X} (x) = X, \bar{Y} (x) = Y, \bar{Z} (x) = Z
\]
\[
\tilde{X} (x) = X, \tilde{Y} (x) = Y, \tilde{Z} (x) = Z.
\]
Then tensorality implies that
\[
\left(\operatorname{Rm}(\bar{X}, \bar{Y}) \bar{Z}\right) (x) = \left(\operatorname{Rm}(\tilde{X}, \tilde{Y}) \tilde{Z}\right) (x).
\]
Thus we may define unambiguously,
\[
\operatorname{Rm}(X, Y) Z = \left(\operatorname{Rm}(\bar{X}, \bar{Y}) \bar{Z}\right) (x)
\]
where \(\bar{\cdot}\) denotes any arbitrary extension of \(X, Y, Z\). Tensorality then guarantees the result is independent of the extension.

What is rather more suprising, given that \(X\) is being differentiated twice, is that \(\operatorname{Rm}\) is tensorial in \(Z\) also! This means that \(\operatorname{Rm}\) may be evaluated on tangent vectors \(X, Y, Z\) at a point and thus may be interpreted as giving information (via \(\nabla\) which itself is determined by \(g\)) about \((M, g)\) at a point. This information is in fact a measure of curvature.

One question stands out: **Why is \(\nabla_{[X, Y]} Z\) the right correction term?** There are a few ways we might answer this question such as "because it works!" and "check in coordinates". The answer we will give here is obtained by interpreting \(\operatorname{Rm}\) as the __commutator of second derivatives__.

︡f9919c19-6175-4b29-bc4b-d7751cd3b622︡{"done":true,"md":"# The Curvature Tensor\n\n\nLet \\(X, Y, Z\\) be vector fields. Define a new vector field by\n\\[\n\\operatorname{Rm}(X, Y) Z = \\nabla_X \\nabla_Y Z - \\nabla_Y \\nabla_X Z - \\nabla_{[X, Y]} Z.\n\\]\n\nNotice that \\(\\nabla_X \\nabla_Y Z\\) will include the variation of \\(Y\\) along \\(X\\) - namely \\(\\nabla_X Y\\). This is undesirable since we want to measure the curvature of the space itself at each point using \\(\\operatorname{Rm}\\), and this should not depend on how any particular vector field varies. Likewise for \\(\\nabla_Y \\nabla_X Z\\). The term \\(\\nabla_{[X, Y]} Z\\) compensates precisely for this undesirable effect.\n\nAnother way of expressing this compensation is to say that \\(\\operatorname{Rm}\\) is __tensorial__ in \\(X, Y\\) so that for any smooth function \\(f \\in C^{\\infty} (M)\\) we have\n\\[\n\\operatorname{Rm}(fX, Y) Z = f \\operatorname{Rm}(X, Y) Z = \\operatorname{Rm}(X, fY) Z.\n\\]\n\n**Exercise**: Using the Leibniz rule for the connection \\(\\nabla\\) and the corresponding rule for the Lie bracket, prove the claimed tensorality in \\(X, Y\\).\n\nAs a consequence, although as written, \\(\\operatorname{Rm}\\) is defined for vector __fields__, tensorality induces a well defined map defined on tangent vectors. As mentioned in [setup and conventions](#sec:setup), we will typically not differentiate by vector fields and tangent vectors when dealing with tensorial equations. But __just this time__, let us be very explicit: Let \\(X, Y, Z \\in T_x M\\) be tangent vectors, let \\(\\bar{X}, \\bar{Y}, \\bar{Z}\\) and \\(\\tilde{X}, \\tilde{Y}, \\tilde{Z}\\) be vector fields defined on a neighbourhood of \\(x\\) such that\n\\[\n\\bar{X} (x) = X, \\bar{Y} (x) = Y, \\bar{Z} (x) = Z\n\\]\n\\[\n\\tilde{X} (x) = X, \\tilde{Y} (x) = Y, \\tilde{Z} (x) = Z.\n\\]\nThen tensorality implies that\n\\[\n\\left(\\operatorname{Rm}(\\bar{X}, \\bar{Y}) \\bar{Z}\\right) (x) = \\left(\\operatorname{Rm}(\\tilde{X}, \\tilde{Y}) \\tilde{Z}\\right) (x).\n\\]\nThus we may define unambiguously,\n\\[\n\\operatorname{Rm}(X, Y) Z = \\left(\\operatorname{Rm}(\\bar{X}, \\bar{Y}) \\bar{Z}\\right) (x)\n\\]\nwhere \\(\\bar{\\cdot}\\) denotes any arbitrary extension of \\(X, Y, Z\\). Tensorality then guarantees the result is independent of the extension.\n\nWhat is rather more suprising, given that \\(X\\) is being differentiated twice, is that \\(\\operatorname{Rm}\\) is tensorial in \\(Z\\) also! This means that \\(\\operatorname{Rm}\\) may be evaluated on tangent vectors \\(X, Y, Z\\) at a point and thus may be interpreted as giving information (via \\(\\nabla\\) which itself is determined by \\(g\\)) about \\((M, g)\\) at a point. This information is in fact a measure of curvature.\n\nOne question stands out: **Why is \\(\\nabla_{[X, Y]} Z\\) the right correction term?** There are a few ways we might answer this question such as \"because it works!\" and \"check in coordinates\". The answer we will give here is obtained by interpreting \\(\\operatorname{Rm}\\) as the __commutator of second derivatives__."}
︠da1276cf-2b1c-430a-a6f2-7ea2ca6b0babi︠
%md
# Second Derivative

The second derivative of a vector field, in directions \(X, Y\) is defined to be
\[
\nabla^2_{X, Y} Z := \nabla_X (\nabla_Y Z) - \nabla Z (\nabla_X Y) = \nabla_X (\nabla_Y Z) - \nabla_{\nabla_X Y} Z.
\]

**Exercise**: Check that \(\nabla^2_{X, Y} Z\) is tensorial in \(X, Y\).

The reason for this definition is that once again, \(\nabla_X (\nabla_Y Z)\) will include the variation, \(\nabla_X Y\) of \(Y\) along \(X\) so we must subtract it off so that it doesn't contribute to \(\nabla^2 Z\). Essentially the way to understand how to choose what to substract off is by the product rule. First, for those more comfortable with coordinates, we have
\[
\nabla_Y Z = Y^i \partial_i Z^j \partial_j + Y^i Z^j \Gamma_{ij}^k \partial_k.
\]
This looks pretty good: we are differentiating \(Z\) in the direction \(Y\) and the result depends only on \(Y\), \(Z\) and the first derivatives of \(Z\). Now we apply \(\nabla_X\):
\[
\nabla_X \nabla_Y Z = X^{\ell} \partial_{\ell} (Y^i \partial_i Z^j) \partial_j + X^{\ell} Y^i \partial_i Z^j \Gamma^m_{\ell j} \partial_m + \cdots
\]
where I got tired of computing this way to I just put \(\cdots\) to indicate there are more terms! The point though is that there are derivatives of \(Y^i\) in there but we really only want to compute the variation of \(Z\). In particular notice that applying the product rule will give a term
\[
X^{\ell} \partial_{\ell} Y^i \partial_i Z^j \partial_j
\]
which we recognise as the first term occuring in
\[
\nabla_{\nabla_X Y} Z = X^{\ell} \partial_{\ell} Y^i \partial_i Z^j \partial_j + \cdots
\]

If one is so inclined, this computation may be fully carried out to verify that the result only depends on the components \(X^i, Y^j, Z^k\) and the first two derivatives of \(Z\): \(\partial_i Z^k, \partial_i \partial_j Z^k\).

**Exercise**: Carry out the computation if you are so inclined.
︡4d89f1ab-f7de-416a-afa5-d0885ab773ba︡{"done":true,"md":"# Second Derivative\n\nThe second derivative of a vector field, in directions \\(X, Y\\) is defined to be\n\\[\n\\nabla^2_{X, Y} Z := \\nabla_X (\\nabla_Y Z) - \\nabla Z (\\nabla_X Y) = \\nabla_X (\\nabla_Y Z) - \\nabla_{\\nabla_X Y} Z.\n\\]\n\n**Exercise**: Check that \\(\\nabla^2_{X, Y} Z\\) is tensorial in \\(X, Y\\).\n\nThe reason for this definition is that once again, \\(\\nabla_X (\\nabla_Y Z)\\) will include the variation, \\(\\nabla_X Y\\) of \\(Y\\) along \\(X\\) so we must subtract it off so that it doesn't contribute to \\(\\nabla^2 Z\\). Essentially the way to understand how to choose what to substract off is by the product rule. First, for those more comfortable with coordinates, we have\n\\[\n\\nabla_Y Z = Y^i \\partial_i Z^j \\partial_j + Y^i Z^j \\Gamma_{ij}^k \\partial_k.\n\\]\nThis looks pretty good: we are differentiating \\(Z\\) in the direction \\(Y\\) and the result depends only on \\(Y\\), \\(Z\\) and the first derivatives of \\(Z\\). Now we apply \\(\\nabla_X\\):\n\\[\n\\nabla_X \\nabla_Y Z = X^{\\ell} \\partial_{\\ell} (Y^i \\partial_i Z^j) \\partial_j + X^{\\ell} Y^i \\partial_i Z^j \\Gamma^m_{\\ell j} \\partial_m + \\cdots\n\\]\nwhere I got tired of computing this way to I just put \\(\\cdots\\) to indicate there are more terms! The point though is that there are derivatives of \\(Y^i\\) in there but we really only want to compute the variation of \\(Z\\). In particular notice that applying the product rule will give a term\n\\[\nX^{\\ell} \\partial_{\\ell} Y^i \\partial_i Z^j \\partial_j\n\\]\nwhich we recognise as the first term occuring in\n\\[\n\\nabla_{\\nabla_X Y} Z = X^{\\ell} \\partial_{\\ell} Y^i \\partial_i Z^j \\partial_j + \\cdots\n\\]\n\nIf one is so inclined, this computation may be fully carried out to verify that the result only depends on the components \\(X^i, Y^j, Z^k\\) and the first two derivatives of \\(Z\\): \\(\\partial_i Z^k, \\partial_i \\partial_j Z^k\\).\n\n**Exercise**: Carry out the computation if you are so inclined."}
︠c89377af-f990-4ebe-82e0-52342f4c5a5fi︠
%md
# The Hessian of a function

For comparsion, consider the hessian matrix of a real valued function defined on \(\mathbb{R}^n\):
\[
d^2 f (x) = \begin{pmatrix}
\frac{\partial^2 f}{\partial x^1 \partial x^1} (x) & \cdots & \frac{\partial^2 f}{\partial x^1 \partial x^n} (x) \\
\vdots & \ddots & \vdots \\
\frac{\partial^2 f}{\partial x^n \partial x^1} (x) & \cdots & \frac{\partial^2 f}{\partial x^n \partial x^n} (x)
\end{pmatrix}
\]

This matrix records how \(f\) varies to second order at \(x\). Once this matrix has been computed, second derivatives of \(f\) in directions \(X = (X^1, \dots, X^n)\) and \(Y = (Y^1, \dots, Y^n)\) may be computed as
\[
d^2 f (X, Y) = Y^T d^2 f X.
\]
However, if \(X, Y\) are vector fields, then in general,
\[
d^2 f \ne \partial_X (\partial_Y f)
\]
where
\[
\partial_X f = df(X)
\]
or equivalently \(\partial_X f = X(f)\) with \(X\) acting as a derivation. The problem is of course again the fact that \(Y\) will also be differentiated:
\[
\partial_X (\partial_Y f) = X^i \partial_i (Y^j \partial_j f) = X^i Y^j \partial_i \partial_j f + X^i \partial_i Y^j \partial_j f = d^2f (X, Y) + df(D_X Y)
\]
so that
\[
d^2 f (X, Y) = \partial_X (\partial_Y f) - df(D_X Y) = \partial_X (\partial_Y f) - \partial_{D_X Y} f.
\]
Now the point of tensorality is that just from the matrices for \(d^2 f\) and \(df\) at a point \(x\), the second derivative \(\partial_X (\partial_Y f)\) at \(x\) may be computed by linear algegra alone (i.e. matrix multiplication) with no further differentation required. __This is because of tensorality: \(d^2 f(X, Y)\) only depends on the value of \(X, Y\) at the point \(x\) and not in a neighbourhood__. In other words, we may pre-compute the matrices \(df\) and \(d^2 f\) once and for all, then apply them to any vectors to compute first and second derivatives. We may also approximate \(f\) to second order at any point without needing to compute any more derivatives.

As a simple comparison, this idea is essentialy used by a calculator (or computer) to compute \(\sin, \cos, \exp\) etc. The Taylor series is calculated once and for all (giving an expression for the coefficients that can be calculate easily or by storing in a table sufficiently many of the coefficients) and then hard wired into the calculator. Further calculation is by elementary artihmetric operators.

Thus the moral is to compute the maps \(x \mapsto df(x)\) and \(x \mapsto d^2f (x)\) from which any second derivatives may be later computed using linear algebra. This only works by using the tensorial first and second derivatives so we may later work pointwise!
︡98943587-b92f-4cc8-abf2-6581d5072b07︡{"done":true,"md":"# The Hessian of a function\n\nFor comparsion, consider the hessian matrix of a real valued function defined on \\(\\mathbb{R}^n\\):\n\\[\nd^2 f (x) = \\begin{pmatrix}\n\\frac{\\partial^2 f}{\\partial x^1 \\partial x^1} (x) & \\cdots & \\frac{\\partial^2 f}{\\partial x^1 \\partial x^n} (x) \\\\\n\\vdots & \\ddots & \\vdots \\\\\n\\frac{\\partial^2 f}{\\partial x^n \\partial x^1} (x) & \\cdots & \\frac{\\partial^2 f}{\\partial x^n \\partial x^n} (x)\n\\end{pmatrix}\n\\]\n\nThis matrix records how \\(f\\) varies to second order at \\(x\\). Once this matrix has been computed, second derivatives of \\(f\\) in directions \\(X = (X^1, \\dots, X^n)\\) and \\(Y = (Y^1, \\dots, Y^n)\\) may be computed as\n\\[\nd^2 f (X, Y) = Y^T d^2 f X.\n\\]\nHowever, if \\(X, Y\\) are vector fields, then in general,\n\\[\nd^2 f \\ne \\partial_X (\\partial_Y f)\n\\]\nwhere\n\\[\n\\partial_X f = df(X)\n\\]\nor equivalently \\(\\partial_X f = X(f)\\) with \\(X\\) acting as a derivation. The problem is of course again the fact that \\(Y\\) will also be differentiated:\n\\[\n\\partial_X (\\partial_Y f) = X^i \\partial_i (Y^j \\partial_j f) = X^i Y^j \\partial_i \\partial_j f + X^i \\partial_i Y^j \\partial_j f = d^2f (X, Y) + df(D_X Y)\n\\]\nso that\n\\[\nd^2 f (X, Y) = \\partial_X (\\partial_Y f) - df(D_X Y) = \\partial_X (\\partial_Y f) - \\partial_{D_X Y} f.\n\\]\nNow the point of tensorality is that just from the matrices for \\(d^2 f\\) and \\(df\\) at a point \\(x\\), the second derivative \\(\\partial_X (\\partial_Y f)\\) at \\(x\\) may be computed by linear algegra alone (i.e. matrix multiplication) with no further differentation required. __This is because of tensorality: \\(d^2 f(X, Y)\\) only depends on the value of \\(X, Y\\) at the point \\(x\\) and not in a neighbourhood__. In other words, we may pre-compute the matrices \\(df\\) and \\(d^2 f\\) once and for all, then apply them to any vectors to compute first and second derivatives. We may also approximate \\(f\\) to second order at any point without needing to compute any more derivatives.\n\nAs a simple comparison, this idea is essentialy used by a calculator (or computer) to compute \\(\\sin, \\cos, \\exp\\) etc. The Taylor series is calculated once and for all (giving an expression for the coefficients that can be calculate easily or by storing in a table sufficiently many of the coefficients) and then hard wired into the calculator. Further calculation is by elementary artihmetric operators.\n\nThus the moral is to compute the maps \\(x \\mapsto df(x)\\) and \\(x \\mapsto d^2f (x)\\) from which any second derivatives may be later computed using linear algebra. This only works by using the tensorial first and second derivatives so we may later work pointwise!"}
︠deaae368-bfac-49e8-8b82-e2c5e3e93f92i︠

%md
# Tensoriality of second derivatives

Now the definition of \(d^2 f\) should be compared immediately with the definition of \(\nabla^2 Z\). Formally, it is the same thing just with \(f\) replaced by \(Z\) and \(D\) replaced by \(\nabla\). This is suggestive that we have the correct expression for \(\nabla^2 Z\).

Let us know rephrase the expression for \(\nabla^2 Z\) and see how the tensorality arises.

The first observation is that \(\nabla Z\) is an endomorphism of \(TM\). That is an element of
\[
\operatorname{Hom}(TM, TM) \simeq T^{\ast} M \otimes TM.
\]
Then we may interpret \(\nabla Z (X) = \nabla_X Z\) in terms of contractions (traces) and tensor products:
\[
\nabla Z (X) = \operatorname{Tr} \nabla Z \otimes X
\]
where the trace is taken by contractinng the \(T^{\ast} M\) part of \(\nabla Z\) with \(X\). Notice in particular for so-called __indecomposable__ elements of \(T^{\ast} M \otimes T^M\), namely those of the form \(\alpha \otimes X\) with \(\alpha\) a one-form we have
\[
\operatorname{Tr} \alpha \otimes X = \alpha(X).
\]
Now we'd like to be able to differentiate \(\alpha\). As before, if we differentiate the function \(\alpha(X)\) we will pick up derivatives of both \(\alpha\) and \(X\). So to isolate the derivative of \(\alpha\) we could subtract off the derivative of \(X\). Then we make the definition
\[
\nabla \alpha (X, Y) = \partial_X (\alpha(Y)) - \alpha(\nabla_X Y).
\]

**Exercise**: Check this is tensorial in \(X\) and \(Y\).

In terms of tensor products and traces we may express the defintion as
\[
\partial_X (\alpha(Y)) = \partial_X \operatorname{Tr} (\alpha \otimes Y) = \operatorname{Tr} (\nabla_X \alpha) \otimes Y + \operatorname{Tr} \alpha \otimes \nabla_X Y = \nabla_X \alpha (Y) + \alpha(\nabla_X Y).
\]

__Given a connection \(\nabla\) on \(TM\) and the (uniquely determined by identifying vector fields with derivations) connection on \(M \times \mathbb{R}\), we may define a unique connection on \(T^{\ast}M\) by requiring that the resulting three connections commute with traces and satisfy the Leibniz rule for the tensor product.__

Now how do we differentiate \(\nabla Z\)? It is an endomorphism and we may do something similar for endomorphisms. So let \(T\) be and endomorphism so that \(T(X)\) is a vector field. Note that for one-forms \(\alpha\) we had \(\alpha(X)\) is a function and we know how to differentiate functions. Well, given \(\nabla\) we also know how to differentiate vector fields suggesting that we define
\[
(\nabla_X T) (Y) = \nabla_X (T(Y)) - T(\nabla_X Y).
\]
In terms of traces
\[
\nabla_X (T(Y)) = \nabla_X (\operatorname{Tr} T \otimes Y) = \operatorname{Tr} \nabla_X T \otimes Y + \operatorname{Tr} T \otimes \nabla_X Y = \nabla_X T (Y) + T(\nabla_X Y).
\]
Rearranging gives
\[
(\nabla_X T) (Y) = \nabla_X (T(Y)) - T(\nabla_X Y).
\]

**Exercise**: Check directly that this is tensorial in both \(X\) and \(Y\). Do it both with the final expression and with the identities using traces and tensor products. Think about how requiring that the connection commutes with traces and satisfies the Leibniz product rule for tensor products leads to tensorality.

Then for \(T = \nabla Z\) we finally obtain
\[
\nabla^2_{X, Y} Z = \nabla^2 Z (X, Y) = (\nabla_X \nabla Z) (Y) = \nabla_X (\nabla Z(Y)) - \nabla Z(\nabla_X Y) = \nabla_X \nabla_Y Z - \nabla_{\nabla_X Y} Z
\]
which is tensorial in both \(X\) and \(Y\).
︡390046cb-98fe-46ae-a48a-c79e779cf1e1︡{"done":true,"md":"# Tensoriality of second derivatives\n\nNow the definition of \\(d^2 f\\) should be compared immediately with the definition of \\(\\nabla^2 Z\\). Formally, it is the same thing just with \\(f\\) replaced by \\(Z\\) and \\(D\\) replaced by \\(\\nabla\\). This is suggestive that we have the correct expression for \\(\\nabla^2 Z\\).\n\nLet us know rephrase the expression for \\(\\nabla^2 Z\\) and see how the tensorality arises.\n\nThe first observation is that \\(\\nabla Z\\) is an endomorphism of \\(TM\\). That is an element of\n\\[\n\\operatorname{Hom}(TM, TM) \\simeq T^{\\ast} M \\otimes TM.\n\\]\nThen we may interpret \\(\\nabla Z (X) = \\nabla_X Z\\) in terms of contractions (traces) and tensor products:\n\\[\n\\nabla Z (X) = \\operatorname{Tr} \\nabla Z \\otimes X\n\\]\nwhere the trace is taken by contractinng the \\(T^{\\ast} M\\) part of \\(\\nabla Z\\) with \\(X\\). Notice in particular for so-called __indecomposable__ elements of \\(T^{\\ast} M \\otimes T^M\\), namely those of the form \\(\\alpha \\otimes X\\) with \\(\\alpha\\) a one-form we have\n\\[\n\\operatorname{Tr} \\alpha \\otimes X = \\alpha(X).\n\\]\nNow we'd like to be able to differentiate \\(\\alpha\\). As before, if we differentiate the function \\(\\alpha(X)\\) we will pick up derivatives of both \\(\\alpha\\) and \\(X\\). So to isolate the derivative of \\(\\alpha\\) we could subtract off the derivative of \\(X\\). Then we make the definition\n\\[\n\\nabla \\alpha (X, Y) = \\partial_X (\\alpha(Y)) - \\alpha(\\nabla_X Y).\n\\]\n\n**Exercise**: Check this is tensorial in \\(X\\) and \\(Y\\).\n\nIn terms of tensor products and traces we may express the defintion as\n\\[\n\\partial_X (\\alpha(Y)) = \\partial_X \\operatorname{Tr} (\\alpha \\otimes Y) = \\operatorname{Tr} (\\nabla_X \\alpha) \\otimes Y + \\operatorname{Tr} \\alpha \\otimes \\nabla_X Y = \\nabla_X \\alpha (Y) + \\alpha(\\nabla_X Y).\n\\]\n\n__Given a connection \\(\\nabla\\) on \\(TM\\) and the (uniquely determined by identifying vector fields with derivations) connection on \\(M \\times \\mathbb{R}\\), we may define a unique connection on \\(T^{\\ast}M\\) by requiring that the resulting three connections commute with traces and satisfy the Leibniz rule for the tensor product.__\n\nNow how do we differentiate \\(\\nabla Z\\)? It is an endomorphism and we may do something similar for endomorphisms. So let \\(T\\) be and endomorphism so that \\(T(X)\\) is a vector field. Note that for one-forms \\(\\alpha\\) we had \\(\\alpha(X)\\) is a function and we know how to differentiate functions. Well, given \\(\\nabla\\) we also know how to differentiate vector fields suggesting that we define\n\\[\n(\\nabla_X T) (Y) = \\nabla_X (T(Y)) - T(\\nabla_X Y).\n\\]\nIn terms of traces\n\\[\n\\nabla_X (T(Y)) = \\nabla_X (\\operatorname{Tr} T \\otimes Y) = \\operatorname{Tr} \\nabla_X T \\otimes Y + \\operatorname{Tr} T \\otimes \\nabla_X Y = \\nabla_X T (Y) + T(\\nabla_X Y).\n\\]\nRearranging gives\n\\[\n(\\nabla_X T) (Y) = \\nabla_X (T(Y)) - T(\\nabla_X Y).\n\\]\n\n**Exercise**: Check directly that this is tensorial in both \\(X\\) and \\(Y\\). Do it both with the final expression and with the identities using traces and tensor products. Think about how requiring that the connection commutes with traces and satisfies the Leibniz product rule for tensor products leads to tensorality.\n\nThen for \\(T = \\nabla Z\\) we finally obtain\n\\[\n\\nabla^2_{X, Y} Z = \\nabla^2 Z (X, Y) = (\\nabla_X \\nabla Z) (Y) = \\nabla_X (\\nabla Z(Y)) - \\nabla Z(\\nabla_X Y) = \\nabla_X \\nabla_Y Z - \\nabla_{\\nabla_X Y} Z\n\\]\nwhich is tensorial in both \\(X\\) and \\(Y\\)."}
︠967ec1ad-7d13-46ec-bc12-c85026224cbdi︠
%md
# Ricci Identities and tensorality of second derivatives

Now that we understand second derivatives, we can express the curvature tensor \(\operatorname{Rm}\) as the commutator of second derivatives:
\[
\operatorname{Rm} (X, Y) Z = \nabla^2_{X, Y} Z - \nabla^2_{Y, X} Z.
\]
This equation is known as the __Ricci Identity__.

**Exercise**: Prove the Ricci Identity. __Hint__: Use the fact that \(\nabla\) is torsion-free \(\nabla_X Y - \nabla_Y X = [X, Y].\)

Sometimes this expression is written
\[
[\nabla_X, \nabla_Y] Z = \nabla^2_{X, Y} Z - \nabla^2_{Y, X} Z.
\]
Be __careful__ with this phrasing: \([\nabla_X, \nabla_Y] Z \ne \nabla_X (\nabla_Y Z) - \nabla_Y (\nabla_X Z)\)! The right hand side is not tensorial.


**Exercise**: Define \(\operatorname{Rm}(X, Y)f = \nabla^2_{X, Y} f - \nabla^2_{Y, X} f\). Show that \(\operatorname{Rm} (X, Y) f = 0\). Equivalently, \(\nabla^2 f(X, Y) = \nabla^2 f(Y, X)\). We might then say that \(M \times \mathbb{R} \to M\) is a flat (i.e. not curved!) vector bundle.

Thus the curvature tensor measures the lack of commutativity of second derivatives of vector fields. Put another way, unlike for functions, \(\nabla^2_{X, Y} Z\) need not be symmetric. Instead we have
\[
\nabla^2_{X, Y} Z = \nabla^2_{Y, X} Z + \operatorname{Rm} (X, Y) Z.
\]

**Exercise**: Show that in Euclidean space, \(\nabla^2_{X, Y} Z\) is symmetric in \(X, Y\).

Now we observe that since we defined \(\nabla^2 Z\) in a tensorial way, immediately we have \(\operatorname{Rm}(X, Y)Z\) is tensorial in \(X, Y\). By defining \(\operatorname{Rm}\) as the second order commutator, we also immediately obtained the correction term.

But still, we have the question **why is \(\operatorname{Rm}\) tensorial in \(Z\)?**

**Exercise** Show that \(\nabla_X \nabla_Y fZ - \nabla_Y \nabla_X fZ - \nabla_{[X,Y]} fZ = f \operatorname{Rm} (X, Y) Z + (\operatorname{Rm} (X, Y) f) Z = f \operatorname{Rm} (X, Y) Z.\) Thus we conclude the tensorality in \(Z\) follows since \(M \times \mathbb{R} \to M\) is a flat vector bundle.

︡7637cb03-2589-481f-b2e0-0af2ab8437b1︡{"done":true,"md":"# Ricci Identities and tensorality of second derivatives\n\nNow that we understand second derivatives, we can express the curvature tensor \\(\\operatorname{Rm}\\) as the commutator of second derivatives:\n\\[\n\\operatorname{Rm} (X, Y) Z = \\nabla^2_{X, Y} Z - \\nabla^2_{Y, X} Z.\n\\]\nThis equation is known as the __Ricci Identity__.\n\n**Exercise**: Prove the Ricci Identity. __Hint__: Use the fact that \\(\\nabla\\) is torsion-free \\(\\nabla_X Y - \\nabla_Y X = [X, Y].\\)\n\nSometimes this expression is written\n\\[\n[\\nabla_X, \\nabla_Y] Z = \\nabla^2_{X, Y} Z - \\nabla^2_{Y, X} Z.\n\\]\nBe __careful__ with this phrasing: \\([\\nabla_X, \\nabla_Y] Z \\ne \\nabla_X (\\nabla_Y Z) - \\nabla_Y (\\nabla_X Z)\\)! The right hand side is not tensorial.\n\n\n**Exercise**: Define \\(\\operatorname{Rm}(X, Y)f = \\nabla^2_{X, Y} f - \\nabla^2_{Y, X} f\\). Show that \\(\\operatorname{Rm} (X, Y) f = 0\\). Equivalently, \\(\\nabla^2 f(X, Y) = \\nabla^2 f(Y, X)\\). We might then say that \\(M \\times \\mathbb{R} \\to M\\) is a flat (i.e. not curved!) vector bundle.\n\nThus the curvature tensor measures the lack of commutativity of second derivatives of vector fields. Put another way, unlike for functions, \\(\\nabla^2_{X, Y} Z\\) need not be symmetric. Instead we have\n\\[\n\\nabla^2_{X, Y} Z = \\nabla^2_{Y, X} Z + \\operatorname{Rm} (X, Y) Z.\n\\]\n\n**Exercise**: Show that in Euclidean space, \\(\\nabla^2_{X, Y} Z\\) is symmetric in \\(X, Y\\).\n\nNow we observe that since we defined \\(\\nabla^2 Z\\) in a tensorial way, immediately we have \\(\\operatorname{Rm}(X, Y)Z\\) is tensorial in \\(X, Y\\). By defining \\(\\operatorname{Rm}\\) as the second order commutator, we also immediately obtained the correction term.\n\nBut still, we have the question **why is \\(\\operatorname{Rm}\\) tensorial in \\(Z\\)?**\n\n**Exercise** Show that \\(\\nabla_X \\nabla_Y fZ - \\nabla_Y \\nabla_X fZ - \\nabla_{[X,Y]} fZ = f \\operatorname{Rm} (X, Y) Z + (\\operatorname{Rm} (X, Y) f) Z = f \\operatorname{Rm} (X, Y) Z.\\) Thus we conclude the tensorality in \\(Z\\) follows since \\(M \\times \\mathbb{R} \\to M\\) is a flat vector bundle."}
︠c34b7959-cec1-427b-9281-2396a9723911︠










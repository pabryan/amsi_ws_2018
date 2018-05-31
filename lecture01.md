# Basic setup and conventions <a name="sec:setup"></a>

We work with a Riemannian manifold \((M, g)\) with \(\nabla\) denoting the Levi-Civita connection.

Vector fields will be denoted \(X, Y, Z, W, \dots\). Most to the time we will abuse notation and write \(X, Y, Z, W, \dots\) for tangent __vectors__. We do this because many tensors, such as the curvature tensor are defined for vector fields, are tensorial so at a fixed point only depend on the value of the vector fields in question at that fixed point.

# The Curvature Tensor

Let \(X, Y, Z\) be vector fields. Define a new vector field by
\[
\Rm(X, Y) Z = \nabla_X \nabla_Y Z - \nabla_Y \nabla_X Z - \nabla_{[X, Y]} Z.
\]

Notice that \(\nabla_X \nabla_Y Z\) will include the variation of \(Y\) along \(X\) - namely \(\nabla_X Y\). This is undesirable since we want to measure the curvature of the space itself at each point using \(\Rm\), and this should not depend on how any particular vector field varies. Likewise for \(\nabla_Y \nabla_X Z\). The term \(\nabla_{[X, Y]} Z\) compensates precisely for this undesirable effect.

Another way of expressing this compensation is to say that \(\Rm\) is __tensorial__ in \(X, Y\) so that for any smooth function \(f \in \C^{\infty} (M)\) we have
\[
\Rm(fX, Y) Z = f \Rm(X, Y) Z = \Rm(X, fY) Z.
\]

As a consequence, although as written, \(\Rm\) is defined for vector __fields__, tensorality induces a well defined map defined on tangent vectors. As mentioned in [setup and conventions](#sec:setup), we will typically not differentiate by vector fields and tangent vectors when dealing with tensorial equations. But __just this time__, let us be very explicit: Let \(X, Y, Z \in T_x M\) be tangent vectors, let \(\bar{X}, \bar{Y}, \bar{Z}\) and \(\tilde{X}, \tilde{Y}, \tilde{Z}\) be vector fields defined on a neighbourhood of \(x\) such that
\[
\bar{X} (x) = X, \bar{Y} (x) = Y, \bar{Z} (x) = Z
\]
\[
\tilde{X} (x) = X, \tilde{Y} (x) = Y, \tilde{Z} (x) = Z.
\]
Then tensorality implies that
\[
\left(\Rm(\bar{X}, \bar{Y}) \bar{Z}\right) (x) = \left(\Rm(\tilde{X}, \tilde{Y}) \tilde{Z}\right) (x).
\]
Thus we may define unambiguously,
\[
\Rm(X, Y) Z = \left(\Rm(\bar{X}, \bar{Y}) \bar{Z}\right) (x)
\]
where \(\bar{\cdot}\) denotes any arbitrary extension of \(X, Y, Z\). Tensorality then guarantees the result is independent of the extension.

One question stands out: **Why is \(\nabla_{[X, Y]} Z\) the right correction term?** There are a few way s we might answer this question such as "because it works!" and "check in coordinates". The answer we will give here is obtained by interpreting \(\Rm\) as the __commutator of second derivatives__.

# Notes

- Curvature Tensor
  - Gromov's little monster!
  - Sectional curvature
  - Sectional curvature as Gauss curvature of embedded planes
  - Ricci curvature
  - Scalar curvature
  - Curvature operator
- Curvature complexity
  - Surfaces
  - Constant sectional curvature
  - Weyl tensor, Shouten tensor, Ricci decomposition
- Constant sectional curvature
  - Volume of geodesic balls, area, MCF
- Small scale asymptotic behaviour
  - Scalar and Ricci curvatures as Taylor expansion of volume
  - Interpretations of curvature tensor

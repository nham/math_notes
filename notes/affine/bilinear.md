## Definition of bilinear map
A **bilinear map** on a vector space $(V, \mathbb{F})$ is a function $\phi V^2 \to \mathbb{F}$ such that the maps $\phi_{1,v}, \phi_{2,v}: V \to \mathbb{F}$ defined, for all $v \in V$, by $w \phi_{1,v} = (v, w) \phi$ and $w \phi_{2,v} = (w, v) \phi$, are linear.

## Matrix of a bilinear map
If $(V, \mathbb{F})$ is a vector space, $\phi$ a bilinear map for $V$, and $B = (b_1, \ldots, b_n)$ an ordered basis for $V$, then the matrix representation of $\phi$ w.r.t. $B$ is defined to be the matrix $A = (a_ij)$ with $a_{ij} = (b_i, b_j) \phi$

## Definition of symmetric and positive definite bilinear maps, scalar products
A bilinear map $\phi$ on vector space $(V, \mathbb{F})$ is **symmetric** iff $(u, v) \phi = (v, u) \phi$ for all $u, v \in V$. $\phi$ is **positive-definite** if

 - $\mathbb{F} = \mathbb{R}$
 - $(u, v) \phi \geq 0$ for all $u, v \in V$
 - $(u, v) \phi = 0$ iff $u = v$

A bilinear map $\phi$ is said to be a **scalar product** if it is both symmetric and positive-definite. A real vector space equipped with a scalar product is called a **Euclidean vector space**.


## Cauchy-Schwarz inequality
If $(V, \phi)$ is a Euclidean vector space, then

$$(u, v) \phi^2 \leq (u, u) \phi (v, v) \phi$$

*Proof:* For any $u, v \in V$,

$$0 \leq (u - v, u - v) \phi = (u, u) \phi + (v, v) \phi - 2 (u, v) \phi$$

so

$$(u, v) \phi \leq \frac{1}{2} (u, u) \phi + \frac{1}{2} (v, v) \phi$$

So for any nonzero $u, v \in V$, we can define $a = u / (u, u) \phi^{1/2}$ and $b = v / (v, v) \phi^{1/2}$, so that:

$$(a, a) \phi = (b, b) \phi = 1$$

and hence

$$(a, b) \phi \leq 1$$

But since $(a, b) \phi = \frac{(u, v) \phi}{(u, u) \phi^{1/2} (v, v) \phi^{1/2}}$, the statement is proved.

In the case of either $u = 0$ or $v = 0$, the statement holds since we have equality.


## Definition of norm for Euclidean space
If $(V, \phi)$ is a Euclidean vector space, then we define the **norm** induced by $\phi$ to be the function $V \to \mathbb{R}$ mapping $v \mapsto \sqrt{(v, v) \phi}$. We denote this by $|v|$.

### Remark
The Cauchy-Schwarz inequality can be restated as $(u, v) \phi^2 \leq |u|^2 |v|^2$.

## Definition of cosine
If $u, v$ are nonzero vectors of a Euclidean vector space $V$, then we can define the **cosine of the angle** to be:

$$cos(u, v) := \frac{(u, v) \phi}{|u| |v|}$$

By the Cauchy-Schwarz inequality, $|cos(u, v)| \leq 1$.

## Triangle property
For all $u, v$ in Euclidean vector space $V$, we have 

$$|u + v| \leq |u| + |v|$$

*Proof:*

$$
\begin{aligned}
$$|u+v|^2 &= (u + v, u + v) \phi \\
          &= |u|^2 + |v|^2 + 2 (u, v) \phi
          & \leq |u|^2 + |v|^2 + 2 |u| |v|
          &= (|u| + |v|)^2
\end{aligned}
$$

## Definition of common notions
If $(V, \phi)$ is a Euclidean vector space, then any $v \in V$ is a **unit vector** iff $|v| = 0$. Two vectors $u, v \in V$ are **orthogonal** iff $(u, v) \phi = 0$. Any set of vectors is **orthogonal** iff any two vectors are orthogonal. A collection is **orthonormal** iff it is both orthogonal and every vector is unit. This is usually only used for orthonormal bases.

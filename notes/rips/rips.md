# Notes on real inner product spaces

## Definition of a (real) normed vector space
A (real) **normed vector space** is a vector space $(V, \mathbb{R})$ with an operation $\| \cdot \| : V \to \mathbb{R}$ satisfying:

 - for all $v \in V$, $\|v\| \geq 0$, and $\|v\| = 0$ iff $v = 0$
 - for all scalars $a \in \mathbb{R}$, $\|av\| = |a| \|v \|$
 - for all $v, w \in V$, $\|v + w\| \leq \|v\| + \|w\|$.

## Some basic facts about normed vector spaces
If $V$ is a normed vector space, then

 1. For any $x, y \in V$, $\|x\| - \|y\| \leq \|x - y\|$
 2. for any $x_1, \ldots, x_n \in V, $\| \sum_1^n x_i \| \leq \sum_1^n ||x_i\|

*Proof:* (1) is proved by applying the triangle inequality applied to $y = x + (y-x)$ yields $\|y\| \leq \|x\| + \|y - x\|$. Re-arrangement proves the statment.

For (2), we know it holds for $n = 1$ and $n = 2$. Suppose it holds for some $k$, Then 

$$
\begin{aligned}

\| \sum_1^{k+1} x_i \| & \leq \| sum_1^k x_i \| + \| x_{k+1} \| \\
                       & \leq \sum_1^{k+1} \|x_i\| 
\end{aligned}
$$

where the first inequality holds by triangle inequality and the second holds by the induction hypothesis.


## A normed vector space is a metric space.
Define a metric on any normed vector space $V$ by $d(x, y) = \|x - y\|$. Then $d$ is a function $V \to \mathbb{R}$, and we must have:

 1. $d(x,y) \geq 0$ for all $x, y \in V$ and $d(x,y) = 0$ iff $x = y$.
 2. $d(x,y) = d(y, x)$
 3. $d(x, z) \leq d(x, y) + d(y, z)$

*Proof:* For (1), $d(x, y) = \|x - y\|$, so it must be non-negative since the norm is. Clearly if $x = y$, then $d(x,y) = d(x,x) = \|x - x\| = \|0\| = 0$. Conversely, if $x \neq y$, then $x - y \neq 0$, so $d(x, y) = \|x - y\| > 0$.

For (2), note that $\|x - y\| = \|y - x\|$ by homogeneity.

For (3), we must prove $\|x - z\| \leq \|x - y\| = \|y - z\|$. This, however, is a direct consequence of the triangle inequality.


## Definition of real inner product space
A **real inner product space** is a vector space $(V, \mathbb{R})$ along with an operation $V \times V \to \mathbb{R}$, written $\langle x, y \rangle$ for $x, y \in V$, that satisfies:

 - positive definiteness: for all $x \in V$, $\langle x, x \rangle \geq 0$, and $\langle x, x \rangle = 0$ iff $x = 0$
 - symmetric: for all $x, y \in V$, \langle x, y \rangle = \langle y, x \rangle$
 - linearity: for all $x, y, z \in V$ and $a, b \in \mathbb{R}$, $\langle ax + by, z \rangle = a \langle x, z \rangle + b \langle y, z \rangle$

If $\langle x, y \rangle = 0$, then we call $x$ and $y$ **orthogonal**.

## An inner product induces a norm
Define $\|x\| = \sqrt \langle x, x \rangle$. This is well-defined since $\langle x, x \rangle$ is always non-negative. Then we can prove

 - for all $v \in V$, $\|v\| \geq 0$, and $\|v\| = 0$ iff $v = 0$
 - for all scalars $a \in \mathbb{R}$, $\|av\| = |a| \|v \|$

*Proof:* $\|v\| = \sqrt \langle v, v \rangle$. But the square root is non-negative, so $\|v\|$ must be as well. Also, clearly if $v = 0$, then $\langle v, v \rangle = 0$ by inner product axioms, so $\|v\| = 0$. conversely, if $v \neq 0$, $\langle v, v \rangle > 0$, so $\|v\| > 0$.

## Basic property of norms/inner producs
For all $v \in V$, with $V$ an inner product space, $\|v\|^2 = \langle v, v \rangle$

*Proof:* $\|v\^2 = (\sqrt \langle v, v \rangle)^2 = | \langle v, v \rangle | = \langle v, v \rangle$, where the last equality holds by positive-definite property of the inner product.

## Normalizing vectors
For non-zero vector $x$, we can define $\hat{x} = x / \|x\|$. Then $\| \hat{x} \| = 1 = \langle \hat{x}, \hat{x} \rangle$.

*Proof:* $\|x\| = 0$ iff $x = 0$, so we can define $\hat{x}$. $\langle \hat{x}, \hat{x} \rangle$ = \langle x , x \rangle / \|x\|^2 = 1$, where the first equality holds by linearity and the second holds from the previous proposition that $\|x\|^2 = \langle x, x \rangle$. But this implies $\| \hat{x} \| = \sqrt 1 = 1$.


### Remark
We are still missing the proof that the triangle inequality holds, which is needed to prove that this function turns any inner product space into a normed vector space. We need to prove the Cauchy-Schwarz inequality first. We prove this next.

## Pythagorean property
If $\langle x, y \rangle = 0$, then $\|x + y\|^2 = \|x\|^2 + \|y\|^2$.

*Proof:* $\|x + y\|^2 = \langle x + y, x + y \rangle = \|x\|^2 + \|y\|^2 + 2 \langle x, y \rangle$. The statement follows since $\langle x, y \rangle = 0$.


## Cauchy-Schwarz inequality
If $x, y \in V$ and $V$ is an inner product space, then $| \langle x, y \rangle | \leq \|x\| \|y\|$.

*Proof:* Let $u = \langle \hat{x}, y \rangle \hat{x}$, where $\hat{x} = x / \|x\|$. Then clearly $y = u + y - u$. We also have

$$\langle u, y - u \rangle = \langle u, y \rangle - \langle u, u \rangle$$.

By linearity and the fact that $\hat{x}$ is a normaized vector, $\langle u, u \rangle = \langle \hat{x}, y \rangle^2$

Also, $\langle u, y \rangle = \langle \hat{x}, y \rangle^2$. So in fact $\langle u, y - u \rangle = 0$, i.e. the vectors are orthogonal.

So we can apply the Pythagorean property to obtain $\|y\|^2 = \|u\|^2 + \|y - u\|^2$. Rearranging and applying positive-definiteness and a fact from above, we have:

$$0 \leq \|y - u\|^2 = \|y\|^2 - \|u\|^2 = \|y\|^2 - \langle \hat{x}, y \rangle^2$$

Since $\langle \hat{x}, y \rangle^2 = \langle x, y \rangle^2 / \|x\|^2$, we have

$$ 0 \leq \frac{\|x\|^2 \|y\|^2 - \langle x, y \rangle^2}{\|x\|^2}$$

We must therefore have $\langle x, y \rangle^2 \leq \|x\|^2 \|y\|^2. But this implies

$$| \langle x,  y \rangle | \leq \|x\| \|y\|$$


### Corollary: the triangle inequality
For any $x, y$ in inner product space $V$, $\|x + y\| \leq \|x\| + \|y\|$.

*Proof:*

$$
\begin{aligned}
\|x + y\|^2 & = \|x\|^2 + \|y\|^2 + 2 \langle x, y \rangle \\
              & \leq \|x\|^2 + \|y\|^2 + 2 | \langle x, y \rangle | \\
              & \leq \|x\|^2 | \|y\|^2 + 2 \|x\| \|y|| \\
              & = (\|x\| + \|y\|)^2
\end{aligned}
$$


### Remark
This proves that any real inner product space is a normed vector space under the norm induced by the inner product. Consequently, an inner product space is a metric space (since any normed vector space is) under the metric $d(x, y) = \|x - y\|$.



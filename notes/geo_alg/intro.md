## Definition of bilinear form
If $(V, \mathbb{F})$ is a vector space, then $f: V \times V \to \mathbb{F}$ is called a **bilinear form** provided that for any $u \in V$, the functions $f_{1, u}, f_{2, u}: V \to \mathbb{F}$ defined by

 - $f_{1, u}(v) = f(u, v)$
 - $f_{2, u}(v) = f(v, u)$

are linear.

The bilinear form $f$ is said to be **symmetric** if $f(u, v) = f(v, u)$ for all $u, v \in V$.

If $u, v \in V$, then $(u, v)$ is said to be an **orthogonal pair** under $f$ precisely if $f(u, v) = 0$. Note that it may be possible for $f(u, v) = 0 \neq f(v, u)$, meaning $(u, v)$ could be an orthogonal pair without $(v, u)$ being orthogonal.

A bilinear form $f$ is said to be **reflexive** if for all $u, v$, if $f(u, v) = 0$, then $f(v, u) = 0$ as well. For a reflexive bilinear form, $(u, v)$ is an orthogonal pair iff $(v, u)$ is, meaning we can just say that $u$ and $v$ are **orthogonal**.

A **geometric algebra** is a tuple $(G, \mathbb{F}, V, +, \ast, 0, 1)$ that obeys the following axioms:

 1. $(G, +, \ast, 0, 1)$ is a ring, where $(G, +, 0)$ is the commutative group, $\ast$ is the multiplication and $1$ is the multiplicative identity
 2. $\mathbb{F}, V$ are subsets of $G$.
 3. $\mathbb{F}$ is a field of characteristic zero containing $0$ and $1$
 4. $(V, \mathbb{F}, +, \cdot)$ is a closed under addition and for all $a \in \mathbb{F}$ and $v \in V$, $a \ast v = v \ast a \in V$
 5. for all $v \in V$, $v \ast v \in \mathbb{F}$
 6. the function $B: G \times G \to G$ defined by $B(u, v) = \frac{1}{2}(u \ast v + v \ast u)$ is such that for every $u \neq 0$, there is a $v$ such that $B(u, v) \neq 0$.
 7. First, note that a construct similar to that used in (4) can be used to show that $G$ is a vector space over the field $\mathbb{F}$. The product of $r$ orthogonal vectors is said to be an **$r$-blade**, and any sum of $r$-blades is said to be a **homogeneous multivectors of grade $r$**, or simply an **$r$-vector**. Then by (4), any product of an $r$-blade with a scalar is an $r$-blade again, so that the collection $G_r$ of $r$-blades is a subspace of $G$ considered as a vector space over $\mathbb{F}$. The seventh axiom is that either $\mathbb{F} = V$, in which case $G = \mathbb{F}$, or $\mathbb{F} = V$, in which case $G_0 = \mathbb{F}$, $G_1 = V$, and $G$ is the direct sum of all $G_r$'s.


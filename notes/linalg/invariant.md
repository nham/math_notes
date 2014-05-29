## Definition of an algebra
An **algebra** is any vector space $(V, \mathbb{F})$ with a multiplication $\ast: V \times V \to V$ which is bilinear. If $\ast$ is associative, then the algebra is an **associative algebra**. If there is an $e \in V$ such that $e \ast v = v \ast e = v$ for all $v \in V$, then $V$ is a **unital algebra**.


## A field is an associative, unital algebra
Any field $\mathbb{F}$ is an associative, unital algebra.

*Proof:* We know that a field is a vector space over itself. If we define $\ast$ to be field multiplication, then it holds since $\mathbb{F}$, being a field, is a ring, so the identity under the bilinear product is the multiplicative identity of the field.


## Algebra products with zero
If $a \in A$, where $A$ is an algebra, then $a \ast 0 = 0 \ast a = 0$.

*Proof:* $a \ast 0 = a \ast (0 + 0) = a \ast 0 + a \ast 0$. Use the vector cancellation law to obtain $a \ast 0 = 0$. A similar proof proves the other proposition.


## Algebra of endomorphisms
For any vector space $V$, $Hom(V)$ is an associative, unital algebra with the associative, bilinear product taken to be composition.

*Proof:* Theorems above prove bilinearity. All function composition is associative. The identity element is the identity map on $V$.


## Definition of formal polynomial over a field
A **formal polynomial over $\mathbb{F}$** is a function $\mathbb{N} \to \mathbb{F}$ with finite support. It has already been proven (see the tensor notes) that the set $\mathbb{F}[x]$ of all formal polynomials over $\mathbb{F}$ is a vector space.

The **degree** of a formal polynomial $p$ is the biggest $i \in \mathbb{N}$ such that $p(i) \neq 0$. This is denoted $deg p$. This measure is undefined for the **zero polynomial** $n \mapsto 0$.


## Definition of polynomial root
If $p$ is a $m$-degree formal polynomial over $\mathbb{F}$, then $a \in \mathbb{F}$ is said to be a **root** of $p$ iff $\sum_{i=0}^m p(i) a^i = 0$.


## Definition of a monic polynomial
A $p \in \mathbb{F}[x]$ is **monic** iff $p(deg p) = 1$.


## Definition of formal polynomial multiplication
If $p$ and $q$ are formal polynomials over $\mathbb{F}$, then we define $p \ast q$ by $(p \ast q)(k) = \sum_{i=0}^k p(i) q(k - i)$. $p \ast q$ is a polynomial of degree $deg p + deg q$.


**Proof:* We first need to check that there are finitely many $k$ such that $(p \ast q)(k) \neq 0$. If $z > m + n$, then $(p \ast q)(z) = \sum_{i = 0}^{z} p(i) q(z - i)$.

Since $q(z-i) = 0$ for all $0 \leq i \leq m$ (on account of z-i > m + n - i \geq n$ for all such $i$), and since $p(i) = 0$ for all $m+1 \leq i \leq m + n$, we have $(p \ast q)(z) = 0$.

However, $(p \ast q)(m + n) = \sum_{i=0}^{m+n} p(i) q(m+n-i) = p(m) q(n)$ since for all $i < m$, $m + n - i > n$ (and hence $q(m+n-i) = 0$),and for all $i > m$, $p(i) = 0$ since $deg p = m$.


## $\mathbb{F}[x]$ is an algebra
The space $\mathbb{F}[x]$ is an algebra under polynomial multiplication.

*Proof:* The only thing we need to prove is that multiplication distributes over polynomial addition. So if $p, q, r \in \mathbb{F}[x]$, then

$$((p + q) r)(k) = \sum_{i=0}^k (p(i) + q(i)) r(k-i) = (p r)(k) + (q r)(k)$$

Ditto for $p (q + r)$. So the product distributes over addition.


## Polynomial multiplication is commutative
If $p, q \in \mathbb{F}[x]$, then $pq = qp$.

*Proof:* $(pq)(k) = \sum_{i=0}^k p(i) q(k-i) = \sum_{i=0}^k p(k-i) q(i) = (qp)(k)$ by commutativity of addition in the field.


## Reformulating polynomial multiplication
If $p, q \in \mathbb{F}[x]$, then $(p q)(k) = \sum_{i, j \in \mathbb{N}, i + j = k} p(i) q(j)$, where the sum is well defined because addition in $\mathbb{F}$ is both commutative and associative.

*Proof:* If $i + j = k$, then $i \in \{0, \ldots, k\}$ since $j$ can't be negative, and then we must have $j = k - i$. Conversely, any pair $(i, j)$ such that $i \in \{0, \ldots, k\}$ and $j = k - i$ has $i + j = k$.


## Polynomial multiplication is associative
If $p, q, r \in \mathbb{F}[x]$, then $(pq)r = p(qr)$.

*Proof:*

$$[(pq)r](m) = \sum_{j+k = m} (pq)(j) r(k) = \sum_{j+k=m} (\sum_{a+b=j} p(a) q(b)) r(k) = \sum_{j+k=m} \sum_{a + b = j} p(a) q(b) r(k)$$

$$[p(qr)](m) = \sum_{j+k = m} p(j) (qr)(k) = \sum_{j+k=m} p(j) (\sum_{a+b=j} q(a) r(b)) = \sum_{j+k=m} \sum_{a + b = j} p(j) q(a) r(b)$$

But if $(a,b,k)$ is such that $a + b = j$ and $j+k=m$ for some $0 \leq j \leq m$, then $a + b + k = m$. Conversely, if $x + y + z = m$ for $x, y, z \in \mathbb{N}$, then $j := y + z \in \{0, \ldots, m\}$  and $x + j = m$. So

$$[(pq)r](m) = \sum_{i+j+k = m} p(i) q(j) r(k)$$ 

holds by commutativity and associativity. The same holds for $p(qr)$.

(I realize this is handwavy, but it seems a bit tedious to prove this and it is intuitively clear why it should be true)


## Notation for formal polynomials
For any field $\mathbb{F}$, denote by $X$ the polynomial $(a_n)$ such that $a_1 = 1$ and $a_k = 0$ for all $k \neq 1$. 

We also denote, for any $c \in \mathbb{F}$, the polynomial $(b_n)$ such that $b_0 = c$ and $b_k = 0$ for all $k \neq 0$ by $c$. Such a polynomial is a **constant polynomial**. We will rely on context to disambiguate whether we mean the polynomial or the field element.


## $\mathbb{F}[x]$ is a unital, associative algebra
For any $p \in \mathbb{F}[x]$, $p 1 = 1 p = p$.

*Proof:* $1$ here is the constant polynomial. $(p 1)(k) = \sum_{i=0}^k p(i) 1(k-i)$. But $1(k-i)$ is only nonzero when $i = k$, so $(p 1)(k) = p(k) 1(0) = p(k)$. The same proof holds for $(1 p)$.


### Corollary, ring of polynomials
$\mathbb{F}[x]$ is a commutative ring under polynomial addition and multiplication.

*Proof:* We know that it's an abelian group under addition. $\mathbb{F}[x]$ being a unital, associative algebra proves that it's also a ring. Since multiplication is commutative, the ring is commutative.



## Definition of powers of formal polynomials
If $p \in \mathbb{F}[x]$, then we define $p^0 = 1$, $p^n := p^{n-1} p$. This is well-defined since $\mathbb{F}[x]$ is a monoid under polynomial multiplication.



## Monic monomials are products of $X$
$X^n$ is the formal polynomial $(a_k)$ such that $a_n = 1$ and $a_k = 0$ for $k \neq n$.

*Proof:* $X^2(k) = \sum_{i=0}^k X(i) X(k - i)$. This is only nonzero when $i = k - i = 1$, which happens only when $i = 1$ and $k = 2$.

Suppose now that it's true for $X^{n-1}$. Then $X^n = X^{n-1} X$, so $X^n(k) = \sum_{i=0}^k X^{n-1}(i) X(k - i)$. This is only nonzero when $i = n-1$ and $k - i = 1$, so $k = n$.


## Writing formal polynomials as sums of monomials
If $p \in \mathbb{F}[x]$ with $n = deg p$, then $p = \sum_0^n p(k) X^k$.

*Proof:* Obvious given the last proposition about what polynomial $X^k$ is.


## Polynomial division and roots
If $p$ is a formal polynomial over $\mathbb{F}$, $deg p > 0$ and $c$ is a root of $p$, then there is a $q \in \mathbb{F}[x]$ with $deg q = (deg p) - 1$ such that $p = (X - c) \ast q$.

*Proof:* Let $m = deg p$.  Define $a_k = p(k)$ for all $k$, so that $p = \sum_0^m a_k X^k$. By definition of roots, we know $\sum_0^n p(k) c^k = 0 \in \mathbb{F}$.

If $c = 0$, then $\sum_0^m p(k) c^k = p(0) c^0 = p(0) = 0$, so $p = \sum_1^m a_k X^k = X (\sum_0^{m-1} a_{k+1} X^k)$, and $q = \sum_0^{m-1} a_{k+1} X^k$.

Now assume that $c \neq 0$. Then for $0 \leq k \leq m-2$, define $b_k = - \sum_{j=0}^k a_j / c^{k - j + 1}$ and define $b_{m-1} = a_m$. Define $q = \sum_0^{m-1} b_k X^k$. Then

$$
\begin{aligned}
(X - c) q & = (X - c) (\sum_1^{m-1} b_k X^k) \\
          & = $\sum_1^{m-1} b_k X^{k+1} + \sum_1^{m-1} -c b_k X^k \\
          & = b_{m-1} X^m - c b_0 X^0 + \sum_{k=1}^{m-1} (b_{k-1} - c b_k) X^k$$
\end{aligned}
$$

But for all $k$ with $1 \leq k \leq m-2$, $-c b_k = \sum_{j=0}^k a_j / c^{k - j} = a_k + \sum_{j=0}^{k-1} a_j / c^{k-j} = a_k - b_{k-1}$, so $b_{k-1} - c b_k = a_k$. Hence

$$(X - c) q = b_{m-1} X^m - c b_0 X^0 + \sum_{k=1}^{m-1} a_k X^k$$

Since $b_0 = - a_0 / c$ by definition and $b_{m-1} = a_m$, we have:

$$(X - c) q = \sum_{k=0}^m a_k X^k = p$$


### Corollary
If $p \in \mathbb{F}[x]$ with $n = deg p$ and $c \in \mathbb{F}$ is a root of $p$, then if $q \in \mathbb{F}[x]$ is a polynomial such that $p = (X - c)q$, then every root $b$ of $p$ such that $b \neq c$ is a root of $q$.

*Proof:*  By hypothesis $\sum_0^n p(k) b^k = 0$. Letting $r = X - c$, we have by definition of multiplication, $p(k) = \sum_{i=0}^k r(i) q(k - i)$, so:

$$\sum_0^n b^k \sum_{i=0}^k r(i) q(k-i) = 0$$

but

$$0 = \sum_0^n b^k \sum_{i=0}^k r(i) q(k-i) = (b - c) (\sum_0^{n-1} b^k q(k))$$

Since $b \neq c$, by the cancellation law $\sum_0^{n-1} b^k q(k) = 0$, so $b$ is a root of $q$.



## Definition of invariant subspace
If $T: V \to V$ is a linear operator and $W$ is a subspace of $V$ such that $T(W) \subseteq W$, then $W$ is an **invariant subspace** under $T$.

If $W \neq \{0\}$ and $W \neq V$, then $W$ is a **proper invariant subspace**.

## Example: 1-dimensional invariant subspace
If $T: V \to V$ is a linear operator and $W$ is a 1-dimensional subspace of $V$, then if $W$ is an invariant subspace, for all $w \in W$ with $w \neq 0$, we have $T(w) \in W$, or $T(w) = aw$ for some scalar $a$. Furthermore, since any other element of $W$ is a scalar multiple of $w$, by linearity we have $T(z) = az$ for all $z \in W$. So $T$ just scales all the elements of $W$ by some scalar $a$.


## Definition of eigenvalues, eigenvectors
A scalar $a$ is said to be an **eigenvalue** of a linear map $T: V \to V$ if there is a non-zero $v \in V$ such that $T(v) = av$. A non-zero vector $v$ is said to be an **eigenvector** if there is a scalar $a$ such that $T(v) = av$.

## Why zero can't be an eigenvector
$a0 = 0$ for any $a$ and $T(0) = 0$, so if $0$ were an eigenvector then every scalar would be an eigenvalue.

## When zero is an eigenvalue
If zero is an eigenvalue, then we must have some $v \neq 0$ such that $T(v) = 0v = 0$. In other words, the null space is non-trivial. This implies that the linear map is not injective. Conversely, any non-zero vector in the null space will have zero as an eigenvalue. So a linear map fails to be injective iff it has zero as an eigenvalue.


## Definition of eigenspace and geometric multiplicity for an eigenvalue

Note that if $u$ and $v$ are two eigenvectors for a given eigenvalue $a$, that $u+v$ is also an eigenvector provided that $u+v \neq 0$, since $T(u+v) = T(u) + T(v) = au + av = a(u + v)$. Also, if $c \neq 0$ is a scalar, then $cu$ is an eigenvector: $T(cu) = c T(u) = c(au) = a(cu)$. If we let $S_a$ be the set of all eigenvectors for an eigenvalue $a$, then $S_a \cup \{0\}$ is a subspace of $V$, called the **eigenspace** of $a$. The dimension of this subspace is called the **geometric multiplicity** of the eigenvector $a$.


## Definition of spectrum
The set of all eigenvalues for a linear map is called its **spectrum**.


## Definition of characteristic polynomial
If $T: V \to V$ is a linear operator, then $\chi_T: \mathbb{F} \to \mathbb{F}$ defined by $\chi(a) = det(T - a I_n)$, where $n = dim V$, is called the **characteristic polynomial** of $T$.

## The characteristic polynomial is a polynomial
For any linear operator $T: V \to V$, $\chi_T$ is a polynomial.

*Proof:* By definition, if $\{v_1, \ldots, v_n\}$ is a basis for $V$, then

$$det(T - a I_n) := \sum_{\sigma in S_n} (sgn \sigma) \prod_{i = 1}^n [T(v_i) - a v_i, v_{\sigma(i)}^{\ast}]$$

by bilinearity:

$$det(T - a I_n) := \sum_{\sigma in S_n} (sgn \sigma) \prod_{i = 1}^n [T(v_i), v_{\sigma(i)}^{\ast}] - a [v_i, v_{\sigma(i)}^{\ast}]$$

So $\chi_T$ a linear combination of a product of linear polynomials, hence is also a polynomial.


## Equivalent characterization of eigenvalue
If $T: V \to V$ is a linear operator and $a \in \mathbb{F}$, then the following are equivalent:

 1. $a$ is an eigenvalue for $T$
 2. the null space of $T - a I_n$ is non-trivial
 3. $T - a I_n$ is not invertible
 4. $a$ is root of $\chi_T$

*Proof:* If there is a $v \in V$, $v \neq 0$, such that $T(v) = av$, then $(T - a I_n)(v) = 0$. In other words, $v$ in the null space of $T - a I_n$. But $v$ is nonzero, so that means the null space of $T - a I_n$ is non-trivial. 

Conversely, If $v \in V$, $v \neq 0$ is in the null space of $T - a I_n$, then $T(v) = av$, so $a$ is an eigenvalue of $T$. This establishes that (1) and (2) are equivalent. 

If (2) is true, then it is not injective, hence not invertible. If (3) is true, since $T - a I_n$ is a function $V \to V$, its injectivity would imply invertibility, so $T - a I_n$ is not invertible, hence its null space must be non-trivial. So (2) and (3) are equivalent.

Any $a$ is a root of $\chi_T$ iff $det(T - a I_n) = 0$, which is true iff $T - a I_n$ is singular. So (3) and (4) are equivalent.

### Corollary: equivalent definition of spectrum
The spectrum of $T$ is the set of all roots of $\chi_T$.


## Equivalent definition of eigenspace
If $T: V \to V$ is a linear operator, $a$ is an eigenvalue, then the eigenspace $V_a$ of $a$ under $T$ is equal to the null space of $(T - a I_n)$, denoted $N(T - a I_n)$.

*Proof:* If $v \in V_a$, then $T(v) = av$, so $(T - a I_n)(v) = av - av = 0$. Conversely if $(T - a I_n)(v) = 0, then $T(v) = aI(v) = av$.

### Corollary
The set of eigenvectors of an eigenvalue $a$ of $T$ is all nonzero elements of the null space of $T - a I_n$.


## Eigenspaces are invariant subspaces
If $T: V \to V$ is a linear operator and $E$ is the eigenspace of the operator, then $T(E) \subseteq E$.

*Proof:* For all nonzero $v \in E$, $v$ is an eigenvector, so $T(v) = av$ for some a, which is certainly in $E$.


## Conjugate operators have the same characteristic polynomials
If $S, T \in Hom(V)$ are conjugate linear operators, then $\chi_S = \chi_T$.

*Proof:* By hypothesis, there is an invertible $R \in Hom(V)$ such that $S = R^{-1} T R$, so for any $a \in \mathbb{F}$, $R^{-1}(T - a I_n)R = R(R^{-1}T - a R^{-1})R = S - a I_n$. This proves that $det(S - a I_n) = det(R^{-1}) det(T - a I_n) det(R) = (det R)^{-1} det(T - a I_n) (det R) = det(T - a I_n)$. This proves that $S$ and $T$'s characteristic polynomials are the same.


## Definition of a polynomials of an operator
If $T: V \to V$ is a linear operator and $p \in \mathbb{F}[x]$ is a formal polynomial over $V$'s field, then we denote by $p(T)$ the operator $\sum_0^m p(k) T$, where $m = deg p$.


## Invariant subspaces and polynomials of an operator
If $V$ is a vector space, $T: V \to V$ is a linear operator, $W$ is a $T$-invariant subspace of $V$, and $p \in \mathbb{F}[x]$, then $W$ is a $p(T)$-invariant subspace of $V$.

 1. If $W$ is $T$-invariant, then it is $T^j$-invariant for all $j$

    *Proof:* Clearly it is $T^0 = I_n$-invariant. If $W$ is $T^k$-invariant, then $T^k(W) \subseteq W$, so $T^{k+1}(W) = T(T^k(W)) \subseteq T(W) \subseteq W$.

 2. If $F, G \in Hom(V)$ and $W$ is both an $F$-invariant and $G$-invariant subspace, then if $c, d \in \mathbb{F}$, $W$ is $cF + dG$-invariant subspace.

    *Proof:* If $w \in W$, $F(w)$ and $G(w)$ are in $W$, so certainly $(cF+dG)(w) = cF(w) + dG(w)$ is as well since $W$ is a subspace.

 3. Q.E.D.

    *Proof:* By (1), $p(T)$ is a scalar multiple of operators that have $W$ as an invariant subspace, so by (2) $W$ is also $p(T)$-invariant.



## A collection of eigenvectors is independent
TODO: should allow for multiplicities?

If $S$ is a finite collection of eigenvectors of an operator $T: V \to V$ and $A$ is a collection of eigenvalues such that there is a bijection $A \to S$ that assigns to every eigenvalue one of its eigenvectors, then $S$ is independent.

*Proof:* We can let $W = span S$. Then we can find a $R \subseteq S$ such that $R$ is a basis for $W$. So if $S$ is dependent, then $R \neq S$, or rather there is a $v \in S - R$ which is in the $span R$. That is, $v = \sum_{r \in R} c_r r$. Letting $a$ be the eigenvalue of $v$ and letting $f: S \to A$ be the bijection assigning eigenvectors in $S$ to their eigenvalues (so that $f(v) = a$), we have:

$$\sum_{r \in R} c_r T(r) = T(v) = av = a \sum_{r \in R} c_r r$$

Since each $T(r) = f(r) r$ by definition (the eigenvalue of each $r$ is $f(r)$), this gives us a combination $\sum_{r \in R} c_r (f(r) - a) r = 0$. Since $R$ is independent, we must have $c_r (f(r) - a) = 0$ for all $r$. Since $v \neq 0$, we have at least one $f(r) = a$. But the eigenvalues are distinct, so this is a contradiction.

### Corollary
There are at most $dim V$ distinct eigenvalues for any operator on $V$.

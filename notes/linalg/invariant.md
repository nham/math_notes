## Definition of polynomials over an associative algebra with identity
If $(A, +, \cdot, \ast, e)$ is an associative algebra over $\mathbb{F}$ and $e$ is an identity under $\ast$, then for any $a_0, \ldots, a_n \in \mathbb{F}$, we can define $p: A \to A$ by $p(x) := \sum_{k=0}^n a_k \cdot x^k$ where $x^k$ is defined over $A$'s product and $x^0 := e$. $p$ is called a **polynomial** over $A$.

The **degree** of a polynomial $q$ defined by $q(x) = \sum{k=0}^n a_k x^k$ is the biggest $j$ such that $a_j \neq 0$. It is denoted $deg q$. The degree is not defined for the so-called **zero polynomial**, $q(x) = 0$. Some sources define it to be $-1$ or $- \infty$. I'm not sure on the arguments here yet, so I will leave it undefined for now.


## Definition of polynomial multiplication
For any polynomials $p$ and $q$ of degrees $m = deg p$, $n = deg q$, their multiplication $pq$ is defined by $(pq)(x) = p(x) \ast q(x)$ is a polynomial of degree $m + n$.

*Proof:* $p(x) \ast q(x) = (\sum_{k=0}^m a_k x^k) \ast (\sum_{k=0}^n b_k x^k)$, so

$$p(x) \ast q(x) = \sum_{j=0}^m a_j \sum_{k=0}^n b_k x^{k+j} = \sum_{k=0}^{m+n} x^k \sum_{i+j = k, (i,j) \in [m] \times [n]} a_i b_j$$

Since $a_m \neq 0 \neq b_n$, $a_m b_n \neq 0$, so $deg(p \ast q) = m + n$


## Polynomial division and roots
If $p$ is a polynomial over an associative unital algebra $A$ and $deg p > 0$ and $p(a) = 0$, then there is a polynomial $q$ with $deg q = (deg p) - 1$ such that $p(x) = (x - a) q(x)$ for all $x \in A$.

*Proof:* Let $m = deg p$.  Also suppose that $p(x) := \sum_0^m a_k x^k$. If $a = 0$ and $a_0 \neq 0$, then $p(a) = a_0 \neq 0$, a contradiction. So $p(x) = \sum_1^m a_k x_k = x (\sum_0^{m-1} a_{k+1} x^k$.

Now assume that $a \neq 0$. Then for $0 \leq k \leq m-2$, define $b_k = - \sum_{j=0}^k a_j / a^{k - j + 1}$ and define $b_{m-1} = a_m$. If $r$ is the polynomial $r(x) - (x - a)$, then 

$$(q \ast r)(x) = (\sum_1^{m-1} b_k x^k)(x - a) = b_{m-1} x^m - a b_0 x^0 + \sum_{k=1}^{m-1} (b_{k-1} - a b_k) x^k$$

But $-a b_k = \sum_{j=0}^k a_j / a^{k - j} = a_k + \sum_{j=0}^{k-1} a_j / a^{k-j} = a_k - b_{k-1}$, so $b_{k-1} - a b_k = a_k$. Hence

$$(q \ast r)(x) = b_{m-1} x^m - a b_0 x^0 + \sum_{k=1}^{m-1} a_k x^k$$

Since $b_0 = - a_0 / a$ by definition, $-a b_0 = a_0$, so

$$(q \ast r)(x) = \sum_{k=0}^{m} a_k x^k = p(x)$$



## Definition of invariant subspace
If $T: V \to V$ is a linear operator and $W$ is a subspace of $V$ such that $T(W) \subseteq W$, then $W$ is an **invariant subspace** under $T$.

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



## A collection of eigenvectors is independent
If $S$ is a finite collection of eigenvectors of an operator $T: V \to V$ and $A$ is a collection of eigenvalues such that there is a bijection $A \to S$ that assigns to every eigenvalue one of its eigenvectors, then $S$ is independent.

*Proof:* We can let $W = span S$. Then we can find a $R \subseteq S$ such that $R$ is a basis for $W$. So if $S$ is dependent, then $R \neq S$, or rather there is a $v \in S - R$ which is in the $span R$. That is, $v = \sum_{r \in R} c_r r$. Letting $a$ be the eigenvalue of $v$ and letting $f: S \to A$ be the bijection assigning eigenvectors in $S$ to their eigenvalues (so that $f(v) = a$), we have:

$$\sum_{r \in R} c_r T(r) = T(v) = av = a \sum_{r \in R} c_r r$$

Since each $T(r) = f(r) r$ by definition (the eigenvalue of each $r$ is $f(r)$), this gives us a combination $\sum_{r \in R} c_r (f(r) - a) r = 0$. Since $R$ is independent, we must have $c_r (f(r) - a) = 0$ for all $r$. Since $v \neq 0$, we have at least one $f(r) = a$. But the eigenvalues are distinct, so this is a contradiction.

### Corollary
There are at most $dim V$ distinct eigenvalues for any operator on $V$.

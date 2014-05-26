## Definition of polynomials over an associative algebra with identity
If $(A, +, \cdot, \ast, e)$ is an associative algebra over $\mathbb{F}$ and $e$ is an identity under $\ast$, then for any $a_0, \ldots, a_n \in \mathbb{F}$, we can define $p(x) := \sum_{k=0}^n a_k \cdot x^k$ where $x^k$ is defined over $A$'s product and $x^0 := e$. $p$ is called a **polynomial** over $A$.

The **degree** of a polynomial $q$ defined by $q(x) = \sum{k=0}^n a_k x^k$ is the biggest $j$ such that $a_j \neq 0$. It is denoted $deg q$. The degree is not defined for the so-called **zero polynomial**, $q(x) = 0$.


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

Note that if $u$ and $v$ are two eigenvectors for a given eigenvalue $a$, that $u+v$ is also an eigenvector provided that $u+v \neq 0$, since $T(u+v) = T(u) + T(v) = au + av = a(u + v)$. Also, if $c$ is a scalar, then $cu$ is an eigenvector if $u$ is, again provided that $cu \neq 0$: $T(cu) = c T(u) = c(au) = a(cu)$. If we let $S_a$ be the set of all eigenvectors for an eigenvalue $a$, then $S_a \cup \{0\}$ is a subspace of $V$, called the **eigenspace** of $a$. The dimension of this subspace is called the **geometric multiplicity** of the eigenvector $a$.

## Equivalent definition of eigenspace
If $T: V \to V$ is a linear operator, $a$ is an eigenvalue, then the eigenspace $V_a$ of $a$ is equal to the null space of $(T - aI)$, denoted $N(T - aI)$.

*Proof:* If $v \in V_a$, then $T(v) = av$, so $(T - aI)(v) = av - av = 0$. Conversely if $(T - aI)(v) = 0, then $T(v) = aI(v) = av$.

## Equivalent characterization of eigenvalue
$a$ is an eigenvalue for a linear operator $T: V \to V$ iff the null space of $T - aI$ is non-trivial.

*Proof:* If $a$ is an eigenvalue, then its eigenspace is never equal to $\{0\}$ because it must, by definition, have an associated (nonzero) eigenvector. Conversely, if no nonzero $v$ has $(T - aI)(v) = 0$, then no nonzero $v$'s have $T(v) = av$, so $a$ is not an eigenvalue.

## Eigenvalue iff the characteristic polynomial is invertible
We can extend the previous proposition: since $T - aI$ is an operator (a linear endomap), $T - aI$ is not invertible iff $a$ is an eigenvalue for $T$.

*Proof:* $T - aI$ is invertible iff $T - aI$ is injective iff the null space of $T - aI$ is trivial all hold by previously proved propositions. We use the previously proved proposition to obtain the statement.


## Eigenspaces are invariant subspaces
If $T: V \to V$ is a linear operator and $E$ is the eigenspace of the operator, then $T(E) \subseteq E$.

*Proof:* For all nonzero $v \in E$, $v$ is an eigenvector, so $T(v) = av$ for some a, which is certainly in $E$.

## Definition of spectrum
The set of all eigenvalues for a linear map is called its **spectrum**.

## A collection of eigenvectors is independent
If $S$ is a finite collection of eigenvectors of an operator $T: V \to V$ and $A$ is a collection of eigenvalues such that there is a bijection $A \to S$ that assigns to every eigenvalue one of its eigenvectors, then $S$ is independent.

*Proof:* We can let $W = span S$. Then we can find a $R \subseteq S$ such that $R$ is a basis for $W$. So if $S$ is dependent, then $R \neq S$, or rather there is a $v \in S - R$ which is in the $span R$. That is, $v = \sum_{r \in R} c_r r$. Letting $a$ be the eigenvalue of $v$ and letting $f: S \to A$ be the bijection assigning eigenvectors in $S$ to their eigenvalues (so that $f(v) = a$), we have:

$$\sum_{r \in R} c_r T(r) = T(v) = av = a \sum_{r \in R} c_r r$$

Since each $T(r) = f(r) r$ by definition (the eigenvalue of each $r$ is $f(r)$), this gives us a combination $\sum_{r \in R} c_r (f(r) - a) r = 0$. Since $R$ is independent, we must have $c_r (f(r) - a) = 0$ for all $r$. Since $v \neq 0$, we have at least one $f(r) = a$. But the eigenvalues are distinct, so this is a contradiction.

### Corollary
There are at most $dim V$ distinct eigenvalues for any operator on $V$.

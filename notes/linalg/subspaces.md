# Introduction to subspaces
These depend on the elementary notes introducing vector spaces and dimension. We define subspaces and two basic operations on collections of subspaces: intersection and sum. These two operations turn the collection of subspaces of any vector space into a complete lattice. We also introduce direct products and direct sums of subspaces and quotient spaces.


## Subspaces
A **subspace** is a subset $S$ of a vector space $V$ that is a vector space under the restriction of vector addition and scalar multiplication to $S$. Clearly we must have at least that addition of vectors in $S$ is closed, and that scalar multiplication is also closed in $S$. We must also have that $S$ is an abelian group under restriction of addition to $S$ and that the four scalar multiplication properties are satisfied. The four scalar multiplication properties will be satisfied for the restriction, however, since they are satisfied for the unrestricted operations. For the same reason, vector addition will be associative and commutative. It remains to prove that $0 \in S$ and that each vector has an additive inverse. But since we must at least assume that the set is closed under vector addition and scalar multiplication, then we have $0v \in S$ and $-1 v \in S$. In other words:

## Necessary and sufficient conditions for a subspace
A subset $S$ of vector space $V$ is a subspace iff it is closed under vector addition and scalar multiplication.

## Subspaces and linear combinations
If $W$ is a subspace of $V$ and $S$ is a finite subset of $W$, then every linear combination of $S$ is in $W$.

*Proof:* Any scaling of $S$ gives us a finite set of elements that are all in $W$, and adding them together gives the linear combination. Since $W$ is closed under addition, it's closed under any finite number of additions as well.

## The span is a subspace
For any subset $S$ of a vector space $V$, $\text{span} S$ is a subspace of $V$.

*Proof:* We need merely prove that $\text{span} S$ is closed under vector addition and scalar multiplication. But $\text{span} S$ is the set of all linear combinations of vectors in $S$. But clearly we can add $\sum_1^n a_i s_i$ and $\sum_1^k b_i t_i$ to a linear combination of $\{s_1, \ldots, s_n, t_1, \ldots, t_k\}$. Also, scaling any linnear combination of vectors of $S$ is again a linear combination of those same vectors in $S$.

### Intersections of subspaces
If $V$ is a vector space and $\mathcal{S}$ is a collection of subspaces of $V$, then $\bigcap \mathcal{S}$ is a subspace. Note that $\bigcap \mathcal{S}$ is the biggest subspace contained in all subspaces of $\mathcal{S}$.

*Proof:* If $u, v \in \bigcap \mathcal{S}$, then $u$ and $v$ are in every subspace of $\mathcal{S}$, so certainly $u+v$ is in every subspace as well, meaning $\bigcap \mathcal{S}$ is closed under addition. For the same reason, it's closed under scalar multiplication, hence is a subspace.

## $\text{span} S$ is the smallest subspace containing $S$
### Preliminary definition
Let's notate by $V_{sub}$ the collection of all subspaces of $V$. Then for any subset $S$ of $V$, define $\langle S \rangle := \bigcap \{ W \in V_{sub} : S \subseteq W \}$. In words, $\langle S \rangle$ is the intersection of all subspaces that contain $S$.

Then $\langle S \rangle$ is the smallest subspace of $V$ that contains $S$ (in the sense that if $W$ is a subspace of $V$ that contains $S$, then $\langle S \rangle \subseteq W$)

*Proof:* This is by definition. By hypothesis $W$ is an element of the collection whose intersection is $\langle S \rangle$.

### Alternate characterization of the span
For any subset $S$ of a vector space $V$, $\text{span} S = \langle S \rangle$.

*Proof:* Certainly $\text{span} S$ is a subspace that contains $S$, as recently proved, so $\langle S \rangle \subseteq \text{span} S$.  Letting $\mathcal{S}$ be the collection of subspaces of $V$ that contain $S$, we have $\forall W \in \mathcal{S}$, $S \subseteq W$, so $\text{span} S \subseteq W$ as well, hence $\text{span} S \subseteq \langle S \rangle$. So they are the same set.

### Remark
We can alternatively call $\langle S \rangle$ the *span* of $S$. Even though the two operations are superficially different, we have proved that they are completely identical.


## The lattice of subspaces
### Definition of sums
If $V$ is a vector space and $\mathcal{S}$ is a collection of subspaces of $V$, then define the **sum** $\sum \mathcal{S}$ to be the intersection of all subspaces that contain $\bigcup \mathcal{S}$. In symbols, $\sum \mathcal{S} := \langle \bigcup \mathcal{S} \rangle$.

Note that $\sum \mathcal{S}$ is the smallest subspaces that contains every subspace in $\mathcal{S}$ due to it being the span of the union of all the subspaces.

## Definition of a lattice, the lattice of subspaces
A **lattice** is a partially ordered set with, for any two elements $x$ and $y$, a *least upper bound* $sup(x, y)$ in the lattice, and also a *greatest lower bound* $inf(x, y)$. The set of all subspaces of $V$ forms a partial order under set inclusion, and intersection and sum form the greatest lower bound and least upper bound, respectively. In fact, the lattice is a **complete lattice**, meaning any subset $S$ of the lattice has a least upper bound and a greatest lower bound.


## Concrete representation of sums
If $V$ is a subspace and $W_1, \ldots, W_n$ are subspaces of $V$, then the sum $\sum_1^n W_i$ is the same as the set $S = \{\sum_1^n u_i : u_i \in W_i \}$.

*Proof:* $S$ consists entirely of linear combinations of elements from $\bigcup_1^n W_i$, so $S \subseteq \sum_1^n W_i$. Also, if $x = \sum_1^m a_i x_i$ is any linear combination of elements from $\bigcup_1^n W_i$, then each $x_i$ is in some $W_j$, so $a_i x_i \in W_j$ as well. Hence $x = \sum_1^m y_i$, $y_i = a_i x_i$. Now write $z_i = \sum \{ y_j : y_j \in W_i \}$, where $\sum \emptyset = 0$. Then $x = \sum_1^n z_i \in S$.

## Definition of direct sums of pairs, complements
If $V$ is a vector space and $A$ and $B$ are subspaces of $V$, then the sum $A + B$ is called a **direct sum** if $A \cap B = \{ 0 \}$. This state of affairs is denoted $A \oplus B$. If $V = A \oplus B$, then $B$ is called the **complement** of $A$ in $V$.

## Unique representation in direct sums
If $V = A \oplus B$, then for all $v \in V$ there is a unique pair $(a, b)$ with $a \in A$, $b \in B$, such that $v = a + b$.

*Proof:* It was previously proved that at least one such pair exists. To prove it unique, assume $(a_1, b_1)$ is a pair that works. Then $v = a + b = a_1 + b_1$, so we can group together elements of the same vector spaces on the same side of the equation, i.e. $a - a_1 = b_1 - b$. So $a - a_1$ is an element of $A \cap B$. But since we assumed that $V$ was a direct sum of $A$ and $B$, we must have $a - a_1 = 0$. So in fact the pair is unique.

## Definition of direct product of vector spaces
If $A_1, \ldots, A_n$ are vector spaces, then the **direct product space** $\prod_1^n A_i$ is defined as a vector space whose set is the cartesian product $\prod_1^n A_i$ and whose operations are

 - vector addition: $(a_1, \ldots, a_n) + (b_1, \ldots, b_n) := (a_1 + b_1, \ldots, a_n + b_n)$
 - scalar multiplication: $c \cdot (a_1, \ldots, a_n) := (ca_1, \ldots, ca_n)$.

these are both clearly well-defined. $\prod_1^n A_i$ forms an abelian group under this addition operation since all the properties hold for each component. Scalar multiplication obeys the proper vector space axioms for the same reason. So $\prod_1^n A_i$ is a vector space. Note that it can be thought of as the $n$ vector spaces $A$ and $B$ operating "in parallel".

For direct products of two vectors, we will often use notation $A \times B$.

## Direct product is isomorphic to direct sum
If $V = A \oplus B$ for vector spaces $A$ and $B$, then $V \cong A \times B$.

*Proof:* We define a mapping $f: V \to A \times B$ by $v \mapsto (a, b)$ where $(a, b)$ is the unique pair such that $v = a + b$. Obviously this mapping is injective, and it must be surjective as well since for any $c \in A$, $d \in B$, $c + d \in V$. It's linear because, supposing $v = a + b$ and $w = c + d$, for any scalars $\alpha$ and $\beta$ we have $f(\alpha v + \beta w) = (\alpha a + \beta c, \alpha b + \beta d) = \alpha f(v) + \beta f(w)$.

## Definition of generalized direct sums
We previously defined direct sums of pairs of vectors. We use the previous fact as inspiration for a generalization: the sum $\sum_1^n V_i$ is said to be a **direct sum** of spaces $V_1, \ldots, V_n$ if it is isomorphic to the direct product $\prod_1^n V_i$. When true, we denote this fact by $\bigoplus_1^n V_i$.

## Definition of independent subspaces
If $U$ is a vector space and $V_1, \ldots, V_n$ are subspaces of $U$, then the collection $\{V_1, \ldots, V_\}$ is **independent** iff for every collection $S$ of vectors of U$ that consists of $n$ vectors, and for each $i$, $1 \leq i \leq n$ there is exactly one $v_i \in S$ such that $v_i \in V_i$, then $\sum_1^n v_i = 0$ implies that $v_i = 0$ for all $i$.

## Definition of linear map from direct product to sum
There is a standar linear map $\phi: \prod_1^n V_i \to \sum_1^n V_i$ by:

$$\phi(v_1, \ldots, v_n) = \sum_1^n v_i$$

*Proof:* It's well-defined as a function. If $u, v \in \prod_1^n V_i$, then $\phi(u + v) = \sum_1^n (u_i + v_i) = \sum_1^n u_i + \sum_1^n v_i = \phi(u) + \phi(v)$. Also, $\phi(cu) = \sum_1^n c u_i = c \sum_1^n u_i = c \phi(u)$. This establishes the proposition.


## Direct products, direct sums, isomorphism and independent subspaces
If $V_1, \ldots, V_n$ are subspaces of $U$, then the standard linear map $\phi: \prod_1^n V_i \to \sum_1^n V_i$ is an isomorphism iff the $V_i$'s are independent.

*Proof:* Supposing $\phi$ is an isomorphism, then let $v_1, \ldots, v_n$ be a collection of vectors such that $v_i \in V_i$. If $\sum_1^n v_i = 0$, then we must have $v_i = 0$ since we would have $\phi(v_1, \ldots, v_n) = 0$, and the only such element of $\prod_1^n$ mapped to $0$ is $(0, \ldots, 0)$. Conversely, if the $V_i$'s are independent, then if $\phi(u) = \phi(v)$ for some $u$ and $v$, we have $\sum_1^n (u_i - v_i) = 0$, so $u = v$. Also if $v \in \sum_1^n V_i$, then $v = \sum_1^n v_i$ for some $v_i \in V_i$, so $\phi(v_1, \ldots, v_n) = v$. So $\phi$ is an isomorphism.



## Dimension of a subspace
If $V$ is a vector space and $W$ is a subspace of $V$, then $dim W \leq dim V$.

*Proof:* By convention $V$ is finite dimensional, so $dim V = n$ for some $n$. Start with $\emptyset$ as a subset of $W$. It is linearly independent in $W$, and so it can be extended to a basis for $W$. So $W$ has some basis $B$. $B$ must also be independent in $V$, since otherwise we would have a non-trivial linear combination of $B$ combining to $0$ in $W$, contradicting its status as a basis. So $dim V = |B| \leq n$ since by the Steinitz exchange lemma any independent set can not have more elements in it than any basis.

## Subset of a basis for a vector space is a basis for a subspace
If $W$ is a subspace of a vector space $V$, with $dim V = n$ and $dim W = m$, then we can find a basis $B$ of $V$ such that some $m$-subset of $V$ is a basis for $W$.

*Proof:* This follows mostly from the previous proposition. $W$ has some basis, which is independent in $V$, so we can extend it to a basis of $V$.

## Complements exist
If $V$ is a finite dimensional vector space and $A$ is a subspace of $V$, then there is a subspace $B$ such that $V = A \oplus B$.

*Proof:* Let $dim V = n$ and $dim A = k$. Let $B$ be some basis for $A$. Then $B$ is independent in $V$, so can be extended to a basis for $V$ by adding $n - k$ vectors. Let $C$ be this set of vectors. Then since $B \cup C$ is a basis for $V$ by definition, every $v \in V$ is a linear combination of $B \cup C$. This means there exist $a \in A$, $b \in span C$ such that $v = a + b$. Also for any vectors $u \in A$, $v \in span C$, $u + v \in V$ since $A$ and $span C$ are both elements of $V$. So $V = A + span C$. Were there to be any non-zero element $z \in A \cap span C$, we would have a non-trivial scaling of $B \cup C$ that combines to zero, which is a contradiction since $B \cup C$ is a basis. So we must have $V = A \oplus span C$.

## Dimension of direct sums
If $A$ and $B$ are finite-dimensional subspaces of some vector space $V$ (not-necessarily finite-dimensional) with $A \cap B = \{ 0 \}$. Then $dim(A \oplus B) = dim A + dim B$.

*Proof:* Let $C$ and $D$ be bases for $A$ and $B$, respectively. $C \cap D = \emptyset$ since $0$ is not in any basis. If we can prove $C \cup D$ is a basis for $A \oplus B$, then the statement is proven. If $C \cup D$ fails to be independent in $A \oplus B$, we must have a non-trivial scaling of $C \cup D$ that results in $0$. This means that there is some non-zero $a \in A$ that is also a linear combination of the $D$, so $A \cap B$ has non-zero elements in it, a contradiction. So $C \cup D$ is independent. For generating, let $v \in A \oplus B$. Then $v = a + b$ for some $a \in A, b \in B$ by a previous proposition. Clearly there are scalings of $C$ and $D$, respectively that combine to $a$ and $b$, so this gives us a scaling of $C \cup D$ that combines to $v$. So $C \cup D$ is a basis.


## Sum/intersection formula
If $W$ is finite dimensional and $U$ and $V$ are two subspaces, then $dim(U+V) + dim(U \cap V) = dim U + dim V$

*Proof:* We can find complements $U = S \oplus U \cap V$ and $V = T \oplus U \cap V$. Our strategy is to prove that $dim(U + V) = dim U + dim T$. From this we can prove that $dim(U + V) + dim(U \cap V) = dim U + dim(T) + dim (U \cap V) = dim U + dim V$, where the last equality holds by definition. of $T$.

Let $A$ be a basis for $U \cap V$, and let $B$ be a basis for $U$ that contains $A$ (which we can find by a previous proposition). Also let $C$ be a basis for $T$. Note that $A \cup C$ is a basis for $V$. Since all the elements of $B$ and $C$ are non-zero, if $B \cap C$ is non-empty then we would have an element of $U \cap T$ which is not zero. But $T \subseteq V$, so this is an element of both $T$ and $U \cap V$ which isn't zero, contrary to $T$'s status as the complement of $U \cap V$ in $V$. So $B$ and $C$ are disjoint. We proceed to prove $B \cup C$ is a basis for $U + V$, which would imply that $dim(U+V) = |B| + |C| = dim U + dim T$.

If $B \cup C$ isn't independent, some non-trivial scaling must combine to $0$, which implies that some non-zero element of $U$ is in $span C$. This again implies a non-zero element is in both $T$ and $U \cap V$, a contradiction. So $B \cup C$ is independent. Now for any $v \in A + B$, we know there exist $a \in A, b \in B$ such that $v = a + b$. There is a scaling such that $a = \sum f(i) b_i$ and $b = \sum g(i) c_i + \sum h(i) a_i$. We can form a scaling of $B \cup C$ that combines to $v = a + b$ since the $a_i$ are all in $B$ by definition. Since $v$ was arbitrary, $B \cup C$ generates as well, so it must be a basis.



## Definition of quotient space
### Cosets of a subspace
If $U$ is a subspace of a vector space $V$, then define *cosets* of $U$ by $[a] = \{a + u : u \in U\}$. Then:

 1. if $b \in [a]$, then $[b] \subseteq [a]$
 2. if $b \in [a]$, then $a \in [b]$.

These two facts prove that the cosets partition $V$.

*Proof:* If $b \in [a]$, $\exists u \in U$ with $b = a + u$. Let $c \in [b]$, with some $v \in U$ such that $c = b + v$. Then $c = a + (u + v)$, and since $u + v \in U$ we have $c \in [a]$. This proves (1). To prove (2), note that if $b \in [a]$ then $b - a \in U$, so $a - b \in U$ as well since subspaces are closed under linear combination of vectors.

### A vector space of cosets
We can define a vector space on the collection of all cosets of $U$ by $[a] + [b] = [a + b]$ and $c [a] = [ca]$. Then:

 1. the above two definitions are well-defined binary operations, and
 2. they turn the set $V/U$ of cosets into a vector space over $\mathbb{F}$.

$V/U$ is called the **quotient space** of $V$ by $U$.

 1. Coset addition is well-defined.

    *Proof:* We must prove that for any $a, b, c, d \in V$, if $[a] = [b]$ and $[c] = [d]$, then $[a] + [c] = [b] + [d]$. It suffices to prove that $b+d \in [a+c]$. But there are $u, v \in U$ such that $b = a + u$ and $d = c + v$, so $b + d = (a + c) + (u + v)$, which establishes the proposition.

 2. Coset scalar multiplication is well-defined

    *Proof:* We must prove that if $a, b \in V$ and $[a] = [b]$, then $c[a] = c[b]$ for any $c \in \mathbb{F}$. It suffices to prove that $cb \in [ca]$, but this is true since $b = a + u$ for some $u \in U$, so certainly by distributivity $cb = ca + cu$.

 3. Coset addition turns $V/U$ into an abelian group.

    *Proof:* $[a] + [b] = [a + b] = [b + a] = [b] + [a]$, $([a] + [b]) + [c] = [a + b] + [c] = [(a + b) + c] = [a + (b + c)] = [a] + ([b] + [c])$, $[a] + [0] = [a + 0] = [a] = [0 + a] = [0] + [a]$, and $[a] + [-a] = 0 = [-a] + [a]$.

 4. Coset scalar multiplication turns  $V/U$ into a vector space.

    *Proof:* $c([a] + [b]) = c[a+b] = [ca + cb] = c[a] + c[b]$. $(c + d)[a] = [(c+d)a] = [ca + da] = c[a] + d[a]$. $1[a] = [1a] = [a]$, $(cd)[a] = [(cd)a] = [c(da)] = c[da] = c(d[a])$.

## Dimension of quotient space
If $V$ vector space, $U$ subspace of $V$, and $W$ another subspace of $V$ such that $V = U \oplus W$, then $V/U$ is isomorphic to $W$ and $dim V/U + dim U = dim V$.

*Proof:* We define a map $f: W \to V/U$ by $w \mapsto [w]$. It's linear by definition of the operations on $V/U$. If $[w_1] = [w_2]$ for $w_1, w_2 \in W$, then $[w_1 - w_2] = [0] = U$, so $w_1 - w_2 \in U \cap W$, hence $w_1 = w_2$ and $f$ is injective. For every $[a] \in V/U$, since $a \in V$ we have $a = u + w$ for some $u \in U$, $w \in W$, so $[a] = [u + w] = [u] + [w] = [0] + [w] = [w]$, so $f$ is surjective.

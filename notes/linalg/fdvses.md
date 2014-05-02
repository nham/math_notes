## Definition of a linear map
If $(V, \mathbb{F})$ and $(W, \mathbb{F})$ are vector spaces, a linear map is a function $T: V \to W$ such that

 - for all vectors $u, v \in V$, T(u + v) = T(u) + T(v)$
 - $for any vector $v \in V$ and any scalar $a \in \mathbb{F}$, $T(a \cdot v) = a \cdot T(v)$

Note: by induction we can extend the linearity properties to any finite linear combination: $T(\sum_{v \in S} a_v \cdot v) = \sum_{v \in S} a_v \cdot T(v)$.

## The image of the basis completely determines a linear map
If $T: V \to W$ is linear and $B$ is a basis for $V$, then by fixing $T(b)$ for all $b \in B$, the linearity of $T$ completely determines the rest of the values.

*Proof:* For any $v \in V$, we have $v = \sum a_i b_i$ for some scalars $a_i$. So $T(v) = T(\sum a_i b_i) = \sum a_i T(b_i)$ by linearity. So every $T(v)$ is defined in terms of the $T(b_i)$.


## Composition of linear maps is linear
If $A: V \to W$ and $B: W \to X$ are linear maps, then $B \circ A$ is linear as well.

*Proof:* $(B \circ A) (a u + b v) = B(aAu + bAv) = a (B \circ A)(u) + b (B \circ A)(v)$

## Assigning map values for a basis determines the map
If $T: V \to W$ is a linear map and $B$ is a basis for $V$, then assigning values $T(v)$ for all $v \in B$ completely determines the rest of the map.

*Proof:* Every $v \in V$ is a linear combination of the $B$, so $T(v) = \sum_{b \in B} a_b \cdot T(b)$.


## Invertibility
A basic definition from set theory is that a function $f: X \to Y$ is **left invertible** if there is a $g: Y \to X$ such that $g \circ f = id_X$, and is **right invertible if there's an $h: Y \to X$ such that $f \circ h = id_Y$. if a function is both left invertible and right invertible, we say it is just **invertible**. It is easy to prove that if a function is invertible, then there is a unique function which serves as both left and right inverses. Also, it is well-known from set theory that a function $f$ is an injection iff it has a left-inverse, a surjectin iff it has a right-inverse, and a bijection iff it is invertible.

## Definition of an isomorphism
An **isomorphism** between vector spaces is a bijective linear map. In other words, isomorphisms are invertible linear maps.

## Injective maps perserve independence, surjective maps preserve generatingness
If $T: V \to W$ is an injective linear map, then if $A$ is independent in $V$, we have $T(A)$ is independent in $W$. Also, if $T$ is a surjective linear map, then if $B$ is generating in $V$, we also have $T(B)$ generating in $W$.

*Proof:* If $A$ is independent, then $\sum_{v \in A} \alpha(v) \cdot v = 0$ implies that $\alpha(v) = 0$ for all $v \in A$. So if $\sum_{v \in A} \beta(v) \cdot T(v) = 0$, then $T(\sum_{v \in A} \beta(v) \cdot v) = 0$, so \sum_{v \in A} \beta(v) \cdot v = 0$ since $T$ is injective. This implies $\beta(v) = 0$ for all $v \in A$, proving that the set of all $T(v)$'s is independent.

If $B$ generates $V$ then for all $z \in B$ there is a scaling $\alpha$ of $B$ such that $\sum_{v \in B} \alpha(v) \cdot v = z$. If $w \in W$, then there is some $u \in V$ such that $T(v) = w$ since $T$ is surjective, and since $B$ generates $V$ there is some $\beta$ such that $\sum_{v \in B} \beta(v) \cdot v = u$, so by linearity $T(u) = \sum_{v \in B} \beta(v) \cdot T(v) = w$. Hence the set of $T(v)$'s generates $W$.

### Corollary
If $T: V \to W$ is an isomorphism, then if $S$ is independent in $V$, then $T(S)$ is independent in $W$. Also If $G$ generates $V$, then $T(G)$ generates $W$.

*Proof:* An isomorphism is both injective and surjective, so this holds by a previous proposition.

### Corollary
For any isomorphism $T: V \to W$, if $S$ is a basis for $V$ then $T(S)$ is a basis for $W$.

## Linear maps that preserve independence/generatingness are injective/surjective.
If $T: V \to W$ is a linear map, then

 - if every indepedent $S \subseteq V$ has $T(S)$ independent in $W$, then $T$ is injective
 - if every generating $S \subseteq V$ has $T(S)$ generating in $W$, then $T$ is surjective

*Proof:* If $T$ isn't injective, then there are $u \neq v$ such that $T(u) = T(v)$. So $u - v \neq 0$, hence $\{u -v\}$ is independent, but $T(u-v) = 0$, and $\{0\}$ is not independent.

For the second statement, if $T$ is not surjective then there is some $w \in W$ such that no $v \in V$ has $T(v) = w$. This implies no $S \subseteq V$ could have $T(S)$ generating, because if $w \sum a_i T(s_i)$ for some $s_i$'s in $S$, then $T(\sum a_i s_i) = w$, contradicting that $w$ is not in the image of $T$.

### Remark
Combining the last two propositions, we have that linear maps send independent sets to independent sets iff they are injective, and that linear maps send generating sets to generating sets iff they are surjective.

### Corollary
For any linear map $T: V \to W$ and basis $B$ for $V$, $T$ is an isomorphism iff $T(B)$ is a basis.

*Proof:* We already have one direction. To prove that any $T$ which maps each basis to a basis must be an isomorphism, let $B$ be a basis for $V$. Then if $T(u) = T(v)$, we have $\sum_1^n c_i T(b_i) = \sum_1^n d_i T(b_i)$, so if $c_i \neq d_i$ for any $i$, the vectors $T(b_i)$ are not independent. So in fact $u = v$. Also, for any $w \in W$, $w = \sum_1^n a_i T(b_i)$ since $T(b_i)$'s are a basis, so $w = T(\sum_1^n a_i b_i)$.

### Corollary 
$V$ and $W$ are isomorphic iff $dim V = dim W$.

*Proof:* If $B$ is a basis for $V$, then for any isomorphism $T: V \to W$, we have $T(B)$ is a basis for $W$. It has exactly the same number of elements as $B$, so they must have the same dimension. 

Conversely, if $dim V = dim W$, then there are bases $B$ and $C$ for $V$ and $W$, respectively with $|B| = |C|$. We can define a mapping $T$ by starting with a bijection between $B$ and $C$. The rest of the linear map follows since the image of a basis determines the rest of the linear map. Then the image of $B$ is a basis, so by the previous proposition $T$ is an isomorphism.


## A linear endomap is invertible iff it has a one-sided inverse
If $T: V \to V$, then $T$ is invertible iff $T$ has a left-inverse iff $T$ has a right-inverse.

*Proof:* Suppose that $dim V = n$. One direction is proved. We have to prove that $T$ with a left- or right-inverse implies $T$ is invertible. If $T$ has a left-inverse, we know it's injective, so any basis $B$ in $V$ has $T(B)$ independent. But we can expand any independent set to a basis, and we can't have more than $n$ elements in a basis, so $T(B)$ is a basis. This implies that $T$ must be surjective after all, so it's invertible. On the other hand, if $T$ is a right-inverse, then we know $T$ is surjective, so for any basis $B$, we have $T(B)$ generating for $V$. But we can pare down any generating set to a basis, and no basis has less than $n$ elements in it, so $T(B)$ must have $n$ elements, and hence be a basis itself. This implies that $T$ is injective as well, hence invertible.


## Composition of isomorphisms is an isomorphism
The composition of isomorphisms is an isomorphism. 

*Proof:* It's certainly linear, but from set theory composition of bijections is a bijection.


## Definition of a representation w.r.t. a basis
If $V$ is a vector space and $\beta = (b_1, \ldots, b_n)$ is an ordered basis for $V$, then any $v \in V$ has a unique representation $v = \sum_1^n a_i \cdot b_i$ for some scalars $a_i$. The vector of $\mathbb{F}^n$ defined by $(a_1, \ldots, a_n)$ is a **representation of $v$ with respect to the ordered basis $\beta$**. This is often notated $[v]_{\beta}$.

## Representation w.r.t. an ordered basis induces an isomorphism
If $\beta = (b_1, \ldots, b_n)$ is an ordered basis for a vector space $V$, then the map $\phi_{\beta}: \mathbb{F}^n \to V$ defined by mapping to each tuple $(a_1, \ldots, a_n)$ the vector $\sum_1^n a_i b_i$ is well defined since there is exactly one vector it could be. It is also a bijection by definition of the basis. It is straightforward to prove $\phi_{\beta}$'s linearity, so in fact it is an isomorphism.



## Subspaces
A **subspace** is a subset $S$ of a vector space $V$ that is a vector space under the restriction of vector addition and scalar multiplication to $S$. Clearly we must have at least that addition of vectors in $S$ is closed, and that scalar multiplication is also closed in $S$. We must also have that $S$ is an abelian group under restriction of addition to $S$ and that the four scalar multiplication properties are satisfied. The four scalar multiplication properties will be satisfied for the restriction, however, since they are satisfied for the unrestricted operations. For the same reason, vector addition will be associative and commutative. It remains to prove that $0 \in S$ and that each vector has an additive inverse. But since we must at least assume that the set is closed under vector addition and scalar multiplication, then we have $0v \in S$ and $-1 v \in S$. In other words:

## Necessary and sufficient conditions for a subspace
A subset $S$ of vector space $V$ is a subspace iff it is closed under vector addition and scalar multiplication.

## Subspaces and linear combinations
If $W$ is a subspace of $V$ and $S$ is a finite subset of $W$, then every linear combination of $S$ is in $W$.

*Proof:* Any scaling of $S$ gives us a finite set of elements that are all in $W$, and adding them together gives the linear combination. Since $W$ is closed under addition, it's closed under any finite number of additions as well.

## The span is a subspace
For any subset $S$ of a vector space $V$, $span S$ is a subspace of $V$.

*Proof:* We need merely prove that $span S$ is closed under vector addition and scalar multiplication. But $span S$ is the set of all linear combinations of vectors in $S$. But clearly we can add $\sum_1^n a_i s_i$ and $\sum_1^k b_i t_i$ to a linear combination of $\{s_1, \ldots, s_n, t_1, \ldots, t_k\}$. Also, scaling any linnear combination of vectors of $S$ is again a linear combination of those same vectors in $S$.

### Intersections of subspaces
If $V$ is a vector space and $\mathcal{S}$ is a collection of subspaces of $V$, then $\bigcap \mathcal{S}$ is a subspace. Note that $\bigcap \mathcal{S}$ is the biggest subspace contained in all subspaces of $\mathcal{S}$.

*Proof:* If $u, v \in \bigcap \mathcal{S}$, then $u$ and $v$ are in every subspace of $\mathcal{S}$, so certainly $u+v$ is in every subspace as well, meaning $\bigcap \mathcal{S}$ is closed under addition. For the same reason, it's closed under scalar multiplication, hence is a subspace.

## A nameless (for now) operation
Let's notate by $V_{sub}$ the collection of all subspaces of $V$. Then for any subset $S$ of $V$, define $<S> := \bigcap \{ W \in V_{sub} : S \subseteq W \}$. In words, $<S>$ is the intersection of all subspaces that contain $S$.

Then $<S>$ is the smallest subspace of $V$ that contains $S$ (in the sense that if $W$ is a subspace of $V$ that contains $S$, then $<S> \subseteq W$)

*Proof:* This is by definition. By hypothesis $W$ is an element of the collection whose intersection is $<S>$.

## Alternate characterization of the span
For any subset $S$ of a vector space $V$, $span S = <S>$.

*Proof:* Certainly $span S$ is a subspace that contains $S$, as recently proved, so $<S> \subseteq span S$.  Letting $\mathcal{S}$ be the collection of subspaces of $V$ that contain $S$, we have $\forall W \in \mathcal{S}$, $S \subseteq W$, so $span S \subseteq W$ as well, hence $span S \subseteq <S>$. So they are the same set.

### Remark
We can alternatively call $<S>$ the *span* of $S$. Even though the two operations are superficially different, we have proved that they are completely identical.


## The lattice of subspaces
### Definition of sums
If $V$ is a vector space and $\mathcal{S}$ is a collection of subspaces of $V$, then define the **sum** $\sum \mathcal{S}$ to be the intersection of all subspaces that contain $\bigcup \mathcal{S}$. In symbols, $\sum \mathcal{S} := <\bigcup \mathcal{S}>$.

Note that $\sum \mathcal{S}$ is the smallest subspaces that contains every subspace in $\mathcal{S}$ due to it being the span of the union of all the subspaces.


## Definition of a lattice, the lattice of subspaces
A **lattice** is a partially ordered set with, for any two elements $x$ and $y$, a *least upper bound* $sup(x, y)$ in the lattice, and also a *greatest lower bound* $inf(x, y)$. The set of all subspaces of $V$ forms a partial order under set inclusion, and intersection and sum form the greatest lower bound and least upper bound, respectively. In fact, the lattice is a **complete lattice**, meaning any subset $S$ of the lattice has a least upper bound and a greatest lower bound.

## Sums of pairs
If $V$ is a subspace and $W_1$ and $W_2$ are subspaces of $V$, then the sum $W_1 + W_2$ is the same as the set $S = \{u + v : u \in W_1, v \in W_2\}$.

*Proof:* Certainly $S \subseteq W_1 + W_2$ since $W_1 + W_2$ is a subspace containing $W_1 \cup W_2$, and so must contain any linear combinations from this set. If $x \in W_1 + W_2$, then $x$ is a linear combination of vectors in $W_1 \cup W_2$. But this means that, if we gather up the vectors belonging to each subspace, that $x = \sum a_i u_i + \sum b_i v_i$  for $u_i \in W_1$ and $v_i \in W_2$. So $x = u + v$ for $u \in W_1$ and $v \in W_2$ (since $W_1$ and $W_2$ are undoubtedly closed under linear combinations).

## Dimension of a subspace
If $V$ is a vector space and $W$ is a subspace of $V$, then $dim W \leq dim V$.

*Proof:* By convention $V$ is finite dimensional, so $dim V = n$ for some $n$. Start with $\emptyset$ as a subset of $W$. It is linearly independent in $W$, and so it can be extended to a basis for $W$. So $W$ has some basis $B$. $B$ must also be independent in $V$, since otherwise we would have a non-trivial linear combination of $B$ combining to $0$ in $W$, contradicting its status as a basis. So $dim V = |B| \leq n$ since by the Steinitz exchange lemma any independent set can not have more elements in it than any basis.

## Subset of a basis for a vector space is a basis for a subspace
If $W$ is a subspace of a vector space $V$, with $dim V = n$ and $dim W = m$, then we can find a basis $B$ of $V$ such that some $m$-subset of $V$ is a basis for $W$.

*Proof:* This follows mostly from the previous proposition. $W$ has some basis, which is independent in $V$, so we can extend it to a basis of $V$.

## Definition of direct sums of pairs, complements
If $V$ is a vector space and $A$ and $B$ are subspaces of $V$, then the sum $A + B$ is called a **direct sum** if $A \cap B = \{ 0 \}$. This state of affairs is denoted $A \oplus B$. If $V = A \oplus B$, then $B$ is called the **complement** of $A$ in $V$.

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

## Definition of null space, range of a linear map
If $T: V \to W$ is a linear map, then the subset $N = \{ v \in V : T(v) = 0\}$ is a subspace of $V$, called the **null space**, and the image of $T$, $R = \{ w \in W : \exists v \in V T(v) = w \}$ is a subspace of $W$, called the **range**.

*Proof:* We just have to prove closure on each. If $u, v \in N$, then for any scalars $a$ and $b$, $T(au + bv) = aT(u) + b T(v) = a0 + b0 = 0$. Also, if $w, x \in R$, then there are $u, v \in V$ such that $T(u) = w$ and $T(v) = x$. So for any scalars $a, b$, we have $aw + bx = T(au + bv)$, so both $N$ and $R$ are closed under linear combinations.

## Basic properties of the null space and range
For any linear map $T: V \to W$, let $N$ and $T$ be the null space and range, respectively. Then $T$ is injective iff $N = \{ 0 \}$. Also, $T$ is surjective iff $R = W$.

*Proof:* if $N \neq \{ 0 \}$, $T$ could not be injective since more than one element map to $0$. Conversely, if $N = \{ 0 \}$, then for any $u, v \in V$, $T(u) = T(v)$ implies $u - v \in N$, so $u - v = 0$ or $u = v$, so $T$ is injective.

$R$ is by definition the image, so $T$ is surjective exactly when the image is the entire co-domain.

## Definition of rank and nullity
The **rank** of a linear map is the dimension of the range. The **nullity** of a linear map is the dimension of the null space. These are denoted $rank(T)$ and $nullity(T)$, respectively.

## Rank-nullity theorem
For any linear map $T: V \to W$, we have $dim V = rank(T) + nullity(T)$.

*Proof:* Let $N$ be the null space of $T$ and $R$ be the range of $T$.. Then we can find a complement $A$ in $V$, so that $V = A \oplus N$. By previous propositions, $dim V = dim A + nullity(T)$.

Now, note first that since $R$ is a subspace of $W$ which, by definition, is the image of $T$, that we can define a restriction of $T$, $S: V \to R$ by $S(v) = T(v)$. This is a well-defined function, and it is a linear map since S(au + bv) = T(au + bv) = a T(u) + b T(v) = a S(u) + b S(v)$. We define a restriction of $S$, $\phi: A \to R$ by $\phi(a) = T(a)$. This is again well-defined and is certainly linear. Also we have that if $T(a) = 0$, then $a = 0$ since $A \cap N = \{ 0 \}$. So the null space of $\phi$ is trivial, meaning $\phi$ is injective. Also by definition, if $w \in R$, $w \neq 0$, then some $v$ is such that $T(v) = w$. But that $v$ could not be in the null space of $T$ by definition, so it must be in $A$. Hence $\phi$ is surjective. In other words, $\phi$ is an isomorphism, so $dim A = dim R = rank(T)$.

Combined with the above equation, we have proved what we set out to.

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

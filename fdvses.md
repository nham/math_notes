# Finite dimensional vector spaces

## Definition of a group
A **group** is a tuple $(G, \circ, e)$ where $G$ is a set and $\circ: G \times G \to G$ such that

 - for all $a, b, c$ \in G$, $a \circ (b \circ c) = (a \circ b) \circ c$
 - for all $a \in G$, $a \circ e = e \circ a = a$
 - for all $a \in G$ there is a $b \in G$ with $a \circ b = b \circ a = e$

$e$ is called the **unit** of the group and the elements specified in the third axiom are called **inverses**.

## Unit is unique
If there's a $u \in G$ with $\forall g \in G$ $g \circ u = u \circ g = g$, then $u = e$.

*Proof:* $u = u \circ e = e$ by the properties of $e$ and the assumed properties of $u$.

## Inverses are unique
If $b$ and $c$ are inverses for an element $a$, then $b = c$.

*Proof:* $b = b \circ e = b \circ (a \circ c) = (b \circ a) \circ c = e \circ c = c$

## Notation for inverses
Since each $a \in G$ has a unique inverse, we notate it $a^{-1}$.

## Notation convention for the group operation
Writing all these $\circ$'s will be tedious, so we will abbreviate the group operation between two elements $g$ and $h$ by $g h$.

## Cancellation laws
For any $a, b, c \in G$:

 - If $a b = a c$, then $b = c$.
 - If $a c = b c$, then $a = b$.

 1. If $a b = a c$, then $b = c$.

    *Proof:* $b = a^{-1} (a b) = a^{-1} (a c) = c$ (after ommitting steps where we use associativity and properties of inverses).

 2. If $a c = b c$, then $a = b$.
    *Proof:* $a = (a c) c^{-1} = (b c) c^{-1} = b$ (again after omitting steps using associativity and properties of inverses).

## Unique solvability
For any $g, h \in G$, there is a unique $x \in G$ such that $g x = h$ and a unique $y \in G$ such that $y g = h$. Furthermore, $x = g^{-1} h$ and $y = h g^{-1}$.

*Proof:* $x = g^{-1} h$ is a solution for $g x = h$. If some $z$ also solves it, then $h = g z = g (g^{-1} h)$, so by cancellation $z = g^{-1} h$.

For the second equation, $h g^{-1}$ is a solution for $y g = h$. If some $z$ also solves it, again by cancellation $z = h g^{-1}$.


## Inverse of the inverse
For any $g \in G$, $(g^{-1})^{-1} = g$

*Proof:* $g^{-1} (g^{-1})^{-1} = e = g^{-1} g$, so the statement is established via unique solvability.


## Definition of an abelian group
An **abelian group** is a group with a commutative group operation.

## Definition of a subgroup
A **subgroup** of a group $G$ is a subset $S$ which is a group when the group operation is restricted to $S$. 

## Definition of a field
A **field** is a commutative division ring. FIXME


## A brief note on notation
We often write the group operation of many elements together without any parentheses, even though technically the operation works only on two elements at a time. For example $g h i j k$ would represent the a group product like $(g h) ((i j) k)$. Since the parentheses don't matter, it is convenient to omit them.

Furthermore, in an abelian group, the left-to-right sequence of the elements in a group product doesn't matter. For example, $a b c = a c b = b a c = b c a = c a b = c b a$. In this case, it is convienent (especially when we get to vector spaces) to use the summation notation $\sigma_{i=1}^n g_i$, where the $g_i$ are group elements. Not only are we not writing parentheses, but the order in which the vectors are being added is not specified since the group's commutativity makes it irrelevant. The relevant information in a commutative group is merely which set of group elements is being combined.

## Vector spaces
A vector space is a tuple $(V, \mathbb{F}, \cdot)$ where $V$ is an abelian group of *vectors*, $\mathbb{F}$ is a field of *scalars*, and $\cdot$ is an operation of *scalar multiplication* such that the following hold:

 - for all $a \in \mathbb{F}$ and $u, v \in V$, $a \cdot (u + v) = a \cdot u + a \cdot v$
 - for all $a, b in \mathbb{F}$ and $u \in V$, $(a + b) \cdot u = a \cdot u + b \cdot u$
 - $\mathbb{F}$'s multiplicative identity $1$ has $1 \cdot u = u$ for all $u \in V$
 - for all $a, b in \mathbb{F}$ and $u \in V$, $a \cdot (b \cdot u) = (a b) \cdot u$


## Basic scalar multiplication facts
### Zero scalar nullifies all vectors
For all $v \in V$, $0 \cdot v = 0 \in V$.

*Proof:* $0 \cdot v = (0 + 0) \cdot v = 0 \cdot v + 0 \cdot v. Add inverses to both sides to obtain the statement.

### $-1 \in \mathbb{F}$ negates the vector
For all $v \in V$, $(-1) \cdot v = -v \in V$.

*Proof:* $v + -1 \cdot v = 1 \cdot v + -1 \cdot v = (1 + -1) \cdot v = 0 \cdot v = 0$ by distributivity and the previous proposition. The additive inverse of any group is unique, so $-v = -1 \cdot v$.


## Definition of linear combinations
Let $S$ be some finite set of vectors in a vector space $(V, \mathbb{F})$. A **scaling** of $S$ is a mapping $s: S \rightarrow \mathbb{F}$ assigning to every vector in $S$ some scalar. Then a **linear combination** is the vector $\sum{v \in S} s(v) \cdot v$. 

If the scaling assigns all zero scalars, then it is called a **trivial scaling**.

## Definition of a basis
A **basis** set for a vector space $(V, \mathbb{F})$ is a subset $S$ of $V$ such that for every $v \in V$ there is a unique scaling whose linear combination is $v$.

A basis is very often represented in ordered form $(v_1, \ldots, v_n)$, so that a scaling can be specified by $(a_1, \ldots, a_n)$. The scaling of a basis that represents a vector $v$ is often instead called the **coordinates** of $v$ with respect to the basis.

## Definition of finite-dimensional vector spaces
A vector space is **finite-dimensional** if it has a finite basis. The word "dimension" in this phrase will be explained later.

## Assume all vector spaces are finite-dimensional from now on
We will assume that all vector spaces are finite-dimensional from here on out. Proving things about infinite-dimensional vector spaces requires more machinery.


## Definition of a generating set
A **generating** set for a vector space $(V, \mathbb{F})$ is a subset $S$ of $V$ such that for every $v \in V$ there is some scaling whose linear combination is $v$.

More generally, the **span** of a set $S$, denoted $span S$, is the set of vectors in $v \in V$ for which there exist scalings of $S$ that combine to $v$. In other words, the span of $S$ is the set of all linear combinations of $S$. It is easy to see that $S$ is a generating set for vector space $V$ iff $V = span S$.

## Definition of an independent set
An **independent** set for a vector space $(V, \mathbb{F})$ is a subset $S$ of $V$ such that for every $v \in V$ there is at most one scaling whose linear combination is $v$.

A set of vectors is **dependent** if it is not independent.

## A basis is an independent generating set
$B$ is a basis iff it is an independent generating set.

*Proof:* immediately from the definitions.

## The standard definition of independence
A set $S$ is linearly independent iff the zero vector has a unique representation as the trivial scaling of $S$.

*Proof:* Clearly if $S$ is independent then zero is uniquely obtained as a linear combination of a trivial scaling of $S$. Conversely, if some vector $v$ has two distinct scalings $f$ and $g$, then 

$$v = \sum_{x \in S) f(x) \cdot x = \sum_{x \in S} g(x) \cdot x$$

Then we must have

$$ 0 = v - v = \sum_{x \in S} h(x) \cdot x$$

for the scaling defined by $h(x) = f(x) - g(x)$. $h(x)$ is non-trivial since $f$ and $g$ are distinct by hypothesis, so the zero vector does not have a unique scaling.

### Remark
This is a more convenient way of determining when some set is independent. Note that we defined $S$ to be independent by saying that every element of $span S$ has a unique scaling of $S$ that combines to it, but found that a "weaker" statement, that merely $0$ has a unique scaling of $S$ that combines to it, is an equivalent formulation.


## Necessary and sufficient condition for dependence
A set $S$ is dependent iff some $v \in S$ is in the span of the others

 1. If $S$ is dependent, then some $v \in S$ is in the span of the others.

    1. There is some $v \in S$ and some scaling $f$ of $S$ such that $f(v) \neq 0$ and $0 = \sum_{x \in S} f(x) \cdot x$

    *Proof:* By the standard definition for independence.

    2. $0 = f(v) \cdot v + \sum_{x \in S, x \neq v} f(x) \cdot x$

       *Proof:* Rearrangement of (1)

    3. Q.E.D.

       *Proof:* (2) implies that $v = \sum_{x \in S, x \neq v} g(x) \cdot x$ for $g(x) := f(x) / f(v)$. So $v \in span(S - v)$.

     
 2. If some $v \in S$ is in the span of the others, then $S$ is dependent

    *Proof:* If $v = \sum_{x \in S, x \neq v} f(x) \cdot x$, then 

    $$
    g(x) = 
    \cases{
    f(x)  & \text{if } x \neq v\cr
    -1 & \text{o.w.}
    }
    $$

    is a non-trivial scaling of $S$ that combines to $0$, so $S$ is dependent.

 3. Q.E.D.

    *Proof:* By (1) and (2)

## Removing dependent vectors doesn't change the span
If $S$ is a set of vectors and $u \in S$, then $u \in span(S - u)$ iff $span S = span(S - u)$.

 1. If $u \in span(S - u)$, then $span S = span(S - u)$

    1. It suffices to assume $v \in V$ and that $g$ is a scaling of $S$ that combines to $v$, and prove there exists a scaling of $S - u$ that combines to $v$.

      *Proof:* We already have $span(S - u) \subseteq span S$.

    2. There is a scaling $f$ of $S - u$ such that $u = \sum_{x \in S - u} f(x) \cdot x$.

       *Proof:* By assumption that $u \in span(S - u)$.

    3. Q.E.D.

       *Proof:* $v = \sum_{x \in S} g(x) \cdot x = g(u) \cdot u + \sum_{x \in S - u} g(x) \cdot x$ by (1). The scaling of $S - u$ defined by $h(x) := g(u) f(x) + g(x)$ combines to $v$.

 2. If $span(S) = span(S - u)$, then $u \in span(S - u)$

    *Proof:* Immediate since $u \in span(S)$.


### Corollary
$S$ is dependent iff there is a $u \in S$ such that $span(S) = span(S - u)$


## A finite generating set contains a basis
If $S$ is a finite generating set for a vector space $V$, then there is a $B \subseteq S$ which is a basis for $V$.

*Proof:* If $S$ is independent, then it is a basis. Otherwise it is dependent and one element $x \in S$ is in the span of the others, so remove $x$ from $S$. The new set $S - x$ still spans $V$ because removing dependent vectors doesn't change the span. Repeat this process until an independent set is obtained. It must terminate eventually since we started with a finite set.

## An independent set can be extended to a basis
If $S$ is an independent subset of a vector space $V$, then there is a basis $B$ such that $S \subseteq B$.

*Proof:* $V$ is by assumption finite-dimensional, so it has a basis $C$. If $S$ is not already a basis, then it must not generate $V$, so we can find one element of $C$ that isn't in the span of $S$ (if not, all are in the span, which means $S$ generates $V$, contradicting our assumption that it didn't). Continually add vectors from $C$ that are not in the span of $S$ until we achieve a basis. This will be achieved because we only add vectors not in the span of $S$, so each addition maintains the independence of the set. This process eventually terminates since there are finitely many vectors in the basis.


## Equivalent definitions of basis
A set $B$ is a basis for fdvs $V$ iff $B$ is a maximal independent set iff $B$ is a minimal generating set.

*Proof:* If $B$ is a basis, $span B = V$, so we could not add any other element to $B$ and obtain an indepedent set, since all other elemends in $V$ are in the span of $B$. So $B$ is a maximal independent set. Also, $B$ could not be a non-minimal generating set, since that would imply it is dependent, contrary to the assumption it is a basis. So it must be a minimal generating set.

If $B$ is a maximal independent set, we cannot add any element of $V$ to $B$ without making the set dependent, so for all $v \in V - B$ we have $B + v$ dependent. This means some non-trivial scaling of $B + v$ combines to $0$, and we must have a non-zero coefficient on $v$ since otherwise we would have a non-trivial scaling of an independent set that combines to $0$, a contradiction. So $v \in span(B)$, meaning that $B$ generates $V$ and so $B$ is a basis.

If $B$ is a minimal generating set, then for all $x \in B$ we have $span(B - x) \neq span(B)$, so $B$ could not be dependent and must be independent, hence a basis.


## Steinitz exchange lemma
If $S$ is independent in $V$ and $T$ generates $V$, with $S$ finite, then $|S| \leq |T|$.

*Proof:* We can assume $S \neq \emptyset$ ($S = \emptyset$ immediately implies the statement to be proved), and impose some ordering so that $S = \{s_1, \ldots, s_k \}$.
Note that we will use notation $a + X$ for an element $a$ of some set, and some set $X$, to be the union $X \cup \{a\}$. Also, if $b \in X$, then $X - b = \{x \in X : x \neq b\}$.

By hypothesis $T$ generates $V$, so letting $S_0 = \emptyset$, $S_1 = \{ s_1 \}$, $T_0 = T$, we have $span(S_0 \cup T_0) = span(S_1 \cup T_0)$. The set $X_1 = S_1 \cup T_0$ is dependent since $T$ generates $V$ and $s_1 \in V$, and furthermore we can find a $t_1 \in T_0$ such that $t_1 \in span(X_1 - t_1)$ since we know some non-trivial scaling of $X_1$ combines to $0$ and that all zero-coefficients on the elements of $T$ in this scaling would imply that $s_1 = 0$, which is impossible. So let $T_1 = T_0 - t_1$. We have $span(S_0 \cup T_0) = span(S_1 \cup T_1)$ since removing a dependent vector doesn't change the span.

Now suppose that we have $S_j$ and $T_j$ for some $j$ such that $span(S_j \cup T_j) = span(S_0 \cup T_0)$ and $S_j$ is a proper subset of $S$. By the same reasoning as above, we can find a $t_{j+1}$ that is in the span of $S_j + s_j + T_j - t_{j+1}$, hence $span(S_{j+1} \cup T_{j+1}) = span(S_j \cup T_j)$, where $S_{j+1} = S_j + s_j$ and $T_{j+1} = T_j - T_{j+1}$.

This proves that there are at least $k$-elements in $T$ (since when we have defined $S_{k-1}$ and $T_{k-1}$, we can add $s_k$ to the set and still find a $t_k$ in the span of the others).


## Corollary
Any two finite bases in a finite dimensional vector space $V$ have the same number of elements.

*Proof:* If $B$ and $C$ are bases, then $B$ is independent and $C$ generating, hence $|B| \leq |C|$, and also $C$ is independent and $B$ generating, so $|C| \leq |B|$.

## Definition of dimension
The last corollary allows us to define the **dimension** of a finite-dimensional vector space, which is the number of elements in every finite basis.

TODO: somehow prove that a finite-dimensional vector space has no infinite bases.


## Definition of a linear map
If $(V, \mathbb{F})$ and $(W, \mathbb{F})$ are vector spaces, a linear map is a function $T: V \to W$ such that

 - for all vectors $u, v \in V$, T(u + v) = T(u) + T(v)$
 - $for any vector $v \in V$ and any scalar $a \in \mathbb{F}$, $T(a \cdot v) = a \cdot T(v)$

Note: by induction we can extend the linearity properties to any finite linear combination: $T(\sum_{v \in S} a_v \cdot v) = \sum_{v \in S} a_v \cdot T(v)$.

## The image of the basis completely determines a linear map
If $T: V \to W$ is linear and $B$ is a finite basis for $V$, then by fixing $T(b)$ for all $b \in B$, the linearity of $T$ completely determines the rest of the values.

*Proof:* For any $v \in V$, we have $v = \sum a_i b_i$ for some scalars $a_i$. So $T(v) = T(\sum a_i b_i) = \sum a_i T(b_i)$ by linearity. So every $T(v)$ is defined in terms of the $T(b_i)$.


## Composition of linear maps is linear
If $A: V \to W$ and $B: W \to X$ are linear maps, then $B \circ A$ is linear as well.

*Proof:* $(B \circ A) (a u + b v) = B(aAu + bAv) = a (B \circ A)(u) + b (B \circ A)(v)$

## Assigning map values for a basis determines the map
If $T: V \to W$ is a linear map and $B$ is a basis for $V$, then assigning values $T(v)$ for all $v \in B$ completely determines the rest of the map.

*Proof:* Every $v \in V$ is a linear combination of the $B$, so $T(v) = \sum_{b \in B} a_b \cdot T(b)$.


## Invertibility
A basic definition from set theory is that a function $f: X \to Y$ is **left invertible** if there is a $g: Y \to X$ such that $g \circ f = id_X$, and is **right invertible if there's an $h: Y \to X$ such that $f \circ h = id_Y$. if a function is both left invertible and right invertible, we say it is just **invertible**. It is easy to prove that if a function is invertible, then there is a unique function which serves as both left and right inverses. Also, it is a basic fact from set theory that a function $f$ is a bijection iff it is invertible.

## Definition of an isomorphism
An **isomorphism** between vector spaces is a bijective linear map. In other words, isomorphisms are invertible linear maps.

## Isomorphism preserves independence, generatingness
If $T: V \to W$ is an isomorphism, then if $S$ is independent in $V$, then $T(S)$ is independent in $W$. Also If $G$ generates $V$, then $T(G)$ generates $W$.

*Proof:* If $S$ is independent, then $\sum_{v \in S} \alpha(v) \cdot v = 0$ implies that $\alpha(v) = 0$ for all $v \in S$. So if $\sum_{v \in S} \beta(v) \cdot T(v) = 0$, then $T(\sum_{v \in S} \beta(v) \cdot v) = 0$, so \sum_{v \in S} \beta(v) \cdot v = 0$ since $T$, being an isomorphism, is injective. This implies $\beta(v) = 0$ for all $v \in S$, proving that the set of all $T(v)$'s is independent.

If $G$ generates $V$ then for all $z \in V$ there is a scaling $\alpha$ of $S$ such that $\sum_{v \in G} \alpha(v) \cdot v = z$. If $w \in W$, then there is some $u \in V$ such that $T(v) = w$ since $T$ is an isomorphism, and since $G$ generates $V$ there is some $\beta$ such that $\sum_{v \in S} \beta(v) \cdot v = u$, so by linearity $T(u) = \sum_{v \in S} \beta(v) \cdot T(v) = w$. Hence the set of $T(v)$'s generates $W$.

### Corollary
For any isomorphism $T: V \to W$, if $S$ is a basis for $V$ then $T(S)$ is a basis for $W$.

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
If $W$ is a subspace of a vector space $V$, with $dim V = n$, then letting $dim W = m$ and $B$ be a basis for $V$, any $m$-subset of $B$ is a vector space for $W$.

*Proof:* Any $m$-subset of $V$ is certainly independent in $V$, so is independent in $W$. But this gives us an independent subset of $W$ with $dim W$ elements in it, so adding any vector to the set results in a dependent set (since no independent set can have more than $m$ elements), meaning it's a maximal independent set and therefore a basis.

## Definition of complements
If $W$ is a vector space and $U$ and $V$ are subspaces of $W$, then we say $U$ and $V$ are **complements** in $W$ iff $U + V = W$ and $U \cap V = \{0\}$.

TODO: introduce null space, range
TODO: rank-nullity theorem

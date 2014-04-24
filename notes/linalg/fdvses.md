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
Unless mentioned otherwise, we will assume that all vector spaces are finite-dimensional from here on out. Proving things about infinite-dimensional vector spaces requires more machinery.


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

## No finite-dimensional vector space has an infinite independent set
If $V$ has a finite basis, then there is no infinite subset $S$ of $V$ which is independent.

*Proof:* If there is an infinite independent $S$, then any subset of $S$ is independent. In particular, we can find a subset with $n+1$ elements in it. This contradicts the Steinitz exchange lemma which says any independent set must have no more elements than any other spanning set.

### Corollary
Any two bases in a finite dimensional vector space have the same number of elements.

## Definition of dimension
The last corollary allows us to define the **dimension** of a finite-dimensional vector space, which is the (unique) number of elements in any basis.


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


## Eigenspaces are invariant subspaces
TODO

## Definition of spectrum
The set of all eigenvalues for a linear map is called its **spectrum**.

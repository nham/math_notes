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

## Invertibility
A basic definition from set theory is that a function $f: X \to Y$ is **left invertible** if there is a $g: Y \to X$ such that $g \circ f = id_X$, and is **right invertible if there's an $h: Y \to X$ such that $f \circ h = id_Y$. if a function is both left invertible and right invertible, we say it is just **invertible**. It is easy to prove that if a function is invertible, then there is a unique function which serves as both left and right inverses. Also, it is well-known from set theory that a function $f$ is an injection iff it has a left-inverse, a surjectin iff it has a right-inverse, and a bijection iff it is invertible.

## Definition of an isomorphism
An **isomorphism** between vector spaces is a bijective linear map. In other words, isomorphisms are invertible linear maps.

## Composition of isomorphisms is an isomorphism
The composition of isomorphisms is an isomorphism. 

*Proof:* It's certainly linear, but from set theory composition of bijections is a bijection.


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

### Corollary
A linear map is injective iff it maps independent sets to independent sets and surjective iff it maps generating sets to generating sets.


### Corollary
For any linear map $T: V \to W$ and basis $B$ for $V$, $T$ is an isomorphism iff $T(B)$ is a basis.

*Proof:* We already have one direction. To prove that any $T$ which maps each basis to a basis must be an isomorphism, let $B$ be a basis for $V$. Then if $T(u) = T(v)$, we have $\sum_1^n c_i T(b_i) = \sum_1^n d_i T(b_i)$, so if $c_i \neq d_i$ for any $i$, the vectors $T(b_i)$ are not independent. So in fact $u = v$. Also, for any $w \in W$, $w = \sum_1^n a_i T(b_i)$ since $T(b_i)$'s are a basis, so $w = T(\sum_1^n a_i b_i)$.

### Corollary 
$V$ and $W$ are isomorphic iff $dim V = dim W$.

*Proof:* If $B$ is a basis for $V$, then for any isomorphism $T: V \to W$, we have $T(B)$ is a basis for $W$. It has exactly the same number of elements as $B$, so they must have the same dimension. 

Conversely, if $dim V = dim W$, then there are bases $B$ and $C$ for $V$ and $W$, respectively with $|B| = |C|$. We can define a mapping $T$ by starting with a bijection between $B$ and $C$. The rest of the linear map follows since the image of a basis determines the rest of the linear map. Then the image of $B$ is a basis, so by the previous proposition $T$ is an isomorphism.


## The coordinate isomorphism
If $V$ is a vector space and $\beta = (b_1, \ldots, b_n)$ is an ordered basis for $V$, then any $v \in V$ has a unique representation $v = \sum_1^n a_i \cdot b_i$ for some scalars $a_i$. The vector of $\mathbb{F}^n$ defined by $(a_1, \ldots, a_n)$ is a **representation of $v$ with respect to the ordered basis $\beta$**. This is often notated $[v]_{\beta}$.

If $\beta = (b_1, \ldots, b_n)$ is an ordered basis for a vector space $V$, then the map $\phi_{\beta}: \mathbb{F}^n \to V$ defined by mapping to each tuple $(a_1, \ldots, a_n)$ the vector $\sum_1^n a_i b_i$ is well defined since there is exactly one vector it could be. It is also a bijection by definition of the basis. It is straightforward to prove $\phi_{\beta}$'s linearity, so in fact it is an isomorphism.


## Hom spaces
If $V$ and $W$ are vector spaces, then the collection of linear maps $V \to W$ forms a vector space under the operations:

 - $(f+g)(v) = f(v) + g(v)$
 - $(cf)(v) = c f(v)$

TODO

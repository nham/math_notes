## Definition of a linear map
If $(V, \mathbb{F})$ and $(W, \mathbb{F})$ are vector spaces, a linear map is a function $T: V \to W$ such that

 - for all vectors $u, v \in V$, T(u + v) = T(u) + T(v)$
 - for any vector $v \in V$ and any scalar $a \in \mathbb{F}$, $T(a \cdot v) = a \cdot T(v)$

Note: by induction we can extend the linearity properties to any finite linear combination: $T(\sum_{v \in S} a_v \cdot v) = \sum_{v \in S} a_v \cdot T(v)$.

## The image of the basis completely determines a linear map
If $T: V \to W$ is linear and $B$ is a basis for $V$, then by fixing $T(b)$ for all $b \in B$, the linearity of $T$ completely determines the rest of the values.

*Proof:* For any $v \in V$, we have $v = \sum a_i b_i$ for some scalars $a_i$. So $T(v) = T(\sum a_i b_i) = \sum a_i T(b_i)$ by linearity. So every $T(v)$ is defined in terms of the $T(b_i)$.


## Field as a vector space
We can consider any field $\mathbb{F}$ as a vector space over itself: vector addition is field addition, scalar multiplication is field multiplication. It is easy to verify, from the field properties, that all the vector space axioms hold.


## Definition of Hom spaces
If $V$ and $W$ are vector spaces, then the collection of linear maps $V \to W$ forms a vector space under the operations:

 - $(f+g)(v) = f(v) + g(v)$
 - $(cf)(v) = c f(v)$

This space is notated $Hom(V, W)$

*Proof:* $Hom(V,W)$ is an abelian group since addition is defined component-wise and the components are elemetns of an abelian group. The rest of the vector space axioms hold since they also hold for $W$.

$Hom(V, V)$ is notated $Hom(V)$, and is the space of all linear endomoprhisms. $Hom(V, \mathbb{F})$ (where $\mathbb{F}$ is the scalar field of $V$) is called the **dual space** of $V$, denoted $V'$. The elements of $V'$ are called **linear functionals** or **linear forms**.



## Composition of linear maps is linear
If $A: V \to W$ and $B: W \to X$ are linear maps, then $B \circ A$ is linear as well.

*Proof:* $(B \circ A) (a u + b v) = B(aAu + bAv) = a (B \circ A)(u) + b (B \circ A)(v)$

## Additivity of composition
For any $f,g \in Hom(V, W)$ and $h \in Hom(U, V)$, $(f + g) \circ h = f \circ h + g \circ h$. Also, for $t \in Hom(V, W)$ and $r, s \in Hom(U, V)$, $t \circ (r + s)$.

*Proof:* $[(f + g) \circ h](u) = (f + g)(h(u)) = f(h(u)) + g(h(u)) = (f \circ h)(u) + (g \circ h)(u)$. $[t \circ (r + s)](u) = t((r + s)(u)) = t(r(u) + s(u)) = (t \circ r)(u) + (t \circ s)(u)$.

## Homogeneity of composition
for $f \in Hom(U, V)$ and $g \in Hom(V, W)$, for any $a \in \mathbb{F}$ we have $a(g \circ f) = (ag) \circ f = g \circ (af)$.

*Proof:* $[g \circ (af)](u) = g((af)(u)) = g(a f(u)) = a g(f(u)) = [a (g \circ f)](u)$. Also, $[(ag) \circ f](u) = (ag)(f(u)) = a g(f(u)) = [a (g \circ f)](u)$.


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


## A linear endomap is invertible iff it has a one-sided inverse
If $T: V \to V$, then $T$ is invertible iff $T$ has a left-inverse iff $T$ has a right-inverse.

*Proof:* Suppose that $dim V = n$. One direction is proved. We have to prove that $T$ with a left- or right-inverse implies $T$ is invertible. If $T$ has a left-inverse, we know it's injective, so any basis $B$ in $V$ has $T(B)$ independent. But we can expand any independent set to a basis, and we can't have more than $n$ elements in a basis, so $T(B)$ is a basis. This implies that $T$ must be surjective after all, so it's invertible. On the other hand, if $T$ is a right-inverse, then we know $T$ is surjective, so for any basis $B$, we have $T(B)$ generating for $V$. But we can pare down any generating set to a basis, and no basis has less than $n$ elements in it, so $T(B)$ must have $n$ elements, and hence be a basis itself. This implies that $T$ is injective as well, hence invertible.



## Compositions and invertibility
If $f: Y \to Z$ and $g: X \to Y$, then if $f$ is bijective, we have

 - $g$ is injective iff $f \circ g$ is injective
 - $g$ is surjective iff $f \circ g$ is surjective

If $g$ is bijective, then

 - $f$ is injective iff $f \circ g$ is injective
 - $f$ is surjective iff $f \circ g$ is surjective

*Proof:* If $f$ is bijective, then $g$ injective/surjective implies that $f \circ g$ is injective/surjective, respectively, since composition of injective/surjective maps is injective/surjective. Conversely, if $f \circ g$ is injective/surjective, then $f^{-1} \circ (f \circ g) = g$ is injective/surjective, being the composition of injective/surjective functions, respectively.

A similar proof holds for when $g$ is bijective.



## The coordinate isomorphism
If $V$ is a vector space and $\beta = (b_1, \ldots, b_n)$ is an ordered basis for $V$, then any $v \in V$ has a unique representation $v = \sum_1^n a_i \cdot b_i$ for some scalars $a_i$. The vector of $\mathbb{F}^n$ defined by $(a_1, \ldots, a_n)$ is a **representation of $v$ with respect to the ordered basis $\beta$**. This is often notated $[v]_{\beta}$.

The **coordinate isomorphism** of $V$ induced by $\beta$ is the map $C_{V,\beta} : V \to \mathbb{F}^n$ defined by $\pi_i(C_{V, \beta}(v)) = [v, v_i^{\ast}]$ for all $i$. (See the dual basis notes for a definition of the bracket notation). In words, this map assigns to each vector its "coordinates" under the ordered basis $\beta$. It's injective by the definition of bases since $C_{V, \beta}(v)$ is a scaling of $v$ and surjective again by the definition of a basis. It is linear by each $v_i^{\ast}$'s linearity, proving it is an isomorphism.


If $\beta = (b_1, \ldots, b_n)$ is an ordered basis for a vector space $V$, then the map $\phi_{\beta}: \mathbb{F}^n \to V$ defined by mapping to each tuple $(a_1, \ldots, a_n)$ the vector $\sum_1^n a_i b_i$ is well defined since there is exactly one vector it could be. It is also a bijection by definition of the basis. It is straightforward to prove $\phi_{\beta}$'s linearity, so in fact it is an isomorphism.


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



## Dimension of hom spaces
$dim Hom(V, W) = (dim V) (dim W)$ for any vector spaces $V$ and $W$ over the same field.

*Proof:* Let $\{v_1, \ldots, v_m \}$ be a basis for $V$ and $\{w_1, \ldots, w_n\}$ be a basis for $W$. Then the collection of functions $f_{ij}: V \to W$ which maps $u_i \mapsto w_j$ and $u_k \mapsto 0$ for all $k \neq i$ forms a basis for $Hom(V, W)$, as we now prove.

If $g = \sum_{i=1}^m \sum_{j=1}^n a_{ij} f_ij$ is the zero map from $V$ to $W$, then $g(v_i) = 0$ for all $i$. But $g(v_i) = \sum_{j=1}^n a_{ij} f_{ij}(v_i) = \sum_{j=1}^n a_{ij} w_j$ since $f_{kj}(v_i) = 0$ for all $j$ and all $k \neq i$, by definition. Since $w_j$ are independent in $W$, we must have $a_{ij} = 0$. So the f_{ij}$'s are indepenent.

The set spans since for any $f: V \to W$, $f(u_i) = \sum_1^n b_{ki} w_k$ for each $i$ and some $b_{ki}$'s, so

$$f = \sum_{i=1}^m \sum_{j=1}^n b_{ji} f_ij$$

since $f(u_i) = \sum_{j=1}^n b_{ji} w_j$. Since the two functions agree on the image of every basis element, they agree elsewhere.

## Definition of dual basis
If $B$ is a basis for $V$, then $B'$ defined by, for each $b_i \in B$, the linear functional that maps $b_i$ to $1$ and $b_j$ to $0$ for all $j \neq i$ is a basis for $V'$. This is called the **dual basis**.

*Proof:* $\{ 1 \}$ is a basis for $\mathbb{F}$, so it's the same construction that was used in "Dimension of hom spaces"


## Definition of an associative algebra
An **algebra** is any vector space $(V, \mathbb{F})$ with a multiplication $\ast: V \times V \to V$ which is bilinear. If $\ast$ is associative, then the algebra is an **associative algebra**. If there is an $e \in V$ such that $e \ast v = v \ast e = v$ for all $v \in V$, then $V$ is a **unital algebra**.

## Algebra of endomorphisms
For any vector space $V$, $Hom(V)$ is an algebra with the associative, bilinear product taken to be composition.

*Proof:* Theorems above prove bilinearity. All function composition is associative.

## Definition of automorphism
An **automorphism** is any bijective endomorphism, i.e. a linear map defined $V \to V$ for some $V$ which is an isomorphism.


## Definition of general linear group
The **general linear group** of $V$ is the group of automorphisms, denoted $GL(V)$. The group is well defined since the composition of linear maps is linear and the composition of isomorphisms is an isomorphism.


## Conjugate operators in the general linear group
If $f, g \in Hom(V)$, then $f$ and $g$ are **conjugate** iff there is an $h \in GL(V)$ such that $f = h \circ g \circ h^{-1}$.

## Conjugation relation is an equivalence relation
For any $f, g, h \in GL(V)$ and writing $f \sim g$ if $f$ and $g$ are conjugate, we have

 - $f \sim f$
 - $f \sim g$ implies $g \sim f$
 - $f \sim g$ and $g \sim h$ implies $f \sim h$

*Proof:* $id_V$ is an automorphism of $V$, and $f = id_V \circ f \circ id_V$. If $f = h g h^{-1}$, then $g = h^{-1} f h$. Also if $f = r^{-1} g r$ and $g = s^{-1} h s$, then $f = r^{-1} s^{-1} h s r$. $(sr)^{-1} = r^{-1} s^{-1}$.

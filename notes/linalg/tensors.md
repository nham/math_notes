# Preface
These notes depend on the "fdvses" notes.

## Definition of direct product of vector spaces
If $A$ and $B$ are two vector spaces, then the **direct product space** $A \times B$ is defined as a vector space whose set is the cartesian product $A \times B$ and whose operations are

 - vector addition: $(a, b) + (c, d) := (a + c, b + d)$
 - scalar multiplication: $c \cdot (a, b) := (ca, cb)$.

these are both clearly well-defined. $A \times B$ forms an abelian group under this addition operation since all the properties hold for each component. Scalar multiplication obeys the proper vector space axioms for the same reason. So $A \times B$ is a vector space. Note that it can be thought of as the two vector spaces $A$ and $B$ operating "in parallel".

## Unique representation in direct sums
If $V = A \oplus B$, then for all $v \in V$ there is a unique pair $(a, b)$ with $a \in A$, $b \in B$, such that $v = a + b$.

*Proof:* It was previously proved that at least one such pair exists. To prove it unique, assume $(a_1, b_1)$ is a pair that works. Then $v = a + b = a_1 + b_1$, so we can group together elements of the same vector spaces on the same side of the equation, i.e. $a - a_1 = b_1 - b$. So $a - a_1$ is an element of $A \cap B$. But since we assumed that $V$ was a direct sum of $A$ and $B$, we must have $a - a_1 = 0$. So in fact the pair is unique.

## Direct product is isomorphic to direct sum
If $V = A \oplus B$ for vector spaces $A$ and $B$, then $V \cong A \times B$.

*Proof:* We define a mapping $f: V \to A \times B$ by $v \mapsto (a, b)$ where $(a, b)$ is the unique pair such that $v = a + b$. Obviously this mapping is injective, and it must be surjective as well since for any $c \in A$, $d \in B$, $c + d \in V$. It's linear because, supposing $v = a + b$ and $w = c + d$, for any scalars $\alpha$ and $\beta$ we have $f(\alpha v + \beta w) = (\alpha a + \beta c, \alpha b + \beta d) = \alpha f(v) + \beta f(w)$.

## Vector spaces of functions, linear functionals, dual spaces
For any set $X$ and field $\mathbb{F}$, consider the set $\mathbb{F}^X$ of all functions $X \to \mathbb{F}$. We can define a vector space on $\mathbb{F}^X$ by:

 - $(f+g)(x) = f(x) + g(x)$
 - $(c \cdot f)(x) = c f(x)$

This is a vector space for essentially the same reason the direct product was: addition of functions is defined component wise, and component-wise addition is commutative, associative, has an additive identity and additive inverses, due to the components belonging to a field. Similarly the scalar multiplication properties hold.

Since $X$ was arbitrary, in particular $X$ could be the underlying set of a vector space, say $V$. We are in particular interested in a subspace of this vector space: the space of all linear functions from $V \to \mathbb{F}$, where $V$ is a vector space whose field is $\mathbb{F}$. 

We have to prove a couple things first. To begin, what does "linear" even mean here? Linear maps are homomorphisms between vector spaces, but $\mathbb{F}$ isn't a vector space, right? Au contraire, because we can consider any field as a vector space over itself! Clearly the field addition makes $\mathbb{F}$ into an abelian group, and the scalar multiplication (as regular field multiplication) makes all the other properties work as well.

Now we have to prove that it is in fact a subspace. But if $f$ and $g$ are linear functions $V \to \mathbb{F}$, then for any scalars $a, b$ and vectors $u, v$, we have $(f + g)(au + bv) = f(au + bv) + g(au + bv) = a f(u) + b f(v) + a g(u) + b g(v) = a (f + g)(u) + b (f + g)(v)$, so $(f+g)$ is linear. Also, $(cf)(au + bv) = c f(au + bv) = ca f(u) + cb f(v) = a (cf)(u) + b (cf)(v)$.

We call a linear function $V \to \mathbb{F}$ a **linear funcitonal**, and we call the vector space of all linear functionals $V \to \mathbb{F}$ the **dual space** of $V$, denotes $V'$.

## Bilinear forms ("brackets")
For any vector space $V$, we can construct a function $V \times V' \to \mathbb{F}$ defined by $[v, f] \mapsto f(v)$. In words, the linear functional in the second component is applied to the vector in the first component to obtain the scalar $f(v)$. Since each $f \in V'$ is linear, this operation is clearly linear in the first argument. But also, since $V'$ is a vector space and since addition and scalar multiplication are defined component-wise, the operation is linear in the second argument as well. In other words, the operation $[v, f] \mapsto f(v)$ is **bilinear**.

## Dual bases
### A preliminary
If $V$ is a vector space and $B$ is a basis for $V$, then let $\alpha: B \to \mathbb{F}$ be any scaling of $B$. Then there is exactly one linear functional $f \in V'$ such that $f(b) = \alpha(b)$ for all $b \in B$.

*Proof:* Any linear functional, being a linear map, is completely determined by the image of any basis in $V$. So such a scaling $\alpha$ uniquely defines a linear functional.

### Dual bases exist
If $\beta = (b_1, \ldots, b_n)$ is an ordered basis in $V$, then there is a unique ordered basis $\gamma = (c_1, \ldots, c_n)$ in $V'$ such that $[b_i, c_j] = \delta_{ij}$, where $\delta_{ij}$ is Kronecker's delta function.

*Proof:* For each scaling $t_j = (\delta_{1j}, \ldots, \delta_{nj})$, the previous lemma guarantees there is a unique functional $c_j$ such that $[b_i, c_j] = \delta_{ij}$ for all $b_i$. (Note that the functional $c_j$ maps $b_j$ to $1$ and all other basis elements to $0$). This gives us a unique tuple $(c_1, \ldots, c_n)$ of linear functionals in $V'$ (it if wasn't unique, we would get two different functionals for one of the $t_j$ scalings, contradicting the previous lemma.

Recall also that the image of a basis completely determines a linear map, so that if two functions agree on the values of the basis elements, then they are identical. So for any $f \in V'$, let's define a linear combination of functionals $\sum f(b_i) c_i$. For any $b_k \in \beta$, $[\sum f(b_i) c_i](b_k) = f(b_k) c_k(b_k) = f(b_k)$ since $c_i(b_k) = 0$ for all $i \neq k$. In other words, $f = \sum f(b_i) c_i$. This proves that $(c_1, \ldots, c_n)$ is an ordered generating set for $V'$. To prove independence, assume some $c_k = \sum_{i \neq k} d_i c_i$. This is a blatant contradiction, since $c_k(b_k) = 1$ but $[\sum_{i \neq k} d_i c_i](b_k) = 0$. So $(c_1, \ldots, c_n)$ is an ordered basis for $V'$, and is the unique such ordered basis.

### Corollary
$dim V = dim V'$, so the two are isomorphic.

### Definition of dual basis
The above proposition gave a well-defined map from bases in $V$ to bases in $V'$. For any basis $B$ in $V$, we call the unique basis in $V'$ the **dual basis** and denote it $B'$.

## We can find functionals that assign non-zero scalars to non-zero vectors
If $V$ is a vector space and $v \in V$ isn't zero, then there is a functional $f \in V'$ such that $f(v) \neq 0$.

*Proof:* $\{v\}$ is an independent set in $V$ and so can be extended to a basis. A functional can be defined by an arbitrary assignment of scalars to basis elements, so in particular we can pick any non-zero scalar for $v$ and then any scalars for the others in the basis to obtain a functional $f$ such that $f(v) \neq 0$.


### Corollary
If $u, v \in V$ are distinct vectors, then there is some functional $f$ in $V'$ such that $f(u) \neq f(v)$.

*Proof:* Find a functional $f$ such that $f(u-v) \neq 0$, which can be done by the previous proposition since $u \neq v$. $f(u) = f(v)$ implies $f(u-v) = 0$, a contradiction.


## The natural correspondence between a vector space and its double dual space
If $V$ is a vector space, then the map $\phi: V \to V''$ defined by, for all $v \in V$, associating the functional $V' \to \mathbb{F}$ sending $f \in V'$ to $[v, f]$, (i.e. for any vector $v$ we assign to every functional $f$ the scalar $f(v)$) is not only a bijection, but is an isomorphism.

*Proof:* It's clearly linear since $[v, f]$ is a bilinear form. It remains to prove bijectivity. But if $u, v \in V$, then for $\phi(u) = \phi(v)$, we must have for any $f \in V'$, $[u, f] = [v, f]$. If $u \neq v$, this is a contradiction since we know from a previously proved proposition that some function has distinct values for $u$ and $v$. So $u = v$, and $\phi$ is injective. So the image of $\phi$ is isomorphic to $V$ since $\phi$ is an injective linear map. But we already know that $dim W = dim W'$ for any vector space $W$, so we must have $dim V = dim V''$. So in fact $\phi$ is an isomorphism.


## Definition of annihilators
If $S$ is any subset of a vector space $V$, then $ann(S; V)$ defined by all functionals on $V$ that map every vector in $S$ to $0$ is called the **annihilator of $S$**. In symbols:

$$ann(S; V) = \{f \in V' : \forall s \in S [s, f] = 0 \}$$


### Examples
$ann(\emptyset; V) = ann(\{ 0 \}; V) = V'$. Also, $ann(V; V)$ consists solely of the zero functional in $V'$

## Annihilators are subspaces of the dual space

For any subset $S \subseteq V$, $ann(S; V)$ is a subspace of $V'$

*Proof:* Let $f, g \in ann(S; V)$. Then for any $s \in S$, $(f+g)(s) = f(s) + g(s) = 0 + 0 = 0$, so $f+g \in ann(S; V)$ as well. For similar reasons, $cf \in ann(S; V)$ for any scalar $c$.


## Annihilating a set is the same as annihilating the span of that set
If $S$ is a subset of vector space $V$, then $ann(S; V) = ann(span S; V)$

*Proof:* Clearly any functional that annihilates vectors in $span S$ annihilators $S$ as well, so that $ann(span S; V) \subseteq ann(S; V)$. But for $f \in ann(S; V)$  and $v \in span S$, $v = \sum_1^k a_i s_i$ for some $k$ and $s_i$'s in $S$. So $f(v) = \sum_1^k a_i f(s_i) = 0$. Hence $ann(span S; V) \subseteq ann(span S; V)$, so the two sets are equal.


##  Annihilators of functionals and the natural correspondence
Let $V$ be a vector space, $V'$ its dual and $S$ a subset of $V'$. Also let $\phi: V \to V''$ be the natural isomorphism between $V$ and its double dual space. Then letting $X = \{ v \in V : \forall f \in S f(v) = 0$, we have that $\phi(X) = ann(S; V')$. Also, $X$ is a subspace of $V$ and $\phi$ restricted to $X$ is an isomorphism.

 1. $X$ is a subspace of $V$, 

    *Proof:* Any $u, v \in X$ have, for all $f \in S$, f(u + v) = f(u) + f(v) = 0 + 0 = 0$. Also $f(cu) = cf(u) = c0 = 0$ for any scalar $c$ and any $f \in S$, both by linearity. 


 2. $\phi(X) \subseteq ann(S; V')$

    *Proof:* For any $x \in X$, $\phi(x)$ is a function $V' \to \mathbb{F}$ that maps functionals on $V$ (elements of $V'$) to scalars by $f \mapsto f(x)$ for $f \in V'$. So $\phi(x)$ must map every $f \in S$ to $f(x)$, which is by definition $0$ since $x \in X$. This proves that $\phi(X) \subseteq ann(S; V')$. 


 3. $ann(S; V') \subseteq \phi(X)$

    *Proof:* If $g \in ann(S; V')$, then let $v = \phi^{-1}(g)$ be the element of $V$ such that $g(h) = h(v)$ for all $h \in V'$, which is guaranteed to exist by the natural isomorphism $\phi$. Since $g \in ann(S; V')$, we know that for all $f \in S$, $g(f) = 0$. But this means that $f(v) = 0$ for all $f \in S$. So $v \in X$ This proves that $\phi^{-1}(ann(S; V')) \subseteq X$, i.e. that $ann(S; V') \subseteq phi(X)$.

 4. $X$ and $ann(S; V')$ are isomorphic under $\phi$

    *Proof:* We already know that $phi$ restricted to $X$ is an isomorphism between $X$ and $\phi(X)$. But (3) proves that the latter is $ann(S; V')$.


## Annihilators of subspaces
If $U$ is a subspace of vector space $W$, then $dim ann(U; W) + dim U = dim W$. 

 1. Let $A$ be a basis for $U$ and $C$ be a basis for $W$ such that $A \subseteq C$. Let $B = C - A$. Let $C'$ be the dual basis for $W'$, and let $A'$ and $B'$ be the subsets of $C'$ that correspond to $A$ and $B$, respectively, so that $B' = C' - A'$.

 2. $B'$ is a basis for $ann(U; V)$

    *Proof:* $B'$ is independent, so it suffices to prove $span B' = ann(U; V)$. For $f \in ann(U; V)$, we know there exist, for all $c \in C$, $r_c \in \mathbb{F}$ such that $f = \sum_{c \in C} r_c g_c$, where $g_c \in C'$ is the dual basis element that corresponds to $c in C$. If there is an $a \in A$ such that $r_a \neq 0$, then $f(a) = r_a \neq 0$, contradicting the fact that $f$ is an annihilator for $U$. So in fact $r_a = 0$ for all $a \in A$, and $f = \sum_{b \in B} r_b g_b$.

 3. Q.E.D.

    *Proof:* $dim W = |C| = |A| + |B| = dim U + |B'| = dim U + dim ann(U; W)$, where the last equality holds by (2).




## Annihilators of direct sums
If $U$ and $V$ are subspaces of $W$ such that $W = U \oplus V$, then $W' = ann(U; W) \oplus ann(V; W)$ and $U' \cong ann(V; W)$ and $V' \cong ann(U; W)$.

*Proof:* TODO


 7. $U^0 \cong V$, therefore $dim U^0 = dim V$

    *Proof:* By (6), since $B'$ and $B$ have the same number of elements

 8. Defining $A' = C' - B'$, $A'$ is a basis for $V^0, implying that $V^0 \cong U$.

    *Proof:* We can actually applying (6) to $A'$. The reasoning is entirely symmetric.

 9. $W' = U^0 \oplus V^0$

    *Proof:* If $f \in W'$, then for any $w \in $W$, $w = u + v$ for $u \in U$, $v \in V$. So $f(w) = f(u) + f(v)$. For all $\beta \in B'$ $\beta(u) = 0$ since $u$ is a linear combination of vectors from $A$. Similarly, for all $\alpha in A'$, $\alpha(v) = 0$ since $v$ is a linear combination of vectors from $B$. This means that, upon writing $u = \sum_{a \in A} x_a a$ and $v = \sum_{b \in B} x_b b$, we can see that $f = \sum_{a \in A} f(a) g_a + \sum_{b \in B} f(b) g_b$, since (\sum_{a \in A} f(a) g_a + \sum_{b \in B} f(b) g_b)(u + v) = \sum_{a \in A} f(a) g_a(u) + \sum_{b \in B} f(b) g_b(v) = \sum_{a \in A} f(a) x_a + \sum_{b \in B} f(b) x_b = f(u) + f(v)$, where we have denoted the functional corresponding to $c \in C$ by $g_c$. Since $\sum_{a \in A} f(a) g_a$ and $\sum_{b \in B} f(b) g_b$ are functionals in $A'$ and $B'$, r


 10. Q.E.D.

    *Proof:* $dim W = dim U  + dim V$ by definition of $V$ in (1). By (7) we have $dim W = dim U + dim U^0$.

# Preface
These notes depend on the "fdvses" notes.

## Bilinear forms ("brackets")
For any vector space $V$, we can construct a function $V \times V' \to \mathbb{F}$ defined by $[v, f] \mapsto f(v)$. In words, the linear functional in the second component is applied to the vector in the first component to obtain the scalar $f(v)$. Since each $f \in V'$ is linear, this operation is clearly linear in the first argument. But also, since $V'$ is a vector space and since addition and scalar multiplication are defined component-wise, the operation is linear in the second argument as well. In other words, the operation $[v, f] \mapsto f(v)$ is **bilinear**.

## Dual bases
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

 1. $U' \cong ann(V; W)$ and $V' \cong ann(U; W)$.

    *Proof:* First, $dim W = dim U + dim V = dim U + dim ann(U; W)$ where the first equality holds by the well-known fact for the direct sums and the second holds by the previous proposition. So by cancellation, $V$ is isomorphic to $ann(U;W)$. Since $V \cong V'$, we have $V' \cong ann(U; W)$. Similar reasoning proves $U' \cong ann(V; W)$. 


 2. $ann(U; W) \cap ann(V; W) = \{ 0 \}$

    *Proof:* If a functional $f$ both annihilates $U$ and annihilates $V$, then for all $w \in W$, $w = u + v$ for some $u$ and $v$, so $f(w) = f(u) + f(v) = 0 + 0 = 0$. i.e. $f$ is the functional mapping everything to zero.


 3. for all $f \in W'$, $f = \alpha + \beta$ for some $\alpha \in ann(U; W)$ and $\beta \in ann(V; W)$. 

    *Proof:* Let $A$ be a basis for $U$, and $C$ a basis for $W$ that contains $A$. Let $C'$ be the dual basis corresponding to $C$, and, for all $c \in C$, $g_c$ be the functional in $C'$ that maps $c$ to $1$ and all other basis elements to $0$. Also let $B = C - A$.

Then define $\alpha = \sum_{a \in A} f(a) g_a$ and $\beta = \sum_{b \in B} f(b) g_b$. For any $w \in W$, $w = u + v$ for $u \in U$ and $v \in V$, and we have some scalars $r_a$ and $r_b$ such that $u = \sum_{a \in A} r_a a$ and $v = \sum_{b \in B} r_b b$. So 

$$
\begin{aligned}
(\alpha + \beta)(w) & = (\alpha + \beta)(u + v) \\
                    & = \sum_{a \in A} f(a) g_a(u + v) + \sum_{b \in B} f(b) g_b(u + v) \\
                    & = \sum_{a \in A} f(a) g_a(u) + \sum_{b \in B} f(b) g_b(v) \\
                    & = \sum_{a \in A} r_a f(a) + \sum_{b \in B} r_b f(b) \\
                    & = f(\sum_{a \in A} r_a a) + f(\sum_{b \in B} r_b b) \\
                    & = f(u) + f(v) \\
                    & = f(u + v) \\
                    & = f(w)
\end{aligned}
$$

where these equalities hold, respectively, because (1) substitution, (2) expansion of $\alpha$ and $\beta$, (3) because $\alpha(v) = 0$ and $\beta(u) = 0$ due to $\alpha$ being a linear combination of functionals $g_a$ for $a \in A$ (and hence annihilating all vectors not in $A$) and $\beta$ being a linear combination of functionals $g_b$ for $b \in B$ (and hence annihilating all vectors not in $B$), (4) because each $g_a$ annihilates everything but $a$. (and each $g_b$ annihilates everything but $b$, (5) linearity, (6) by definition, (7) linearity of $f$ and (8) by hypothesis.

 4. Q.E.D.

    *Proof:* $W' = ann(U; W) \oplus ann(V; W)$ holds from (2) and (3)


## The space of bilinear functionals
If $U$ and $V$ are vector spaces, then a **bilinear functional** is a function $U \times V \to \mathbb{F}$, where $U \times V$ is the direct product of vector spaces. We can form the set $B[U, V]$ of all bilinear functionals, and in fact imbue it with operations to turn it into a vector space, as follows. For $f, g \in B[U, V]$, $(f+g)(u, v) = f(u, v) + g(u, v)$, and for $c \in \mathbb{F}$, $(cf)(u, v) = c f(u, v)$. Since the set of all functions $U \times V \to \mathbb{F}$ is a vector space under these same operations, to prove that specifically the set of bilinear funcitonals is a vector space we need to merely prove that the space is closed under addition/scalar multiplication (the usual routine).

So 

$$
\begin{aligned}
(f+g)(u + w, v) & = f(u + w, v) + g(u + w, v) \\
                & = f(u, v) + f(w, v) + g(u, v) + g(w, v) \\
                & = (f+g)(u, v) + (f+g)(w, v)
\end{aligned}
$$

and

$$
\begin{aligned}
(f+g)(cu, v) & = f(cu, v) + g(cu, v) \\
             & = c f(u, v) + c g(u, v) \\
             & = c (f + g)(u, v)
\end{aligned}
$$

The other parameter holds similarly, proving that $(f+g)$ is linear. Also:

$$
\begin{aligned}
(af)(u + w, v) & = a f(u + w, v) \\
                & = a f(u, v) + cf(w, v) \\
                & = a f(u + w, v)
\end{aligned}
$$

and

$$
\begin{aligned}
(af)(cu, v) & = a f(cu, v) \\
             & = ac f(u, v) \\
             & = c (af)(u, v)
\end{aligned}
$$

so $(cf)$ is linear as well since the other parameter holds with similar reasoning. So $B[U, V]$ is a vector space.

## A basis for the space of bilinear functionals
### Preliminary lemma
If $U$ and $V$ are spaces, with $dim U = m$ and $dim V = n$, and $B$ and $C$ are bases for $U$ and $V$, respectively. Then if $f: B \times C \to \mathbb{F}$ is arbitrary, we can find exactly one bilinear form $w \in B[U, V]$ such that $w(b, c) = f(b_c)$ for all $(b, c) \in B \times C$.

*Proof:* First of all, if we start out by defining $w: U \times V \to \mathbb{F}$ with $w(b, c) = f(b, c)$ for all $(b, c) \in B \times C$, then for any $(u, v) \in U \times V$, $u = \sum_i r_i b_i$ and $v = \sum_j s_j c_j$, for $b_i \in B$, $c_j \in C$. So because $w$ must be bilinear we have $w(u, v) = \sum_i \sum_j r_i s_j f(b_i, c_j)$. That is, once we fix values $w(b, c)$, every other element of $U \times V$ is determined if we want $w$ to be bilinear. So not only is $w$ defined in this way a valid bilinear form, but it's the only possible bilinear form mapping each $(b,c) \mapsto f(b, c)$.

### Bases for the bilinear space
If $B$ is a basis in $U$, and $C$ is a basis for $V$, then there is a unique basis $D = \{ d_{bc} : b \in B, c \in C}$ for $B[U, V]$, where $d_{bc}(x, y) = 1$ iff $x = b$ and $y = c$, and $d_{bc}(x, y) = 0$ otherwise, for all $x \in B$, $y \in C$.

*Proof:* Each $d_{bc}$ is the unique bilinear functional obtained from the scaling of $B \times C$ that maps $(b,c)$ to 1$ and all other pairs to zero. This collection $D$ of functionals is unique collection such that the stated property holds. The only thing that remains is to prove it a basis for $B[U, V]$.

No $d_{bc}$ could be in the span of the others, since $d_{bc}$ maps $(b, c) \mapsto 1$ and, by definition, every other $d_{pq}$ maps $(b, c) \to 0$ (hence every linear combination does as well). So $D$ is independent. To prove it spans, let $f \in B[U, V]$. Then we prove that 

$$f = \sum_{b \in B} \sum_{c \in C} f(b, c) d_{bc}$$

For $(u, v) \in U \times V$, we can write $u$ and $v$ and linear combinations of $B$ and $C$, respectively, so $u = \sum_{b \in B} r_b b$ and $v = \sum_{c \in C} s_c c$. So 

$$
\begin{aligned}
\sum_{b \in B} \sum_{c \in C} f(b, c) d_{bc}(u, v)
        & = \sum_{b \in B} \sum_{c \in C} f(b, c) r_b s_c d_{bc}(b, c) \\
        & = (\sum_{b \in B} r_b f(b, v) \\
        & = f(u, v)
\end{aligned}
$$

### Corollary
$dim B[U, V] = (dim U) (dim V)$

*Proof:* The basis for $B[U, V]$ has $|U| |V|$ elements in it.


## Definition of tensor product (Halmos)
If $U$ and $V$ are vector spaces, define the **tensor product** $U \otimes V$ as the dual space of $B[U, V]$. For each pair $u \in U, v \in V$, define $u \otimes v$ to be the function $B[U, V] \to \mathbb{F}$ defined by $f \mapsto f(u,v)$. So the tensor $u \otimes v$ maps bilinear functionals to their image on $(u, v)$.

### Corollary
$dim U \otimes V = dim U dim V$

*Proof:* $U \otimes V$ is the dual space of $B[U,V]$, so the two have the same dimension. but it is already known that $dim B[U, V] = (dim U) (dim V)$.


## Tensors of basis pairs are a basis for the tensor product
If $B$ and $C$ are bases for spaces $U$ and $V$, then the set $D = \{b \otimes c : b \in B, c \in C\}$ is a basis for $U \otimes V$.

*Proof:* We already know that $B[U,V]$ has a basis $D$ consisting of, for each "basis pair" $(b, c)$ with $b \in B, c \in C$, a bilinear functional $d_{bc}$ which maps $(b,c)$ to $1$ and all other basis pairs to $0$. The obvious candidate for a basis for $U \otimes V$ is the dual basis $D'$ consisting of $\delta_{bc}$'s which each map $d_{bc}$ to $1$ and all other $d_{xy}$ for $x \in B - b$, $y \in C - c$ to $0$.

Is $b \otimes c = \delta_{bc}$? For any $w \in B[U,V]$, $w = \sum_{x \in B} \sum_{y \in C} a_{xy} d_{xy}$, for some scalars $a_{xy}$, since the $d_{xy}$'s are a basis for $B[U,V]$ by hypothesis. then $\delta_{bc}(w) = a_{bc}$ by definition. But $(b \otimes c)(w) = w(b, c) = \sum_{x \in B} \sum_{y \in C} a_{xy} d_{xy}(b, c) = a_{bc}$ again by definition. So they are in fact the same.


## Alternative development of tensor product
### Free vector spaces
If $S$ is any set, recall we can form the vector space $\mathbb{F}^S$ of all functions $S \to \mathbb{F}$.

Define a function $f: S \to \mathbb{F}$ to have **finite support** if there are at most finitely many elements $s \in S$ such that $f(s) \neq 0$. The subset of $\mathbb{F}^S$ of functions with finite support is then a subspace, for any scalar multiple of a function with finite support obviously has finite support, and if $f$ and $g$ both have finite support, then if $X$ and $Y$ are the sets that $f$ and $g$ take non-zero values on, respectively, then the only elements that $(f + g)$ could take non-zero values on are the elements in $S \cup T$, since for all elements $x$ outside this set $(f+g)(x) = f(x) + g(x) = 0$.

The **free vector space** $F(S)$ is defined to be a subspace of $\mathbb{F}^S$ of fuctions with finite support.

Note that we can define a "standard basis" for $F(S)$ to be the singleton indicator functions for each $s \in S$. A **singleton indicator function** for $s \in S$ is a function $f: S \to \mathbb{F}$ such that $f(x) = 1$ iff $x = s$, and $f(x) = 0$ otherwise. Every function $h$ with finite support is a linear combination of these functions, with the vectors being the indicator functions that $h$ takes non-zero values on, and the scalar coefficients being $h(x)$. Clearly the indicator functions span, but they are also independent since each indicator for $s$ is the only indicator taking a nonzero value on $s$, and no linear combination of other indicators will result in a non-zero value on $s$.

This means that if $S$ is finite, then $F(S)$ is finite dimensional, with $dim F(S) = |S|$. If $S$ isn't finite, then it has an infinite basis, and we haven't defined dimension yet for "infinite-dimensional" vector spaces.

### Thinking about $F(U \times V)$
What are the elements of $F(U \times V)$? They are functions that assign scalars to each of finitely many pairs in $U \times V$, in essence. For example, if $f \in F(U \times V)$ sends $(u_i, v_i)$ to $a_i$ for $1 \leq i \leq 3 and all other pairs zero, then we can represent this as:

$$\{[(u_1, v_1), a_1], [(u_2, v_2), a_2], [(u_3, v_3), a_3]\}$$

These are often called "formal sums", though when that is the case they are written differently. So elements of $F(U \times V)$ can be thought of as collections of pairs, where each pair $[(u, v), a)]$ has its first component as a pair from $U \times V$ and its second component as a scalar from $\mathbb{F}$.

Addition of two elements in $F(U \times V)$ involves adding up the associated scalars of any two pairs $(u, v)$ that are in both collections, and just unioning together all of the pairs $(w, x)$ that are in only one of the elements. For example, if no two pairs $(u_i, v_i)$ are the same, then:

$$\{[(u_1, v_1), a_1], [(u_2, v_2), a_2], [(u_3, v_3), a_3]\} + \{[(u_2, v_2), b_1], [(u_4, v_4), b_2], [(u_5, v_5), b_3]\}$$
$$ = \{[(u_1, v_1), a_1], [(u_2, v_2), a_2 + b_1], [(u_3, v_3), a_3], [(u_4, v_4), b_2], [(u_5, v_5), b_3]\}$$

The dual space of $F(U \times V)$ is the space of linear functionals mapping "formal sums" in $F(U \times V)$ to scalars. These look a little like bilinear forms, except we have no guarantee that they are in fact bilinear. We can introduce bilinearity, however, by taking a quotient space of $F(U \times V)$. We first form the sets:


$$A_1 = \{(a_1, b) + (a_2, b) - (a_1 + a_2, b) : \forall a_1, a_2 \in U, b \in V \}$$
$$A_2 = \{(a, b_1) + (a, b_2) - (a, b_1 + b_2) : \forall a \in U, b_1, b_2 \in V \}$$
$$S_1 = \{(c a, b) - c (a, b) : \forall a \in U, b \in V, c \in \mathbb{F} \}$$
$$S_2 = \{(a, c b) - c (a, b) : \forall a \in U, b \in V, c \in \mathbb{F} \}$$

In the above I'm using the shorthand notation $a (x, y)$ to stand for the function that maps $(x, y) \mapsto a$ and all other pairs mapped to zero. Now we form the subspace of $F(U \times V)$ defined by $E = span A_1 \cup A_2 \cup S_1 \cup S_2$. From here we form the quotient space $F(U \times V) \ E$. This quotient space is called the **tensor product** of $U$ and $V$, denoted $U \otimes V$.

TODO: prove the dual space of $F(U \times V) \ E$ is the set of all bilinear forms on $U \times V$.



## Definition of dual transformation
For a linear map $T: V \to W$, we can define a map $\phi_T: W' \to V'$ defined by $w \mapsto w \circ T$. Then $\phi_T$ is a linear map, called the **dual transformation** of $T$.

*Proof:* For $a, b \in W'$, $\phi_T(a + b) = (a + b) \circ T = a \circ T + b \circ T = \phi_T(a) + \phi_T(b)$. Also if $c \in \mathbb{F}$, $\phi_T(ca) = (ca) \circ T = c (a \circ T) = c \phi_T(a)$, so it's linear.

## Representation of the dual transformation is the transpose of the original
TODO : type up proof.


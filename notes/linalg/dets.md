# LADW
These are notes from LADW.

## Determinants and elementary matrices
If $E$ is elementary matrix, then $det(AE) = det A det E$. Also, $det E \neq 0$.

*Proof:* Note that multiplying on the right by an elementary matrix is applying a *column operation*. Note also that any elementary matrix can be formed by applying a column operation of the same type to $I_n$. So the saxpy elementary matrix is obtained via a saxpy on $I_n$, the scaling elementary matrix results from a scaling of $I_n$, and the swap elementary matrix is itself the result of swapping $I_n$. So for column saxpy, $det (AE) = det A = (det A) 1 = det A det E$ since $det E = 1$. For scaling operation, $det AE = k det A$ for some $k$, and $det E = k$ as well. Last, for swap, $det E = -1$, and $det (AE) = - det A$.

Note that in each case, the determinant of an elementary matrix is non-zero.

## Determinant of transpose
$det A = det A^T$

*Proof:* We know that $A$ is invertible iff $A^T$ is. In the case that $A$ is not invertible, then $A^T$ is also not, so $det A = det A^T = 0$. If $A$ is invertible, we first consider a special case. If $A$ is an elementary matrix, then a scale matrix is a diagonal matrix, so clearly $det A = det A^T$. A swap matrix is equal to its transpose, so again clearly $det A = det A^T$. Finally for saxpy matrices, the determinant is $1$ since the matrix has a multiple of one column added to another column, which doesn't change the determinant from $det I_n$. The transpose of such a matrix possibly moves the element to some other column, but it has the same determinant.

Now consider the general case of invertible $A$. Then there are elementary matrices $E_i$ such that  $E_k \cdots E_1 A = I_n$, but this implies $A^T E_1^T \cdots E_k^T = I_n = E_k \cdots E_1 A$. Since $det E_i = det E_i^T$ for all $i$, we have established the proposition.


## Cramer's rule
If $Ax = b$ is a square linear system with a non-zero determinant, and if it has a solution $x$, then $x_i = det A^i / det A$, where $A^i$ is the matrix formed by replacing the $i$-th column of $A$ with $b$.

*Proof:* Let $A_i$ be the $i$-th column of $A$. Then $b = Ax = \sum_1^n x_i A_i$, we have $det A^i = det(A_1, \ldots, A_{i-1}, \sum_1^n x_i A_i, A_{i+1}, \ldots, A_n)$, which equals $x det A$ by multilinearity and because any matrix with duplicate columns has a zero determinant.



# Katznelson & Katznelson

## Permutations

## Notation
For $n \in \mathbb{N}$, write $[n] = \{1, \ldots, n\}$.

## Definition of the symmetric group $S_n$
$S_n$ is the group of all permutations on $[n]$ (or any $n$-element set), with the group operation taken as composition. It is called the **symmetric group** on $n$ elements.

## Definition of orbit
For any $f \in S_n$, the **orbit** of $x \in [n]$ under $f$ is the collection $O_f(x) = \{ f^k(x) : k \in \mathbb{N}, k > 0 \}$. In other words, it is the set of all integers we reach by starting at $x$ and repeatedly applying $f$.

An orbit is **trivial** iff it contains a single element.

Note that the identity map has all trivial orbits.

## The orbit of any element contains itself
If $x \in [n]$ and $f \in S_n$, then $x \in O_f(x)$.

*Proof:* We must have some $i \neq j \in \mathbb{N}$ such that $f^i(x) = f^j(x)$ since $f$ is defined on a set with $n$-elements (and so $f^0(x), \ldots, f^{n+1}(x)$ is $n+1$ elements and so we must have a repetition. Without loss of generality we assume $i < j$, so $x = f^{j-i}(x)$. $j - i > 0$, which establishes the proposition.


### Corollary
If $x \in [n]$ has $O_f(x)$ trivial, then $O_f(x) = \{x\}$.

*Proof:* $x \in O_f(x)$, so if its trivial then $x$ is the only element.


## An elements orbit is trivial iff it is a fixed point
For any $x \in [n]$, $f(x) = x$ iff $x \in

*Proof:* If $f(x) = x$, then $O_f(x) = \{ f(x), f^2(x), \ldots \} = \{x\}$. Conversely, if $O_f(x)$ is trivial, then $f(x) = x$ since $f(x) \in O_f(x)$.


## Non-disjoint orbits are identical
### Preliminary lemma
If $x \in [n]$, $f \in S_n$, $x \neq z \in [n]$, then if $i$ is the smallest natural such that $f^i(x) = z$ and $j$ is the smallest positive natural such that $f^j(x) = x$, then $i < j$.

*Proof:* If not, then we must have $j < i$, so $i - j < i$ but $f^{i-j}(x) = f^{i-j}(f^j(x)) = f^i(x) = z$, contradicting that $i$ was the smallest.


### Proof

If $x, y \in [n]$ and $f \in S_n$ such that some $z \in [n]$ has $z \in O_f(x) \cap O_f(y)$, then $O_f(x) = O_f(y)$

*Proof:* It suffices to prove that $O_f(x) \subseteq O_f(y)$ since the other direction follows by symmetricity. By hypothesis we can find $i, j \in \mathbb{N}$, $i, j > 0$ such that $f^i(x) = z = f^j(y)$. Then if $a \in O_f(x)$, there is some $k > 0$ such that $f^k(x) = a$. If it is not additionally the case that $k > i$, then we can find some $r \in \mathbb{N}$, $r > 0$ such that $f^r(x) = x$. So we can let $s = r + k$. Then $f^s(x) = f^k(f^r(x)) = f^k(x) = a$. and $i < s$ since $i < r$. So assuming $k > i$, we have $f^{k-i}(z) = f^{k-i}(f^i(x)) = f^k(x) = a$. Hence $f^{k-i+j}(y) = f^{k-i}(f^j(y)) = a$. This proves that $a \in O_f(y)$.


## Definition of a cycle
A **cycle** of $S_n$ is any $f \in S_n$ that has no more than one non-trivial orbit.

## Definition of disjoint cycles
If $f, g \in S_n$ are cycles, then they are **disjoint** if either $f$ or $g$ is the identity map, or if the unique non-trivial orbits of $f$ and $g$ are disjoint sets.

## Composition of disjoint cycles is commutative
If $f, g \in S_n$ are disjoint cycles, then $f \circ g = g \circ f$

*Proof:* First, if $f$ or $g$ is identity, it clearly holds. So assume $f$ has a non-trivial orbit $O_f(x)$ and $g$ has a non-trivial orbit $O_g(y)$. For all $z \in [n]$, if $z \in O_f(x)$ then $z \notin O_g(x)$ by disjointness, so $g(z) = z$ since $O_g(z)$ is trivial. So $f(g(z)) = f(z)$. But $f(z) \in O_f(z)$ by definition, and since $z \in O_f(x)$, $O_f(x) = O_f(z)$, so $f(z) \in O_f(z)$ and hence by disjointness $f(z) \notin O_g(z)$. So $g(f(z)) = f(z), proving $f(g(z)) = g(f(z))$. Since $z$ was arbitrary, the theorem is proved.


## Disjoint cycle decomposition
Any permutation $f \in S_n$ has a unique set $\{c_1, \ldots, c_k\}$ of disjoint cycles such that $f = c_1 \circ \cdots \circ c_k$.

*Proof:* If $f$ is the identity map, then $\emptyset$ works as long as we define the composition of no permutations to be the identity. It's also the only set that works since we must have all trivial orbits  (so any non-empty collection if disjoint cycles will yield a permutation with non-trivial orbits).

Assume $f$ is not the identity map, hence it has at least one non-trivial orbit. Let $S_0 = [n]$, pick $x_0 \in S_0$. Then the permutation $g_0$ defined by $g_0(y) = f(y)$ if $y \in O_f(x_0)$ and $g_0(y) = y$ otherwise is a cycle (possibly the identity map). Let $S_1 = S_0 - O_f(x_0)$, pick $s_1 \in S_1$, and pick $g_1$ in the same way. Continue until some $S_k = \emptyset$. Then $g_j$'s are all cycles, and by construction they are disjoint (once $g_i$ has some non-trivial orbit, all its elements are removed from consideration, so the non-trivial orbits of any subsequent cycles do not intersect that orbit).

## Definition of transposition
A **transposition** is a cycle with a non-trivial orbit of exactly two elements.

## Every cycle has a transposition representation
If $f \in S_n$ is a cycle, then there are transpositions $g_1, \ldots, g_k$ such that $f = g_1 \circ \cdots \circ g_k$.

*Proof:* If $f$ is the identity, then any transposition $g$ has $f = g \circ g$. Otherwise there is some non-trivial orbit, so some $x \in [n]$ is such that $O_f(x)$ has $k$ elements in it, $k > 2$. So we have the tuple $(x, f(x), f^2(x), \ldots, f^{k-1}(x))$, all are distinct by a previous lemma.

TODO


### Corollary
Every permutation has a (non-unique) representation as a product of transpositions.

*Proof:* Every permutation is a product of disjoint cycles, and every cycle is a product of transpositions.


It is also possible to prove that each permutation has a well-defined **sign** or **parity**, which is the parity of the number of transposition in any representation for that permutation. To prove that such a definition is well-defined, it suffices to prove that the identity permutation can only be represented by an even number of transpositions. To prove that this in fact the case, some kind of induction proof works, I guess, but the main idea is that for any permutation, composing by a transposition always either increases the number of cycles by one or decreases the number of cycles by one, so that any odd number of transpositions must change the number of cycles, and hence it could not represent the identity permutation, which definitely must have $n$ disjoint cycles (all one-element cycles).

The last thing to note is that the subset of $S_n$ of all even permutations must be closed under composition, so it's a subgroup of $S_n$ called the alternating group of order $n$.


## Definition of multilinear function
A function $\phi: \prod_1^k V_i \to W$ for vector spaces $V_1, \ldots, V_k, W$ over a common field $\mathbb{F}$ is said to be **multilinear** or **$k$-linear** if it is linear in each argument (i.e. currying $\phi$ by all but one of the arguments yields a linear map).

If $V_i = V_j$ for all $i$ and $j$ and $W = \mathbb{F}$, then $\phi$ is called a **$k$-linear form** instead.


## Vector space of $k$-linear maps
If $\phi, \psi : \prod_1^k V_i \to W$ are $k$-linear maps into $W$, then $\phi + \psi$ defined by standard function addition is also $k$-linear, as is $c \phi$ for any scalar $c$. So we can form the vector space of $k$-linear maps. It is denoted by $ML(\{V_j\}_1^k, W)$. If $V_i = V$ for all $i$, then it is denoted by $ML(V^{\oplus k}, W)$, and when $W = \mathbb{F}$, it is thes pace of all $k$-linear forms, denoted by $ML(V^{\oplus k})$.



## Definition of symmetric multilinear function
A multilinear $f: \prod_1^n V_i \to W$ is **symmetric** if for any permutation on $\sigma$ on $\{1, \ldots, n\}$ we have

$$f(v_{\sigma(i)}, \ldots, v_{\sigma(n)}) = f(v_1, \ldots, v_n)$$

for all $(v_1, \ldots, v_n) \in \prod_1^n$.


## Definition of alternating multilinear function
A multilinear $f: \prod_1^n V_i \to W$ is **alternating** iff $f(v_1, \ldots, v_n) = 0$ for all $(v_1, \ldots, v_n)$ such that $v_i = v_j$ for some $i \neq j$.

## Equivalent characterization for alternating multilinear functions
A multilinear function $f: \prod_1^n V_i \to W$ is alternating iff for every $(v_1, \ldots, v_n) \in \prod_1^n V_i$ and every transposition $\sigma$, we have $f(v_{\sigma(1)}, \ldots, v_{\sigma(n)}) = - f(v_1, \ldots, v_n)$.

*Proof:* If $f$ is alternating and $(v_1, \ldots, v_n) \in \prod_1^n V_k$ and $\sigma$ a transpose of $i$ and $j$, $i < j$. Then $(v_{\sigma(1)}, \ldots, v_{\sigma(n)}) = (v_1, \ldots, v_j, \ldots, v_i, \ldots, v_n)$ Then $f(v_1, \ldots, v_i + v_j, \ldots, v_i + v_j, \ldots, v_n) = 0$ by $f$ being alternating. But by multilinearity of $f$ (and $f$ being alternating):

$$0 = f(v_1, \ldots, v_i, \ldots, v_j, \ldots, v_n) + f(v_1, \ldots, v_j, \ldots, v_i, \ldots, v_n)$$

So they  must be negations of one another.

Conversely, if $f$ is such that for every transpose $\sigma$, we have $f(v_{\sigma(1)}, \ldots, v_{\sigma(n)}) = - f(v_1, \ldots, v_n)$, if $(w_1, \ldots, w_n)$ is such that $w_i = w_j$ for some $i \neq j$, then we can consider the transpose $\sigma$ of $i$ and $j$.  We have $(w_{\sigma(1)}, \ldots, w_{\sigma(n)}) = (w_1, \ldots, w_n)$, but by hypothesis must have $f(w_{\sigma(1)}, \ldots, w_{\sigma(n)}) = - f(w_1, \ldots, w_n)$. So $f(w_1, \ldots, w_n) = 0$, meaning $f$ is alternating


### Corollary
A multilinear function is alternating iff $f(v_{\sigma(i)}, \ldots, v_{\sigma(n)}) = sgn \sigma f(v_1, \ldots, v_n)$ for all $(v_1, \ldots, v_n) \in \prod_1^n V_i$ and all permutations $\sigma$.

*Proof:* $sgn \sigma$ is the parity of the number of transpositions that make up $\sigma$.


## The subspace of alternating multilinear forms
The set $ML_{alt}(V^{\oplus k})$ of all alternating $k$-linear forms is a subspace of $ML(V^{\oplus k})$.

*Proof:* If $f$ and $g$ are alternating and $v \in V^k$ is a $k$-tuple with duplicate elements, then $(f+g)(v) = f(v) + g(v) = 0$, and for any $c \in \mathbb{F}$, $(cf)(v) = c f(v) = c 0 = 0$. So $ML_{alt}(V^{\oplus k})$ is a subspace.


## Applying an alternating multilinear form to a dependent tuple results in zero
If $\phi$ is an alternating $n$-linear form on $n$-dimensional $V$ and $(v_1, \ldots, v_n)$ are all vectors in $V$ with $v_i \in span_{j \neq i} v_j$, then $\phi(v_1, \ldots, v_n) = 0$

*Proof:* By multilinearity we reduce this to a sum of $\phi$ applied to tuples with duplicated components, so each term is zero and the whole sum is zero.


## Characterizing alternating $k$-linear forms
If $V$ is a vector space with $dim V = n$ and basis $B = \{u_1, \ldots, u_n\}$, then if $\phi$ is any alternating $k$-linear form on $V$, we have for any $v_1, \ldots, v_k \in V$:

$$\phi(v_1, \ldots, v_k) = \sum_{f \in I_{kn}} \phi(u_{f(1)}, \ldots, u_{f(k)}) \prod_{i = 1}^k [v_i, u_{f(i)}^{\ast}]$$

where 

 - $I_{kn}$ is the collection of all injective functions from $\{1, \ldots, k\} \to \{1, \ldots, n\}$.
 - $u_i^{\ast}$ is the dual basis element corresponding to $u_i$, 
 - $[v_i, u_j^{\ast}]$ is the bracket notation for applying a linear functional $u_j^{\ast}$ to $v_i$.

*Proof:* It's a fairly easy proof by induction using multilinearity and the fact that $f$ is alternating. It is tedious and requires juggling some symbols, so I won't reproduce it here.

### Corollary
If $V$ is a vector space with $dim V = n$ and basis $B = \{u_1, \ldots, u_n\}$, then if $\phi$ is any alternating $n$-linear form on $V$, we have for any $v_1, \ldots, v_n \in V$:

$$\phi(v_1, \ldots, v_n) = \phi(u_1, \ldots, u_n) \sum_{\sigma \in S_n} (sgn \sigma) \prod_{i = 1}^n [v_i, u_{\sigma(i)}^{\ast}]$$

*Proof:* An injective function from $\{1, \ldots, n\}$ to itself is a permutation, so this is just the previous formula combined with the main fact about alternating multilinear forms, which is that $\phi(u_{\sigma(1)}, \ldots, u_{\sigma(n)}) = (sgn \sigma) \phi(u_1, \ldots, u_n)$.

### Corollary 2
If $V$ is a vector space with $dim V = n$ and basis $B = \{u_1, \ldots, u_n\}$, then if $D_u$ is an alternating $n$-linear form on $V$ such that $D_u(u_1, \ldots, u_n) = 1$, then for any other alternating $n$-linear form $\phi$, we have for any $v_1, \ldots, v_n \in V$:

$$\phi(v_1, \ldots, v_n) = \phi(u_1, \ldots, u_n) D_u(v_1, \ldots, v_n)$$

*Proof:* Follows from the last corollary.

### Corollary 3
If $\phi$ is alternating, $n$-linear form on $n$-dimensional $V$ and $\phi$ is non-trivial, then for any ordered basis $(v_1, \ldots, v_n)$ for $V$, $\phi(v_1, \ldots, v_n) \neq 0$.

*Proof:* If it is, then for any $w_1, \ldots, w_n$, $\phi(w_1, \ldots, w_n) = \phi(v_1, \ldots, v_n) D_v(w_1, \ldots, w_n) = 0$, contradicting that $\phi$ is non-trivial.

### Remark
This means that up to a scalar multiple, there is a unique non-trivial alternating $n$-linear form on an $n$-dimensional vector space.


## Definition of determinant
If $V$ is a vector space with $dim V = n$ and a basis $v = \{v_1, \ldots, v_n\}$, then for any linear operator $T: V \to V$, the **determinant with respect to $v$** of $T$ is defined

$$det_v T := \frac{\phi(T(v_1), \ldots, T(v_n))}{\phi(v_1, \ldots, v_n)}$$

where $\phi$ is any non-trivial alternating $n$-linear form on $V$. What's more, this equals

$$det_v T := \sum_{\sigma in S_n} (sgn \sigma) \prod_{i = 1}^n [T(v_i), v_{\sigma(i)}^{\ast}]}$$

*Proof:* By corollary 2 of the last proposition we know this function is well defined since for any such $\phi$ we have

$$det_v T = D_v(T(v_1), \ldots, T(v_n)) / D_v(v_1, \ldots, v_n)$$

which is obviously independent of which $\phi$ we choose. Since $D_v(v_1, \ldots, v_n) = 1$, this simplifies to:

$$det_v T := \sum_{\sigma in S_n} (sgn \sigma) \prod_{i = 1}^n [T(v_i), v_{\sigma(i)}^{\ast}]}$$


## The determinant does not depend on the basis
Our definition of determinant was the same for any non-trivial alternating $n$-linear form, but depended on a fixed basis. But if $v = (v_1, \ldots, v_n)$ and $w = (w_1, \ldots, w_n)$ are both ordered bases for $n$-dimensional $V$, then for any linear $T: V \to V$, $det_v T = det_w T$.

*Proof:* If $T$ is non-invertible, since it is an endomap it could not be injective (otherwise it would be invertible), so the image of any basis linearly dependent, hence the determinant is zero (since any alternating multilinear map applied to a linearly dependent tuple is zero). Hence $det_v T = det_w T$ whenever $T$ is non-invertible. 

If $T$ is invertible, $w_i = \sum_1^n [w_i, v_j^{\ast}] v_j$, so $T(w_i) = \sum_1^n [w_i, v_j^{\ast}] T(v_j)$. We know that $\{T(v_1), \ldots, T(v_n)\}$ is a basis for $V$ since $T$ is invertible. Hence by a previous theorem, if $\phi$ is any alternating $n$-linear form on $V$, then

$$\phi(T w_1, \ldots, T w_n) = \phi(T v_1, \ldots, T v_n) \sum_{\sigma in S_n} (sgn \sigma) \prod_{i = 1}^n [T w_i, (T v_{\sigma(i)})^{\ast}]$$

But $[T w_i, (T v_j)^{\ast}] = [w_i, v_j^{\ast}]$ for all $i$ and $j$, so

$$\phi(T w_1, \ldots, T w_n) = \phi(T v_1, \ldots, T v_n) \sum_{\sigma in S_n} (sgn \sigma) \prod_{i = 1}^n [w_i, v_{\sigma(i)}^{\ast}]$$

which implies

$$\phi(T w_1, \ldots, T w_n) = \phi(T v_1, \ldots, T v_n) D_v(w_1, \ldots, w_n)$$

So we have

$$\frac{\phi(T w_1, \ldots, T w_n)}{\phi(T v_1, \ldots, T v_n)} = \frac{\phi(w_1, \ldots, w_n)}{\phi(v_1, \ldots, v_n)}$$

Rearrangement proves the theorem.


### Corollary: invertible iff determinant is nonzero
$det T \neq 0$ iff $T$ is invertible.

*Proof:* We already proved that if $T$ is non-invertible, the determinant is zero. Conversely, if $T$ is invertible, we know for non-trivial $\phi$ that $\phi(v_1, \ldots, v_n) \neq 0$ since the $v_i$'s are a basis. Also the $T v_i$'s form a basis by $T$'s invertibility, so $\phi(T v_1, \ldots, T v_n) \neq 0$, implying $det T \neq 0$. 


## Product rule for determinants
If $S, T \in Hom(V)$, $det S \circ T = (det S)(det T)$.

*Proof*  If $S$ and $T$ are both non-invertible, then they must both be non-injective, so in particular there are $u, v \in V$ such that $u \neq v$ but $T(u) = T(v)$. So $(S \circ T)(u) = (S \circ T)(v)$, hence $S \circ T$ is non-invertible since no function could map one element $(S \circ T)(u)$ to both $x$ and $y$. Hence $det S \circ T = 0 = 0 0 = (det S)(det T)$.

If one is invertible and the other not, then we can apply a previous theorem to obtain that $S \circ T$ is non-invertible, (when $f$ is invertible, $g$ is invertible iff $f \circ g$ is invertible. when $g$ is invertible, $f$ is invertible iff $f \circ g$ is invertible).

If both are invertible and $B = \{v_1, \ldots, v_n\}$ is a basis for $V$, then $T(B)$ is a basis for $V$ since $T$ is invertible, so

$$(det S)(det T) := \frac{\phi(S(T(v_1)), \ldots, S(T(v_n))) \phi(T(v_1), \ldots, T(v_n))}{\phi(T(v_1), \ldots, T(v_n)) \phi(v_1, \ldots, v_n)} = det S \circ T$$


### Corollary for invertible operators
If $T \in Hom(v)$ invertible, then $det T^{-1} = (det T)^{-1}$.

*Proof:* $det T^{-1} det T = 1$.

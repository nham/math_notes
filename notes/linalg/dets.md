# LADW
These are notes from LADW.

The desiderata for determinant: for any field $\mathbb{F}$, a function $D: {\mathbb{F}^n}^n \to \mathbb{R}$ satisfying:

 - linear in every argument
 - For all $j$ and $k$ and for all $x, y \in {\mathbb{F}^n}^n$ with $x_i = y_i$ for all $i \neq j, k$, $y_k = x_j$, $y_j = x_k$, we have $D(x) = -D(y)$.
 - $D(e_1, \ldots, e_n) = 1$, where the $e_i$ are the elements of the standard basis on $\mathbb{F}^n$.

## Determinants of linearly dependent vectors
If $(v_1, \ldots, v_n)$ are linearly dependent as a set, then $D(v_1, \ldots, v_n) = 0$.

*Proof:* First notice that if we have some $i$ and $j$ such that $v_i = v_j$, we must have the determinant zero, since we could swap those two columns to get a $D(v_1, \ldots, v_n) = - D(v_1, \ldots, v_n)$, which can only happen if $D(v_1, \ldots, v_n) = 0$. Now, the vectors are linearly dependent iff one is in the span of the others, so we have $D(v_1, \ldots, v_n) = D(v_1, \ldots, \sum_{i \neq j} a_i v_i, \ldots, v_n)$ for some $v_j$ which is in the span of the others. Using linearity, we get $n-1$ determinants which each have duplicate columns, so the total determinant is zero since each of the $n-1$ determinants is.

## Corollary
For any $j$, adding a linear combination of the other $v_i$'s ($i \neq j$) does not change the determinant.

## Determinant of diagonal matrices
The determinant of a diagonal matrix is the product of terms on the diagonal, since we can scale each column down by its value to find the identity matrix (and by linearity).

## Determinant of triangular matrices
We just do "column elimination" on any triangular matrix to obtain a diagonal matrix. Column saxpy (adding a linear combination of one column to all the others) does not change the determinant, so the determinant of any triangular matrix is again the product of the terms on the diagonal.

## Determinants and elementary matrices
If $E$ is elementary matrix, then $det(AE) = det A det E$. Also, $det E \neq 0$.

*Proof:* Note that multiplying on the right by an elementary matrix is applying a *column operation*. Note also that any elementary matrix can be formed by applying a column operation of the same type to $I_n$. So the saxpy elementary matrix is obtained via a saxpy on $I_n$, the scaling elementary matrix results from a scaling of $I_n$, and the swap elementary matrix is itself the result of swapping $I_n$. So for column saxpy, $det (AE) = det A = (det A) 1 = det A det E$ since $det E = 1$. For scaling operation, $det AE = k det A$ for some $k$, and $det E = k$ as well. Last, for swap, $det E = -1$, and $det (AE) = - det A$.

Note that in each case, the determinant of an elementary matrix is non-zero.

## Fundamental fact about determinants and invertibility
Any matrix $A$ is invertible iff $det A \neq 0$.

*Proof:* If $A$ is invertible, then $A$ is a product of elementary matrices, so $A = I E_k \cdots E_1$, hence $det A = det E_k \cdots det E_1$. Since the determinant of an elementary matrix is non-zero, the determinant of $A$ must be as well. Conversely, if $det A \neq 0$, the columns of $A$ must be independent. This latter property is true iff $A$ is invertible.


## Product rule for determinants
$det AB = det A det B$

*Proof:* If $B$ invertible, $B = E_k \cdots E_1$ for elementary matrices $E_i$, so $det AB = det A det E_k \cdots det E_1 = det A det B$ by the previous proposition. If $B$ is not invertible, then we prove $AB$ is not invertible: If it is, then there is some $C$ such that $CAB = I_n$, which provides $CA$ as a left-inverse for $B$. Since $B$ is a square matrix, this proves $B$ is invertible, a contradiction.

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
For any $f \in S_n$, the **orbit** of $x \in [n]$ under $f$ is the collection $O_f(x) = \{ f^k(x) : k \in \mathbb{N} \}$. In other words, it is the set of all integers we reach by starting at $x$ and repeatedly applying $f$.

An orbit is **trivial** if it it contains a single element. Note that in this case, the orbit of $x$ under $f$ could only be trivial if it equals $\{x \}$, since if $f(x) \neq x$, then $f(f(x)) \neq f(x)$ (because $f$ is injective), so the orbit contains at least two elements.

Note that the identity map has all trivial orbits.

## Definition of a cycle
A **cycle** of $S_n$ is any $f \in S_n$ that has no more than one non-trivial orbit.

## Definition of disjoint cycles
If $f, g \in S_n$ are cycles, then they are **disjoint** if either $f$ or $g$ is the identity map, or if the unique non-trivial orbits of $f$ and $g$ are disjoint sets.

## Composition of disjoint cycles is commutative
If $f, g \in S_n$ are disjoint cycles, then $f \circ g = g \circ f$

*Proof:* First, if $f$ or $g$ is identity, it clearly holds. So assume $f$ has a non-trivial orbit $O_f$ and $g$ has a non-trivial orbit $O_g$. TODO

## Disjoint cycle decomposition
Any permutation $f \in S_n$ has a unique set $\{c_1, \ldots, c_k\}$ of disjoint cycles such that $f = c_1 \circ \cdots \circ c_k$.

*Proof:* If $f$ is the identity map, then $\emptyset$ works as long as we define the composition of no permutations to be the identity. It's also the only set that works since we must have all trivial orbits  (so any non-empty collection if disjoint cycles will yield a permutation with non-trivial orbits).

Assume $f$ is not the identity map, hence it has at least one non-trivial orbit. Let $S_0 = [n]$, pick $x_0 \in S_0$. Then the permutation $g_0$ defined by $g_0(y) = f(y)$ if $y \in O_f(x_0)$ and $g_0(y) = y$ otherwise is a cycle (possibly the identity map). Let $S_1 = S_0 - O_f(x_0)$, pick $s_1 \in S_1$, and pick $g_1$ in the same way. Continue until some $S_k = \emptyset$. Then $g_j$'s are all cycles, and by construction they are disjoint (once $g_i$ has some non-trivial orbit, all its elements are removed from consideration, so the non-trivial orbits of any subsequent cycles do not intersect that orbit).

## Definition of transposition
A **transposition** is a cycle with a non-trivial orbit of exactly two elements.

## Every cycle has a transposition representation
If $f \in S_n$ is a cycle, then there are transpositions $g_1, \ldots, g_k$ such that $f = g_1 \circ \cdots \circ g_k$.

*Proof:* TODO

### Corollary
Every permutation has a (non-unique) representation as a product of transpositions.

*Proof:* Every permutation is a product of disjoint cycles, and every cycle is a product of transpositions.


It is also possible to prove that each permutation has a well-defined **sign** or **parity**, which is the parity of the number of transposition in any representation for that permutation. To prove that such a definition is well-defined, it suffices to prove that the identity permutation can only be represented by an even number of transpositions. To prove that this in fact the case, some kind of induction proof works, I guess, but the main idea is that for any permutation, composing by a transposition always either increases the number of cycles by one or decreases the number of cycles by one, so that any odd number of transpositions must change the number of cycles, and hence it could not represent the identity permutation, which definitely must have $n$ disjoint cycles (all one-element cycles).

The last thing to note is that the subset of $S_n$ of all even permutations must be closed under composition, so it's a subgroup of $S_n$ called the alternating group of order $n$.


## Definition of multilinear function
A function $\phi: \prod_1^k V_i \to W$ for vector spaces $V_1, \ldots, V_k, W$ over a common field $\mathbb{F}$ is said to be **multilinear** or **$k$-linear** if it is linear in each argument (i.e. currying $\phi$ by all but one of the arguments yields a linear map).

If $W = \mathbb{F}$, then $\phi$ is called a **$k$-linear form** instead.


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

*Proof:* If $f$ is alternating and $(v_1, \ldots, v_n) \in \prod_1^n V_k$ and $\sigma$ a transpose of $i$ and $j$, $i < j$. Then $(v_{\sigma(1)}, \ldots, v_{\sigma(n)}) = (v_1, \ldots, v_j, \ldots, v_i, \ldots, v_n)$ Then $f(v_1, \ldots, v_i + v_j, \ldots, v_i + v_j, \ldots, v_n) = 0$ by $f$ being alternating. But by multilinearity of $f$:

$$0 = f(v_1, \ldots, v_i, \ldots, v_j, \ldots, v_n) + f(v_1, \ldots, v_j, \ldots, v_i, \ldots, v_n)$$


### Corollary
A multilinear function is alternating iff $f(v_{\sigma(i)}, \ldots, v_{\sigma(n)}) = sgn \sigma f(v_1, \ldots, v_n)$ for all $(v_1, \ldots, v_n) \in \prod_1^n V_i$ and all permutations $\sigma$.

*Proof:* $sgn \sigma$ is the parity of the number of transpositions that make up $\sigma$.

# Vector spaces and finite dimension

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

## Definition of an abelian group
An **abelian group** is a group with a commutative group operation.

## Definition of a subgroup
A **subgroup** of a group $G$ is a subset $S$ which is a group when the group operation is restricted to $S$. 

## Equivalent condition for a subgroup
A subset is a subgroup iff it's closed under the group product and under inverses.

TODO: prove it

## Definition of a field
TODO


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
For all $v \in V$, $-1 \cdot v = -v \in V$.

*Proof:* $v + -1 \cdot v = 1 \cdot v + -1 \cdot v = (1 + -1) \cdot v = 0 \cdot v = 0$ by distributivity and the previous proposition. The additive inverse of any group is unique, so $-v = -1 \cdot v$.



# OLD STUFF, to be picked through

## Examples

 - F^n
 - mxn matrices
 - for any set X, the set of functions X \to F (generalizes the previous two)
 - set of all polynomials

You can extend the "vector addition" operation to be done on any multiset of vectors since the order of vector addition does not matter.

## subspaces, spans and the lattice of subspaces

A subspace is a subset of a vector space which forms a vector space under the set-theoretic restriction of the VS operations to the subset. In other words, it's a subgroup that is closed under scalar multiplication. Since closure under scalar multiplication implies closure under vector inverses, a subset is a subspace iff it's closed under vector addition and scalar multiplication.

Examples (collapsable)
 - solution set of homogeneous system
 - diagonal matrices, upper/lower triangular matrices. symmetric matrices.
 - polynomials of degree no greater than N

the intersection of any collection of subspaces is a subspace. it is the greatest subspace contained in every subspace.

The **span** of a set of vectors is the smallest subspace containing the set. In other words, it's the intersection of all subspaces containing the set.

 - the union is not generally a subspace, but we still desire the "dual" of the intersection, the smallest subspace that contains every subspace. this is provided by the *sum* of subspaces.
    * abstract definition: the span of the union of subspaces. this is a direct translation of our desire for a dual to the intersection


 - we can now form the lattice of all subspaces. the partial order is set containment, the join operation is the sum of subspaces, and the meet operation is the intersection.

* concrete definition of sum: note that the union of subspaces is closed under scalar multiplication. so if it fails to be a subspace, it is because it is not closed under vector addition. for vectors in the same subspace it is automatically closed, so we must only be missing closure for addition of vectors from distinct subspaces. 

define a **sample** of a collection of subspaces to be a finite set of vectors such that every vector can be assigned to a subspace in such a way that no two vectors are in the same subspace. (It is perfectly okay for two vectors to belong to the same subspace, just so long as there is another subspace that contains one of them). Then the sum of a collection of subspaces is the set of all vector sums of samples from the collection.

## direct sums
A collection of subspaces is **independent** if every subspace in the collection has a trivial intersection $(\{0\})$ with the span of the others.

Equivalently, a collection is independent if the only samples resulting in the zero vector are trivial samples (samples of all zero vectors).


# Systems of linear equations

A system of linear equations is a collection of $n$ equations in $k$ variables:

$$\begin{aligned}
\sum_1^k a_{1i} x_i & = c_1 \\
\vdots \\
\sum_1^k a_{ni} x_i & = c_n
\end{aligned}$$

The set of all tuples $(x_1, \ldots, x_k)$ that make each equation hold is called the **solution set** of the system. If every $c_i = 0$, the system is said to be *homogeneous*.

A system has a *trivial* solution when $x_i = 0$ for all $i$ solves it. Every homogenous system has at least the trivial solution. One question is whether there are any other solutions.

**A poverty of constraints:** For any homogeneous system, if the number of variables exceeds the number of equations, then there is a non-trivial solution.

*Proof:* If you look closely, we can group the scalars attached to each variable $x_i$ together into column vectors. You should be able to see that asking whether there are non-trivial solutions to a homogeneous system is the same as asking whether there are non-trivial combinations of the columns that result in zero, i.e. whether the columns are linearly dependent. But the dimension of the columns vectors is less than the number of vectors, so they could not be linearly independent by the Steinitz exchange lemma. $\Box$

In general, we are interested in *solving* systems of linear equations, in determining their solution sets. One strategy that we will use is transforming a system into another system that has the same solution set but is easier to solve, and then solving that instead. Two linear systems are said to be **equivalent** if they have the same solution set.

## Enter the matrix (whoa)

We introduce matrices for a more compact representation of sytems of linear equations.

For a system:

$$\begin{aligned}
\sum_1^k a_{1i} x_i & = c_1 \\
\vdots \\
\sum_1^k a_{ni} x_i & = c_n
\end{aligned}$$

We define these matrices:

$$A = \begin{bmatrix} a_{11} & \cdots & a_{1k} \\
\vdots & \ddots & \vdots \\
a_{n1} & \cdots & a_{nk} \end{bmatrix}$$

$$X = \begin{bmatrix} x_1 \\
\vdots \\
x_k \end{bmatrix}$$

$$C = \begin{bmatrix} c_1 \\
\vdots \\
c_n \end{bmatrix}$$

Then solution set is the set of $X$ such that $AX = C$, where the operation used in that equation is matrix multiplication.

We can also define the **augmented matrix** of the system, which adds the right-hand side of the system as an additional column in the matrix $A$:

$$A_{aug} = \begin{bmatrix} a_{11} & \cdots & a_{1k} & c_1\\
\vdots & \ddots & \vdots & \vdots \\
a_{n1} & \cdots & a_{nk} & c_n \end{bmatrix}$$

The **row space** of any $n \times k$ matrix with scalars in $\mathbb{F}$ is the subspace of $\mathbb{F}^k$ spanned by the rows of the matrix (taken as vectors in $\mathbb{F}^k$. The **row rank** is the dimension of the row space.

If $A$ is an $n \times k$ matrix and $B$ is an $m \times k$ matrix, then $A$ and $B$ are said to be **row-equivalent** if they have the same row space. This is equivalent to saying that each row vector of $A$ is a linear combination of row vectors from $B$ and vice versa.

The following fact is fundamental for our goal of transforming systems into easier-to-solve equivalent systems:

**Proposition:** If $\mathcal{A}$ and $\mathcal{B}$ are two linear systems and their respective augmented matrices are row-equivalent, then $\mathcal{A}$ and $\mathcal{B}$ are equivalent systems.

*Proof:* Let $A$ and $B$ be the non-augmented matrices corresponding to $\mathcal{A}$ and $\mathcal{B}$, respectively, and let $C$ and $D$ be the column vectors on the right-hand-side of $\mathcal{A}$ and $\mathcal{B}$, again respectively. Let's say $A$ is $m \times k$ and $B$ is $n \times k$. Since the augmented matrices are row-equivalent there is some $n \times m$ matrix $\xi$ such that $\xi A = B$ and $\xi C = D$. So if $X$ is a $k \times 1$ matrix that makes the equation $AX = B$ hold, then $BX = \xi A X = \xi C = D$, which establishes that every solution of $\mathcal{A}$ is a solution for $\mathcal{B}$. The same could be said in the other direction, so the two systems are equivalent. $\Box$

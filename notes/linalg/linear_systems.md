## Defining matrices
(This is a new section that I'm writing to take the place of the old introduction).

The new idea to define $k \times m$ matrices with elements in $\mathbb{F}$ as representations of linear transformations from $\mathbb{F}^m \to \mathbb{F}^k$. One can prove that, by choosing the standard bases of $\mathbb{F}^m$ and $\mathbb{F}^k$, there is a one-to-one correspondence between linear maps and matrices. So then all of the properties of linear maps between abstract vector spaces hold nearly immediately for vectors once you define matrix multiplication to represent map composition. The fact that the set of all $m \times n$ matrices forms an abelian group under matrix addition holds immediately, associativity of matrix multiplication holds immediately, the homogeneity property holds immediately. We didn't prove distributivity for abstract linear maps, but we certainly can do that. Furthermore, matrix invertibility is all defined, with the properties we expect, like that any matrix with both a left-inverse and a right-inverse has the two equal, and hence it must be an inverse. This proves that inverses are unique, and also that invertible matrices must be square. We also get that the inverse of $AB$ for invertible matrices $A$ and $B$ is $B^{-1} A^{-1}$, since we've already proven that for arbitrary linear maps. Also we get that any left-invertible or right-invertible square matrix is invertible, since we proved that for arbitrary linear maps.

The key to explaining the pivot analysis is the following theorems. For any functions $f, g$ such that $f \circ g$ is well-defined, if $f$ is bijective, then:

 - $g$ injective iff $f \circ g$ injective
 - $g$ surjective iff $f \circ g$ surjective

This along with the theorem that a linear map is injective iff it maps independent sets to independent sets and  surjective iff it maps generating sets to generating sets, more or less completely explains what's happening abstractly with the elimination algorithm. Exposing "pivots" is really exposing whether the column is independent and/or generating. The injectivity/surjectivity of $g$ is really what we're interested in for determining the solution sets, since that determines the null space and the range, which determines the quotient space induced by the null space and the map from the quotient space to the range.

So most of the messy proofs about properties of elimination and analyzing the pivot distribution are not in fact needed.

The only thing I see that might need to be proved specially for matrices is facts regarding transposition (not sure that makes sense for arbitrary linear maps) and I currently don't see how to prove that if $A$ is invertible, then it must be the product of elementary matrices. I suppose we just need to prove that for any invertible matrix $A$ we can, in fact, construct an inverse for $A$ out of elementary matrices. That might be another matrix-specific proof. The converse, that any product of elementary matrices is invertible, holds directly from facts about linear maps (in fact about composition of bijective functions).




## Motivating matrices

A **finite-dimensional** vector space is defined to be any vector space with a finite basis. We just finished proving that if $V$ and $W$ are vector spaces over some field $\mathbb{F}$ and $V$ has some $n$-basis and $W$ has some $m$-basis, that $V$ is isomorphic to $\mathbb{F}^n$ and $W$ is isomorphic to $\mathbb{F}^m$. This "coordinatizing" of any finite-dimensional vector space leads to the idea of representing a linear map $T: V \to W$ as a linear map $A: \mathbb{F}^n \to \mathbb{F}^m$. We can obtain such a representation by first selecting an ordered basis $\beta$ in $V$ and an ordered basis $\gamma$ in $W$. The "coordinate isomorphisms" $\phi_{\beta} : V \to \mathbb{F}^n$ and $\phi_{\gamma} : W \to \mathbb{F}^m$ that $\beta$ and $\gamma$ induce give us a way to represent $T$ since we have

$$\phi_{\gamma}^ \circ T \circ \phi_{\beta}^{-1}$$

is a function $\mathbb{F}^n \to \mathbb{F}^m$.

What do we gain from representing $T$ in this way?

Let's notated $[T}_{\beta}^{\gamma} = \phi_{\gamma}^ \circ T \circ \phi_{\beta}^{-1}$. Also denote by $[v]_{\beta$ the tuple $(x_1, \ldots, x_n)$, provided that $v = \sum x_i b_i$, where $\beta = (b_1, \ldots, b_n)$ is an ordered basis. Then $\phi_{\beta}^{-1} ([v]_{\beta}) = v$, and $T(v) = \sum x_i T(b_i)$, so $\phi_{\gamma} (T(v)) = \sum x_i [T(b_i)]_{\gamma}$, meaning that

$$[T]_{\beta}^{\gamma] ([v]_{\beta}) = [T(v)]_{\gamma}$$

If we represent elements of $\mathbb{F}^n$ as a "column vector" of scalar numbers and if we fill a rectangular array with $m$ rows and $n$ columns, with the $i$-th column equal to $[T(b_i)]_{\gamma}$, then we can represent the operation of $[T]_{\beta}^{\gamma}$ by  multiplying each component of $[v]_{\beta}$ with its corresponding column $[T(b_i)]_{\gamma}$. We will soon  generalize this operation and call it **matrix multiplication**

What we have just defined allows us to concretely represent a linear map between finite-dimensional vector spaces by versus choosing "coordinate axes" (i.e. ordered bases). The coordinate axes allow us to represent vectors as a tuple of scalar elements (i.e. as coordinates) and linear maps as a rectangular array of scalar elements.

Let's clean this up slightly:

For any $n \in \mathbb{N}$, $n > 0$, we denote the set $\{1, \ldots, n\}$ by $[n]$. Then a **matrix in $\mathbb{F}$** where $\mathbb{F}$ is a field is a function $[k] \times [n] \to \mathbb{F}$ for positive integers $k$ and $n$. Usually this is depicted as a rectangular array of field elements:

$$
\begin{bmatrix} a_{11} & \cdots & a_{1n} \\
\vdots & \ddots & \vdots \\
a_{k1} & \cdots & a_{kn} \end{bmatrix}
$$

## Defining matrix multiplication
TODO: Flesh this out. But basically you prove that matrix multiplication as everyone knows it results in the matrix representing the composition of the linear maps. (i.e. the product of the matrix representations of the linear maps is equal to the matrix representation of the composition of the linear maps). In symbols:

$$[S]_{\gamma}^{\delta} [T]_{\beta}^{\gamma} = [S \circ T]_{\beta}^{\delta}$$

From this perspective, associativity of matrix multiplications follows nearly immediately (from associativity of function composition) since $[(S \circ T) \circ U]_{\beta}^{\gamma} = [S \circ (T \circ U)]_{\beta}^{\gamma}$.

These other two properties can be easily proved:

 - Distributivity $A(B + C) = AB + AC$ and $(A + B)C = AC + BC$.
 - Homogeneity: $c(AB) = (cA)B = A(cB)$

Note that for any finite dimensional vector space $V$ and any ordered basis $\beta$ in $V$, we have $[id_V]_{\beta}^{\beta}$ is the matrix with $1$'s in all the diagonal elements and zeroes elsewhere. We designate this $n \times n$ matrix by $I_n$.

## Definition of matrix invertibility
A $k \times m$ matrix $A$ is **invertible** iff there is an $m \times k$ matrix $B$ such that $BA = I_k$ and $AB = I_m$, and $B$ is called an **inverse** for $B$.

## Matrix inverse is unique
If $B$ and $C$ are inverses for $A$, then $B = C$.

*Proof:* $B = B(AC) = (BA)C = C$.

## The product of invertible matrices is invertible
If $A$ and $B$ are invertible and their dimensions are such that $AB$ is a valid matrix multiplication, then $AB$ is invertible and $(AB)^{-1} = B^{-1} A^{-1}$.

*Proof:* Basic matrix algebra proves this.

## Linear systems

A **linear system of equations** in $\mathbb{F}$ is a collection of equations

$$
\begin{aligned}
\sum_1^n a_{1i} x_i & = c_1 \\
\vdots \\
\sum_1^n a_{ki} x_i & = c_k
\end{aligned}
$$

Where the $a_{ij}$ are known elements of $\mathbb{F}$, as are the $c_i$, but the $x_j$ are unknown elements of $\mathbb{F}$. The task is to:

 - determine if there are any tuples $(x_1, \ldots, x_n)$ that make all the equations true (i.e. determine if the system has a **solution**)
 - if so, determine if there is a unique solution or many solutions
 - and either find the unique solution or describe the set of solutions.

In brief, our task is to determine the solution set.

For convenience we take up all the $a_{ij}$ into a matrix, called the **coefficient matrix** of the system. Then our task is to determine the set of vectors

$$
\begin{bmatrix} x_{1} \\
\vdots \\
x_{n} \end{bmatrix}
$$

such that

$$
\begin{bmatrix} a_{11} & \cdots & a_{1n} \\
\vdots & \ddots & \vdots \\
a_{k1} & \cdots & a_{kn} \end{bmatrix}

\begin{bmatrix} x_{1} \\
\vdots \\
x_{n} \end{bmatrix}

= 

\begin{bmatrix} c_{1} \\
\vdots \\
c_{k} \end{bmatrix}
$$

Our strategy for determining the solution set will be to apply transforms to the coefficient matrix that 1) do not change the solution set, but that 2) yield a matrix whose solution set is easier to determine (preferably immediately evident, if possible).

Actually, applying transformations to the coefficient matrix will not do, as this would be modifying one side of the equations and not the other. We need to form the **augmented coefficient matrix**, which is obtained by adding one more column to the right of the above coefficient matrix. The entries of this column are the "right-hand sides" of the equations. 

$$
\left[
\begin{array}{ccc|c} a_{11} & \cdots & a_{1n} & c_1 \\
\vdots & \ddots & \vdots & \vdots \\
a_{k1} & \cdots & a_{kn} & c_k \end{array}
\right]
$$

## Row operations

It turns out that it will suffice to concern ourselves with three different transformations to be applied to the augmented coefficient matrix:

 - **Swap:** Exchange any two rows $i$ and $j$.
 - **Scale:** Multiply any row $i$ by a non-zero scalar $b$.
 - **Saxpy:** We replace any row $i$ with some row $j$ scaled up a scalar $c$.

Swap amounts to a re-ordering of the equations, which clearly has no effect on the solution set. Scale means multiplying one equation by a non-zero scalar. It should be easy to see that this also has no effect.

To show that saxpy does not alter the solution set, it suffices to show that 1) every solution of the original is a solution of the result, and 2) to every result of a saxpy there is an "inverse" saxpy that returns the augmented matrix to its original state.

Swap amounts to a re-ordering of the equations, which clearly has no effect on the solution set. Scale means multiplying one equation by a non-zero scalar. It should be easy to see that this also has no effect.

To show that saxpy does not alter the solution set, it suffices to show that 1) every solution of the original is a solution of the result, and 2) to every result of a saxpy there is an "inverse" saxpy that returns the augmented matrix to its original state.

So suppose $(x_1, \ldots, x_n)$ satisfies the original set of equations, and then we add a $b$-multiple of row $j$ to row $i$. This modifies only equation $i$, so clearly all the other equations are still satisfied. We have to show that the equation

$$\sum_{z=1}^k (a_{iz} + b a_{jz}) x_z = c_i + b c_j$$

holds. But this is just 

#$\sum_{z=1}^k a_{iz} x_z + \sum_{z=1}^k b a_{jz} = c_i + b c_j$$

which holds since each part holds individually.

Finally, the inverse saxpy to adding $c$-times row $j$ to row $i$ is to add $(-c)$-times row $j$ to row $i$.


## Elementary matrices
So we've determined 3 operations that we can apply at will to an augmented coefficient matrix that will not disturb the solution set of the associated linear system. However, we specified the operations in terms of the equations, which is a bit inconvenient. It would be more convenient to utilize matrix multiplication to achieve these operations.

TODO explain elementary matrices

Elementary matrices are all invertible since for each row operation, there is a row operation of the same type that reverses it.

## Row elimination, reduction, row echelon
By applying only saxpy operations, we can **row-eliminate** a matrix, which means each column in the matrix has exactly one non-zero element in it. An algorithm for doing this to a $m \times n$ matrix operation is

    for i in [1 .. m]:
       for j in [1 .. n]:
          if A[i, j] is not 0:
             for k in [1 .. m]:
                if A[k, j] is not zero:
                   saxpy row k with (-A[k, j]/A[i, j]) times row j


In other words, for each row, find the first column from the left, that has a non-zero element in that column, and use saxpy to zero out all other elements of $A$ in that column. The unique non-zero elements in each column are called **pivots**.

**Proposition:**
There are at most $min(m, n)$ pivots in a row-eliminated matrix.

*Proof:* We can't have more than $m$ (the number of rows), since we only get a pivot by starting with a row and finding the first non-zero element in the row. We can't have more than $n$ either, because each pivot is obviously in some column and no two pivots can be in the same column: after selecting one pivot in row $i$ and column $j$, the other elements in that column are all zero, so never in the process of finding pivots for the other rows will we be able to find the first non-zero element of a row in column $j$, because after we build the pivot $(i, j)$, we don't apply saxpy's of row $i$ to any other rows (so the other elements of column $j$ stay zero).

There can obviously be less than $min(m, n)$ pivots, for example if, during elimination, one or more rows become zero. (In the extreme case, consider the matrix of all zero entries. It has no pivots).

We can make this a bit neater by altering the algorithm to ensure that the pivots are always $1$. We can call the form of the resulting matrix **reduced, row-eliminated** form:

    for i in [1 .. m]:
       for j in [1 .. n]:
          if A[i, j] is not 0:
             scale row i by 1/A[i, j]
             for k in [1 .. m]:
                if A[k, j] is not zero:
                   saxpy row k with (-A[k, j]) times row j

This form is interesting because it allows us to directly write down the solution set. The resulting matrix will consist of some number of pivot columns and some number of non-pivot columns. Recall from the form of the augmented matrix there are $k$ rows and $n+1$ columns. Columns $1$ through $n$ correspond to variables $x_i$, while column $n+1$ is the right-hand side.

**Theorem:** A system has a solution iff a reduced, row-eliminated form of the augmented matrix does not have a pivot in the last column.

*Proof:* If the pivot is in the last column, this corresponds to a row of all zeroes in columns $1$ through $n and a non-zero in $n+1$th column. As an equation, this has no solution. It says $0 = c$ for some $c \neq 0$. Conversely, if a system has no pivot in the last column, we can easily construct a solution: the variables associated with non-pivot columns of $1$ through $n$ are *free variables* and can be assigned any scalar value. Once assigned, the other variables are fixed. This is a solution.

*Theorem:* A system's solution is unique iff there are no free variables for the eliminated non-augmented coefficient matrix (iff there's a pivot in every column).

*Proof:* If there are free variables, we have a new solution for every assignment of the free variables. If there are no free variables, then either there is no solution or any solution is completely constrained by the last column of the augmented matrix.

**Theorem:** An equation $Ax = b$ for (non-augmented) coefficient matrix $A$ has a solution for every $b$ iff the eliminated, non-augmented coefficient matrix has a pivot in every row.

*Proof:* If one row has no pivot, by the algorithm it must be a zero row. The eliminated matrix $B$ is the one with the zero row, so we can find some $b$ with a non-zero component in the same row. Then $EA = B$ for a product of elimination matrices $E$, implying $A$ = E^{-1} B$. If $Ax = E^{-1} b$, then $Bx = b$, which contradicts the fact that we chose $b$ so that it has no solution $x$ in $Bx = b$. 

Conversely, if every row has a pivot, for any $b$ we can obtain a solution by assigning arbitrary values to the free variables and then assigning appropriate values to the bound variables.

**Corollary:** A system has a unique solution for all RHSes iff the eliminated, non-augmented coefficient matrix has a pivot in every row and in every column.


## Elimination and elementary matrices, plus one more form of elimination

Note that both forms of elimination presented so far consist of starting with a coefficient matrix $A$ and multiplying by elementary matrices on the left. Basic row elimination consisted solely of saxpy elementary matrices. Reduced row-elimination added in scaling elementary matrices as well. We can go one further and use the swap operation to get a very orderly eliminated matrix. The following algorithm will give us what we will call **reduced, row-eliminated echelon matrices** (it's also widely known as *Gauss-Jordan elimination*):

TODO: Insert GJE here, which gives a reduced, row-eliminated matrix in echelon form.

TODO: prove that the RREE form of a matrix is unique?

**Proposition:** If matrix $I_n$ is the reduced, row-eliminated echelon version of matrix $A$, then $A$ is the product of elementary matrices, and therefore invertible.

*Proof:* An RREE version of $A$ being $I_n$ means that $E_k \cdots E_1 A = I_n$ for some elementary matrices $E_i$. These are all invertible, so $A = E_1^{-1} \cdots E_k^{-1}$. Since $A$ is the product of invertible matrices, it is invertible as well.


**Proposition:** For any matrix $A$, $A$ is invertible iff the RREE-version of $A$ has a pivot in every row and every column.

*Proof:* The only reduced, row-eliminated echelon matrix with a pivot in every row and column is an identity matrix, so by the previous proposition $A$ is invertible. Conversely, if $A$ is invertible, every $b$ has a unique $x$ such that $Ax = b$, namely, $x = A^{-1}b$. By the last proposition of the last section, any eliminated coefficient matrix has a pivot in every row and every column. So in particular, the RREE must have a pivot in every row and every column.


**Corollary:** A matrix is invertible iff it is the product of elementary matrices.

*Proof:*  If $A$ is invertible, the previous two propositions imply it is the product of elementary matrices. Conversely, if $A$ is the product of elementary matrices, it is the product of invertible matrices, hence invertible.


**Corollary Corollary:* A matrix $A$ is invertible iff the reduced, row-eliminated (not necessarily echelon) matrix has a pivot in every row and in every column.

*Proof:* If the reduced, row-eliminated matrix has a pivot in every row and column, we can actually just apply swaps until it's an identity matrix. So it must be invertible since its RREE is an identity matrix. Conversely, $A$ invertible implies a unique solution for every right-hand side, so it must have pivots in each row and column.


**Corollary^3:** An invertible matrix must be square.

*Proof:* If not square, we're missing a pivot in either a row or a column (the number of columns and number of rows are mismatched), hence we could not have a pivot in every row and every column, hence not invertible.


## Square matrices and one-sided inverses
A square matrix $A$ is invertible iff $A$ has a left-inverse iff $A$ has a right-inverse.

*Proof:* A square matrix represents a linear map $\mathbb{F}^n \to \mathbb{F}^n$. This was already proved for general linear endomaps.


## Hashtag columnfacts

**Theorem:** For a set $S = \{v_1, \ldots, v_m\}$ of vectors of $\mathbb{F}^n$, let $A$ be the $n \times m$ matrix with entries in $\mathbb{F}$ such that column $i$ is $v_i$. Then

 1. $S$ is independent iff the eliminated versions of $A$ each have a pivot in every column.
 2. $S$ generates $\mathbb{F}^n$ iff $ eliminated versions of $A$ each have a pivot in every row
 3. $S$ is a basis for $\mathbb{F}^n$ iff the eliminated versions of $A$ have a pivot in each row and each column.

*Proof:* (1) holds because eliminated versions of $A$ have a pivot in every column iff there is at most one solution for each right-hand side $b$ in the equation $Ax = b$, where $x$ is unknown. But this latter statement is true iff there's at most one solution for $b = 0$: Clearly if all $b$'s have unique solutions, then $0$ does as well.. Conversely, if $b = 0$ doesn't have a unique solution, then no $b$ does because, supposing $y \neq 0$ and $Ay = 0$, then $If $Ax = b$, $A(x + y) = Ax + Ay = b + 0 = b$. (It is safe to assume $y \neq 0$ since $0$ is already a solution for $b = 0$).

For (2), eliminated versions of $A$ have at least one solution for each right-hand side iff there's a pivot in every row (by the previous theorem again), which is precisely the same thing as saying that the column vectors (aka $S$) generate $\mathbb{F}^n$.

For (3), this is just a combination of (1) and (2).

## General solutions to a linear system
TODO: Present this neatly somehow. Basically the null space is the solution set of a homogeneous system, and the cosets of the null space are the solution sets for each RHS that has a solution. If the range of the system is the whole space, then every RHS has a solution. If the null space is trivial, then solutions are unique.


TODO: invertibility and transposes. We need $A$ is invertible iff $A^T$ invertible for the determinant notes.

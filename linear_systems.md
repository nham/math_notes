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
It's a real drag to define matrix multiplication, so I won't. I also won't prove these basic facts about it:

 - Associativity: $(AB)C = A(BC)$
 - Distributivity $A(B + C) = AB + AC$ and $(A + B)C = AC + BC$.
 - Homogeneity: $c(AB) = (cA)B = A(cB)$

TODO: define matrix multiplication, motivate it as the proper definition for ensuring that multiplying two matrices is composing linear maps.

TODO: define invertibility for matrices

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

Our strategy for ascertaining the above is to apply transforms to the equations that expose the solution set, making it easy to directly solve. For the transforms to be effective, they must not alter the solution set.

Actually, the equations themselves are a bit unwieldy, so we will not apply transformations directly to them, but rather to a representation of the equations, called the **augmented coefficient matrix**, which we form by appending one column to the coefficient matrix described above: the column of scalars from the right-hand side of the equations:

$$
\left[
\begin{array}{ccc|c} a_{11} & \cdots & a_{1n} & c_1 \\
\vdots & \ddots & \vdots & \vdots \\
a_{k1} & \cdots & a_{kn} & c_k \end{array}
\right]
$$

We will concern ourselves with three different transformations to be applied to the augmented coefficient matrix:

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

## Row elimination, reduction, row echelon
By applying only saxpy operations, we can **row-eliminate** a matrix, which means each column in the matrix has exactly one non-zero element in it. An algorithm for doing this to a $m \times n$ matrix operation is

    for i in [1 .. m]:
       for j in [1 .. n]:
          if A[i, j] is not 0:
             for k in [1 .. m]:
                if A[k, j] is not zero:
                   saxpy row k with (-A[k, j]/A[i, j]) times row j


In other words, for each row, find the first column from the left, that has a non-zero element in that column, and use saxpy to zero out all other elements of $A$ in that column. The unique non-zero elements in each column are called **pivots**.

Note that we have at most $m$ pivots, since we only get a pivot when we eliminate for a row. Note also that we could never have two pivots in one column, since when we first construct the pivot, we zero out all other matrix elements in that column, and since the process of constructing other pivots never breaks a pivot that's already been established (the only way that could happen is if we saxpy the row that the pivot belongs to, but after we establish the pivot, that never occurs again).

Do note that we might not have all $m$ pivots, since a row could be zero, or could become zero  in the process of elimination, so that by the time we try to establish a pivot for it there is no non-zero element to find.

We can make this a bit neater by altering the algorithm to ensure that the pivots are always $1$. We can call the form of the resulting matrix **reduced, row-eliminated** form:

    for i in [1 .. m]:
       for j in [1 .. n]:
          if A[i, j] is not 0:
             scale row i by 1/A[i, j]
             for k in [1 .. m]:
                if A[k, j] is not zero:
                   saxpy row k with (-A[k, j]) times row j

This form is interesting because it allows us to directly write down the solution set. The resulting matrix will consist of some number of pivot columns and some number of non-pivot columns. Recall from the form of the augmented matrix there are $k$ rows and $n+1$ columns. Columns $1$ through $n$ correspond to variables $x_i$, while column $n+1$ is the right-hand side.

**Theorem:** A system has a solution iff a reduced, row-eliminated form of the augmented matrix has a pivot in the last column.

*Proof:* If the pivot is in the last column, this corresponds to a row of all zeroes in columns $1$ through $n and a non-zero in $n+1$th column. As an equation, this has no solution. It says $0 = c$ for some $c \neq 0$. Conversely, if a system has no pivot in the last column, we can easily construct a solution: the variables associated with non-pivot columns of $1$ through $n$ are *free variables* and can be assigned any scalar value. Once assigned, the other variables are fixed. This is a solution.

*Theorem:* A system's solution is unique iff there are no free variables (iff there's a pivot in every column).

*Proof:* If there are free variables, we have a new solution for every assignment of the free variables. If there are no free variables, then either there is no solution or any solution is completely constrained by the last column of the augmented matrix.

**Theorem:** An equation $Ax = b$ for coefficient matrix $A$ has a solution for every $b$ iff the eliminated coefficient matrix has a pivot in every row.

*Proof:* If one row has no pivot, by the algorithm it must be a zero row. The eliminated matrix $B$ is the one with the zero row, so we can find some $b$ with a non-zero component in the same row. Then $EA = B$ for a product of elimination matrices $E$, implying $A$ = E^{-1} B$. If $Ax = E^{-1} b$, then $Bx = b$, which contradicts the fact that we chose $b$ so that it has no solution $x$ in $Bx = b$. 

Conversely, if every row has a pivot, for any $b$ we can obtain a solution by assigning arbitrary values to the free variables and then assigning appropriate values to the bound variables.

**Corollary:** A system has a unique solution for all RHSes iff the eliminated coefficient matrix has a pivot in every row and in every column.

**Corollary Corollary:* A matrix $A$ is invertible iff the eliminated matrix has a pivot in every row and in every column.
*Proof:* If the eliminated matrix has a pivot in every row and column, then the matrix represeents some invertible linear map. So there is a matrix $B$ representing the inverse, and hence $BA = id_{\mathbb{F}^n}$ and $AB = id_{\mathbb{F}^k}$ for some $n$ and $k$. Hence $B$ is an inverse for $A$, so $A$ is invertible.

Conversely, if $A$ is invertible then, supposing $A$ is $k \times n$, there is some $n \times k$ matrix $B$ such that $BA = id_{\mathbb{F}^k}$ and $AB = id_{\mathbb{F}^n}$. For any $b \in \mathbb{F}^k$, $x = \mathbb{B} b$ satisfies $Ax = b$, and if $Ay = b$ as well, then $x = BAx = BAy = y$, so $x$ is unique. By the previous corollary the eliminated coefficient matrix must have a pivot in every row and column.


**Corollary^3:** An invertible matrix must be square.

*Proof:* If not square, we're missing a pivot in either a row or a column (the number of columns and number of rows are mismatched).


**Theorem:** For a set $S = \{v_1, \ldots, v_m\}$ of vectors of $\mathbb{F}^n$, let $A$ be the $n \times m$ matrix with entries in $\mathbb{F}$ such that column $i$ is $v_i$. Then

 1. $S$ is independent iff the eliminated versions of $A$ each have a pivot in every column.
 2. $S$ generates $\mathbb{F}^n$ iff $ eliminated versions of $A$ each have a pivot in every row
 3. $S$ is a basis for $\mathbb{F}^n$ iff the eliminated versions of $A$ have a pivot in each row and each column.

*Proof:* (1) holds because eliminated versions of $A$ have a pivot in every column iff there is at most one solution for each right-hand side $b$ in the equation $Ax = b$, where $x$ is unknown. But this latter statement is true iff there's at most one solution for $b = 0$: Clearly if all $b$'s have unique solutions, then $0$ does as well.. Conversely, if $b = 0$ doesn't have a unique solution, then no $b$ does because, supposing $y \neq 0$ and $Ay = 0$, then $If $Ax = b$, $A(x + y) = Ax + Ay = b + 0 = b$. (It is safe to assume $y \neq 0$ since $0$ is already a solution for $b = 0$).

For (2), eliminated versions of $A$ have at least one solution for each right-hand side iff there's a pivot in every row (by the previous theorem again), which is precisely the same thing as saying that the column vectors (aka $S$) generate $\mathbb{F}^n$.

For (3), this is just a combination of (1) and (2).

**Proposition:** An independent finite subset of $\mathbb{F}^n$ cannot have more than $n$ vectors in it.

*Proof:* If we construct a matrix out of the vectors in a set $S \subseteq \mathbb{F}^n$ which has more than $n$ vectors in it, then the matrix will have more columns than rows, so we cannot have a pivot in every column, and hence by the previous proposition the set cannot be independent.

**Proposition:** Any two (finite) bases in a vector space $V$ have the same number of elements.

*Proof:* If $V$ is a vector space and $B$ and $C$ are bases in $V$ with $|B| = m$ and $|C| = n$, then we can order these bases to obtain ordered bases $\beta$ and $\gamma$, respectively. From here we can define isomorphisms $\phi: V \to \mathbb{F}^m$ and $\psi: V \to \mathbb{F}^n$ which assign to each $v$ in V$ its $\beta$ and $\gamma$-representation. Then $T = \phi \circ \psi^{-1} : \mathbb{F}^n \to \mathbb{F}^m$ is an isomorphism, as is $T^{-1} = \psi \circ \phi^{-1} : \mathbb{F}^m \to \mathbb{F}^n$. Let $S_m$ and $S_n$ be the standard basis sets in $\mathbb{F}^m$ and $\mathbb{F}^n$, respectively. Then $T(S_n)$ must be linearly independent in $\mathbb{F}^m$, and $T^{-1}(S_m)$ must be linearly independent in $\mathbb{F}^n$. So $m \leq n$ and $n \leq m$ by the previous proposition.

**Proposition:** A finite generating subset of $\mathbb{F}^n$ cannot have less than $n$ vectors in it.

*Proof:* If we construct a matrix out of the vectors in a set $S \subseteq \mathbb{F}^n$ which has less than $n$ vectors in it, then the matrix will have less columns than rows, so we cannot have a pivot in every row, and hence by a previous proposition the set cannot be independent.

The **dimension** of a vector space $V$ is, in the case of vector spaces with finite bases, the number of elements in the basis, written $dim V$. For the trivial vector space, we define dimension to be zero. For vector spaces with no finite bases, we say the vector space has infinite dimension. This definition is valid by the proof that any two finite bases have the same number of elements.


**Theorem:** Any independent set can be completed to a basis in a finite dimensional space.

*Proof:* If i have some basis of $n$ vectors and an independent set $S$, then add vectors from the basis as long as the set does not span the vector space. As soon as it does, quit. This will be a basis by construction. This arrangement must terminate since there are only finitely many basis vectors.

TODO: proof that minimal generating set is a basis? and maximal independent set? how did we prove these? maybe go in fdvses page.

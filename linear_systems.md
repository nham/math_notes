For any $n \in \mathbb{N}$, $n > 0$, we denote the set $\{1, \ldots, n\}$ by $[n]$. Then a **matrix in $\mathbb{F}$** where $\mathbb{F}$ is a field is a function $[k] \times [n] \to \mathbb{F}$ for positive integers $k$ and $n$. Usually this is depicted as a rectangular array of field elements:

$$
\begin{bmatrix} a_{11} & \cdots & a_{1n} \\
\vdots & \ddots & \vdots \\
a_{k1} & \cdots & a_{kn} \end{bmatrix}
$$

It's a real drag to define matrix multiplication, so I won't. I also won't prove these basic facts about it:

 - Associativity: $(AB)C = A(BC)$
 - Distributivity $A(B + C) = AB + AC$ and $(A + B)C = AC + BC$.
 - Homogeneity: $c(AB) = (cA)B = A(cB)$

TODO: define matrix multiplication, motivate it as the proper definition for ensuring that multiplying two matrices is composing linear maps.

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

*Corollary:* A system's solution is unique iff there are no free variables.

*Proof:* If there are free variables, we have a new solution for every assignment of the free variables. If there are no free variables, then either there is no solution or any solution is completely constrained by the last column of the augmented matrix.

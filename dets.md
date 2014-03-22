First, prove that the parity of a permutation is well-defined by counting the parity of the number of transposes for any transpose-representation of the permutation. (First, any permutation can be decomposed into disjoint cycles. Second, any cycle can be represented as a product of transpositions, so every permutation is a product of transpositions. Third, starting with some permutation, every transposition added changes the number of disjoint cycles by one. A permutation has a fixed, unique disjoint cycle, so in order for a series of transpositions to represent it, it must at least have the same number of disjoint cycles. Any odd number of transpositions added or removed changes the number of disjoint cycles. So all transposition representations for a permutation are either an odd or an even number of transposes, hence parity makes sense.)

For an $n \times n$ matrix $A$ of elements from a field $\mathbb{F}$, we define

$$det A := \sum_{\alpha} sgn(\alpha) a_{\alpha_1, 1} \cdot a_{\alpha_n, n}$$

where $\alpha$ ranges over all permutations on $\{1, \ldots, n\}$ and $sgn(\alpha)$ is the parity of permutation $\alpha$.

Note that this is the sum of all weighted products of "selections" of $n$ elements such that each row and each column is represented exactly once, and where the "weight" is the parity of the permutation.

$det(A^T) = det(A)$ very clearly, since the transpose is basically inverting each permutation. This yields another permutation. (i.e. if $b_{i j}$ are the elements of the transpose of a $3 \times 3$ matrix, $b_{21} b_{12} b){33} = a_{12} a_{21} a{33}$ and $b_{12} b_{21} b_{33} = a_{21} a_{12} a_{33}$.

This means that anything proved about columns and determinants also holds for rows and determinants.

Antisymmetry of the determinant holds because swapping two columns is applying a transpose to the permutation. Corollary: if any two columns are equal, the determinant is zero.

Linearity of the determinant in each column is a straightforward proof from the definition.

The fact that saxpy doesnt change the determinant follows directly from linearity and the corollary to antisymmetry.


## Cofactors and minors
Let's sum up the determinant so far. So let's say a "selection" from an $n \times n$ matrix $A$ is the set of cells $a_{\alpha(i) i}$, where $\alpha$ is a permutation on $n$. Multiplying the elements $a_{\alpha(i) i}$ together is called the "selection product". Then the determinant is the sum of all selection products where each product is multiplied by the parity of the permutation that forms that product.

We can slice the determinant up by selecting any column $j$ and picking some $i$, and then taking all of the selection products that involve $a_{ij}$. If we factor out $a_{ij}$ from each of these products when we are left with an expression

$$a_{ij}A_{ij}$$

where $A_{ij}$ is the sum of the selection products involving $a_{ij}$, but with $a_{ij}$ factored out. So clearly for any $j$,

$$det A = \sum_{i=1}^n a_{ij} A_{ij}$$

This $A_{ij}$ is called the **cofactor**.

The $(i, j)$ **minor** of $A$ is the determinant of the submatrix of $A$ formed by deleting row $i$ and column $j$. The minor involves almost the same terms as the the cofactor, but the sign might be different since we are perhaps using a slightly different permutation.

Theorem: $M_{ij} = (-1)^{i+j} A_{ij}$

*Proof scribbles:* Consider the matrix $B_{kj}$ obtained by moving $a_{ij}$ to $(n, n)$ by swapping columns $j$ and $j+1$, then $j+1$ and $j+2$, etc. until the original column $j$ has been moved to $n$, and then repeating the same procedure on rows until row $i$ has been moved to row $n$ via adjacent row swaps. Any selection $\alpha$ of $A$ can be converted into a selection $B_{kj}$ that involves $b_{nn}$ (aka $a_{ij}$) via

$$\phi_c^{-1} ; \alpha ; \phi_r^{-1}$$

where I'm writing function composition in postfix notation. ($(x f g)$ is $g$ applied to $f$ applied to $x$).

$$
    \Phi_n[k](x) = 
    \cases{
    x  & \text{if } x < k\cr
    x-1 & \text{if } x > k\cr
    n & \text{o.w.}
    }
$$

$$ \phi_c = \Phi_n[j] $$

and

$$ \phi_r = \Phi_n[i] $$

The meaning of $\phi_c$ and $\phi_r$ is that these map the column and row (resp.) indices of $B_{kj}$ into $A$ column and row indices.

We have that

$$\phi_c = (j n n-1 \cdots j+1)$$

and

$$\phi_r = (i n n-1 \cdots i+1)$$

That is, $\phi_c$ is an $(n-j+1)$-length cyclic permutation, and $\phi_r$ is an $(n-i+1)$-length cyclic permutation. So the result $\phi_c^{-1} ; \alpha \phi_r^{-1}$ changes $\alpha$'s parity by the parity of $2n - 2 i - j$, i.e. the parity of $i + j$. That is:

$$sgn(\alpha) = (-1)^{i+j} sgn(\phi_c^{-1} ; \alpha \phi_r^{-1})$$

I haven't proven it, but the function $\eta: \alpha \mapsto \phi_c^{-1} ; \alpha \phi_r^{-1}$ should be a bijection between the subset $F$ of $S_n$ of permutations that fix $n$ and the subset $G$ of $S_n$ of permutations that map $j$ to $i$. TODO prove.

The permutations in $G$ are exactly those involved in calculating $a_{ij}A_{ij}$. We have

$$a_{ij} A_{ij} = \sum_{\alpha \in G} sgn(\alpha) a_{\alpha_1 1} \cdots a_{\alpha_n n}$$

We also have

$$b_{nn} (B_{kj})_{nn} = \sum_{\alpha \in G} sgn(\alpha) b_{{\beta_{\alpha}}_1 1} \cdots b_{{\beta_{\alpha}}_n n}$$

By the above, $sgn(\alpha) = (-1)^{i+j} sgn(\beta_{\alpha})$. Also, $(B_{kj})_{nn}$ is exactly the $(n, n)$ minor of $B_{kj}$. Also, the $(n, n)$ minor of $B_{kj}$ is precisely the $(i, j)$ minor of $A$ (TODO: prove). So this establishes what we wanted to prove.

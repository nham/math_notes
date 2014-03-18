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

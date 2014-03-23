## Introduction
At this point we assume we have constructed the rational numbers and proved all the basic algebraic, order-related and metric properties. (See the notes on the rationals). When we last left off, we had just finished proving that the rational number system is missing some numbers. Namely, there is no rational number that could serve as the square root of two, so we have no number for representing the length of the diagonal of a unit square.

Therefore, it is desirable to extend $\mathbb{Q}$ to "fill in the gaps". The resulting number system will be the real numbers $\mathbb{R}$.

The basic tool for building these new numbers will be infinite sequences of rational numbers. We may be missing some numbers, but we can still build sequences of rationals that get "infinitely close" to the missing number. The idea is to identify the new numbers with the "limits" of sequences.


## Notation for sequences
A **sequence** in a set $X$ is a function $\mathbb{N} \to X$. A sequence of rational numbers is a sequence with $X = \mathbb{Q}$. Throughout these notes we will represent a sequence of rationals as $(a_n)_{n=0}^{\infty}$, or just $(a_n)$ for short. We will sometimes represent a subsequence by $(a_n)_{n=k}^{\infty}$, and we call such a sequence where the first $k$ elements have been removed a **tail sequence**.

## Definition of $\epsilon$-steadiness
A sequence $(a_n)$ is **$\epsilon$-steady**

## Definition of eventual $\epsilon$-steadiness
A sequence $(a_n)$ is **eventually $\epsilon$-steady** iff there is a $k \in \mathbb{N}$ such that $(a_n)_{n=k}^{\infty}$ is $\epsilon$-steady. In other words, it's eventually $\epsilon$-steady iff $d(a_i, a_j) \leq \epsilon$ for all $i, j \geq k$.

## Definition of Cauchy sequences
A sequence $(a_n)$ is called **Cauchy** iff for every rational $\epsilon > 0$, $(a_n)$ is eventually $\epsilon$-steady. Expanding this a bit, the sequence is Cauchy iff $\forall \epsilon > 0$ there is an $N \in \mathbb{N}$ such that $d(a_i, a_j) \leq \epsilon$ for all $i, j \geq N$.

## The harmonic sequence is Cauchy
The sequence $(a_n)_{n=1}^{\infty}$ defined by $a_n = 1/n$ is Cauchy.

*Proof:* Let $\epsilon > 0$ be rational. Then there is some natural $n$ such that $0 < 1 / \epsilon < n$, so $1 / n < \epsilon$ by order properties of the rationals. Now for any $k \geq n$, $d(a_n, a_k) = |1/n - 1/k| = |(k-n)/kn| = 1/n - 1/k < 1/n < \epsilon$, so $(a_n)$ is eventually $\epsilon$-steady.

## Definition of bounded sequences.
A sequence $(a_n)$ is **bounded** if there is a rational $M \geq 0$ such that for all $i \in \mathbb{N}$, $|a_i| \leq M$. A tuple $(a_1, \ldots, a_n)$ is bounded if there is a rational $M \geq 0$ such that $|a_i| \leq M$ for $1 \leq i \leq n$.

## All tuples are bounded
Every tuple of rationals $(a_1, \ldots, a_n)$ is bounded.

*Proof:* If it is a 1-tuple $(a_1)$, we have $|a_1| \leq |a_1|$, so every 1-tuple is bounded. Suppose every $n$-tuple is bounded. Then for some tuple $(a_1, \ldots, a_{n+1})$, $(a_1, \ldots, a_n)$ has some bound $M$ by hypothesis such that $|a_i| \leq M$ for all $1 \leq i \leq n$, and $|a_{n+1}| \leq M + |a_{n+1}|$, which is also an upper bound for $a_1$ through $a_n$.

## Cauchy sequences are bounded
If $(a_n)$ is Cauchy, then it is bounded.

*Proof:* We can find an $N$ such that $(a_n)_{n = N}^{\infty}$ is $1$-steady since $(a_n)$ is Cauchy. So for all $k \geq N$, $|a_k - a_N| \leq 1$. This implies that $|a_k| = |a_k - a_N + a_N| \leq |a_k - a_N| + |a_N| \leq |a_N| + 1$. In words, all of the sequence elements after $N$ are bounded by $(|a_N| + 1)$.

However, we also know the tuple $(a_0, \ldots, a_{N-1})$ is bounded by some $M \geq 0$, which proves that every element of the sequence is bounded by $(|a_N| + 1 + M)$.

## Definition of $\epsilon$-close sequences
If $(a_n)$ and $(b_n)$ are two sequences and $\epsilon > 0$, then we say $(a_n)$ and $(b_n)$ are $\epsilon$-close iff $a_k$ and $b_k$ are $\epsilon$-close for every $k \in \mathbb{N}$.


## Definition of eventually $\epsilon$-close sequences
Two sequences $(a_n)$ and $(b_n)$ are **eventually $\epsilon$-close** for some $\epsilon > 0$ iff there is an $N \in \mathbb{N}$ such that for all $k \geq N$, $a_k$ and $b_k$ are $\epsilon$-close.


## Definition of equivalent sequences
Sequences $(a_n)$ and $(b_n)$ are **equivalent** if, for every $\epsilon > 0$, they are eventually $\epsilon$-close.

## Equivalence of sequences is an equivalence relation
Equivalence of sequences is reflexive, symmetric, and transitive.

 1. Reflexivity

    *Proof:* Any sequence is $0$-close with itself, hence certainly $\epsilon$-close for any $\epsilon > 0$.

 2. Symmetricity

    *Proof:* The metric on $\mathbb{Q}$ is symmetric, meaning $d(x_n, y_n) = d(y_n, x_n)$. This implies symmetricity of sequence equivalence.

 3. Transitivity

    *Proof:* If $(a_n)$ and $(b_n)$ are equivalent and $(b_n)$ and $(c_n)$ are equivalent, this means for all $\epsilon > 0$ there is an $M_{\epsilon}$ such that $d(a_n, b_n) \leq \epsilon$ for all $n \geq M_{\epsilon}$ and that there is an $N_{\epsilon}$ such that $d(b_n, c_n) \leq \epsilon$ for all $n \geq N_{\epsilon}$. By the triangle inequality, $d(a_n, c_n) \leq d(a_n, b_n) + d(b_n, c_n)$, and there are points $M_{\epsilon / 2}$ and $N_{\epsilon / 2}$ which for $d(a_n, b_n) \leq \epsilon / 2$ and $d(b_n, c_n) \leq \epsilon / 2$. So for $k \geq M_{\epsilon / 2} + N_{\epsilon / 2}$, we have $d(x_n, z_n) \leq \epsilon$. So $(

## Equivalent sequences are either both Cauchy or not
If $(a_n)$ and $(b_n)$ are equivalent sequences, $(a_n)$ is Cauchy iff $(b_n)$ is.

*Proof:* Supposing $(a_n)$ is Cauchy, this means for every $\epsilon > 0$ we can find a tail sequence which is $\epsilon$-steady.
FIXME: i think we want $\epsilon / 3$. its $\epsilon / 3$ to get to from $a_k$ to $b_k$, another $\epsilon / 3$ to get from $b_k to any b_j$, and then another $\epsilon / 3$ to go from $b_j$ to $a_j$. this guarantees any $a_k$ is within an epsilon of $a_j$.

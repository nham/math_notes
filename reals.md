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

*Proof:* Supposing $(a_n)$ is Cauchy, this means for every $\epsilon > 0$ we can find a tail sequence which is $\epsilon$-steady. We can choose an $N$ such that $d(a_n, b_n) \leq \epsilon / 3$ for all $n \geq N$. We can also choose an $M$ such that $(a_n)_{n=M}^{\infty}$ is $\epsilon / 3$-steady. This means that for all $j, k \geq N + M$, we have $d(b_j, b_k) \leq d(b_j, a_j) + d(a_j, a_k) + d(a_k, b_k) \leq 3(\epsilon / 3) = \epsilon$.

## Definition of the reals
A **real number** is an object $LIM_{n \to \infty} a_n$ where $(a_n)$ is a Cauchy sequence of rationals. 

## Definition of real equality
We say two real numbers are **equal**, written $LIM_{n \to \infty} a_n = LIM_{n \to \infty} b_N$, iff $(a_n)$ and $(b_n)$ are equivalent Cauchy sequences.

This is a valid definition since we proved above that sequence equivalence is reflexive, symmetric and transitive.

## Definition of real addition
Let $x = LIM_{n \to \infty} a_n$ and $y = LIM_{n \to \infty} b_n$. Then define $x + y = LIM_{n \to \infty} (a_n + b_n)$.

## Addition in $\mathbb{R}$ is well-defined
### Sum of Cauchy sequences is Cauchy
If $(a_n)$ and $(b_n)$ are Cauchy, then $(c_n)$ defined by $c_n = a_n + b_n$ is Cauchy.

 1. Assume  $\epsilon > 0$

 2. There is an $N$ such that $|a_j - a_k| \leq \epsilon / 2$ for all $j, k \geq N$

    *Proof:* $(a_n)$ is Cauchy

 3. There is a $P$ such that $|b_j - b_k| \leq \epsilon / 2$ for all $j, k \geq P$

    *Proof:* $(b_n)$ is Cauchy

 4. $|a_m + b_m - a_n - b_n| \leq \epsilon$ for all $m, n \geq N + P$

    *Proof:* Since $(N + P)$ is greater than both $N$ and $P$, $|a_m + b_m - a_n - b_n| \leq |a_m - a_n| + |b_m - b_n| \leq \epsilon$ for all $m, n \geq N + P$ holds by (2) and (3) and the triangle inequality.

 5. Q.E.D.

    *Proof:* (4) establishes that the sequence is Cauchy.

### The axiom of substitution
If $x = LIM_{n \to \infty} a_n$, $y = LIM_{n \to \infty} b_n$, $z = LIM_{n \to \infty} c_n$, and $w = LIM_{n \to \infty} d_n$ such that $x = z$ and $y = w$, then $x + y = z + w$.

 1. Assume  $\epsilon > 0$

 2. There is an $N$ such that $|a_n - c_n| \leq \epsilon / 2$ for all $n \geq N$

    *Proof:* $(a_n)$ and $(c_n)$ are equivalent.

 3. There is a $P$ such that $|b_n - d_n| \leq \epsilon / 2$ for all $n \geq P$

    *Proof:* $(b_n)$ and $(d_n)$ are equivalent.

 4. $|a_n + b_n - c_n - d_n| \leq \epsilon$ for all $n \geq N + P$

    *Proof:* By the triangle inequality and (2) and (3), $|a_n + b_n - c_n - d_n| \leq |a_n - c_n| + |b_n - d_n| \leq \epsilon$ for $n \geq N + P$, since $N + P$ is greater than both $N$ and $P$.

 5. Q.E.D.

    *Proof:* By (4)


## Definition of real multiplication
Let $x = LIM_{n \to \infty} a_n$ and $y = LIM_{n \to \infty} b_n$. Then define $x y = LIM_{n \to \infty} (a_n b_n)$.


## Addition in $\mathbb{R}$ is well-defined
### Sum of Cauchy sequences is Cauchy
If $(a_n)$ and $(b_n)$ are Cauchy, then $(c_n)$ defined by $c_n = a_n b_n$ is Cauchy.

 1. Assume  $\epsilon > 0$

 2. There exist $A$ and $B$ such that $|a_j| \leq A$ and $|b_j| \leq B$ for all $j \in \mathbb{N}$.

    *Proof:* $(a_n)$ and $(b_n$, being Cauchy, are both bounded.

 3. There is an $N$ such that $|a_j - a_k| \leq \epsilon / 2A$ for all $j, k \geq N$

    *Proof:* $(a_n)$ is Cauchy

 4. There is a $P$ such that $|b_j - b_k| \leq \epsilon / 2B$ for all $j, k \geq P$

    *Proof:* $(b_n)$ is Cauchy

 5. $|a_m b_m - a_n b_n| \leq \epsilon$ for all $m, n \geq N + P$

    *Proof:* $|a_m b_m - a_n b_n| = |a_m b_m - a_m b_n + a_m b_n - a_n b_n| \leq |a_m| |b_m - b_n| + |b_n| |a_m - a_n| \leq A (\epsilon / 2A) + B (\epsilon / 2B) = \epsilon$ for all $m, n \geq N + P$ by (2), (3) and (4) since $N+P$ is greater than both $N$ and $P$.

 5. Q.E.D.

    *Proof:* (5) establishes that the sequence is Cauchy.

### The axiom of substitution
If $x = LIM_{n \to \infty} a_n$, $y = LIM_{n \to \infty} b_n$, $z = LIM_{n \to \infty} c_n$, and $w = LIM_{n \to \infty} d_n$ such that $x = z$ and $y = w$, then $x y = z w$.

 1. Assume  $\epsilon > 0$

 2. There exist $B$ and $C$ such that $|b_j| \leq B$ and $|c_j| \leq C$ for all $j \in \mathbb{N}$.

    *Proof:* $(b_n)$ and $(c_n$, being Cauchy, are both bounded.

 3. There is an $N$ such that $|a_n - c_n| \leq \epsilon / 2B$ for all $n \geq N$

    *Proof:* $(a_n)$ and $(c_n)$ are equivalent.

 3. There is a $P$ such that $|b_n - d_n| \leq \epsilon / 2C$ for all $n \geq P$

    *Proof:* $(b_n)$ and $(d_n)$ are equivalent.

 4. $|a_n b_n - c_n d_n| \leq \epsilon$ for all $n \geq N + P$

    *Proof:* $|a_n b_n - c_n d_n| = |a_n b_n - b_n c_n + b_n c_n - c_n d_n| \leq |b_n| |a_n - c_n| + |c_n| |b_n - d_n| \leq B (\epsilon / 2B) + C (\epsilon / 2C) = \epsilon$ for all $n \geq N + P$ by (2), (3) and (4) since $N+P$ is greater than both $N$ and $P$.

 5. Q.E.D.

    *Proof:* By (4)

## Embedding the rationals into the reals
We equate every rational $x$ with the sequence defined by $a_n = x$. This is a Cauchy sequence since it is $0$-steady. We've just proven that multiplication of reals is consistent with multiplication of rationals since 

$$LIM_{n \to \infty} x + LIM_{n \to \infty} y = LIM_{n \to \infty} (x+ y)$$

and

$$LIM_{n \to \infty} x \times LIM_{n \to \infty} y = LIM_{n \to \infty} xy$$

### Embedding is well-defined
For rationals $x$ and $y$, then $x = y$ iff $LIM_{n \to \infty} x = LIM_{n \to \infty} y$

*Proof:* If $x = y$, then $(a_n)$ and $(b_n)$ defined by $a_n = x$ and $b_n = y$ are $0$-close, hence equivalent. Conversely, if $(a_n)$ and $(b_n)$ are equivalent, then $|x - y| \leq \epsilon$ for all $\epsilon > 0$. So by a lemma about $\epsilon$-closeness, $x = y$.


## Definition of negation of reals
If $x$ is real, then define $-x := -1 \times x$. In other words, for any Cauchy sequence representing $x$, we negate all the terms of that sequence.

## Definition of subtraction
We define $x - y = x + -y$ for any two reals $x$, $y$.

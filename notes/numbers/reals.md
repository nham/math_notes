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


## $\mathbb{Z}$ is a commutative ring
The integers satisfy the following properties. For all $x, y, z \in \mathbb{Z}$

 - $x + y = y + x$
 - $x + (y + z) = (x + y) + z$
 - $x + 0 = 0 + x = x$
 - $x + (-x) = (-x) + x = 0$
 - $x y = y x$
 - $x (y z) = (x y) z$
 - $x 1 = 1 x = x$
 - $x (y + z) = x y + x z$
 - $(x + y) z = x z + y z$

*Proof:* These all hold because multiplication and addition of sequences is defined term-wise, and the laws hold individually for each term.


## Initial remarks on reciprocals
One complication for defining the reciprocal operation on real numbers is that sequences that aren't equivalent to $0$ might still contain $0$ terms, since equivalence is defined as being *eventually* $\epsilon$-close. So we cannot simply take the reciprocal of all the terms of the sequence. The technical development that follows is designed to avoid this problem.

## Definition of sequences bounded away from zero
A sequence $(a_n)$ is bounded away from zero if there is a $c > 0$ such that for all $n \in \mathbb{N}$, c \leq |a_n|$.

## Every non-zero real is represented by a sequence bounded away from zero
If $x \in \mathbb{R}$ is non-zero, then there is an $(a_n)$, Cauchy, that is bounded away from zero, such that $x = LIM_{n \to \infty} a_n$

 1. Assume $x = LIM_{n \to \infty} b_n$ for some Cauchy sequence $(b_n)$.

 2. $\exists \epsilon > 0$ such that for all $N \in \mathbb{N}$, there is an $n \geq N$ such that $|b_n| > \epsilon$. 

    *Proof:* By hypothesis $x \neq 0$, so it is not the case that $(b_n)$ is eventually $\epsilon$-close to $(0)_{n = 0}^{\infty}$. This means it is not the case that for all $\epsilon > 0$, there is a tail sequence such that $|a_n - 0| \leq \epsilon$ for all $n$. Equivalently, there is some $\epsilon > 0$ such that no matter where we are in the sequence, we can find another term after the current term whose absolute value is greater than $\epsilon$.

 3. There is an $N$ such that for all $j, k \geq N$, $|b_j - b_k| \leq \epsilon / 2$. 

    *Proof:* $(b_n)$ is Cauchy by hypothesis, so $(b_n)$ is eventually $\epsilon / 2$-steady.

 4.  There is some $g \geq N$ such that $|b_g| > \epsilon$

     *Proof:* By (2)

 5. $(b_n)_{n = N}^{\infty}$ is bounded away from zero

    *Proof:* For all $n \geq N$, $|b_g| = |b_g - b_n + b_n| \leq |b_g - b_n| + |b_n|$, which implies that $\epsilon < |b_g - b_n| + |b_n|$. But $|b_g - b_n| \leq \epsilon / 2$ since $g \geq N$, so $-(\epsilon / 2) \leq -|b_g - b_n|$. This implies that $\epsilon / 2 < |b_n|$

 6. Q.E.D.

    *Proof:* Define a sequence $(a_n)$ by $a_n = \epsilon / 2$ for $n < N$ and $a_n = b_n$ otherwise. $(a_n)$ and $(b_n)$ are equivalent since they are eventually $0$-close, which implies that $(a_n)$ is Cauchy (since it's equivalent to a Cauchy sequence), so they both represent $x$. $(a_n)$ is bounded away from zero by (5), which establishes what we set out to prove.

## Cauchy sequences bounded away from zero have reciprocals
If $(a_n)$ is bounded away from zero, then $(a_n^{-1})$ is a Cauchy sequence.

 1. Assume $\epsilon > 0$.

 2. There is some $c > 0$ such that $(a_n)$ is bounded away from zero by $c$.

    *Proof:* By hypothesis

 3. For all $j$, $k$, $|a_j^{-1} - a_k^{-1}| \leq |a_k - a_j| / c^2$.

    *Proof:* $|a_j^{-1} - a_k^{-1}| = |a_k - a_j| / |a_j a_k|$. Since $|a_k| \geq c$, $|a_j| \geq c$, the conclusion follows.

 4. There is an $N$ such that for all $j, k \geq N$, $|a_k - a_j| \leq \epsilon c^2$.

    *Proof:* $(a_n)$ is Cauchy.

 5. Q.E.D.

    *Proof:* The $N$ from (4) is the point in the reciprocal sequence after which all terms are within an $\epsilon$ of each other (by 3), which proves that $(a_n^{-1})$ is Cauchy.


## Definition of reciprocals of reals
If $x \neq 0$, then there is a sequence $(a_n)$ bounded away from zero. Define the **reciprocal** of $x$ by $x^{-1} := LIM_{n \to \infty} a_n^{-1}$. This new sequence $(a_n^{-1})$ is a Cauchy sequence by the previous proposition, hence $x^{-1}$ is a real number.


### Reciprocal is well-defined
If $(a_n)$ and $(b_n)$ are sequences bounded away from zero such that $LIM_{n \to \infty} a_n = LIM_{n \to \infty} b_n$, then $LIM_{n \to \infty} a_n^{-1} = LIM_{n \to \infty} b_n^{-1}$.

*Proof:* ($LIM_{n \to \infty} a_n^{-1} \times LIM_{n \to \infty} a_n \times LIM_{n \to \infty} b_n^{-1}$) is equal to ($LIM_{n \to \infty} a_n^{-1} \times LIM_{n \to \infty} b_n \times LIM_{n \to \infty} b_n^{-1}$), which implies our result since $LIM_{n \to \infty} a_n^{-1} \times LIM_{n \to \infty} a_n = LIM_{n \to \infty} a_n^{-1} a_n = 1$, and similarly for $b_n$ and $b_n^{-1}$.

## $\mathbb{R}$ is a field
The only fact unproved is that every non-zero real has a multiplicative inverse. But we've just proven that the reciprocal operation gives such an inverse, so $\mathbb{R}$ is a field.

## Definition of real division
For $x, y \in \mathbb{R}$, $y \neq 0$, define $x / y := x y^{-1}$.

## Definition of positively/negatively bounded away from zero
The sequence $(a_n)$ is **positively bounded away from zero** if there is a $c > 0$ such that $a_n \geq c$ for all $n \in \mathbb{N}$. A sequence is **negatively bounded away from zero** if there is a $c < 0$ such that $a_n \leq c$ for all $n \in \mathbb{N}$.

## Definition of positivity/negativity in $\mathbb{R}$
A real number $x$ is **positive** if $x = LIM_{n \to \infty} a_n$ for some sequence $(a_n)$ positively bounded away from zero. $x$ is **negative** if $x = LIM_{n \to \infty} b_n$ for some sequence $(b_n)$ negatively bounded away from zero.

## Trichotomy for $\mathbb{R}$
Every $x \in \mathbb{R}$ is exactly one of the following:

 - positive
 - negative
 - equal to zero.

 1. Either $x = 0$ or $x \neq 0$

    *Proof:* The law of the excluded middle (LOL?)

 2. If $x \neq 0$, then $x$ is either positive or negative.

    *Proof:* Supposing $x \neq 0$, there is some Cauchy sequence $(b_n)$ bounded away from zero by some $c > 0$ such that $x = LIM_{n \to \infty}$. Since $(b_n)$ is Cauchy, there is some $N$ such that for all $j, k \geq N$, $|b_j - b_k| \leq c$. Since $b_N$ is a rational and isn't zero ($|b_N| \geq c$), by trichotomy of rationals $b_N$ must be either positive or negative. If $b_N$ is positive, all $b_j$ for $j \geq N$ are positive as well since $b_j$ being negative would mean $-b_j = |b_j| \geq c$, so $b_j \leq -c$, which implies $|b_N - b_j| = b_N - b_j \geq 2c$, contradicting our assumption that $j \geq N$. This proves that $b_N$ being positive means that $(b_n)$ is eventually positively bounded away from zero. We can build a new sequence that replaces the first $N$ terms with $c$, and this new sequence is equivalent to $(b_n)$, so it also represents $x$. Hence $x$ must be positive.

    A similar argument for when $b_N$ is negative proves that $x$ must be negative.

 3. If $x = 0$, $x$ could not be positive or negative.

    *Proof:* If $x = 0$, then supposing $x$ is positive means $x = LIM_{n \to \infty} a_n$ for some $(a_n)$ positively bounded away from zero by some $c > 0$. By hypothesis, $(a_n)$ is equivalent to the constant sequence of $0$'s, so in particular we can find an $N$ such that $|a_n| \leq c/2$ for all $n \geq N$, which contradicts that $(a_n)$ is positively bounded away from zero. So $x$ could not be positive. A similar argument proves that $x$ could not be negative.

 4. If $x$ is positive, $x$ is not negative.

    *Proof:* This can be proven by showing that a sequence positively bounded away from zero could not be equivalent to a sequence negativly bounded away from zero. Suppose $x = LIM_{n \to \infty} a_n = LIM_{n \to \infty} b_n$ for positively bounded away from zero $(a_n)$ and negatively bounded away from zero $(b_n)$. $(a_n)$ is positively bounded by some $c > 0$, and $(b_n)$ is negatively bounded by some $d < 0$. Then for all $n$, $|a_n - b_n| = a_n - b_n \geq c - d > 0$, so they could not be equivalent.

 5. Q.E.D.

    *Proof:* That one of the three statements must be true is proven by (1) and (2). That at most one can be true is proven by (3) and (4) (take the contrapositive of (4) to get the last implication).


## Necessary and sufficient condition for negativity
$x \in \mathbb{R}$ is negative iff $-x$ is positive.

*Proof:* If $x$ is negative, $x = LIM_{n \to \infty} a_n$ for some $(a_n)$ bounded negatively away from zero, so $a_n \leq d$ for some $d < 0$ and for all $n \in \mathbb{N}$. Hence $-a_n \geq -d$, proving that the sequence $(-a_n)$ is positively bounded away from zero. But this sequence represents $-x$.

Conversely, if $-x = LIM_{n \to \infty} -a_n$ for some sequence $(b_n)$ positively bounded away from zero, then $(a_n)$ must be negatively bounded away from zero since $-(-a_k) = a_k$ for all $k$.

## Positive reals closed under addition and multiplication
If $x$ and $y$ are positive reals, then $x+y$ and $xy$ are positive too.

*Proof:* If $x = LIM_{n \to \infty} a_n$ and $y = LIM_{n \to \infty} b_n$ and $x$ and $y$ are positive, then $(a_n)$ and $(b_n)$ are both positively bounded away from zero, so there are $c, d > 0$ such that $a_n > c$ and $b_n > d$ for all $n$. So $a_n + b_n > c + d$ for all $n$, and also $a_n b_n > c d$.

## Multiplication by zero annihilates everything
For all $x \in \mathbb{R}$, $0x = 0$.

*Proof:* By the field properties, $0x = (0 + 0)x = 0x + 0x$, so adding $-(0x)$ to both sides we obtain the result. 


## Remark on consistency of positive/negative between $\mathbb{Q}$ and $\mathbb{R}$
For any rational number $q$, we have that $q$ is positive as a real iff $q$ is positive as a rational, since the sequence defined by $a_n = q$ is positively bounded away from zero. Similarly, $q$ is negative as a real iff $q$ is negative as a rational


## Limit of harmonic series
$0 = LIM_{n \to \infty} 1/n

*Proof:* We must prove that for all $\epsilon > 0$ there is a positive int $N$ such that $|1/N| \leq \epsilon$. But we can find an $N$ such that $0 < 1/N < \epsilon$, and $|1/N| = 1/N$, so it proves it.


## Definition of absolute value in $\mathbb{R}
For all $x \in \mathbb{R}$, define $|x|$ by $x$ if $x$ is positive or $0$ and $-x$ if $x$ is negative.

## Definition of order in $\mathbb{R}$
We write $x > y$ iff $x - y$ is positive, $x < y$ iff $x - y$ is negative, $x \geq y$ if $x > y$ or $x = y$, and $x \leq y$ iff $x < y$ or $x = y$.


## Order properties in $\mathbb{R}$
For any $x, y, z \in \mathbb{R}$, we have:

 - Exactly one of these holds: a) $x < y$, b) $x = y$, c) $x > y$.
 - $x < y$ iff $y > x$.
 - If $x < y$ and $y < z$ then $x < z$.
 - if $x < y$ then $x + z < y + z$
 - if $x < y$ and $z$ is positive, then $xz < yz$.

 1. Exactly one of these holds: a) $x < y$, b) $x = y$, c) $x > y$.

    *Proof:* By the trichotomy of reals, $x - y$ is either negative, zero or positive, which correspond to (a), (b) and (c), respectively.

 2. $x < y$ iff $y > x$.

    *Proof:* $x < y$ iff $x - y$ is negative iff $-(x - y)$ is positive. $y > x$ iff $y - x$ is positive. But $y - x = -(x - y)$, so the statement is proved.

 3. If $x < y$ and $y < z$ then $x < z$.

    *Proof:* By hypothesis and (2), $y - x$ and $z - y$ are positive, so $(z - y) + (y - x) = z - x$ is positive.

 4. if $x < y$ then $x + z < y + z$

    *Proof:* $x < y$ means $y - x$ is positive by (2), so $(y+z) - (x + z) = (y - x)$ is positive.

 5. if $x < y$ and $z$ is positive, then $xz < yz$.

    *Proof:* We must prove $yz - xz$ is positive, but we know $y - x$ is positive (by (2)) and thus $(y - x)z$ is positive also since positive reals are closed under multiplication.


## Reciprocals of positive reals
If $x, y \in \mathbb{R}$ are positive, then 

 - $x^{-1}$ is positive.
 - If $y < x$, then $x^{-1} < y^{-1}$

*Proof:* First, $x^{-1} \neq 0$, since $x^{-1}$ would imply $1 = 0$. So $x^{-1}$ is either positive or negative. If negative, then $(-x^{-1})x$ must be positive since $-x^{-1}$ is positive and the positives are closed under multiplication. But $(-x^{-1} x = -(x^{-1} x) = -1$, which is obviously negative. So $x^{-1}$ could only be positive.

For the second statement, $xy$ must be positive since both $x$ and $y$ are, and also $x-y$ is positive. By the first statement, we must have $(xy)^{-1}$ positive as well, hence $(x-y)(xy)^{-1}$ is positive. But $(xy)^{-1} = x^{-1} y^{-1}$, so $(x-y)(xy)^{-1} = xx^{-1}y^{-1} - yx^{-1}y^{-1} = y^{-1} - x^{-1}$ is positive, proving the statement.


## The non-negative reals are closed
If $(a_n)$ is a cauchy sequence of non-negative rational numbers, then $x = LIM_{n \to \infty} a_n$ is a non-negative real.

*Proof:* if $x$ is negative, then $x = LIM_{n \to \infty} b_n$ for some Cauchy sequence bounded negatively away from zero $(b_n)$ by some $(-c) < 0$. This means that $(a_n)$ and $(b_n)$ must be equivalent. So for all $n$, $a_n \geq 0$ and $b_n \leq -c$ and $a_n \geq 0$. Now, we have $a_n - b_n = a_n + c - c - b_n$. $(-c -b_n)$ is positive by hypothesis, so $a_n - b_n$ is positive. We also have $a_n - b_n \geq a_n + c \geq c$.  Hence $|a_n - b_n| \geq c$. So $(a_n)$ and $(b_n)$ are never $\epsilon$-close for any $\epsilon < c$.

### Corollary
If $(a_n)$ and $(b_n)$ are Cauchy sequences such that $a_n \geq b_n$ for all $n \in \mathbb{N}$, then $LIM_{n \to \infty} a_n \geq LIM_{n \to \infty}$.

*Proof:* $(a_n - b_n)$ is a Cauchy sequence of non-negative rationals, so by the previous proposition $LIM_{n \to \infty} a_n \geq LIM_{n \to \infty}$ is positive, which proves the statement.

## Definition of distance in $\mathbb{R}$
We define $d(x,y)$ for $x, y \in \mathbb{R}$ by $d(x,y) = |x - y|$.

## Facts about absolute value and distance in \mathbb{R}
For any $x, y, z \in \mathbb{R}$,

 - $|x| \geq 0$, and $|x| = 0$ iff $x = 0$
 - $-|x| \leq x \leq |x|$
 - $|x + y| \leq |x| + |y|
 - $-y \leq x \leq y$ iff $y \geq |x|$.
 - $|xy| = |x| |y|$
 - $|-x| = |x|$
 - $d(x,y) \geq 0$ and $d(x,y) = 0$ iff $x = y$
 - $d(x,y) = d(y, x)$
 - $d(x,z) \leq d(x,y) + d(y,z)$

*Proof:* These all hold by proofs identical to those for $\mathbb{Q}$, since $\mathbb{R}$ obeys all of the algebraic and order properties that $\mathbb{Q}$ did, including the trichotomy laws. Also, absolute value is defined in exactly the same way.

For $x,y,z,w \in \mathbb{R}$

 - $x = y$ iff $\forall \epsilon > 0$, $x is $\epsilon$-close to $y$.
 - for all $\epsilon > 0$ if $x$ is $\epsilon$-close to $y$, then $y is $\epsilon$-close to $x$
 - if $x$ is $\epsilon$-close to $y$ and $y$ is $\delta$-close to $z$ for $\epsilon, \delta > 0$, then $x$ is $(\epsilon+\delta)$-close to $z$.
 - for $\epsilon, \delta > 0$, if $x$ and $y$ are $\epsilon$-close and $z$ and $w$ are $\delta$-close, then $x+z$ and $y+w$ are $(\epsilon+\delta)$-close, as are $(x-z)$ and $(y-w)$
 - for $\epsilon > 0$, if $x$ and $y$ are $\epsilon$-close, then they are also $\eta$-close for every $\eta > \epsilon$.
 - for $\epsilon > 0$, if $y$ and $z$ are both $\epsilon$-close to $x$ and $y \leq w \leq z$ or $z \leq w \leq y$, then $w$ is $\epsilon$-close to $x$.
 - for $\epsilon > 0$, if $x$ and $y$ are $\epsilon$-close and $z \new 0$, then $xz$ and $yz$ are $\epsilon |z|$-close.
 - for $\epsilon, \delta > 0$, if $x$ and $y$ are $\epsilon$-close, and $z$ and $w $ are $\delta$ close, then $xz$ and $yw$ are $(\epsilon |z| + \delta |x| + \epsilon \delta)$-close.

*Proof:* These all carry over from the case for $\mathbb{Q}$ because $\epsilon$-closeness in $\mathbb{R}$ is defined componentwise, and they hold for each component (since the components are rationals).


## Bounding of reals by rationals
If $x \in \mathbb{R}$ is positive, then there exists an $n \in \mathbb{N}$ such that $x \leq n$.

*Proof:* By hypothesis $x = LIM_{n \to \infty} a_n$ for some sequence $(a_n)$ bounded positively away from zero. $(a_n)$ is cauchy, so it's bounded, hence for all $n \in \mathbb{N}$, $a_n \leq B$ for some positive rational $B$. An early proposition on the rationals proves there is some natural $n$ for which $B \leq n$. This proves that $x \leq n$.

### Corollary
If $x \in \mathbb{R}$ is positive, there exists an $n \in \mathbb{N}$ such that $1/n < x$.

*Proof:* $1/x$ is also positive, so we can find an $n$ such that $1/x \leq n$, so $1/x < n + 1$. Now by a previous proposition, we have $1/(n+1) < x$.

## Archimedean property
If $x, \epsilon$ are positive reals, then $\exists m \in \mathbb{N}$ such that $m \epsilon > x$.

*Proof:* $1 / \epsilon$ is a valid number since $\epsilon > 0$, so apply the previous proposition to $x / \epsilon$ to obtain the desired $m$.


## Rationals are dense in $\mathbb{R}$
For all reals $x, y$ such that $x < y$, there is a rational $q$ such that $x < q < y$.

 1. Case $x$ positive

    *Proof:* We can find an $n \in \mathbb{N}$ such that $1/n < (y - x)$. Since $x$ is positive, we can apply the Archimedean property to find an $m \in \mathbb{N}$ such that $m/n > x$. So the set $\{k \in \mathbb{N} : k/n > x\}$ is a non-empty subset of $\mathbb{N}$, hence the well-ordering principle applies and we can find the smallest element $j$ in that set. This means that $(j-1)/n \leq x$, which implies $j \leq x + 1/n < y$ since $1/n < (y-x)$ by hypothesis. 

 2. Case $x = 0$

    *Proof:* $1/n$ works. 

 3. Case $x$ negative

    *Proof:* If $y > 0$, we can find $1/n < y$ by a previous proposition, so that works. Now assume $y \leq 0$. We must have $|y| < |x|$, so we can find a rational $r$ such that $|y| < r < |x|$. This implies $x = -|x| < -r$ and $-r < -|y| = y$.


## Reals have integer parts
For every real $x$ there is an integer $z$ such that $z \leq x < z + 1$.

 1. Case $x = 0$

    *Proof:* $z = 0$ works. 

 2. Case $x$ is positive

    *Proof:* We can find an $n \in \mathbb{N}$ such that $x < n$ by the Archimedean property, so form the set of all naturals bigger than $x$ and take the smallest one (which is possible by the well-ordering principle). Say $j$ is the smallest, so $j - 1 \leq x < j$.

 3. Case $x$ is negative

    *Proof:* We apply (2) to $-x$ to find an $n$ such that $n \leq -x < n + 1$, which implies $-(n+1) < x \leq -n$. If $x = -n$, then that is our integer, otherwise $-n - 1$ is.

## Some important properties
### $\epsilon$-balls
For any reals $x$ and $y$ and real $\epsilon > 0$, $|x - y| < \epsilon$ iff $y - \epsilon < x < y + \epsilon$ and $|x - y| \leq \epsilon$ iff $y - \epsilon \leq x \leq y + \epsilon$.

 1. $|x - y| \leq \epsilon$ iff $y - \epsilon \leq x \leq y + \epsilon$
    *Proof:* $|x -y| \leq \epsilon$ iff $- \epsilon \leq x - y \leq \epsilon$  holds immediately from properties of the absolute value, and the latter is true iff $y - \epsilon \leq x \leq y + \epsilon$, which proves the statement. 


 2. $|x - y| = \epsilon$, iff either $x = y + \epsilon$ or $x = y - \epsilon$. 
    *Proof:* $|x - y| = \epsilon$, iff either $x - y = \epsilon$ or $y - x = \epsilon$.  The statement holds by rearrangement of the latter.

 3. $|x - y| < \epsilon$ iff $y - \epsilon < x < y + \epsilon$

    *Proof:* If $|x - y| < \epsilon$, we do not have $|x - y| = \epsilon$, so we could not have either $x = y + \epsilon$ or $x = y - \epsilon$, by (2). So by (1) we must have $x > y - \epsilon$ and $x < y + \epsilon$. The converse holds for similar reasons.


### A tool for proving equality
For any reals $x$ and $y$, $x \leq y$ iff $x \leq y + \epsilon$ for all $\epsilon > 0$ and $x = y$ iff $|x - y| \leq \epsilon$ for all $\epsilon > 0$.

*Proof:* If $x \leq y$, then for any $\epsilon > 0$, $y - x + \epsilon$ is positive as well, so $x \leq y + \epsilon$. Conversely, if $x > y$, $x - y$ is positive, so $ for $\epsilon$ such that $0 < \epsilon < x - y$, we have $y + \epsilon < x$.

For the second statement, $x = y$ clearly implies $|x - y| = 0 \leq \epsilon$ for any positive $\epsilon. Conversely, if $|x - y| \leq \epsilon$ for all $\epsilon  > 0$, we could not have $x \neq y$, since that would imply by the trichotomy law that either $x > y$ or $x < y$. In either case, $|x - y|$ would be positive, so there would be some $\epsilon$ which $|x-y|$ was greater than (we could at least find an $n \in \mathbb{N}$ such that $1\n < |x - y|$.


## Limit of a sequence with each term greater than or equal to
If $(a_n)$ is a Cauchy sequence and $x \in \mathbb{R}$ and for all $n$, $a_n \geq x$, then $x \leq LIM_{n \to \infty} a_n$.

*Proof:* Let $y = LIM_{n \to \infty} a_n$ and assume $x > y$. Then we can find some rational $q$ with $x > q > y$ because the rationals are dense in the reals. So $a_n > q$ for all $n$. However, we also have $q > y$, so $LIM_{n \to \infty} q - LIM_{n \to \infty} a_n$ is positive, which means the sequence $(q - a_n)_{n = 0}^{\infty}$ is equivalent to some sequence $(z_n)$ which is positively bounded away from zero by some $c > 0$.

So we have some $N$ such that $|q - a_n - z_n| \leq c/2$ for all $n \geq N$, implying that $(q - a_n) > 0$ for all $n \geq N$ since $z_k \geq c$ for all $k$.

We've just proven that for all $n \geq N$, we have both $q > a_n$ and $a_n > q$.

### Corollary

If $(a_n)$ is a Cauchy sequence and $x \in \mathbb{R}$ and for all $n$, $a_n \leq x$, then $x \geq LIM_{n \to \infty} a_n$.

*Proof:* Apply the previous proposition to $(-a_n)$ and $-x$ and use properties of inequalities and negation.


## Definition of an upper bound
A subset $S \subseteq \mathbb{R}$ has an **upper bound** $b \in \mathbb{R}$ if for all $x \in S$, we have $x \leq b$.

## Definition of a least upper bound
An real number $b \in \mathbb{R}$ is said to be a **least upper bound** for a set $S$ if

 - $b$ is an upper bound for $S$
 - If $c$ is an upper bound for $S$, $b \leq c$


## Least upper bounds, if they exist, are unique
If $b$ and $c$ are least upper bounds for a set $S$, then $b = c$.

*Proof:* By the definition we have $b \leq c$ and $c \leq b$, so neither $b < c$ nor $c < b$ could be true.

## The empty set has no least upper bound
$\emptyset$ has an upper bound, but no least upper bound

*Proof:* Any $x \in \mathbb{R}$ is vacuously an upper bound for $\emptyset$, so there could be no least upper bound: For any upper bound $x$, $x - 1$ is also an upper bound.


## Non-empty sets in $\mathbb{R}$ that are bounded above have least upper bounds
If $S$ is a non-empty subset of $\mathbb{R}$ and $S$ has some upper bound, then $S$ has exactly one least upper bound.

*Proof:* Uniqueness of the least upper bound is established by a previous proposition.

# The least upper bound property
If $S \subseteq \mathbb{R}$ is non-empty and bounded above, then it must have a unique least upper bound.

 1. It suffices to assume $S \neq \emptyset$ is a subset of $\mathbb{R}$, that for all $x \in S$ we have $x \leq M$ for some $M \in \mathbb{R}$, and prove that $S$ has a least upper bound.

    *Proof:* Previous proposition proves that least upper bounds are unique.

 2. If $n \in \mathbb{N}^+$ and $L, K \in \mathbb{Z}$ with $L < K$, then if $K / n$ is an upper bound for $S$ and $L/n$ isn't, there must exist some $m \in \mathbb{Z}$ such that $L < m \leq K$ and $m/n$ is an upper bound for $S$ but $(m-1)/n$ is not.

    1. It suffices to assume that no such $m$ exists and derive a contradiction.

    2. $K/n$ is an upper bound for $S$.

       *Proof:* By hypothesis.

    3. If $j \in \mathbb{N}$ and $L < (K - j) \leq K$, then if $(K-j)/n$ is an upper bound for $S$, then $(K -(j+1))/n$ is also an upper bound for $S$

       *Proof:* If $L < (K - j) \leq K$, then supposing $(K-j)/n$ is an upper bound for $S$, we must also have $(K - (j+1))/n$ as an upper bound for $S$, since this failing to be true would mean we have an integer $(K-j)$ such that $(K-j)/n$ is an upper bound but $(K - j - 1)/n$ is not an upper bound, and we supposed that there is no such integer.

    
    4. For all $j \in \mathbb{N}$, either $(K-j) \leq L$ or ($L < (K - j)$ and $(K - j)/n$ is an upper bound for $S$).

      *Proof:* (2) establishes that it's true for $j = 0$. If it's true for $j$, so either $(K - (j + 1)) \leq L$ or $(K - (j + 1)) > L$. In the case of the latter, we have $(K-j) > L$ obviously, so by the induction hypothesis $(K-j)/n$ is an upper bound for $S$, and by (3) $(K -(j + 1))/n$ is an upper bound for $S$ as well.

    5. Q.E.D.

       *Proof:* By (4) we have, for $j = K - L - 1$, $K - j = L + 1 > L$, so $(L+1)/n$ is an upper bound for $S$. By (3) we must have $L/n$ also an upper bound for $S$, contradicting the assumption that $L/n$ isn't an upper bound.

 3. If $n \in \mathbb{N}^+$, and $\alpha$ and $\beta$ are integers such that $\alpha / n$ and $\beta / n$ are upper bounds for $S$ and such that $(\alpha - 1)/n$ and $(\beta - 1)/n$ are not upper bounds for $S$, then $\alpha = \beta$.

    *Proof:* If $\alpha \neq \beta$, we may assume without loss of generality that $\alpha < \beta$, then $\alpha + 1 \leq \beta$, so $\alpha \leq \beta - 1$. But by hypothesis $\beta - 1$ is not an upper bound, so $\alpha$ could not be either, contradicting our hypothesis.

 4. There exists an $s \in S$.

    *Proof:* $S$ is non-empty by hypothesis

 5. For each $n \in \mathbb{N}^+$, there exists a $K \in \mathbb{Z}$ such that $K/n > M$.

    *Proof:* If $M$ is positive, we can directly use the Archimedean property. If $M \leq 0$, $K = 1$ works.

 6. For each $n \in \mathbb{N}^+$, there exists a $L \in \mathbb{Z}$ such that $L/n < s$.

    *Proof:* If $sn$ is not an integer, then we can use $L = \lfloor sn \rfloor$. If $sn$ is an integer, use $L = \lfloor sn \rfloor - 1$.

 7. For each $n \in \mathbb{N}^+$, there is a unique $m_n \in \mathbb{Z}$ such that $L < m_n < K$ and $m_n / n$ is an upper bound for $S$, but $(m_n - 1)/n$ is not an upper bound for $S$.

    *Proof:* The $K$ and $L$ in (5) and (6) allow us to apply (2) to find some $m_n$ since $K/n$ is an upper bound and $L/n$ is not. The $m_n$ is unique by (3).

 8. The sequence $(a_n)$ defined by $a_n = m_n / n$ for positive $n$ is a Cauchy sequence.

    1. For any positive ints $n$ and $k$, we have $- \frac{1}{k} < \frac{a_n}{n} - \frac{a_k}{k} < \frac{1}{n}$.

      *Proof:* $\frac{m_k}{k}$ and $\frac{m_n}{n}$ are both upper bounds for $S$, but $\frac{m_k - 1}{k}$ and $\frac{m_n - 1}{n}$ are not. So $\frac{m_n}{n} > \frac{m_k - 1}{k}$, which is the same as saying $\frac{m_n}{n} - \frac{m_k}{k} > - \frac{1}{k}$. The same logic applied to $\frac{m_k}{k}$ and $\frac{m_n - 1}{n}$ yields $\frac{m_n}{n} - \frac{m_k}{k} < \frac{1}{n}$. So $- \frac{1}{k} < \frac{m_n}{n} - \frac{m_k}{k} < \frac{1}{n}$.

    2. If $N, k, n$ are positive ints and $n, k \geq N$, then $-frac{1}{N} \leq \frac{a_n}{n} - \frac{a_k}{k} \leq \frac{1}{N}$

       *Proof:* Noting that by hypothesis, $\frac{1}{n} \leq \frac{1}{N}$ and $- \frac{1}{N} \leq - \frac{1}{k}$ the result is established by using (1).

    3. Q.E.D.
    
       *Proof:* For $\epsilon > 0$, we can find a positive integer $N$ such that $\frac{1}{N} \leq \epsilon$, which by (2) implies that $|\frac{a_n}{n} - \frac{a_k}{k}| \leq \frac{1}{N} \leq \epsilon$ for all $n, k \geq N$. So the sequence is Cauchy.

 9. Define $L = LIM_{n \to \infty} \frac{a_n}{n}$.

    *Proof:* This is valid by (8)

 10. $L = LIM_{n \to \infty} \frac{a_n - 1}{n}$.

     *Proof:* $S = LIM_{n \to \infty} \frac{a_n - 1}{n} + LIM_{n \to \infty} \frac{1}{n} = LIM_{n \to \infty} \frac{a_n - 1}{n} + 0$ since the limit of $(1/n)_{n \geq 1}$ is $0$.

 11. $L$ is an upper bound for $S$

     *Proof:* For any $x \in S$, we have $\frac{m_n}{n} \geq x$ for all $n \geq 1$, so by a previous proposition $L$ is an upper bound for $S$.

 12. $L$ is a least upper bound for $S$.

     *Proof:* If $u$ is an upper bound for $S$, then for all $n$, we have $\frac{m_n - 1}{n} \leq u$, where the inequality holds because each $\frac{m_n - 1}{n}$ is not an upper bound of $S$. We can apply a previous proposition to obtain $L \leq u$, since $L = LIM_{n \to \infty} \frac{m_n - 1}{n}$ by (10).

 13. Q.E.D.

     *Proof:* (12) proves what we set out to establish.

## Definition of supremum
The **supremum** of a non-empty set bounded above by some real is the least upper bound, which the last theorem proves exists. We notate this, for any such set $S$, as $sup S$. For a non-empty set $X$ not bounded above, we write $sup X = + \infty$. If $Y$ is empty, we write it $sup Y = - \infty$.

## I can has square root of two
There is a real number $x$ such that $x^2 = 2$.

*Proof:* Consider the set $S = \{x \in \mathbb{R} : x^2 < 2\}$. Then $1^2 = 1 < 2$, and $2^2 = 4 > 2$, so $S$ is non-empty and bounded above, and thus $c = sup S$ is a real number. We must have $2 \geq c \geq 1$. 

For any $\epsilon \in \mathbb{R}$, $0 < \epsilon < 1$, we have 

$$(c + \epsilon)^2 = c^2 + 2 \epsilon c + \epsilon^2 = c^2 + \epsilon (2c + \epsilon)$$ 

Also, 

$$(c - \epsilon)^2 = c^2 - 2 \epsilon c + \epsilon^2 = c^2 + \epsilon (-2c + \epsilon)$$

Since $1 \leq c \leq 2$, we have

$$(c + \epsilon)^2 \leq c^2 + 5 \epsilon$$

and 

$$(c - \epsilon)^2 \geq c^2 - 2 \epsilon$$

If $c^2 < 2$, then $2 - c^2$ is positive, so $0 < \frac{2 - c^2}{10} < 1$. So letting $\epsilon = \frac{2 - c^2}{10}$, we obtain (by the above) $(c + \epsilon)^2 \leq c^2 + \frac{2 - c^2}{2} = \frac{2 + c^2}{2}$, which is both greater than $c^2$ and less than $2$. So $c$ could not be an upper bound for $S$, because $c + \epsilon$ is in $S$ and is greater than $c$.

If $c^2 > 2$, then $(c^2 - 2$ is positive, so $0 < \frac{c^2 - 2}{4} < 1$. So letting $\epsilon = \frac{c^2 - 2}{4}$, we obtain $(c - \epsilon)^2 \leq c^2 - \frac{c^2 - 2}{2} = \frac{2 + c^2}{2}$, which is both greater than $2$ and less than $c^2$. We have that for all $x \in S$, $(c+\epsilon)^2 > x^2$. If $c - \epsilon < x$, then $(c - \epsilon)^2 < x^2$ which contradicts what we just proved. So we must have $c - \epsilon > x$, or that $c - \epsilon$ is an upper bound of $S$, so $c$ could not be a least upper bound for $S$.

## Infimums exist
If $S$ is non-empty and bounded below, then it has a greatest lower bound, called the **infimum** of $S$.

*Proof:* Form the set $T$ by negating all elements of $S$. Then for all $x \in S$, we have some $c$ such that $c \leq x$, so for all $y \in T$, $-c \geq y$ since $y = -x$ for some $x \in S$. So $-c$ is an upper bound for the non-empty set $T$, and it thus has a least upper bound $L$. This implies not only that $-L$ is a lower bound for $S$, but that it must be the greatest lower bound since any greater lower bound $d$ would lead to $-d$ being an upper bound of $T$ that is smaller than $L$.


## Real exponentiation (by naturals)
For any $x \in \mathbb{R}$ we define $x^0 = 1$ and, for any natural $n$, $x^n = x^{n-1} x$. 

## Facts about natural exponentiation
For any $x, y \in \mathbb{R}$ and $n,m \in \mathbb{N}$

 - $x^n x^m = x^{n+m}$ and $(x^n)^m = x^{nm}$
 - $(xy)^n = x^n y^n$
 - For all $n \neq 0$, $x^n = 0$ iff $x = 0$
 - If $0 \leq y \leq x$ then $0 \leq y^n \leq x^n$. If $0 \leq y < x$ and $n > 0$, then $0 \leq y^n < x^n$
 - |x^n| = |x|^n

*Proof:* These properties were proved for the rationals. The same proofs that were used then work for the reals, since the reals obey the same algebraic and order properties.

## Real exponentiation by integers
For any non-zero $y \in \mathbb{R}$ and integer $z$, if $z$ is natural then $y^z$ has already been defined. If $z$ is a negative integer, define $y^z = 1 / y^{-z}$.


## Facts about integer exponentiation
For any $x, y \in \mathbb{R}$ with $x \neq 0 \neq y$, and $n,m \in \mathbb{Z}$

 - $x^n x^m = x^{n+m}$ and $(x^n)^m = x^{nm}$
 - $(xy)^n = x^n y^n$
 - If $0 \leq y \leq x$ then $0 \leq y^n \leq x^n$ if $n$ is positive and $0 \leq x^n \leq y^n$ if $n$ is negative.
 - |x^n| = |x|^n

*Proof:* These properties were proved for the rationals. The same proofs that were used then work for the reals, since the reals obey the same algebraic and order properties.


## $n$-th roots of reals
We define for positive real $x$ and positive integer $n$ the quantity $x^{1/n}$ by

$$x^{1/n} := sup \{y \in \mathbb{R} : y \geq 0, y^n \leq x \}$$


### $n$-rooths exist for every positive real
The set $S = \{y \in \mathbb{R} : y \geq 0, y^n \leq x\}$ is non-empty and bounded above for every positive real $x$.

*Proof:* The set is non-empty since $0$ is in the set, which we know because $0^n = 0$ and because $x$ is positive. 

To prove it is bounded above because, consider cases $x \leq 1$ and $x > 1$. For $x \leq 1$, any $y \in S$ must have $y^n \leq x \leq 1$, so $1$ is an upper bound on $S$. For $x > 1$, we can prove by induction that $x^m > x$ for all positive integers $m$. So if some $y \in S$ is such that $y > x$, then we have $y^n > x^n > x$, a contradiction.

## Lemma for the $n$-th root sets
If $x$ is positive real, $n$ is a positive int, and $y > x$, then $y$ is an upper bound for $S = \{ z \in \mathbb{R} : z \geq 0, z^n \leq x\}$.

*Proof:* If not, then some $z \in S$ has $z > y$, so $z^n > y^n$ by order properties of $\mathbb{R}$, but $y^n > x^n$ by hypothesis, so $z \notin S$ after all, which is a contradiction.


## Facts about $n$-th roots
If $x, y \in \mathbb{R}$ are both positive and $n$ and $m$ are positive integers, then

 - $y = x^{1/n}$ iff $y^n = x$
 - $x^{1/n}$ is a positive real
 - $x > y$ iff $x^{1/n} > y^{1/n}$
 - $x > 1$ implies $f(k) := x^{1/k}$ is a decreasing function, $x < 1$ implies $f$ is an increasing function, and $x = 1$ implies $f(k) = 1$ for all $k$.
 - $(xy)^{1/n} = x^{1/n} y^{1/n}$
 - $(x^{1/n})^{1/m} = x^{1/nm}$

 1. $y = x^{1/n}$ implies $y^n = x$

    1. It suffices to prove that $y^n < x$ and $y^n > x$ are both impossible. 

       *Proof:* Once both are established to be impossible, $y^n = x$ is the only remaining option by trichotomy.

    2. $y^n < x$ is impossible

       *Proof:* For any $\epsilon \in \mathbb{R}$ with $0 < \epsilon < 1$, we have 

       $$(y + \epsilon)^n = y^n + \sum_1^n {n \choose k} y^{n-k} \epsilon^k < y^n + \epsilon ( \sum_1^n {n \choose k} y^{n-k} )$$

        where the inequality holds because for all positive integers $k$, \epsilon^k < \epsilon$, due to the fact that $0 < \epsilon < k$. We can pick an \epsilon such that

        $$ \epsilon ( \sum_1^n {n \choose k} y^{n-k} ) < x$$

        since $y^n < x$ by hypothesis. Such an $\epsilon$ furnishes us with a real number $y + \epsilon$ which is greater than $y$, but such that $(y + \epsilon)^n < x$, so $y + \epsilon$ is in $S$. This proves $y$ is not an upper bound for $S$, which contradicts our assumption.

    3. $y^n > x$ is impossible

       *Proof:* For any $\epsilon \in \mathbb{R}$ with $0 < \epsilon < 1$, we have 

       $$(y - \epsilon)^n = y^n + \sum_1^n {n \choose k} y^{n-k} (-1)^k \epsilon^k$$

       Now let $A = \sum_1^n {n \choose k} y^{n-k} (-1)^k \epsilon^k - \sum_1^{\lfloor n/2 \rfloor} {n \choose k} y^{n-2k} \epsilon^{2k}$. $A$ is the sum of all the negative terms ${n \choose k} y^{n-k} (-1)^k \epsilon^k$, i.e. those terms for which $k$ is odd. Since $-\epsilon < - \epsilon^k$ for positive ints $k$, we have that

       $$(y - \epsilon)^n > y^n - \epsilon (\sum_1^{\lfloor n/2 \rfloor} {n \choose k} y^{n-k} )$$

       Similar to the previous case, we have $y^n > x$ and so can pick $\epsilon$ such that $(y - \epsilon)^n > x$. So $(y - \epsilon)^n$ is an upper bound for $S$ (if not, some element $w \in S$ would be bigger, and hence $w^n$ would be bigger than $x$, contrary to the definition of $S$). This contradicts $y$'s status as the least upper bound.

    4. Q.E.D.

       *Proof:* (2) and (3) complete the proof.

 2. $y^n = x$ implies y = x^{1/n}$

    *Proof:* Since $y^n = x$, then $y \in \{z \in \mathbb{R} : z \geq 0, z^n \leq x\}$. If $z^n \leq x$, then $y < z$ implies $y^n < z^n$ since both $y$ and $z$ are positive, which implies $z$ isn't in the set that we assumed it was in. So $y$  must be an upper bound. Also, every upper bound is $\geq y$ by definition, so it's the least upper bound.

 3. $x^{1/n}$ is a positive real

    *Proof:* By the very definition of $x^{1/n}$, it is non-negative. We only defined $n$-th roots of positive reals, so for $0$ to the supremum of the $n$-th root set, we must have for all $\epsilon > 0$, $\epsilon^n > x$. In particular, $1 > x$, and for all $\epsilon$ such that $0 < \epsilon < 1$, $\epsilon > x$ since $ $\epsilon > \epsilon^n$. In other words, for all $\epsilon > 0$, we have $\epsilon > x$. So $x$ must be zero, contradicting our assumption that $x$ is positive.

 4. $x > y$ iff $x^{1/n} > y^{1/n}$
    
    *Proof:* By (1), $(x^{1/n})^n = x$ and $(y^{1/n})^n = y$, so $x^{1/n} > y^{1/n}$ implies that $x  > y$, $x^{1/n} = y^{1/n}$ implies $x = y$, and $x^{1/n} < y^{1/n}$ implies $x < y$, all by (3) and by basic order properties.

 5. $x > 1$ implies $f(k) := x^{1/k}$ is a decreasing function, $x < 1$ implies $f$ is an increasing function, and $x = 1$ implies $f(k) = 1$ for all $k$.

    *Proof:* We have, for any positive integer $n$,:

      - $x^{1/n} > 1$ implies $x > 1$
      - $x^{1/n} = 1$ implies $x = 1$
      - $x^{1/n} < 1$ implies $x < 1$

    which all hold by (1). By trichotomy, the other directions of implication hold as well. 

    The above proves what we set out to prove for $x = 1$. We now consider the remaining two cases.

    For any positive ints $j$ and $k$ with $j < k$, we have $k - j$ is a positive integer too and

    $$(x^{1/j})^k = x (x^{1/j})^{k - j}$$

    If $x > 1$, then $x^{1/n} > 1$ for all positive integers $n$. Furthermore, if $x^{1/j} < $x^{1/k}$, then $x (x^{1/j})^{k-j} < x$, and since $x$ is positive we have $(x^{1/j})^{k-j} < 1$, which contradicts the fact that $x^{1/j} > 1$. If $x^{1/j} = x^{1/k}$, then $(x^{1/j})^{k - j} = 1$, another contradiction. So we must have $x^{1/j} > x^{1/k}$.

    Finally, if $x < 1$, then $x^{1/n} < 1$ for all positive integers $n$. Furthermore, if $x^{1/j} > $x^{1/k}$, then $x (x^{1/j})^{k-j} > x$, and since $x$ is positive we have $(x^{1/j})^{k-j} > 1$, which contradicts the fact that $x^{1/j} < 1$. If $x^{1/j} = x^{1/k}$, then $(x^{1/j})^{k - j} = 1$, another contradiction. So we must have $x^{1/j} < x^{1/k}$.


 6. $(xy)^{1/n} = x^{1/n} y^{1/n}$

    *Proof:* $(x^{1/n} y^{1/n})^n = (x^{1/n})^n (y^{1/n})^n = x y$ by (1), so $(xy)^{1/n} = x^{1/n} y^{1/n}$ by (2).

 7. $(x^{1/n})^{1/m} = x^{1/nm}$

    *Proof:* We can establish this result by proving that $((x^{1/n})^{1/m})^{nm} = x$. (2) then gives the desired statement. But

    $$ ((x^{1/n})^{1/m})^{nm} = (((x^{1/n})^{1/m})^m)^n$$

    by commutativity and basic properties of exponentiation, which is equal to $x$ by (1) (applied two different times).


## Definition of rational exponents
If $x > 0$ is real and $q \in \mathbb{Q}$, we define $x^q$ by obtaining integers $a, b$, with $b > 0$, such that $q = a / b$, and then defining

$$x^q := (x^{1/b})^a$$

### Rational exponentiation is well-defined
Our definition of exponentiation by a rational number depends on choice for representation, so we must prove that the result is the same for all choices. I.e. if $q = a/b = c/d$ for positive ints $b$ and $d$ and integers $a$ and $c$, then 

$$(x^{1/b})^a = (x^{1/d})^c$$

*Proof:* If $a = 0$, then $c = 0$ as well since we have $ad = 0 = cb$ and $b /neq 0$. The equation holds in this case since both sides are $1$. 

If $a > 0$, $ad = bc$ and $ad$ is positive since $d$ is, so $cb$ is positive. But $b$ is positive, so $c$ must be positive as well. Let $y = x^{1/ad} = x^{1/bc}$. Then by previously proved facts we have $y = (x^{1/d})^{1/a} = (x^{1/b})^{1/c}$, so we also have $y^a = x^{1/d}$ and $y^c = x^{1/b}$. So $(x^{1/b})^a = (y^c)^a = y^{ca}$ and $(x^{1/d})^c = (y^a)^c = y^{ac}$. But $y^{ca} = y^{ac}$.

Finally, if $a < 0$, we have that $(-a)/b = (-c)/d$, so we apply the case just proved to obtain $(x^{1/b})^{-a} = (x^{1/d})^{-c}$. We can take the reciprocal of both sides to obtain the statement.


## Facts about exponentiation by rationals
If $x, y$ positive reals and $q, r$ rationals, then

 - $x^q$ is a positive real
 - $x^{q+r} = x^q x^r$ and $(x^q)^r = x^{qr}$
 - $x^{-q} = 1/x^q$
 - if $q > 0$ then $x > y$ iff $x^q > y^q$
 - if $x > 1, then ($x^q > x^r$ iff $q > r$). If $x < 1$, then ($x^q > x^r$ iff $q < r$)

 1. $x^q$ is a positive real

    *Proof:* $q = a / b$ for some integers $a$ and $b$ with $b$ positive, so by a previous proposition $x^{1/b}$ is positive. $x^q$ is $(x^{1/b})^a$, so it must be positive since the positive reals are closed under multiplication.

 2. $x^{q+r} = x^q x^r$ and $(x^q)^r = x^{qr}$

    *Proof:* We have $q = a/b$ and $r = c/d$ for integers $a, b, c, d$ with $b$ and $d$ positive. so $q+r = (ad + bc)/bd$. Hence

    $$ x^{q+r} = (x^{1/bd})^{ad + bc} = (x^{1/bd})^{ad} + $(x^{1/bd})^{bc} = x^q + x^r$$

    where the second equality holds by distributivity of integer exponents and the third equality holds because $q = ad / bd$ and $r = cb / db$.

    Also, $qr = ac / bd$. We have that

    $$(x^{1/bd})^{ad} = (x^{1/b})^a$$

    since $ad/bd = a/b$, which implies

    $$((x^{1/b})^a)^{1/d} = (x^{1/bd})^a$$

    which further implies

    $$(x^q)^r = (((x^{1/b})^a)^{1/d})^c = (x^{1/bd})^{ac} = x^{qr}$$
    
 3. $x^{-q} = 1/x^q$

    *Proof:* $q = a/b$ for some integer $a$ and positive integer $b$, so $-q = -a / b$ and $x^{-q} = (x^{1/b})^{-a} = 1 / (x^{1/b})^a$, which is precisely $1 / x^q$.

 4. if $q > 0$ then $x > y$ iff $x^q > y^q$

    *Proof:* By hypothesis $q = a / b$ for positive integers $a$ and $b$, so $x > y$ iff $x^{1/b} > y^{1/b}$ by a previous hypothesis. This implies that $(x^{1/b})^a > (y^{1/b})^a$, and conversely this latter statement implies the former.

 5. if $x > 1, then ($x^q > x^r$ iff $q > r$). If $x < 1$, then ($x^q > x^r$ iff $q < r$)

    *Proof:* We have $q = a/b$ and $r = c/d$ for integers $a, b, c, d$ with $b$ and $d$ positive. So $q = ad / bd$ and $r = bc / bd$.  

    If $x > 1$ and $n$ and $m$ are integers, then if $n > m$, we have $x^{n-m} > 1$ as well. But $x^n = x^{n-m} x^m$,so $x^n = x^{n-m} x^m > x^m$ since $x^m$ is positive  by (1). To prove the converse, we note that $n = m$ implies $x^m = x^n$ (obviously) and $n < m$ implies $x^n < x^m$, by what was already proven.

    Now we must prove that $q > r$ iff x^{1/bd})^{ad} > (x^{1/bd})^{bc}$. But $q > r$ iff $ad > bc$ iff $(x^{1/bd})^{ad} > (x^{1/bd})^{bc}$, where the second "iff" holds by the previous paragraph.

    If $x < 1$ and $n$ and $m$ are integers, then if $n < m$, we have $x^{m-n} < 1$ as well. But $x^m = x^{m-n} x^n$,so $x^m = x^{m-n} x^n < x^n$ since $x^n$ is positive  by (1). To prove the converse, we note that $n = m$ implies $x^m = x^n$ (obviously) and $n > m$ implies $x^n < x^m$, by what was already proven.

    Now we must prove that $q < r$ iff x^{1/bd})^{ad} > (x^{1/bd})^{bc}$. But $q < r$ iff $ad < bc$ iff $(x^{1/bd})^{ad} > (x^{1/bd})^{bc}$, where the second "iff" holds by the previous paragraph.

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


## Remark on consistency of positive/negative between $\mathbb{Q}$ and $\mathbb{R}$
For any rational number $q$, we have that $q$ is positive as a real iff $q$ is positive as a rational, since the sequence defined by $a_n = q$ is positively bounded away from zero. Similarly, $q$ is negative as a real iff $q$ is negative as a rational

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

*Proof:* TODO

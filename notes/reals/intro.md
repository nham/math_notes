# Axiomatic construction of $\mathbb{R}$
I've already proved all of these properties in my notes following Tao's book *Analysis I*, but an axiomatic approach to $\mathbb{R}$ is easier to remember than the messy construction of $\mathbb{R}$ by equivalence classes of Cauchy sequences of rational numbers.

## Definition of a total order
A **total order** is any partial order $\leq$ such that any two elements $x$ and $y$ are *comparable*, meaning $x \leq y$ or $y \leq x$.

We can define the "dual order" $\geq$ by $x \geq y$ iff $y \leq x$.

We can also define $<$ by $x < y$ iff $x \leq y$ and $x \neq y$, and $>$ by $x > y$ iff $x \geq y$ and $x \neq y$.

## Definition of an ordered field
An **ordered field** is any field $\mathbb{F}$ with a total order $\leq$ on $\mathbb{F}$ such that

 - $x + z > y + z$ if $x > y$ for any $z$
 - $xy > 0$ if $x > 0 and $y > 0$


## Trichotomy law for ordered fields
If $(\mathbb{F}, \leq)$ is an ordered field, then for all $x \in \mathbb{F}$, exactly one of these holds: $x > 0$, $x = 0$, $x < 0$.

*Proof:* We must have $x \leq 0$ or $x \leq 0$. In either case, one of the above is true. If $x = 0$, by definition of $<$ and $>$, we do not have $x > 0$ or $x < 0$. By contrapositive this implies that $x > 0$ implies $x \neq 0$ and $x < 0$ implies $x \neq 0$. It remains to prove $x > 0$ iff not $x < 0$. But if we have both $x > 0$ and $x < 0$, we have $x \leq 0$ and $x \geq 0$, so $x = 0$, a contradiction.

### Definition of positive and negative
$x$ is **positive** iff $x > 0$ and **negative** iff $x < 0$.

## Basic order properties
For any $x, y, z \in \mathbb{F}$ for ordered field $(\mathbb{F}, \leq)$, we have:

 1. $x > y$ iff $x - y > 0$
 2. $x > 0$ iff $-x < 0$
 3. $x > y$ and $z > 0$ implies $xz > yz$
 4. $x > y$ and $z < 0$ implies $xz < yz$
 5. $x^2 \geq 0$ and $x^2 = 0$ iff $x = 0$

*Proof:*


 1. $x > y$ iff $x - y > 0$

    *Proof:* If $x > y$, then $x - y > y - y = 0$. If $x - y > 0$, then $x - y + y = x > y$,

 2. $x > 0$ iff $-x < 0$

    *Proof:* $x = 0 - (-x)$, so by (1) we have $x = 0 - (-x) > 0$ iff $0 > -x$.

 3. $x > y$ and $z > 0$ implies $xz > yz$

    *Proof:* We know $(x - y) > 0$ by (1), so $xz - yz > 0$ by ordered field property and distributivity, so $xz > yz$.

 4. $x > y$ and $z < 0$ implies $xz < yz$

    *Proof:* We know $(x - y) > 0$ by (1) and $-z > 0$ by (2), so $yz - xz = (x - y)(-z) > 0$, hence by (1) again $yz > xz$.

 5. $x^2 \geq 0$ and $x^2 = 0$ iff $x = 0$

    *Proof:* If $x > 0$, then $x^2 > 0$. If $x < 0$, then $-x > 0$, so $x^2 = (-x)(-x) > 0$. If $x = 0$, then $x^2 = 0 0 = 0$. If $x^2 = 0$, then by the cancellation law we have $x = 0$.


## The reals
The $\mathbb{R}$ are an ordered field which obeys the **least upper bound property**: every subset of $\mathbb{R}$ bounded above has a least upper bound. It is easy to prove (or we can alternatively assume) that every non-empty subset bounded below also has a greatest lower bound. We assume that there is such an ordered field. It can apparently be proved that it is unique, but we don't really care about that.

## Definition of absolute value
We can define a function $\mathbb{R} \to \mathbb{R}$ called **absolute value**, denoted $| \cdot |$, by $|x| = x$ if $x \geq 0$ and $|x| = -x$ if $x < 0$.

## Absolute value properties
For any $x, y \in \mathbb{R}$:

 1. $|x| \geq 0$ and $|x| = 0$ iff $x = 0$
 2. $|xy| = |x| |y|$
 3. $|-x| = |x|$ 
 4. $|x| < y$ iff $-y < x < y$
 5. $-|x| \leq x \leq |x|$
 6. $|x + y| \leq |x| + |y|$
 7. $||x| - |y|| \leq |x - y|$

*Proof:*

 1. $|x| > 0$ and $|x| = 0$ iff $x = 0$

    *Proof:* If $x \geq 0$, $|x| = x \geq 0$. If $x < 0$, $-x > 0$, so $|x| = -x > 0$. If $|x| = 0$, we must have $x = 0$ or $-x = 0$. In either case, $x = 0$. Conversely, if $x = 0$. clearly $|x| = 0$.

 2. $|xy| = |x| |y|$

    1. Case $x > 0$ and $y > 0$

       *Proof:* $xy > 0$, and also $|x| = x$ and $|y| = y$, so $|xy| = xy = |x| |y|$

    2. Case $x > 0$ and $y < 0$

       *Proof:* $|x| = x$, $|y| = -y$, and $x(-y) > 0$, so $0 > xy$, hence $|xy| = -(xy) = x(-y) = |x| |y|$

    3. Case $x < 0$ and $y > 0$

       *Proof:* Same as case (2.2) except $x$ and $y$ are reversed

    4. Case $x < 0$ and $y < 0$

       *Proof:* $|x| = -x$, $|y| = -y$, $xy = (-x)(-y) > 0$, so $|xy| = xy = |x| |y|$.

 3. $|-x| = |x|$ 

    *Proof:* $-x = (-1)x$, so $|-x| = |-1||x|$. But we know $1 > 0$ by previously proved facts about ordered fieds, so $-1 < 0$, so $|-1| = 1$, hence $|-1||x| = |x|$.

 4. $|x| < y$ iff $-y < x < y$

    *Proof:* If $|x| < y$, then $both $-x < y$ and $x < y$, so $-y < x$, and $-y < x < y$ follows by transitivity. Conversely, if $-y < x$ and $x < y$, then $-x < y$ as well, so $|x| < y$ because $|x| = x$ or $|x| = -x$.

 5. $-|x| \leq x \leq |x|$

    *Proof:* If $x \geq 0$, then $-x \leq 0$. But $|x| = x$ and also $-|x| = -x$, so $-|x| \leq 0 \leq x \leq |x|$. If $x \leq 0$, then $-x \geq 0$, so $-|-x| \leq -x \leq |-x|$. But $|-x| = |x|$ by (3), so we have our statement again.

 6. $|x + y| \leq |x| + |y|$

    *Proof:* By (5) we have $-|x| \leq x \leq |x|$ and $-|y| \leq y \leq |y|$, so by addition we obtain

    $$-|x| -|y| \leq x + y \leq |x| + |y|$$

    So by (4) the statement follows.


 7. $||x| - |y|| \leq |x - y|$

    *Proof:* By (6) we have $|x| \leq |x - y| + |y|$. We also have $|y| \leq |x - y| + |x|$. This proves that

    $$-|x - y| \leq |x| - |y| \leq |x - y|$$

    The statement follows by (4).


## Definition of a metric on $\mathbb{R}$
Define a function $d: \mathbb{R}^2 \to \mathbb{R}$ by $d(x,y) = |x-y|$. Then $\mathbb{R}, d)$ is a metric space.


 1. $d$ is positive definite

    *Proof:* Positive-definiteness of absolute values proves this. Specifically, positiveness clearly holds, and $|x - y| = 0$ iff $x - y = 0$.

 2. $d$ is symmetric

    *Proof:* $-(x - y) = y - x$, so we know |x - y| = |y - x|$ by previously proved facts about absolute value.

 3. $d$ follows the triangle inequality

    *Proof:* By triangle inequality of absolute value we have $|x - y| \leq |x - z| + |z - y|$.

### Remark
At this point we've plugged into the theory of metric spaces, so we will freely use facts proved in the metric space notes.


## Equivalent condition for bounded sequence in $\mathbb{R}$
If $(x_n)$ is bounded, then there is a $M > 0$ such that $|x_n| < M$ for all $n$.

*Proof:* Bounded means there's a $z \in \mathbb{R}$ and an open ball around $z$ that contains all terms. So $x_n \in B(z; \epsilon)$ for some $\epsilon > 0$. In other words, $d(z, x_n) < \epsilon$ for all $n$. But this means $|x_n| \leq |z| + |z - x_n| < |z| + \epsilon$. So $M = |z| + \epsilon$ works.

### Remark
Note that this means every bounded sequence has its set of terms bounded above and below.

## Definition of monotone sequences
A sequence $(x_n)$ is **non-decreasing** if $x_m \leq x_n$ for any $m < n$, **increasing** if $x_m < x_n$ for any $m < n$, **non-increasing** if $x_m \geq x_n$ for any $m < n$, and **decreasing** if $x_m > x_n$ for any $m < n$.


## Lemma on sup/inf interchange
If $S \subseteq \mathbb{R}$ is non-empty and bounded above and below, then letting $T = \{ -s : s \in S \}$, we have $- inf T = sup S$.

 1. If $z$ is a lower bound for $T$, then $-z$ is an upper bound for $S$.

    *Proof:* If $z$ is a lower bound for $T$, then $z \leq t$ for all $t \in $T$, then $-t \leq -z$ for all $t \in T$. But for all $s \in S$, $s = -t$ for some $t \in T$, so $-z$ is an upper bound for $S$.

 2. Let $c = inf T$. Then $-c = sup S$.

*Proof:* By (1) we know that $-c$ is an upper bound for $S$, so $sup S \leq -c$. If $sup S < -c$, then $c < - sup S$, so we can find a $t \in T$ such that $c \leq t < - sup S$. This implies that $sup S < -t$, but there is an $s \in S$ such that $s = -t$, so this is a contradiction. Hence $-c = sup S$.


## Monotone convergence theorem
If $(x_n)$ is bounded and non-decreasing, then $(x_n) \to sup (x_n)$. If it is bounded and non-increasing, then $(x_n) \to inf (x_n)$.

 1. It suffices to assume $(x_n)$ is bounded and non-decreasing and prove that $(x_n) \to sup (x_n)$.

    *Proof:* If non-increasing instead, the sequence $(-x_n)$ is non-decreasing, so $(-x_n) \to sup (-x_n)$. By the limit laws (see notes on normed vector spaces) we have $(x_n) \to - sup (-x_n) = c$. By the lemma on sup/inf interchange, $- sup (-x_n) = inf (x_n)$

 2. Let $c = sup (x_n)$, then $(x_n) \to c$

    *Proof:* First, $sup (x_n)$ is well-defined since $(x_n)$ is bounded, hence its set of terms is bounded above. So for any $\epsilon > 0$ we can find a term $x_m$ such that $c - \epsilon < x_m \leq c$ since $c - \epsilon$ isn't an upper bound of the sequence. But the sequence is non-decreasing, so $x_m \leq x_n$ for all $n \geq m$. Certainly none of the terms exceed $c$ since it is an upper bound, so the tail starting at $m$ is contained within the $\epsilon$-ball around $c$. So $(x_n) \to c$.


## Every bounded sequence has a monotone subsequence ("Peak Point Theorem")
If $(x_n)$ is bounded, then there is a subsequence $(x_{n_k})$ that is either non-increasing or non-decreasing.

 1. Define a *peak point* to be a term $x_k$ for some $k$ which is an upper bound for the tail starting at $k$

 2. Case: There are infinitely many peak points in $(x_n)$ 

    *Proof:* We can form a subsequence consisting entirely of peak points. Each term is an upper bound of the subsequent terms, so it's a non-increasing subsequence.

 3. Case: There are only finitely many peak points in $(x_n)$:

    *Proof:* Some tail of $(x_n)$, starting at, say, $k$, has no peak points. So $n_1 = k$, and we can find some $n_2 > n_1$ such that $x_{n_2} > x_{n_1}$. Also, $x_{n_2}$ isn't a peak point either, so we can find a $n_3 > n_2$ such that $x_{n_3}$ strictly greater than $x_{n_2}$. This yields an increasing subsequence of $(x_n)$.


## Bolzano-Weierstrass theorem
Every bounded sequence $(x_n)$ contains a convergent subsequence.

*Proof:* Every bounded sequence contains a monotone subsequence, which is a bounded monotone subsequence, so it converges by the monotone convergence theorem.

## $\mathbb{R}$ is complete
$\mathbb{R}$ with the metric we defined above is a complete metric space. (This is really just repetition of the metric space notes. Repeating it here because it's both easy and important)

*Proof:* If $(x_n)$ is Cauchy in $\mathbb{R}$, it is bounded, so by the Bolzano-Weierstrass theorem it contains a convergent subsequence. But any Cauchy sequence with a convergent subsequence itself converges to the limit of the subsequence, so $(x_n)$ converges.


## Bolzano-Weierstrass for $\mathbb{R}^n$
Every bounded sequence in $\mathbb{R}^n$ contains a convergent subsequence.

*Proof:* It holds from metric space notes, that if Bolzano-Weierstrass holds in each of $n$ metric spaces, then it holds in the metric space provided that the metric is a "conserving" metric space. The usual norm for $\mathbb{R}^n$ is the euclidean norm, which is conserving.


## Compact subsets of $\mathbb{R}^n$
$S \subseteq \mathbb{R}^n$ is compact iff it is closed and bounded.

*Proof:* Every compact set is closed and bounded. Conversely, for any space that obeys the Bolzano-Weierstrass property has, equivalently, that the space is complete and every bounded subset is totally bounded. Every closed subset of a complete metric space is complete as a subspace, and every bounded subset is totally bounded, so a bounded, closed subset is complete and totally bounded, whichis equivalent to being compact.


## Continuous, real-valued functions on compact spaces attain maximum/minimum
If $(X, d)$ is a compact metric space and $f: X \to \mathbb{R}$ is continuous, then there exist $a, b \in X$ such that $f(a) \leq f(x) \leq f(b)$ for all $x \in X$. In other words, $f$ attains a minimum and a maximum on $a$ and $b$, respectively.

*Proof:* $img f$ is compact, so it's closed and bounded since it is in $\mathbb{R}$. $sup(img f)$ and $inf(img f)$ are closure points of $img f$, so both are in $img f$.


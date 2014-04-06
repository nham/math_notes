## Metric on $\mathbb{R}$
For all $x, y \in \mathbb{R}$, define $d(x,y) = |x - y|$. 

Because the reals obey the same algebraic and order properties as the rationals do, we can similarly prove the following facts:

 - $|x| \geq 0$, and $|x| = 0$ iff $x = 0$
 - $-|x| \leq x \leq |x|$
 - $|x + y| \leq |x| + |y|
 - $-y \leq x \leq y$ iff $y \geq |x|$.
 - $|xy| = |x| |y|$
 - $|-x| = |x|$
 - $d(x,y) > \geq 0$ and $d(x,y) = 0$ iff $x = y$
 - $d(x,y) = d(y, x)$
 - $d(x,z) \leq d(x,y) + d(y,z)$

## Definition of $\epsilon$-closeness on $\mathbb{R}$
$x, y \in \mathbb{R}$ are $\epsilon$-close for $\epsilon > 0$ if $d(x,y) \leq \epsilon$.

## Definition of Cauchy sequence
A real sequence $(a_n)$ is **Cauchy** if for every $\epsilon > 0$ there is a tail sequence of $(a_n)$ for which any two terms are $\epsilon$-close.

## $\mathbb{Q}$-Cauchy and $\mathbb{R}$-Cauchy are equivalent
A sequence of rationals $(q_n)$ is $\mathbb{Q}$-Cauchy iff it is $\mathbb{R}$-Cauchy.

*Proof:* If for every real $q > 0$ we have a tail sequence of $(q_n)$ which has any two terms $\epsilon$-close, then we certainly can find a tail sequence which has any two terms $q$-close for any rational $q > 0$, since all rationals are reals.

Conversely, if  $(q_n)$ is $\mathbb{Q}$-Cauchy, then for any $\epsilon \in \mathbb{R}$ with $\epsilon > 0$ we can find a rational $q$ such that $0 < q < \epsilon$. By hypothesis we have a tail sequence which has all terms $q$-close, so this same tail sequence must have all terms $\epsilon$-close.

## Definition of sequence convergence
A real sequence $(a_n)$ is said to **converge** to a real number $L$ if for every $\epsilon > 0$ there is a tail sequence $(a_n)_{n \geq k}$ in which every term is $\epsilon$-close to $L$.

If $(a_n)$ converges to $L$, we write $(a_n) \to L$.


## Unique limits.
For any real sequence $(a_n)$ and real numbers $L$ and $K$, $(a_n) \to L$ and $(a_n) \to K$ implies $L = K$.

*Proof:* Let $\epsilon = |L - K| / 4$. Then there is a tail sequence that has all terms $\epsilon$-close to $L$ and a tail sequence that has all terms $\epsilon$-close to $K$. One of these tail sequences must be a tail sequence of the other, so we have found a tail sequence all of whose terms are $\epsilon$-close to both $L$ and $K$. This violates the triangle inequality since we can show $|L - K| \leq |L - a_n| + |a_n - K| \leq |L-K| / 2$.

## Definition of limit notation
Since limits are unique, we can write $lim_{n \to \infty} a_n = L$ for when $(a_n)$ converges to $L$. If $(a_n)$ does not converge to any number, then $lim_{n \to \infty} a_n$ is undefined and the sequence is called **divergent**.

## All tail sequences converge/diverge the same way
For any naturals $k$ and $m$, real $L$ and sequence $(a_n)$, we have $(a_n)_{n \geq k} \to L$ iff $(a_n)_{n \geq m} \to L$.

*Proof:* We can assume $k \neq m$ (since otherwise the statement is obvious), and without loss of generality assume $k < m$. If $(a_n)_{n \geq m} \to L$, then we must also have $(a_n)_{n \geq k} \to L$ since every tail sequence of $(a_n)_{n \geq m}$ is also a tail sequence of $(a_n)_{n \geq k}$. Conversely, for any tail sequence of $(a_n)_{n \geq k}$, either its a tail sequence of $(a_n)_{n \geq m}$ or $(a_n)_{n \geq m}$ is a tail sequence of it, and in the case of the latter we must have all terms of $(a_n)_{n \geq m}$ within an $\epsilon$ of $L$.

### Remark
This justifies the fact that there is no starting position listed on the limit notation $lim_{n \to \infty} a_n$.


## Definition of increasing/decreasing sequence
Sequence $(a_n)$ is called **increasing** if for all $n \in \mathbb{N}$, $a_{n+1} > a_n$, and is called **decreasing** if for all $n \in \mnathbb{N}$, $a_{n+1} < a_n$.

### Alternate definition of increasing/decreasing
$(a_n)$ is increasing iff for any naturals $k$ and $m$ with $k > m$ we have $a_k > a_m$. $(a_n)$ is decreasing iff for any naturals $k, m$ with $k > m$, we have $a_k < a_m$.

*Proof:* One direction of implication is obviously true. The other direction is proved by induction.

## $(1/n)_{n \geq 1} \to 0$
The sequence $(a_n)$ defined by $a_n = 1 / n$ converges to zero.

*Proof:* For any $\epsilon > 0$, we can find a natural $n$ such that $1/n < \epsilon$ (corollary of the Archimedean principle). Also for any natural $m$, we have $1/(m+1) < 1/m$, so the sequence is decreasing. This means that all terms after $a_n$, they're all within an $\epsilon$ of $0$.

## Convergent sequences are Cauchy
If $(a_n) \to L$ for some $L$, then $(a_n)$ is Cauchy.

*Proof:* For any $\epsilon > 0$, since $(a_n)$ converges to $L$, we can find a tail sequence $(a_n)_{n \geq k}$ for which all terms are $\epsilon / 2$-close to $L$. By the triangle inequality, any two terms of this sequence are $\epsilon$-close.

## Goodbye, formal limits
For any rational Cauchy sequence $(a_n)$, we have $LIM_{n \to \infty} a_n = lim_{n \to \infty} a_n$.

*Proof:* Suppose not. So some $\epsilon > 0$ has infinitely many terms in the sequence $(a_n)$ that are farther than $\epsilon$ from $L := LIM_{n \to \infty} a_n$. Since we can find a tail sequence for which all terms are within an $\epsilon / 2$ of each other (due to the sequence being Cauchy), and since one term  $a_m$ in this tail sequence either has $a_m > L + \epsilon$ or $a_m < L - \epsilon$, we either have (in the first case) $a_n \geq a_m - \epsilon / 2$, so $a_n > L + \epsilon / 2$ for all terms $a_n$ in the tail sequence, or we have $a_n \leq a_m + \epsilon / 2$, implying $a_n < L - \epsilon / 2$ for all terms $a_n$ in the tail sequence. By a previous proposition, this implies that (respectively) $L = LIM_{n \to \infty} a_n \geq L + \epsilon / 2$ or $L \leq L - \epsilon / 2$. Either case could not happen, so our initial assumption was incorrect.

## Definition of bounded sequences
A sequence $(a_n)$ is **bounded** if there's some $M > 0$ such that for all $n$ we have $|a_n| \leq M$.


## Cauchy sequences are bounded
Every Cauchy $(a_n)$ is bounded.

*Proof:* The same proof that worked for rational sequences holds here, but to reiterate: some tail sequence has all terms $1$-close, so take the maximum magnitude of the finitely many terms not in this tail sequence and $|a_N| + 1$, where $a_N$ is the first term of the tail sequence. All terms are within this magnitude.

### Corollary
Convergent sequences are bounded (because they are Cauchy)

## Limit lemma
If $(a_n) \to L$ is a real convergent sequence and $x$ is real, then if $a_n \geq x$ for all $n$, then $L \geq x$. Also, if $a_n \leq x$ for all $n$, then $L \leq x$.

*Proof:* Assuming all $a_n \geq x$, if $x > L$ then we can find some tail sequence which has all terms $(x - L)/2$-close to $L$. This means all terms in this tail sequence are less than $x$, which contradicts our assumption. If $a_n \leq x$ for all $n$, then $x < L$ means we can find a tail sequence with all terms being $(L - x)/2$-close to $L$, implying all terms in this sequence are greater than $x$, which is again a contradiction.


## Limit laws
Let $(a_n)$ and $(b_n)$ be convergent real sequences, and let $x = lim_{n \to \infty} a_n$ and $y = lim_{n \to \infty} b_n$.

 - the sequence $(a_n + b_n)$ converges to $x+y$.
 - the sequence $(a_n b_n)$ converges to $xy$
 - for any real $c$, the sequence $(c a_n)$ converges to $cx$
 - the sequence $(a_n - b_n)$ converges to $x - y$
 - If $y \neq 0$ and $b_n \neq 0$ for all $n \geq m$, then $(b_n^{-1})_{n \geq m}$ converges to $y^{-1}$.
 - If $y \neq 0$ and $b_n \neq 0$ for all $n \geq m$, then $(a_n / b_n)_{n \geq m}$ is a valid sequence that converges to $x/y$.
 - the sequence $(max(a_n, b_n))$ converges to $max(x, y)$
 - the sequence $(min(a_n, b_n))$ converges to $min(x, y)$

 1. If $(a_n)$ is $\epsilon$-close to $K$ and $(b_n)$ is $\delta$-close to $L$, then $(a_n + b_n)$ is $(\epsilon + \delta)$-close to $K + L.

    *Proof:* $|a_n + b_n - K - L| \leq |a_n - K| + |b_n - L| \leq \epsilon + \delta$ is true for any $n$.

 2. the sequence $(a_n + b_n)$ converges to $x+y$.

    *Proof:* Letting $\epsilon > 0$ be arbitrary, we must find a tail sequence of $(a_n + b_n)$ which is $\epsilon$-close to $K + L$. We can find a tail sequence of $(a_n)$ which $\epsilon / 2$-close to $K$ and a tail sequence of $(b_n)$ which is $\epsilon / 2$-close to $L$. Furthermore, whichever sequence starts earlier, we can "align" it with the later-starting sequence by removing some finite number of terms so that both sequences start at the same index, and both are still $\epsilon / 2$-close to $K$ and $L$, respectively. So by (1) we have a tail sequence of $(a_n + b_n)$ which is $\epsilon$-close to $K + L$.

 3. the sequence $(a_n b_n)$ converges to $xy$

    *Proof:* Letting $\epsilon > 0$ be arbitrary, we must find a tail sequence of $(a_n b_n)$ which is $\epsilon$-close to $KL$. But we have $|a_n b_n - KL| \leq |b_n| |a_n - K| + |K| |b_n - L|$. Since $(b_n)$, being convergent, is bounded, there is some $M > 0$ such that $|b_n| \leq M$. Since we can choose a tail sequence for which $a_n$'s are $\epsilon / 2M$-close to $K$ and a tail sequence for which $b_n$'s are $\epsilon / 2 |K|$-close to $L$, we can choose the bigger of the starting indices for these two tail sequences to serve as the starting point of a tail sequence for $(a_n b_n)$. You can check that this tail sequence has all terms $\epsilon$-close to $KL$.

 4. for any real $c$, the sequence $(c a_n)$ converges to $cx$

    *Proof:* If $c = 0$, then $(c a_n)$ is a constant sequence of all zeroes, so it clearly converges to $0$. If $c \neq 0$, pick a tail sequence of $(a_n)$ which is $\epsilon / |c|$-close to $x$. This same tail sequence of $(c a_n)$ is $\epsilon$-close to $cx$.

 5. the sequence $(a_n - b_n)$ converges to $x - y$

    *Proof:* Use (2) and (4)

 6. If $y \neq 0$ and $b_n \neq 0$ for all $n \geq m$, then $(b_n^{-1})_{n \geq m}$ converges to $y^{-1}$.

    *Proof:* $(b_n)$ is bounded by some $M$, so $|1 / b_n - 1/L| = |L - b_n| / (|b_n| |L|) \leq |L - b_n| / M |L|$ for all $n \geq m$. For any $\epsilon > 0$, we can find a tail sequence for which $|L - b_n| \leq \epsilon M |L|$ for all terms $b_n$, implying the tail sequence of $(1 / b_n)$ starting at the same index is $\epsilon$-close to $L$.

 7. If $y \neq 0$ and $b_n \neq 0$ for all $n \geq m$, then $(a_n / b_n)_{n \geq m}$ is a valid sequence that converges to $x/y$.

    *Proof:* (3) and (6)

 8. the sequence $(max(a_n, b_n))$ converges to $max(x, y)$

    *Proof:* If $x = y$, for all $\epsilon > 0$ we can find an $N$ such that for all $n \geq N$, $a_n$ is $\epsilon$-close to $K$ and $b_n$ is $\epsilon$-close to $L$. This implies that $|max(a_n, b_n) - x| \leq \epsilon$ for all $n \geq N$, since $max(a_n, b_n)$ is always either $a_n$ or $b_n$. If $x \neq y$, we can assume WLOG that $x < y$. Then we can find some point $N$ for any $n \geq N$, we have $a_n < b_n$. So this gives us a tail sequence in which $max(a_n, b_n) = b_n$ So we simply need find, for every $\epsilon > 0$, a tail sequence of this which has each $b_n$ within an $\epsilon$ of $L$.

 9. $-max(-x, -y) = min(x, y)$

    *Proof:* If $x < y$, then $-y < -x$, so $-max(-x, -y) = -(-x) = x = min(x, y)$. If $y < x$, it holds by symmetricity and the previous sentence. If $x = y$, then it clearly holds.

 10. the sequence $(min(a_n, b_n))$ converges to $min(x, y)$

    *Proof:* Apply (4) and (8) to the sequences $(-a_n)$ and $(-b_n)$ to obtain that $(max(-a_n, -b_n))$ converges to $max(-x, -y)$. By (9), the statement holds.

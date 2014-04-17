# Status
Up until know we have, starting from basic set theory and the Peano axioms, built up a succession of number systems, culminating in the construction of the real numbers, which we defined as Cauchy sequences of rational numbers, and which we proved was a complete ordered field, i.e. a field such that

 - $x < y$ implies $x + z < y + z$ for all $z$
 - $0 < x$ and $0 < y$ implies $0 < xy$

and such that every non-empty set bounded above has a least upper bound, every non-empty set bounded below has a greatest lower bound. We also proved many useful things, like the the cancellation law (true for all fields), trichotomy law (true for all totally ordered sets), the Archimedean property, that the rationals are dense in the reals, that $n$-th roots of positive reals exist, that positive reals can be taken to rational exponents, and that these exponents obey the laws that you think they do. We also defined the absolute value function for the reals and proved that its familiar properties, like triangle inequality, hold.

Now, after tying up some loose ends, we can begin real analysis.


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

## Definition of the extended real numbers
The **extended reals** are the set $\mathbb{R} \cup \{ + \infty, - \infty \}$, where $+ \infty$ and $- \infty$ are assumed distinct from all real numbers. The numbers in $\mathbb{R}$ are called **finite** real numbers, and the others are **infinite**. We notate this new number system by $\mathbb{R}^{\ast}$.

### Definition of negation in $\mathbb{R}^{\ast}$.
Negation on real numbers is defined as before. We define $- (+ \infty) = - \infty$ and $- (- \infty) = + \infty$.

### Definition of ordering in $\mathbb{R}^{\ast}$
For any extended reals $x$ and $y$, define $x \leq y$ to be true if:

 - $x$ and $y$ are both finite and $x \leq y$ is true in  $\mathbb{R}$
 - $y = + \infty$
 - $x = - \infty$

Define $x < y$ if $x \leq y$ and $x \neq y$. Also define $x \geq y$ iff $y \leq x$, and $x > y$ iff $y < x$.


## Order properties in $\mathbb{R}^{\ast}$
For all extended reals $x, y, z$

 - $x \leq x$
 - Exactly one is true: $x < y$, $x = y$, $x > y$
 - If $x \leq y$ and $y \leq z$, then $x \leq z$
 - If $x \leq y$ and $y \leq x$, then $x = y$
 - If $x \leq y$, then $-y \leq -x$

 1. $x \leq x$

    *Proof:* If $x$ is finite it's obviously true. If $x$ is infinite, then in either case $x \leq x$ is true by definition.


 2. Exactly one is true: $x < y$, $x = y$, $x > y$
1. Case $x$ and $y$ are both finite

       *Proof:* This is true by trichotomy for the reals. 

    2. Case $y = + \infty$

       *Proof:* $x \leq y$ by definition. If $x \neq + \infty$, we have $x < y$ by definition. If we also have $y < x$, then clearly we also have $y \leq x$. By the definition this implies that $y = - \infty$ or $x = + \infty$, neither of which are true, which is a contradiction. If $x = + \infty$, then clearly $x = y$. We also can't have $x < y$ or $y < x$, since by definition we would have $x \neq y$.

    3. Case $y = - \infty$.

       *Proof:* By definition $y \leq x$, so we either have $x = -\infty$ (and therefore not $x < y$ and not $y < x$), or we have $x \neq - \infty$, in which case $y < x$ by definition. We can't also have $x < y$, since this implies $x \leq y$, which by definition implies either $y = + \infty$ or $x = - \infty$, neither of which is true.

    4. Case $x$ is infinite, $y$ is finite

       *Proof:* If $x = - \infty$, we must have $x \leq y$ and $x \neq y$, so $x < y$. We also can't have $y < x$, by definition. If $x = + \infty$, we have $y \leq x$ and $x \neq y$, so $y < x$. We cannot have $x < y$, for similar reasons as above.


 3. If $x \leq y$ and $y \leq z$, then $x \leq z$

    *Proof:* if $z < x$, then we  must have either $x$ and $z$ both finite, contradicting transitivity of $\leq$ in $\mathbb{R}$, or $x = + \infty$, which implies that $x = y = z$, again a contradiction, or $z = - \infty$, which implies $z = y = x$, again a contradiction.


 4. If $x \leq y$ and $y \leq x$, then $x = y$

    *Proof:* By hypothesis this means ($x < y$ or $x = y$) and ($y < x$ or $y = x)$. But $x < y$ contradicts both $y < x$ and $y = x$ by (2), and ditto $y < x$ contradicting $x < y$ and $x = y$.  So we must have $x = y$.

 5. If $x \leq y$, then $-y \leq -x$

    *Proof:* This is true if $x$ and $y$ are both finite. If $y = + \infty$, then we have $-y = - \infty$, so clearly $-y \leq -x$ by definition. If $y = - \infty$, we have $y \leq x$ by definition and $x \leq y$ by hypothesis, which by (4) implies $x = y$. So clearly $-y = -x$, which implies $-y \leq -x$.

## Definition of supremum in $\mathbb{R}^{\ast}$
If $S$ is a subset of $\mathbb{R}^{\ast}$, then define $sup S$ to be the supremum in $\mathb{R}$ if $S$ is a subset of $\mathbb{R}$, define $sup S = + \infty$ if $S$ contains $+ \infty$, and defined $sup S = sup(S - \{- \infty\})$ is $S$ contains $- \infty$ but not $+ \infty$ (i.e. the supremum in $\mathbb{R}$ after removing $- \infty$).

## Definition of infimum in $\mathbb{R}^{\ast}$
If $S$ is a subset of $\mathbb{R}^{\ast}$, then define $inf S = - sup(T)$, where $T$ is the set of all negated elements of $S$.

## Infimum/supremum facts in $\mathbb{R}^{\ast}$
For any $S \subseteq \mathbb{R}^{\ast}$, we have:

 - for all $x \in S$, $inf(S) \leq x \leq sup(S)$
 - If $M$ is an upper bound for $S$, $sup(S) \leq M$
 - If $M$ is a lower bound for $S$, $M \leq inf(S)$

 1. for all $x \in S$, $x \leq sup(S)$

    1. Case $+ \infty \notin S$

       1. Case $S$ bounded above by a finite $M$

          *Proof:* Either $- \infty \in S$, in which case $S - \{- \infty\}$ has some least upper bound by the LUB-property of $\mathbb{R}$, or $S$ is all finite, in which case it is true again by the same reason.

       2. Case $S$ not bounded above by any finite $M$

          *Proof:* $sup S = + \infty$ by definition, so by definition of $\leq$ this is true.

    2. Case $+ \infty \in S$

        *Proof:* By definition $sup S = + \infty$, so by definition of $\leq$ this is true.

 2. for all $x \in S$, $inf(S) \leq x$

    1. Case $- \infty \notin S$

       1. Case $S$ bounded below by a finite $M$

          *Proof:* Either $+ \infty \in S$, in which case $S - \{+ \infty\}$ has some greatest lower bound by the GLB-property of $\mathbb{R}$, or $S$ is all finite, in which case it is true again by the same reason.

       2. Case $S$ not bounded below by any finite $M$

          *Proof:* $inf S = - \infty$ by definition, so by definition of $\leq$ this is true.

    2. Case $- \infty \in S$

        *Proof:* By definition of infimums, $inf S = - \infty$, so by definition of $\leq$ this is true.


 3. If $M$ is an upper bound for $S$, $sup(S) \leq M$

    1. Case $S = \emptyset$

        *Proof:* in which case $sup S = - \infty$ by definiton, so it's true

    2. Case $S = \{ - \infty \}$

        *Proof:* $sup S = - \infty$ it's again true.

    3. Case $S$ contains finite elements, but not $+ \infty$

       *Proof:* $sup S$ is some finite element by definition, so by the least upper bound property of $\mathbb{R}$ this holds.

    4. Case $+ \infty \in S$

       *Proof:* $sup S = + \infty$, so the only upper bound is $+ \infty$. It is true by reflexivity.

 4. If $M$ is a lower bound for $S$, $M \leq inf(S)$

    *Proof:* The proof is a boring and unenlightening enumeration of cases, as in part (3)

## Definition of supremum/infimum of a sequence
The supremum and infimum of a sequence are defined to be the supremum and infimum (respectively) of the set of terms in the sequence.

## Least upper bound property for sequences
If $(a_n)$ is a sequence and $x \in \mathbb{R}^{\ast}$ is defined to be $x = sup (a_n)$, then for all $n$, $a_n \leq x$. Also, for any upper  bound of the sequence (i.e. an $M$ such that $a_n \leq M$ for all $n$), we have $x \leq M$. Also, for any $y \in \mathbb{R}^{\ast}$ with $y < x$, we have $y < a_n$ for some $n$.

*Proof:* By definition of the supremum of sequences, we have $x \geq a_n$ for all $n$. Any upper bound $M$ on the sequence is an upper bound on the set of terms, so we must have $x \leq M$ by the previous proposition. Also, for any $y < x$, $y \in \mathbb{R}^{\ast}$, we must have some $n$ such that $y < a_n$ (otherwise $y$ would be an upper bound less than $x$, contradicting the fact just proved).

### Corresponding facts for infimum and lower bound
Fill in the blank, yo. It's boring to prove this stuff over again for infimums and lower bounds.

## Monotone convergence theorem
If $(a_n)$ is a sequence in $\mathbb{R}$ bounded above by $M \in \mathbb{R}$ with $(a_n)$ increasing, then $(a_n)$ converges and 

$$lim_{n \to \infty} a_n = sup (a_n) \leq M$$

*Proof:* Letting $x = sup (a_n)$, we know that $x \leq M$. $x$ must therefore be finite. We also know that for all $n$, $a_n \leq x$. We have to prove that for any $\epsilon > 0$ we can find a tail sequence such that all terms are $\epsilon$-close to $x$. Since they can't be greater than $x$, we must find some tail sequence for which $x - \epsilon < a_n \leq x$ for all terms $a_n$. But we can certainly find at least one term $a_k$ such that $x - \epsilon < a_k$ (by the LUB-property for sequences), and then all terms in the sequence after $k$ are strictly greater than $a_k$. So the tail sequence starting at $a_k$ is $\epsilon$-close to $x$.


### For decreasing sequences
If $(a_n)$ is a sequence in $\mathbb{R}$ bounded below by $M \in \mathbb{R}$ with $(a_n)$ decreasing, then $(a_n)$ converges and 

$$lim_{n \to \infty} a_n = inf (a_n) \leq M$$

*Proof:* Letting $x = inf (a_n)$, we know $M \leq x$ by the LUB-property for sequences. $x$ must be finite. We also know that for all $n$, $x \leq a_n$. We seek to prove that for any $\epsilon > 0$, we can find a tail sequence such that all terms are $\epsilon$-close to $x$. Since no terms can go below $x$, we have to find some tail sequence for which all terms $a_n$ have $x \leq a_n < x + \epsilon$. But we can find at least one such term $a_k$, and the decreasingness of the sequence guarantees that the following terms are also within an $\epsilon$.

### For non-increasing/non-decreasing sequences
The same proofs go through if $(a_n)$ is non-decreasing ($a_j \leq a_k$ for $j < k$) and non-increasing ($a_j \geq a_k$ for $j < k$).

## Definition of monotone sequence
A sequence is **monotone** if it is increasing or decreasing.

### Remark
The monotone convergence theorem and the fact that all convergent sequences are bounded prove that a monotone sequence converges iff it is bounded.

## Convergence of geometric sequences
For $x \in \mathbb{R}$ with $0 < x < 1$, we have that $lim_{n \to \infty} x^n = 0$.

*Proof:* $x < 1$ and $x > 0$ implies $x^n < x^{n-1} < ... < x^2 < x < 1$, so the sequence $(x^n)$ is decreasing. Since it's bounded below by zero, it converges by the monotone convergence theorem, and its limit is $L = inf (x^n) \geq 0$. The sequence $(x^{n+1})_{n=1}^{\infty}$ converges to $xL$ by the limit laws. However this is a tail sequence of the original sequence $(x^n)_{n = 1}^{\infty}$, and so these two sequences must have the same limit. Hence $xL = L$, so if $L \neq 0$ we have $x = 1$ by cancellation, a contradiction. So $L = 0$.

## Definition of limit point
For sequence $(a_n)$ in $\mathbb{R}$ any real $x$ is **$\epsilon$-adherent** to $(a_n)$ if some term is $\epsilon$-close to $x$. $x$ **continually $\epsilon$-adherent** to $(a_n)$ if $x$ is $\epsilon$-adherent to every tail sequence. $x$ is a **limit point** or **adherent point** of $(a_n)$ if $x$ is continually $\epsilon$-adherent for every $\epsilon > 0$. In other words, $x$ is a limit point iff for every $\epsilon > 0$, for every $N$, there is an $n \geq N$ such that $a_n$ is $\epsilon$-close to $x$.

## Limits are limit points
If $(a_n) \to c$ then $c$ is a limit point of $(a_n)$ and is the unique limit point of $(a_n)$.

*Proof:* Since we can, for any $\epsilon$, find some tail sequence that is $\epsilon$-close to $c$, clearly for any $N$ we can find an $n \geq N$ for which $a_n$ is $\epsilon$-close to $c$ (take $n = max(N, k)$, where $k$ is where the starting index of an tail sequence which is $\epsilon$-close to $c$). If $d$ is a limit point of $(a_n)$, note that for any $n$, we have $|c - d| \leq |c - a_n| + |d - a_n|$. Let $\epsilon > 0$. Then some tail sequence starting at $N_{\epsilon / 2}$ is $\epsilon / 2$-close to $c$, and we can find a term $a_k$ in this tail sequence which is $\epsilon / 2$-close to $d$. This proves that $|c - d| \leq \epsilon$.

## Definition of limit superior and limit inferior
For any $(a_n)$, define a sequence by $a_N^+ = sup (a_n)_{n \geq N}$, meaning each term $a_N^+$ is the supremum of the tail sequence of $(a_n)$ that starts at $N$. Then the **limit superior** of $(a_n)$ is notated and defined by $lim_{n \to \infty} sup a_n = inf (a_n^+)$. Similarly define $a_N^- = inf (a_n)_{n \geq N}$, and the **limit inferior** of $(a_n)$ by $lim_{n \to \infty} inf a_n = sup (a_n^-)$.


## Properties of limit superior and limit inferior
If $(a_n)$ is a sequence, let $L^+ = limsup (a_n)$ and $L^- = liminf (a_n)$. Then we have

 - For all $x \in \mathbb{R}^{\ast}$, $x > L^+$ implies that some tail sequence of $(a_n)$ has all terms strictly less than $x$. Also $x < L^-$ implies that some tail sequence of $(a_n)$ has all terms strictly greater than $x$.

 - For all $x \in \mathbb{R}^{\ast}$, $x < L^+$ implies that there are infinitely terms strictly greater than $x$, and $x > L^-$ implies that there are infinitely terms strictly less than $x$.

 - For any natural $j, k$, if $j < k$, then we have $inf (a_n)_{n \geq j} \leq inf (a_n)^{n \geq k}$ and $sup (a_n)_{n \geq k} \leq sup (a_n)_{n \geq j}$

 - For all $k$, $inf (a_n)_{n \geq k} \leq L^- \leq L^+ \leq sup (a_n)_{n \geq k}$

 - If $c$ is a limit point of $(a_n)$, then $L^- \leq c \leq L^+$

 - If $L^+$ is finite, then $L^+$ is a limit point of $(a_n)$. Ditto for $L^-$.

 - For any $c \in \mathbb{R}$, $(a_n) \to c$ iff $L^+ = L^- = c$

 1. $x > L^+$ implies that some tail sequence of $(a_n)$ has all terms strictly less than $x$

    *Proof:* The hypothesis means that $x$ is not a lower bound of $(a_n^+)$, so some $k$ is such that $a_k^+ < x$ since $x$. But $a_k^+ = sup (a_n)_{n \geq k}$, so $x$ is strictly greater than every term in $(a_n)_{n \geq k}$.

 2. $x < L^-$ implies that some tail sequence of $(a_n)$ has all terms strictly greater than $x$.

    *Proof:* By hypothesis, $x$ is not an upper bound of $(a_n^-)$, so some $k$ is such that $a_k^- > x$. But $a_k^- = inf(a_n)_{n \geq k}$, so $x$ is strictly less than all terms in $(a_n)_{n \geq k}$.

 3. $x < L^+$ implies that there are infinitely terms strictly greater than $x$

    *Proof:* $x$ is a (strict) lower bound for $(a_n^+)$, which means $x$ is strictly less than the least upper bound of every tail sequence. So each tail sequence must have some term in it that is greater than $x$, since $x$ is not an upper bound for any tail sequence.

 4. $x > L^-$ implies that there are infinitely terms strictly less than $x$.

    *Proof:* $x$ is a strict upper bound for $(a_n^-)$, so it is also a strictly greater than the infimum of every tail sequence. So some term in every tail sequence must be less than $x$, since $x$ is not a lower bound for any tail sequence.

 5. For any natural $j, k$, if $j < k$, then we have $inf (a_n)_{n \geq j} \leq inf (a_n)^{n \geq k}$ and $sup (a_n)_{n \geq k} \leq sup (a_n)_{n \geq j}$

    *Proof:* The tail sequence starting at $k$ is a subsequence of the tail sequence starting at $j$, so any lower bound of the latter is also a lower bound of the former. Also, any upper bound of the latter is also an upper bound of the former. The statement immediately follows by properties of $inf$ and $sup$

 6. For all $k$, $inf (a_n)_{n \geq k} \leq L^- \leq L^+ \leq sup (a_n)_{n \geq k}$

    *Proof:* To prove $L^- \leq L^+$, we prove that for any $j$ and any $k$, $inf (a_n)_{n \geq j} \leq sup (a_n)_{n \geq k}$. This proves that every $inf (a_n)_{n \geq j$ is a lower bound of the sequence $(a_n^+)$, so $L^-$ must be a lower bound as well by transitivity. Since $L^+ = inf (a_n^+)$ is the greatest lower bound, we must have $L^- \leq L^+$.

    But this holds, since if $j < k$ we have $inf (a_n)_{n \geq j} \leq inf (a_n)_{n \geq k} \leq sup (a_n)_{n \geq k}$, and if $k < j$ we have $inf (a_n)_{n \geq j \leq sup (a_n)_{n \geq j} \leq sup (a_n)_{n \geq k}$.

    For the remainder, by definition the rest hold, because $L^-$ is the supremum of all tail sequence infimums, and $L^+$ is the infimum of all tail sequence supremums.

 7. If $c$ is a limit point of $(a_n)$, then $L^- \leq c \leq L^+$

    *Proof:* $c < L^-$ means that $c$ is not an upper bound for $(a_n^-)$, so some tail sequence starting at, say, $k$, has $c < inf(a_n)_{n \geq k}$. So let $\epsilon = inf(a_n)_{n \geq k} - c$, which is a positive real. Then $(a_n){n \geq k}$ is not $\epsilon$-close to $c$, contradicting its status as a limit point.

    $c > L^+$ means that $c$ is not a lower bound for $(a_n^+)$, so some tail sequence starting at, say, $k$, has $sup(a_n)_{n \geq k} < c$. So let $\epsilon = c - sup(a_n)_{n \geq k}$. This is a positive real, and $(a_n)_{n \geq k}$ is not $\epsilon$-close to $c$, contradicting its status as a limit point once again.

    The only remaining options are $L^- \leq c \leq L^+$.

 8. If $L^+$ is finite, then $L^+$ is a limit point of $(a_n)$. Ditto for $L^-$.

    1. Some tail sequence (starting at let's-call-it-$k$) of $(a_n^+)$ has all terms finite. It converges to $L^+$.

       1. For all $\epsilon > 0$, there is a $k$ such that $L^+ \leq a_j^+ < L^+ + \epsilon$. 

          *Proof:* $L^+$ is the greatest lower bound of $(a_n^+)$, so $L^+ + \epsilon$ is not a lower bound.

       2. Q.E.D.

          *Proof:* Let $k$ be the starting index of the tail sequence that (1.1) proves to exist for $\epsilon = 1$. All the terms of this tail sequence are finite, and the sequence is non-increasing, so it holds by the monotone convergence theorem that $(a_n^+)_{n \geq k} \to inf (a_n^+)_{n \geq k} = inf (a_n^+)$.

    2. Let $\epsilon > 0$. It suffices to prove that some tail sequence of $(a_n)$ has every tail sequence containing a term $\epsilon$-close to $L^+$.

       *Proof:* If some tail sequence starting at $k$ has every tail sequence containing the $\epsilon$-close term, then every tail sequence of $(a_n)$ is either a tail sequence of the sequence starting at $k$, or is a sequence for which the sequence starting at $k$ is a tail sequence of it.

    3. Let $(a_n^+)_{n \geq j}$ be the tail sequence of $(a_n^+)_{n \geq k}$ which is $\epsilon / 2$-close to $L^+$.

       *Proof:* By (1)

    4. For all $d \geq j$, we can find a term $m \geq d$ such that $sup (a_n)_{n \geq d} - \epsilon / 2 < a_m \leq sup (a_n)_{n \geq d}$.

       *Proof:* Definition of supremum.

    5. Every tail sequence of $(a_n)_{n \geq j}$ has a term that is $\epsilon$-close to $L^+$.

       *Proof:* By (4), for every tail sequence there's a term that is $\epsilon / 2$-close to supremum of the tail sequence. But the supremum of the tail sequence is $\epsilon / 2$-close to $L^+$ by (3). So by triangle inequality every tail sequence has a term that is $\epsilon$-close to $L^+$.
    
    6. Ditto for $L^-$.

       *Proof:* Basically the same proof as (1) through (5) holds.

 9. For any $c \in \mathbb{R}$, $(a_n) \to c$ iff $L^+ = L^- = c$

    *Proof:* If $(a_n) \to c$, then for every $\epsilon > 0$ we can find a tail sequence of $(a_n)$ (starting at $j$0 which is $\epsilon$-close to $c$, meaning all terms $a_k$ have $c - \epsilon \leq a_k \leq c + \epsilon$. So $L^+ \leq sup (a_n)_{n \geq j} \leq c + \epsilon$, and $c - \epsilon \leq inf (a_n)_{n \geq j} \leq L^-$. We've just proven that for all $\epsilon > 0$, $L^+ \leq c + \epsilon$ and $c - \epsilon \leq L^-$. So $|c - L^+| \leq \epsilon$ and $|c - L^-| \leq \epsilon$ for all $\epsilon > 0$, which proves $L^- = c = L^+$

    Conversely, if $L^+ = L^- = c$, then for any $\epsilon > 0$ we can find a $j$ and $k$ such that $L^+ \leq sup (a_n)_{n \geq j} \leq L^+ + \epsilon$ and $L^- - \epsilon < inf (a_n)_{n \geq k} \leq L^-$. Since $(a_n^+)$ and $(a_n^-)$ are non-increasing and non-decreasing, respectively, then the bigger of $j$ and $k$, call it $m$, has $L^+ \leq sup (a_n)_{n \geq m} \leq L^+ + \epsilon$ and $L^- - \epsilon < inf (a_n)_{n \geq m} \leq L^-$. So $(a_n)_{n \geq m}$ is $\epsilon$-close to $c$, or in other words, $(a_n) \to c$.

## Comparison principle for supremums/infimums of sequences
If $(a_n)$ and $(b_n)$ are sequences in $\mathbb{R}$ and $a_n \leq b_n$ for all $n$, then 

 - $sup (a_n) \leq sup (b_n)$
 - $inf (a_n) \leq inf (b_n)$.
 - $limsup a_n \leq limsup b_n$
 - $liminf a_n \leq liminf b_n$

*Proof:* If $sup (b_n) < sup (a_n)$, we can find a term $a_k$ such that $sup (b_n) < a_k \leq sup (a_n)$, contradicting $a_n \leq b_n$. A similar contradiction arises if $inf (b_n) < inf (a_n)$.

For the remaining two, we just have to realize that the previous fact applies to sequences in $\mathbb{R}^{\ast}$. Then apply the first fact to the sequences $(a_n^+)$ and $(b_n^+)$ and $(a_n^-)$ and $(b_n^-)$.

### Corollary: squeeze theorem
If $(a_n)$, $(b_n)$, and $(c_n)$ are all sequences and for all $n$ we have $a_n \leq b_n \leq c_n$, and also we have $(a_n) \to L$ and $(c_n) \to L$ for some $L$, then $(b_n) \to L$ as well.

*Proof:* By the comparison principle we have $limsup a_n \leq limsup b_n \leq limsup c_n$ and $liminf a_n \leq liminf b_n \leq liminf c_n$. But since $(a_n)$ and $(c_n)$ converge to $L$, then by limsup and liminf facts, $liminf a_n = limsup a_n = L = limsup c_n = liminf c_n$. So $L \leq liminf b_n \leq L$ and $L \leq limsup b_n \leq L$, which implies $L = limsup b_n = liminf b_n$, so $(b_n) \to L$.

## The zero test
If $(a_n)$ is a sequence, then $lim a_n = 0$ iff $lim |a_n| = 0$.

*Proof:* If $lim a_n = 0$, then for every $\epsilon$ we can find a tail sequence with all terms having $|a_n| \leq \epsilon$. Since $||a_n|| = |a_n|$, this implies $lim |a_n| = 0$. Conversely, recall that for all $a_n$ we have $-|a_n| \leq a_n \leq |a_n|$. So if $lim |a_n| = 0$, then $lim -|a_n| = 0$ clearly by limit laws, so $a_n$ converges to zero as well by the squeeze theorem.


## Tail sequences do not affect limit points, limit superior, limit inferior
For any natural $k$, we have 

 - $c$ is a limit point of $(a_n)$ iff $c$ is a limit point of $(a_n)_{n \geq k}$
 - $limsup (a_n) = limsup (a_n)_{n \geq k}$
 - $liminf (a_n) = liminf (a_n)_{n \geq k}$

 1. $c$ is a limit point of $(a_n)$ iff $c$ is a limit point of $(a_n)_{n \geq k}$

    *Proof:* If $c$ is a limit point of $(a_n)$, this means for every $\epsilon > 0$, every tail sequence has a term that is $\epsilon$-close to $c$. This clearly means that every tail sequence of $(a_n){n \geq k}$ has a term $\epsilon$-close to $c$. Conversely, every tail sequence of $(a_n)$ is either a tail sequence of $(a_n)_{n \geq k}$ or has $(a_n)_{n \geq k}$ as a tail sequence. So if $c$ is a limit point of the tail sequence starting at $k$, then every tail sequence of $(a_n)$ that is a tail sequence of $(a_n)_{n \geq k}$ by hypothesis has a term that is $\epsilon$-close to $c$. For the rest, $(a_n)_{n \geq k}$ has a term $\epsilon$-close to $c$, so the rest do as well.

 2. $limsup (a_n) = limsup (a_n)_{n \geq k}$

    *Proof:* $limsup (a_n) = inf (a_n^+)$ and $inf (a_n^+)_{n \geq k} = limsup (a_n)_{n \geq }$ by definition. Every lower bound of $(a_n^+)$ is a lower bound for the tail sequence (since as sets, the tail sequence is a subset of the original), so $inf (a_n^+) \leq inf (a_n^+)_{n \geq k}$. But also, for all $j < k$, $a_j^+ \geq a_k^+$ since $(a_n^+)$ is decreasing, so any lower bound for $(a_n^+)_{n \geq k}$ must also be a lower bound for $(a_n^+)$.

 3. $liminf (a_n) = liminf (a_n)_{n \geq k}$

    *Proof:* This will be virtually the same proof as in (2), but with infs and sups switched and $\leq$ and $\geq$ also switched. Alternatively, you could do some trickery with negating each of the elements and applying (2) to the negated sequence, then switching it back.


## Completeness of the reals
If $(a_n)$ is a real sequence, then $(a_n) converges$ iff $(a_n)$ is Cauchy.

*Proof:* We already proved one direction, that all convergent sequences are Cauchy. So Let $(a_n)$ be Cauchy. We know $(a_n)$ must therefore be bounded, so $sup (a_n)$ and $inf (a_n)$ are both finite. This implies that $L^-$ and $L^+$ are both finite as well. A previous proposition proves that $L^- \leq L^+$. Suppose that $L^- < L^+$. 

Let $x = L^+ - (L^+ - L^-)/4$ and $y = L^- + (L^+ - L^-)/4$. Then $L^- < x, y < L^+$. By a previous proposition we can find infinitely many terms of $(a_n)$ that are less than $x$ and infinitely many terms that are greater than $y$, which contradicts the fact that we must be able to find a tail sequence where all terms are within $(L^+ - L^-)/4$ of one other (since $(a_n)$ is Cauchy). So $L^- = L^+$, and $lim a_n = L^-$.


## Definition of subsequences
If $(a_n)$ is a sequence in $\mathbb{R}$, then $(b_n)$ is a **subsequence** of $\mathbb{R}$ if there's an increasing $f: \mathbb{N} \to \mathbb{N}$ such that $b_n = a_{f(n)}$ for all $n$.


## "Is-a-subsequence" is reflexive and transitive
For any $(a_n)$, $(b_n)$, $(c_n)$, $(a_n)$ is a subsequence of $(a_n)$. and if $(a_n)$ subsequence of $(b_n)$ and $(b_n)$ subsequence of $(c_n)$, then $(a_n) subsequence of $(c_n)$.

*Proof:* For reflexivity, the identity function is increasing. For transitivity, we have increasing $f$ and $g$ such that $a_n = b_{f(n)}$ and $b_n = c_{g(n)}$ for all $n$. So $a_n = b_{f(n)} = c_{g(f(n))}$ for all $n$. But composition of increasing functions is increasing since $m < n$ implies that $f(m) < f(n)$ which implies that $g(f(m)) < g(f(n))$.

## Equivalent account of sequence convergence
For any sequence $(a_n)$, $(a_n)$ converges to $L$ iff every subsequence of $(a_n)$ converges to $L$

*Proof:* The latter implies the former since $(a_n)$ is a subsequence of itself. Conversely, If $(a_n)$ converges to $L$, then for any $\epsilon$ we can find a tail sequence whose terms are all $\epsilon$-close to $L$. Say that the tail sequence starts at $k$. Then any subsequence $(b_n)$ has that $b_k = b_j$ for some $j > k$ by definition, so all the terms starting with $b_k$ are also $\epsilon$-close to $L$ (since they are elements of the tail sequence of $(a_n)$ that starts at $k$. So $(b_n)$ converges to $L$ as well.

## Limit points and subsequence convergence
If $(a_n)$ is a sequence, then $L$ is a limit point of $(a_n)$ iff some subsequence of $(a_n)$ converges to $L$.

*Proof:* If some subsequence $(b_n)$ converges to $L$, then for every $\epsilon > 0$ there is a tail sequence of $(b_n)$ that has all terms $\epsilon$-close to $L$. Hence there are infinitely many terms of $(a_n)$ that are $\epsilon$-close to $(a_n)$. Conversely, if $L$ is a limit point of $(a_n)$, then we can find a term $a_{k_1}$ which is $1$-close to $L$. Then we can find a term coming after $k_2$ which is $1/2$-close to $L$. Suppose that we've located a term $k_n$ that is $1/n$-close to $L$. Then we can find a term coming after $k_n$ which is $1/(n+1)$-close to $L$. This is a subsequence of $(a_n)$ that converges to $L$ since the tail sequence starting at $a_{k_n}$ has all terms $1\n$-close to $L$.

## Bolzano-Weierstrass Theorem
If $(a_n)$ is a bounded sequence in $\mathbb{R}$, then some subsequence converges.

*Proof:* We have that $-M \leq a_n \leq M$ for some $M \in \mathbb{R}$. So we can form the constant sequences $b_n = -M$ and $c_n = M$. Then apply the comparison test to prove that $sup (a_n) \leq M$ and $-M \leq inf (a_n)$. By properties of the limit superior (denote it by $L$), we have $-M \leq L \leq M$. So $L$ is finite, and hence a limit point of $(a_n)$, and by the previous proposition some subsequence converges to $L$.

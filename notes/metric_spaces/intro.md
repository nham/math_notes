## Definition of metric spaces

A **metric space** is a pair $(X, d)$ where $d$ is a function $X \times X \rightarrow \mathbb{R}$ such that:

  - $d(x,y) \geq 0$ for all $x$, $y$, and $d(x,y) = 0$ iff $x = y$.
  - $d(x,y) = d(y,x)$
  - $d(x,z) \leq d(x,y) + d(y,z)$

## Reverse triangle inequality
If $x,y,z$ are elements of a metric space $(X, d)$, then $|d(x,y) - d(y, z)| \leq d(x, z)$.

*Proof:* By triangle inequality we have:

$$d(x, y) \leq d(x, z) + d(y, z)$$

$$d(y, z) \leq d(x, z) + d(x, y)$$

After rearrangement, the statement follows.

## Definition of subspaces/superspaces
If $(X, d)$ is a metric space, then for any subset $U$ of $X$ we can define a metric space on $U$ by restricting the metric $d$ to $U$. (the metric space axioms hold for all points in $X$, so they clearly hold for all points in $U \subseteq X$). In this case $U$ is called a **subspace** of $X$ and $X$ is called a **superspace** of $U$.


## Definition of open balls

An **open ball** of radius $r$ around $x_0$ is the set of all points in the metric space that are less than a distance $r$ from $x_0$. In symbols:

  $$ B(x_0; r) = \{ x : d(x, x_0) < r \}$$

A **closed ball** of radius $r$ around $x_0$ is the set of all points in the metric space that are less than or equal to a distance $r$ from $x_0$. In symbols:

  $$ C(x_0; r) = \{ x : d(x, x_0) \leq r \}$$


## Definition of open sets
An **open set** is a set $U$ such that every $x \in U$ has an open ball $B(x; \epsilon)$ which is entirely contained in $U$.


## Open balls are open
Any open ball $B(x; \epsilon)$ is an open set.

*Proof:* If $y \in B(x; \epsilon)$, then $d(x, y) < \epsilon$. Let $\gamma = [\epsilon - d(x, y)] / 2$. Then $B(y; \gamma)$ must be contained within $B(x; \epsilon)$, since any $z \in B(y; \gamma)$ has $d(x, z) < d(x, y) + \gamma = (\epsilon + d(x,y))/2 < \epsilon$.

### Remark
Open balls are a kind of "primitive" open set that all other open sets are defined in terms of. We haven't yet proved that open balls are open sets, however. So let's do that.


## Topology Lemma for open sets
In a metric space $(X, d)$:

 1. $\emptyset$, $X$ are both open.
 2. If $\mathcal{S}$ is an arbitrary collection of open sets in $X$, then $\bigcup \mathcal{S}$ is open
 3. If $U_1$ and $U_2$ are open subsets of $X$, then $X_1 \cap X_2$ is open.

*Proof:*

(1) $\emptyset$ is vacuously open. $X$ is open because it contains *every* open ball, so it certainly contains *an* open for every point.

(2) If $x \in \bigcup \mathcal{S}$, then it must be in some open $U \in \mathcal{S}$. So  $\exists B(x; \epsilon) \subseteq U \subseteq \bigcup \mathcal{S}$. The arbitrary union of open sets is thus open.

(3) If $x \in U_1 \cap U_2$, there are open balls $B(x; \epsilon)$, $B(x; \delta)$ contained in $U_1$ and $U_2$, resp. The smaller of these balls is contained in both open sets, so is also in the intersection. $\Box$

## Definition of interior
The **interior** of a set $S$, written $int(S)$, is the union of all open sets contained in $S$. Since the collection of all open sets is closed under arbitrary union, $int(S)$ is the largest open set contained in $S$.


## Definition of closed sets

A set $S$ is **closed** in metric space $X$ if its complement $X - S$ is open. An result analogous to the topology lemma for open sets can be proved:


## Closed balls are closed
Every closed ball $C(x_0; r)$ is a closed set.

*Proof:* We have to prove that $C(x_0; r)$'s complement is open. So let $U = X - C(x_0; r)$, and let $y \in U$. This means that $d(y, x_0) > r$ by definition of $C(x_0; r)$. Suppose further that there isn't any open ball around $y$ that is contained entirely in $U$ (which is allowable since we are assuming $U$ is not open). Then every $\epsilon$-ball of $y$ intersects $C(x_0; r)$ In particular, $\epsilon = (d(y, x_0) - r) / 2$ > 0$, so some $z \in B(y; \epsilon)$ is also in $C(x_0; r)$.

We know

$$d(x_0,y) \leq d(x_0, z) + d(z, y)$$

Rearranging this we obtain:

$$d(x_0, z) \geq d(x_0, y) - d(z,y)$$

But since $d(z,y) < (d(x_0, y) - r) / 2$, we obtain

$$d(x_0, z) > d(x_0, y) - (d(x_0, y) - r)/2 = (d(x_0, y)  + r) / 2 > r$$

This contradicts that $z$ was assumed to be in $C(x_0; r)$. $\Box$


## Topology Lemma for Closed Sets
In a metric space $(X, d)$:

 1. $\emptyset$, $X$ are both closed.
 2. If $\mathcal{S}$ is an arbitrary collection of closed sets in $X$, then $\bigcap \mathcal{S}$ is closed.
 3. If $U_1$ and $U_2$ are closed subsets of $X$, then $X_1 \cup X_2$ is closed.

*Proof:* (1) is immediate. The rest can be proved using DeMorgan's law [$X - (A \cup B) = (X-A) \cap (X-B)$] and the TLFOS. $\Box$

## Definition of closure

The **closure** of a set $S$, written $clo(S)$, is the intersection of all closed sets containing $S$. Since the collection of all closed sets is closed under arbitrary intersections, $clo(S)$ is the smallest closed set that contains $S$.


## Necessary and sufficient conditions for set openness and closedness
A set $S$ is closed iff $clo(S) = S$, and open iff $int(S) = S$.

*Proof:* If $int(S) = S$, then $S$ is clearly open since $int(S)$ is. Conversely if $S$ is open, then $S$ is the largest open set contained in $S$. Similarly, if $clo(S) = S$, then $S$ is closed since $clo(S)$ is, and if $S$ is closed, $S$ itself is the smallest closed set containing $S$.

## Closure of the complement is the complement of the closure
$X - int(S) = clo(X - S)$

*Proof:* If $x$ is not an interior point of $S$, then no open ball centered at $x$ is contained entirely in $S$, so every open ball centered around $x$ must actually intersect $X - S$, meaning $x \in clo(X - S)$. Conversely, $x \in clo(X - S)$, every open ball around $x$ intersects $X - S$ since $x$ is a closure point of $X - S$, so it could not be an interior point of $S$.


## Definition of closure and interior points
A **closure point** of $S$ is any point $x$ such every open ball $B(x; \epsilon)$ around $x$ intersects $S$. An **interior point** of $S$ is a point $x$ such that there is some open ball $B(x; \epsilon)$ contained entirely in $S$.

## Alternative characterization of closure and interior
For any subset $S$ of a metric space, $int(S)$ is equivalently the set of all interior points of $S$, and $clo(S)$ is equivalently the set of all closure points of $S$.

*Proof:* $int(S)$ is the union of all open sets in $S$, and every interior point has an open ball around it that is contained in $S$, so every interior point is in $int(S)$. If $x \in int(S)$, then there exists an open $U \subseteq S$ with $x \in U$, so $x$ must be an interior point since some open ball around $x$ is contained in $U$ by definition of open sets, hence the open ball is also in $S$.

If $x$ is a closure point of $S$, then then it isn't an interior point of $X - S$ since every open ball intersecst $S$, so by a previous proposition it must be in $clo(S)$. Conversely, if $x \in clo(S)$, $x$ is in every closed superset of $S$, so it could not be in any open subset of $X - S$. So it is not in the interior of $X - S$, which means every open ball around $x$ intersects $S$, i.e. $x$ is a closure point of $S$.

## Definition of boundary
The **boundary** of a set $S$, notated $\partial S$, is $\{x \in X : \text{every } B(x; \epsilon) \text{ intersects both } S \text{ and } X-S\}$. The boundary of $S$ is made up of the **boundary points** of $S$, which are defined as members of the boundary.


## Boundary facts
 1. $\partial S = \partial X-S$
 2. $\partial \cap int(S) = \emptyset$
 3. $\partial S \subseteq clo(S)$
 4. $int(S) = S - \partial S$
 5. $clo(S) = S \cup \partial S$
 6. $\partial S = clo(S) \cap clo(X-S)$

*Proof:* For (1), $X - (X - S) = X$, so by definition they are the same.

For (2), no element of the boundary could be an interior point since every open ball around a boundary point must intersect $X - S$.

For (3), it's true by definition. Every boundary point is a closure point.

For (4), we know $int(S) \subseteq S - \partial S$ since every interior point of $S$ is in $S$ but, by (2), is not a boundary point. Conversely, if $x \in S - \partial S$, then some open ball around $x$ doesn't intersect $X - S$, so is entirely contained in $S$, hence $x \in int(S)$.

For (5), if $x \in clo(S)$, then every open ball around $x$ intersects $S$. If every open ball around $x$ also intersects $X-S$, then $x \in \partial S$. Otherwise one open ball $B$ does not, so $x$ must be in $S$ (because it could not be in $X-S$. Conversely, $S \subseteq clo(S)$ by definition and $\partial S \subseteq clo(S)$ by (3), so $S \cup \partial S \subseteq clo(S)$.

For (6), $x \in \partial S$ iff every open ball around $X$ intersects both $S$ and $X - S$ iff $x \in clo(S) \cap clo(X-S)$.


## More equivalent conditions for open and closed sets
A set $S$ is open iff it does not contain any boundary points and closed iff it contains all boundary points.

*Proof:* If $S$ is open, then $S = int(S)$, so we have $\partial S \cap S = \emptyset$ by (2) of the previous proposition. conversely, if $S$ does not contain boundary points, then $S = int(S)$ by (4) of the previous proposition, so $S$ is open.

If $S$ is closed, then $clo(S) = S$, so by (3) we have $\partial S \subseteq S$. Conversely, if $S$ contains all boundary points, then we have $S \cup \partial S = S = clo(S)$ by (5), so $S$ is closed.

## Definition of accumulation point
If $S$ is a subset of a metric space, then $a$ is an **accumulation point** of $S$ iff every open ball around $a$ intersects $S - a$.

We denote the set of all accumulation points of $S$ by $acc(S)$.


## Every accumulation point is a closure point
If $x \in acc(S)$, then $x$ is a closure point of $S$.

*Proof:* Every open ball around $x$ intersects $S - x$, so it clearly intersects $S$.


## Definition of an isolated point
If $S$ is a subset of a metric space and $x \in S$, then $x$ is said to be an **isolated point iff there is some open ball around $x$ for which the only point of $S$ the ball intersects is $x$ itself.

We denote the set of all isolated points of $S$ by $iso(S)$.


## Definition of diameter
A subset $A$ of a metric space $(X, d)$ has a **diameter** defined by $diam(A) := sup \{ d(a, b) : a, b \in A \}$. This is the supremum defined using the extended reals, so that the diameter of the empty set is $- \infty$ and the diameter of any set with the $d(a, b)$s not having a finite upper bound is $+ \infty$.


## Definition of distance

The **distance** of a point $x$ from a set $S$, written $dist(x,S)$, is defined to be $inf \{ d(x,s) : s \in S\}$.

## Distance and subsets
If $S$ and $T$ are subsets of a metric space $(X, d)$, then if $S \subseteq T$, then we have for any $x \in X$, $dist(x, S) \geq dist(X, T)$

*Proof:* Since $S \subseteq T$, we have $S_d = \{ d(x, s) : s \in S \} \subseteq \{ d(x, t) : t \in T\} = T_d$. So any lower bound for $T_d$ is a lower bound for $S_d$, meaning that $dist(x, T) = inf T_d \leq inf S_d = dist(x, S)$.


## Definition of nearest points
If $(X, d)$ is a metric space and $S \subseteq X$, then we say that $s \in S$ is the **nearest point** to some $x \in X$ iff $d(x, s) = dist(x, S)$.


## Equivalent characterization of isolated points
$x \in S$ is an isolated point of $S$ iff $dist(x, S - x) > 0$.

*Proof:* If $x$ is an isolated point of $S$, then some open ball $B(x; \epsilon)$ doesn't intersect $S - x$ (by definition). This means, for example, that $\epsilon / 2$ is a lower bound on the set $\{ d(x, s) : s \in S - x\}$, so by definition $dist(x, S-x) \geq \epsilon / 2 > 0$. Conversely, if $dist(x, S - x) > 0$, then let $\epsilon$ be such that $0 < \epsilon < dist(x, S - x)$. Then $B(x; \epsilon)$ doesn't intersect $S - x$ (if it did we'd have an $s \in S - x$ with $d(x, s) < dist(x, S - x)$). So $x$ is an isolated point.

## Equivalent characterization of accumulation points
For subset $S$ of metric space $(X, d)$, any $x \in X$ is an accumulation point of $S$ iff $dist(x, S - x) = 0$.

*Proof:* For any accumulation point $x$, every open ball intersects $S - x$, so there no positive lower bound on the collection of numbers $d(x, s)$ for $s \in S - x$. So $dist(x, S - x) = 0$. Conversely, if $dist(x, S - x) = 0$, then for any $\epsilon > 0$ we can find an $s \in S - x$ with $d(x, s) < \epsilon$. So $x$ must be an accumulation point.

## Equivalent characterization of closure points
For subset $S$ of metric space $(X, d)$, any $x \in X$ is a closure point of $S$ iff $dist(x, S) = 0$.

*Proof:* Every open ball around a closure point $x$ intersects $S$, so there is no positive lower bound on the set of distances $d(x, s)$ for $s \in S$. Thus $dist(x, S) = 0$. Conversely, if $dist(x, S) = 0$, then we can find points in $S$ arbitrarily close to $x$. In other words, every open ball around $x$ intersects $S$, so $x$ is a closure point of $S$.


## Accumulation points, isolated points and distance
For subset $S$ of a metric space $(X, d)$:

 1. For all $x \in acc(S)$, $dist(x, S) = 0$ and $x \notin iso(S)$.
 2. For all $x \notin S$, $x$ is an accumulation point of $S$ iff $dist(x, S) = 0$
 3. For all $x \in S$, $x$ is an accumulation point of $S$ iff $x$ is not an isolated point of $S$
 4. $x$ is an accumulation point of $S$ iff $x is not an isolated point in $S$ and $dist(x, S) = 0$


 1. For all $x \in acc(S)$, $dist(x, S) = 0$ and $x \notin iso(S)$.

    *Proof:* If $x \in acc(S)$, then we have $dist(x, S - x) = 0$ by definition. But $0 = dist(x, S - x) \geq dist(x, S) \geq 0$, so $x$ must have $dist(x, S) = 0$ as well.  Also, clearly $x$ could not be an isolated point, since no open ball around $x$ lies outside $S - x$.

 2. For all $x \notin S$, $dist(x, S) = 0$ implies that $x \in acc(S)$.

    *Proof:* If $dist(x, S) = 0$, then $x$ is a closure point of $S$, so every open ball around $x$ contains a point of $S$. Since $x \notin S$, every open ball actually contains a point of $S - x$, so $x$ is an accumulation point.

 3. For all $x \in S$, $x \notin iso(S)$ implies $x \in acc(S)$

    *Proof:* Since $x$ not isolated, no open ball around $X$ is completely disjoint from $S - x$, so $x$ must be an accumulation point. 

 4. if $x$ is not an isolated point in $S$ and $dist(x, S) = 0$, then $x \in acc(S)$

    *Proof:* Assuming $x \notin iso(S)$ and $dist(x, S) = 0$, then either $x \notin S$ or $x \in S$. In the former case, (2) applies to yield $x \in acc(S)$. In the latter, (3) applies to yield $x \in acc(S)$ again.

 5. Q.E.D.

    *Proof:* The converses to (2), (3) and (4) were proved in (1).


## Definition of a sequence
A **sequence** in a metric space $(X, d)$ is a function $a: \mathbb{N} \to X$, often represented by the notation $(x_n)$. A sequence $(y_n)$ is a **subsequence** of $(x_n)$ if there is an increasing function $f: \mathbb{N} \to \mathbb{N}$ such that for all $n$, $y_n = x_{f(n)}$

A **tail** of a sequence $(x_n)$ is a subsequence determined by $f(n) = n + k$ for some $k \in \mathbb{N}$.

## Definition of the set of terms
For any sequence $(x_n)$, we can form the set of all terms $\{x_n : n \in \mathbb{N} \}$. We will notate this set $[x_n]$.



## "Is-a-subsequence" relation is transitive
For any metric space $(X, d)$ and for any sequences $(x_n)$, $(y_n)$, $(z_n)$ in $X$, we have:

 - $(x_n)$ is a subsequence of itself

 - if $(x_n)$ is a subsequence of $(y_n)$ is a subsequence of $(z_n)$, then $(x_n)$ is a subsequence of $(z_n)$.


*Proof:* the identity function on $\mathbb{N}$ is increasing, so each sequence is a subsequence of itself. If $f$ and $g$ are the functions such that $x_n = y_{f(n)}$ and $y_n = z_{g(n)}$ for all $n$, then $z_{g(f(n))} = y_{f(n)} = x_n$, so $(x_n)$ is a subsequence of $(z_n)$ by $g \circ f$.


## Definition of convergence
If $(X, d)$ is a metric space, then sequence $(x_n)$ converges to $c \in X$ iff for every $\epsilon \in \mathbb{R}_{\geq 0}$, some tail of $(x_n)$ is entirely contained in $B(x; \epsilon)$. We denote this situation by $(x_n) \to c$, and $c$ is called a **limit** of $(x_n)$ in this case.

## Limits are unique.
If $(x_n)$ and $(y_n)$ are sequences in $X$ such that $(x_n) \to a$ and $(y_n) \to b$, then $a = b$.

*Proof:* If $a \neq b$, let $\epsilon  = d(a, b)/4$. Then we can find a tail sequence where all terms are contained in $B(a; \epsilon)$ and another where all terms another with all terms contained in $B(b; \epsilon)$. So we can find a tail sequence with all terms contained in both. Let $x$ be a term from this latter tail sequence. Then we have $d(a, b) \leq d(a, x) + d(x, b) \leq 2 \epsilon = d(a, b)/2$, a blatant contradiction.

### Remark
We are now justified in speaking of *the* limit of a sequence.


## A sequential characterization of interior and closure points.
If $(X, d)$ is a metric space and $S \subseteq X$, then $x$ is an interior point of $S$ iff no sequence in $X - S$ converges to $x$. Also, $x$ is a closure point of $S$ iff there is a sequence in $S$ that converges to $x$.

*Proof:* Every interior point $x$ of $S$ has a open ball centered at $x$ that is entirely contained in $S$, so no element entirely in $X - S$ could converge to $x$. 

If $x$ is a closure point of $S$, then every open ball around $x$ intersects $S$, so we can construct a sequence by choosing for each $n \in \mathbb{N}$, an element of $S$ in $B(x; 1/n)$. This sequence converges to $x$ since after we get to the $n$-th term, all points are within $1/n$ of $x$.

For the converses, if $x$ is not an interior point of $S$, it must be a closure point of $X - S$, so some sequence in $X - S$ converges to $x$. Also, if $x$ is not a closure point of $S$, it must be an interior point of $X - S$, so no sequence in $S$ converges to $x$.


## Every subsequence of a convergent sequence has the same limit.
If $(x_n)$ converges in a metric space $X$ to $L$, then any subsequence $(x_{n_k})$ also converges to $L$.

*Proof:* For any $\epsilon > 0$, we can find a tail starting at some $j$ that is contained in $B(L; \epsilon)$. Just find a $k$ such that $n_k > j$ to find a tail of $(x_{n_k})$ that is contained in $B(L; \epsilon)$.


## Convergence of subsequences
If $(x_n)$ is a sequence in $(X, d)$ and $z \in X$, then the following are equivalent:

 1. There is a subsequence of $(x_n)$ that converges to $z$
 2. Every open ball around $z$ intersects every tail sequence of $(x_n)$
 3. $z$ is in the closure of any tail sequence
 4. Either there are infinitely many terms of $(x_n)$ that equal $z$, or $z \in acc([x_n])$.

*Proof:* Another way of saying that every open ball around $z$ intersects every tail of $(x_n)$ is to say that every tail of $(x_n)$ every open ball around $z$, or that $z$ is a closure point of any tail. So (2) and (3) are equivalent. 

If (1) is true, then letting $(x_n)_{n \geq k}$ be a tail and $\epsilon > 0$, we want to find an $m \geq k$ such that $x_m \in B(z; \epsilon)$. But there is a tail sequence of $(x_{n_k})$ entirely contained in $B(z; \epsilon)$, starting at some $n_j$, so we take $m = max \{ n_j, k \}$. Then $x_m$ is as desired, proving every open ball of $z$ intersects $(x_n)_{n \geq k}$, so (3) is true. 

If (3) is true and there are at most finitely many terms of $(x_n)$ equal to $z$, then we can find a tail sequence that does not have any terms equal to $z$ but does have $z$ as a closure point. So $z$ is an accumulation point of $[x_n]$, proving that (4) is true.

If (4) is true, then in case there are infinitely many terms equal to $z$, then clearly we can build a subsequence of constant $z$-terms, which converges to $z$. In the case that $z \in acc([x_n])$, we can pick a term $x_{n_1}$ that is in $B(z; 1)$. If $x_{n_k}$ is defined already, we can pick a term $x_{n_{k+1}}$ that comes after $x_{n_k}$ and is in $B(z; 1/(k+1))$. This is a subsequence of $(x_n)$, and it converges to $z$ since after the $k$-th term in the subsequence, all points are within the $1/k$-ball around $z$.


## Definition of Cauchy sequence
If $(X, d)$ is a metric space, then $(x_n)$ is a **Cauchy sequence** for every $\epsilon > 0$, some tail of $(x_n)$ is contained in a ball of radius $\epsilon$.


## Equivalent definition of Cauchy sequence
This is the standard definition that I've seen in every other textbook so far: A sequence is Cauchy iff for every $\epsilon > 0$, there is some tail sequence $(x_n)_{n \geq N}$ with all terms $j, k \geq N$ such that $d(x_j, x_k) < \epsilon$. (In words, every term of the tail has all other terms in an $\epsilon$-ball around the first term).

*Proof:* If $(x_n)$ is Cauchy, then for every $\epsilon > 0$, there is some tail sequence and some point $z$ such that $B(z; \epsilon / 2)$ that contains the tail sequence, by definition. Pick any element of this tail, say $x_k$. Then for all other terms $x_j$, $d(x_k, x_j) \leq d(x_k, z) + d(x_j, z) = \epsilon$. Conversely, if for every $\epsilon > 0$ there is a tail sequence such that the $\epsilon$-ball around around any term contains the entire tail, then by definition $(x_n)$ is Cauchy.


## Every convergent sequence is Cauchy
If $(x_n) \to c$, then $(x_n)$ is Cauchy

*Proof:* Immediate.


## Subsequence convergence of Cauchy sequences
If $(x_n)$ is a Cauchy sequence and $c \in X$, then $(x_n) \to c$ iff there exists some subsequence $(x_{n_k})$ such that $(x_{n_k}) \to c$ as well.

*Proof:* If $(x_n) \to c$ then we know every subsequence converges to $c$ as well. Conversely, if some subsequence $(x_{n_k}) \to c$, then for $\epsilon > 0$, some tail starting at $n_j$ is contained within the $\epsilon / 2$-ball around $c$. Also since $(x_n)$ Cauchy, some tail of $(a_n)$ starting at $k$ is contained within an $\epsilon / 4$-ball centered somewhere. So all terms of the tail of $(a_n)$ starting at $max{k, n_j}$ are within an $\epsilon / 2$ of one another, and there is one term of this latter sequence that is within $\epsilon / 2$ of $c$, so all terms of this tail are within $\epsilon$ of $c$.


### Corollary
If $(x_n)$ is a Cauchy sequence that does not converge to any point, then $[x_n]$ is closed.

*Proof:* We must have that $(x_n)$ has no convergent subsequence. But this implies (by basic properties of the convergence of subsequences) that there could not be any closure points of $[x_n]$ not in $[x_n]$, since it would have to be an accumulation point of $[x_n]$, which would imply that a subsequence converges to the closure point in question.

## Cauchy sequences, subspaces and superspaces
If $(X, d)$ is a metric space and $(x_n)$ a Cauchy sequence in $X$, then $(x_n)$ is a Cauchy sequence in every superspace of $X$ and every subspace of $X$ that contains all the terms of the sequence.

*Proof:*  The equivalent definition of a Cauchy sequence is that for all $\epsilon > 0$ there is a tail of $(x_n)$ such that all terms $x_j$, $x_k$ in the tail have $d_X(x_j, x_k) < \epsilon$. But this is true in any superspace $Y$ and in any subspace $Z$ containing $[x_n]$, since $d_Y$ is an extension of $d_X$ and $d_Z$ is a restriction of $d_X$.

## Filling in the gaps for non-convergent Cauchy sequences
If $X$ is a metric space and $(x_n)$ is a Cauchy sequence in $X$ that does not converge in $X$, then we can create a superspace $Y$ of $X$ in which $(x_n)$ converges.

*Proof:* TODO


## Definition of complete metric spaces
A metric space is **complete** if every Cauchy sequence converges.

## Equivalent characterization of complete metric spaces ("Universal criterion")
A metric space is complete iff it is closed in every superspace.

*Proof:*  If a metric space $X$ is complete, then let $Y$ be any superspace of $X$. Let $z \in clo_Y(X)$. This means that there is a sequence $(x_n)$ in $X$ that converges to $z$. Convergent sequences are Cauchy, so $(x_n)$ is Cauchy in $Y$, and therefore Cauchy in $X$ since the metric space $X$ contains $(x_n)$ (it being a sequence in $X$). But $X$ is complete by hypothesis, so $(x_n)$ converges in $X$. If the limit were some element of $X$ that was distinct from $z$, then $(x_n)$ would have two limits in $Y$. So $z \in X$, meaning $X$ is closed in $Y$.

Conversely, TODO



## Definition of bounded subsets
A subset $S$ of a metric space $X$ is **bounded** if some $z \in X$ is such that an open ball centered at $z$ contains $S$.

## Cauchy sequences are bounded
If $(x_n)$ is Cauchy, then it is bounded

*Proof:* By definition, some tail sequence starting at $k$ of $(x_n)$ is contained in some open ball $B(z; 1)$, so letting $\epsilon = max \{ d(z, x_1), \ldots, d(z, x_{k - 1}, 1 \}$, the whole sequence is contained in $B(z; \epsilon + 1)$.

### Corollary: convergent sequences are bounded
Any convergent sequence is bounded.

*Proof:*  Every convergent sequence is Cauchy.


## Definition of totally bounded subsets
A subset $S$ of a metric space $X$ is **totally bounded** if for every $r \in \mathbb{R}_{\geq 0}$, there are finitely many open balls of radius $r$ that cover $S$.


## Definition of $\epsilon$-net
An $\epsilon$-net for a set $S$ is a finite subset $\{s_1, \ldots, s_n \}$ such that $S \subseteq \bigcup_1^n B(s_1, \epsilon)$.

We can rephrase the definition for totally bounded sets: a set $S$ is bounded if for every $\epsilon > 0$ there is an $\epsilon$-net for $S$.


## Sequential characterization of totally bounded subsets
A subset $S$ of a metric space $(X, d)$ is **totally bounded** iff every sequence in $S$ has a Cauchy subsequence.

*Proof:* If every sequence in $S$ has a Cauchy subsequence, then for every $\epsilon > 0$, pick a point $x_1 \in S$. If for some integer $k$, $x_k$ is chosen and $\{x_1, \ldots, x_k \}$ do not cover $S$, then we can find at least one point in $S$ that is isn't in any of the existing $k$ $\epsilon$-balls, so let that be $x_{k+1}$. This process must stop after finitely many terms, since otherwise we would have an infinite sequence with each term greater than $\epsilon$ away from every other term. Such a sequence would have no Cauchy subsequence.

Conversely, if $S$ is totally bounded and $(x_n)$ is any sequence in $S$, then there is some $1$-net for $S$, and one of the balls in this net contains infinitely many terms of $(x_n)$, so we have a subsequence $s_1$ of $(x_n)$ that is entirely contained in some open balls of radius $1$. Given that $s_1, \ldots, s_k$ are defined for some $k$, we can find a $1/(k+1)$-net of the terms of $s_k$, so we can find a subsequence of $s_k$ that is contained in one ball of of the $1/(k+1)$-net. Repeating this for all $k \in \mathbb{N}$, we obtain a sequence of subsequences of $(x_n)$, each term being a subsequence of the previous, and the $k$-th sequence contained in one $1/k$-ball. For any $m < n$,  $1/m$-ball that contains $s_m$ clearly contains the $1/n$-ball that contains $s_n$. So diagonalize the sequences by forming a new sequence $(a_n)$ where $a_n$ is the $n$-th term from sequence $s_n$. Then the tail sequence starting at $a_n$ is entirely contained in some $1/n$-ball, so $(a_n)$ is Cauchy.


## Nearest-point property
If $(X, d)$ is a non-empty metric space, then the following are equivalent.

 1. for any metric superspace $(Y, d)$ of $X$, $X$ has nearest points for all $y \in Y$
 2. Every  infinite bounded subset of $X$ has an accumulation point in $X$
 3. every bounded sequence in $X$ has a subsequence that converges in $X$.
 4. $X$ is complete and every bounded subset is totally bounded.

*Proof:* TODO

 1. (1) implies (2)

 2. (2) implies (3)

    *Proof:* If $(x_n)$ is a bounded sequence in $X$, then the collection $T = \{x_n : n \in \mathbb{N} \}$ is either infinite or finite. If infinite, $T$ must have an accumulation point $a$ by hypothesis, which means for every $\epsilon > 0$, every tail of $(x_n)$ has a term that is in $B(a; \epsilon)$, because if not then $B(a; min \{ x_1, \ldots, x_{k-1} \})$ would contain no elements of $T - a$, assuming that the tail sequence in question starts at position $k$.

Hence, we can find a term $x_{n_1} \in T - a$ that is also in $B(a; 1)$, and given that $x_{n_k}$ has been selected for some $k \in \mathbb{N}$, we can find a point $x_{n_{k+1}}$ from the tail sequence starting at $n_k$ in $B(a; 1/n)$. $(x_{n_k})$ is thus a subsequence of $(x_n)$ that converges to $a$.

 3. (3) implies (4)

    *Proof:* If $(x_n)$ is a Cauchy, it is bounded, so by hypothesis $(x_n)$ has a subsequence converging to some point $c$, so the whole sequence converges to $c$, meaning that $X$ is complete. Also, if $S$ is a bounded subset, any sequence in $S$ is also bounded, so any such sequence has a convergent subsequence. All convergent sequences are Cauchy, so every sequence in $S$ has a Cauchy subsequence. This implies that $S$ is totally bounded, by the sequential characterization of totally bounded sets.


## Definition of continuity
A function $f: X \to Y$ between two metric spaces $(X, d)$ and $(Y, e)$ is **continuous at $x \in X$** if for every open ball $B_Y(f(x); \epsilon)$ there is an open ball $B_X(x; \delta)$ for some $\epsilon$ and $\delta$, such that $f(B_X(x; \delta)) \subseteq B_Y(f(x); \epsilon)$.

$f$ is **continuous** if it is continuous at every point $x \in X$.

## Definition of function limits
Let $\r{B}(x; \epsilon) := B(x; \epsilon) - \{x \}$ be called the **deleted open ball** of radius $\epsilon$ centered at $x$.

If $(X, d)$ and $(Y, e)$ are two metric spaces, $S \subseteq X$, and $a$ is an accumulation point of $S$, then any function $f: S \to Y$ is said to have a **limit** $L$ at $a \in X$ if for every open ball $B_Y(L, \epsilon)$ in $Y$ around $L$, there is a deleted open ball $\r{B}_X(a; \delta$ in $X$ around $a$ such that
$f(\r{B}_X(a; \delta) \subseteq B_Y(L; \epsilon)$.

If $f$ has a limit of $L$ at $a$, we denote this $lim_{x \to a} f(x) = L$.


## Alternative characterization of continuity
A function $f: X \to Y$ is continuous at $a \in X$ iff either $lim_{x \to a} f(x) = f(a)$ or $a$ is an isolated point of $X$.

*Proof:* If $f$ is continuous at $a$, then if $a$ is an accumulation point, the definition of continuity satisfies the condition for $lim_{x \to a} f(x) = f(a)$. If $a$ is not an accumulation point, then $a$ is an isolated point. Conversely, if $a$ is an isolated point, then $f$ is continuous at $a$ since the singleton set of $a$ is an open set. If $a$ is not an isolated point but $lim_{x \to a} f(x) = f(a)$, then this is precisely the definition for $f$ being continuous at $a$.


## "Topological" definition of continuity
TODO: review

**Lemma:** A function $f:X \rightarrow Y$ is continuous iff every open $V \subseteq Y$ has $f^{pre}(V)$ open in $X$.

*Proof:* If $V \subset Y$ is open in $Y$, then if $f^{pre}(V)$ is non-empty (the empty set is open), then any $x \in f^{pre}(V)$ has $f(x) \in V$, so some $\epsilon$-ball around $f(x)$ fits in $V$. By continuity some $\delta$-ball around $x$ maps into the $\epsilon$-ball around $f(x)$, which shows in particular that $x$ has some open ball around it that is contained in $f^{pre}(V)$. So the set is open.

Conversely if the inverse image of any open set in $Y$ is an open set in $X$, then  for any $x \in X$, any $\epsilon$-ball around $f(x)$ is open in $Y$, so the inverse image of that ball is open. Call that inverse image $A$. Then $A$, being open, contains some open ball around $x$. This open ball is the $\delta$-ball we seek. $\Box$


## Compact sets

A subset $S$ of some metric space is **compact** if for every collection $\mathcal{U}$ of open sets whose union contains $S$, there's a finite subcollection $\{U_1, \ldots, U_n\}$ whose union also contains $S$. We call any collection of open sets whose union contains $S$ an **open cover** of $S$, and the finite subcollection is called a **finite sub-cover**. Restated, a subset is compact if every open cover has a finite subcover.

A set S in a metric space $(X,d)$ is **bounded** if for some $x \in X$, $S \subseteq B(x; \epsilon)$ for some $\epsilon > 0$.

**Lemma:** A compact set $S$ in a metric space is bounded.  
*Proof:* Suppose $S$ is compact and non-empty (empty sets are clearly bounded). Fix a point $x \in S$. The set of all open balls of $x$ covers $S$ (it covers the whole metric space, actually). This is an open cover of $S$, so there's at least one finite subcover $\{ B(x; r_1), \ldots, B(x; r_n) \}$. The union of these is just the biggest open ball, $B(x; N)$ where $N := max\{r_1, \ldots, r_n\}$. Hence this open ball contains $S$, meaning $S$ is bounded. $\Box$

**Lemma:** A compact subset $S$ of some metric space $X$ is closed.

*Proof:* Let $y$ be any point in $X-S$. For any $x \in S$ there is at least one pair of open balls around $x$ and $y$ that are disjoint (take $\epsilon_x = d(x,y)$). Then the collection of all such balls $B(x; \epsilon_x)$  is an open cover of $S$, which, being compact, implies the existence of a finite number of them that cover $S$. These open balls $B(x_1; \epsilon_1), \ldots, B(x_n; \epsilon_n)$ have corresponding open balls $D_{\delta_i}(y)$ around $y$ that are disjoint from the $B(x_i; \epsilon_i)$'s. The smallest ball $D_{\delta_i}(y)$ is disjoint from the whole union of $B(x_k; \epsilon_k)$'s, so it's disjoint from $S$, meaning contained in $X-S$. So $X-S$ is open. $\Box$

**Lemma:** If $K$ is a compact metric space, $f: K \rightarrow Y$ is a continuous function, with $Y$ arbitrary, then the image $f(K)$ is compact in $Y$.

*Proof:* Let $\mathcal{U}$ be an open cover of in $img(f)$, define $\mathcal{U}^{pre} = \{f^{pre}(A) : A \in \mathcal{U}\}$. Then $\mathcal{U}^{pre}$ covers $K$ since every $k \in K$ is mapped by $f$ to some $f(k) \in img(f)$, and $\mathcal{U}$, covering all of $img(f)$, has some $A_k$ containing $f(k)$, so $f^{pre}(A_k)$ contains $k$. But $K$ is compact, so $\mathcal{U}^{pre}$ has a finite subcover $\mathcal{F}$. All the sets in the subcover are the pre-images of sets in $img(f)$, i.e. of the form $f^{pre}(S)$ for some $S$. So $\mathcal{F} = \{ f^{pre}(S_1), \ldots, f^{pre}(S_n)\}$, and the $S_i$ form an open cover of $img(f)$ (since $f(f^{pre}(X)) = X$. Furthermore, the $S_i$'s are a subcollection of $\mathcal{U}$ by definition of $\mathcal{F}$. So $f(K)$ is compact. $\Box$

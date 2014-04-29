# in $X - S$.

*Proof:* If $S$ is closed and $(x_n)$ is entirely in $S$ and convergent in $X$, then the limit of $(x_n)$, call it $L$, is a closure point of $S$ by the previous proposition, so $L \in S$. Conversely if every convergent sequence contained in $S$ converges to a limit in $S$, then since every closure point of $S$ has a limit in $S$ converging to it, $S$ must contain it.

$S$ is open iff $X - S$ is closed, so the second statement holds from the first.# Definition of metric spaces

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

We shall on occasion need to specify the metric space that the ball is contained in. If the metric space is $(X,d)$, then $B_X^d(x; \epsilon)$ is the open ball of radius $\epsilon$ centered at $x$ in metric space $(X,d)$. We will often just use $B_X(x; \epsilon)$ if the metric is clear from the context.


## Definition of open sets
An **open set** is a set $U$ such that every $x \in U$ has an open ball $B(x; \epsilon)$ which is entirely contained in $U$.


## Open balls are open
Any open ball $B(x; \epsilon)$ is an open set.

*Proof:* If $y \in B(x; \epsilon)$, then $d(x, y) < \epsilon$. Let $\gamma = [\epsilon - d(x, y)] / 2$. Then $B(y; \gamma)$ must be contained within $B(x; \epsilon)$, since any $z \in B(y; \gamma)$ has $d(x, z) < d(x, y) + \gamma = (\epsilon + d(x,y))/2 < \epsilon$.

### Remark
Open balls are a kind of "primitive" open set that all other open sets are defined in terms of. We haven't yet proved that open balls are open sets, however. So let's do that.

## Open sets are unions of open balls
Every open set $U$ in $(X,d)$ is a union of open balls.

*Proof:* By definition all $u \in U$ have an $\epsilon_u$ such that $B(u; \epsilon_u) \subseteq U$. So $\bigcup_{u \in } B(u; \epsilon_u) = U$.


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

## Closure of the complement is the complement of the interior
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
 2. $\partial S \cap int(S) = \emptyset$
 3. $\partial S \subseteq clo(S)$
 4. $int(S) = S - \partial S$
 5. $clo(S) = S \cup \partial S$
 6. $\partial S = clo(S) \cap clo(X-S)$
 7. $clo(S) = int(S) \cup \partial S$

*Proof:* For (1), $X - (X - S) = X$, so by definition they are the same.

For (2), no element of the boundary could be an interior point since every open ball around a boundary point must intersect $X - S$.

For (3), it's true by definition. Every boundary point is a closure point.

For (4), we know $int(S) \subseteq S - \partial S$ since every interior point of $S$ is in $S$ but, by (2), is not a boundary point. Conversely, if $x \in S - \partial S$, then some open ball around $x$ doesn't intersect $X - S$, so is entirely contained in $S$, hence $x \in int(S)$.

For (5), if $x \in clo(S)$, then every open ball around $x$ intersects $S$. If every open ball around $x$ also intersects $X-S$, then $x \in \partial S$. Otherwise one open ball $B$ does not, so $x$ must be in $S$ (because it could not be in $X-S$. Conversely, $S \subseteq clo(S)$ by definition and $\partial S \subseteq clo(S)$ by (3), so $S \cup \partial S \subseteq clo(S)$.

For (6), $x \in \partial S$ iff every open ball around $X$ intersects both $S$ and $X - S$ iff $x \in clo(S) \cap clo(X-S)$.

For (7), we use (4) and (5) to obtain that $clo(S) = S \cup \partial S$ and $int(S) \cup \partial S = (S - \partial S) \cup \partial S$. These two are the same since $A \cup B = (A - B) \cup B$ is true for every set $A$ and $B$. (Note that by (2) we have that the closure is the disjoint union of the interior and the boundary).


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

### Remark
Whether an isolated point is in the interior of $S$ depends on whether the singleton set consisting of that point is open. Some metric spaces have isolated points in the interior, others do not. (Most familiar ones, like $\mathbb{R}^n$, do not).


## Subspace topology
If $S$ is a subspace of $X$, then the collection of open subsets of $S$ is precisely the set $\{ U \cap S : U \text{open in} X\}$

*Proof:* $B_S(x; \epsilon) = B_X(s; \epsilon) \cap S$, so if $U$ is open in $S$, then $U$ is a union of open balls in $S$, meaning it is the union of sets which are the intersection of an open ball of $X$ and $S$, which means $U = A \cap S$, where $A$ is the union of the corresponding open balls in $X$. Conversely, any open set in $X$ is a union of open balls, so by intersecting the open set with $S$ we obtain a union of open balls of $S$, hence an open set.


## Definition of diameter
A subset $A$ of a metric space $(X, d)$ has a **diameter** defined by $diam(A) := sup \{ d(a, b) : a, b \in A \}$. This is the supremum defined using the extended reals, so that the diameter of the empty set is $- \infty$ and the diameter of any set with the $d(a, b)$'s not having a finite upper bound is $+ \infty$.


## Definition of distance

The **distance** of a point $x$ from a set $S$, written $dist(x,S)$, is defined to be $inf \{ d(x,s) : s \in S\}$.

## Distance and subsets
If $S$ and $T$ are subsets of a metric space $(X, d)$, then if $S \subseteq T$, then we have for any $x \in X$, $dist(x, S) \geq dist(X, T)$

*Proof:* Since $S \subseteq T$, we have $S_d = \{ d(x, s) : s \in S \} \subseteq \{ d(x, t) : t \in T\} = T_d$. So any lower bound for $T_d$ is a lower bound for $S_d$, meaning that $dist(x, T) = inf T_d \leq inf S_d = dist(x, S)$.


## Equivalent characterization of isolated points
$x \in S$ is an isolated point of $S$ iff $dist(x, S - x) > 0$.

*Proof:* If $x$ is an isolated point of $S$, then some open ball $B(x; \epsilon)$ doesn't intersect $S - x$ (by definition). This means, for example, that $\epsilon / 2$ is a lower bound on the set $\{ d(x, s) : s \in S - x\}$, so by definition $dist(x, S-x) \geq \epsilon / 2 > 0$. Conversely, if $dist(x, S - x) > 0$, then let $\epsilon$ be such that $0 < \epsilon < dist(x, S - x)$. Then $B(x; \epsilon)$ doesn't intersect $S - x$ (if it did we'd have an $s \in S - x$ with $d(x, s) < dist(x, S - x)$). So $x$ is an isolated point.

## Equivalent characterization of accumulation points
For subset $S$ of metric space $(X, d)$, any $x \in X$ is an accumulation point of $S$ iff $dist(x, S - x) = 0$.

*Proof:* For any accumulation point $x$, every open ball intersects $S - x$, so there no positive lower bound on the collection of numbers $d(x, s)$ for $s \in S - x$. So $dist(x, S - x) = 0$. Conversely, if $dist(x, S - x) = 0$, then for any $\epsilon > 0$ we can find an $s \in S - x$ with $d(x, s) < \epsilon$. So $x$ must be an accumulation point.

## Equivalent characterization of closure points
For subset $S$ of metric space $(X, d)$, any $x \in X$ is a closure point of $S$ iff $dist(x, S) = 0$.

*Proof:* Every open ball around a closure point $x$ intersects $S$, so there is no positive lower bound on the set of distances $d(x, s)$ for $s \in S$. Thus $dist(x, S) = 0$. Conversely, if $dist(x, S) = 0$, then we can find points in $S$ arbitrarily close to $x$. In other words, every open ball around $x$ intersects $S$, so $x$ is a closure point of $S$.

## Equivalent characterization of interior points
For subset $S$ of metric space $(X, d)$, any $x \in X$ is an interior point of $S$ iff $dist(x, X - S) > 0$.

*Proof:* $dist(x, X - S) > 0$ means that $x$ isn't a closure point of $X - S$, by the distance characterization of closure points. So $x \in int(S)$ since $int(S) = X - clo(X -S)$. Conversely, any interior point of $S$ could not be a closure point of $X - S$, so has a positive distance from $X -S$.


## Accumulation points, isolated points and distance
For subset $S$ of a metric space $(X, d)$:

 1. For all $x \in acc(S)$, $dist(x, S) = 0$ and $x \notin iso(S)$.
 2. For all $x \notin S$, $x$ is an accumulation point of $S$ iff $dist(x, S) = 0$
 3. For all $x \in S$, $x$ is an accumulation point of $S$ iff $x$ is not an isolated point of $S$
 4. $x$ is an accumulation point of $S$ iff $x is not an isolated point in $S$ and $dist(x, S) = 0$


 1. For all $x \in acc(S)$, $dist(x, S) = 0$ and $x \notin iso(S)$.

    *Proof:* Accumulation points are closure points, so $dist(x, S) = 0$. Also, $x$ could not be an isolated point since no open ball around $x$ lies outside $S - x$.

 2. For all $x \notin S$, $dist(x, S) = 0$ implies that $x \in acc(S)$.

    *Proof:* If $dist(x, S) = 0$, then $x$ is a closure point of $S$, so every open ball around $x$ contains a point of $S$. Since $x \notin S$, every open ball actually contains a point of $S - x$, so $x$ is an accumulation point.

 3. For all $x \in S$, $x \notin iso(S)$ implies $x \in acc(S)$

    *Proof:* Since $x$ not isolated, no open ball around $X$ is completely disjoint from $S - x$, so $x$ must be an accumulation point. 

 4. if $x$ is not an isolated point in $S$ and $dist(x, S) = 0$, then $x \in acc(S)$

    *Proof:* Assuming $x \notin iso(S)$ and $dist(x, S) = 0$, then either $x \notin S$ or $x \in S$. In the former case, (2) applies to yield $x \in acc(S)$. In the latter, (3) applies to yield $x \in acc(S)$ again.

 5. Q.E.D.

    *Proof:* The converses to (2), (3) and (4) were proved in (1).


## Definition of $\epsilon$-closeness
Two points $x$ and $y$ of a metric space $X$ are **$\epsilon$-close** for some $\epsilon > 0$ if $d(x, y) < \epsilon$. More generally, $S \subseteq X$ is **$\epsilon$-close** to $x \in X$ if $x$ is $\epsilon$-close to every point in $S$. In other words, $S$ is $\epsilon$-close to $x$ iff $S$ is contained within the $\epsilon$-open ball around $z$.


## Definition of a sequence
A **sequence** in a metric space $(X, d)$ is a function $a: \mathbb{N} \to X$, often represented by the notation $(x_n)$. A sequence $(y_n)$ is a **subsequence** of $(x_n)$ if there is an increasing function $f: \mathbb{N} \to \mathbb{N}$ such that for all $n$, $y_n = x_{f(n)}$

A **tail** of a sequence $(x_n)$ is a subsequence determined by $f(n) = n + k$ for some $k \in \mathbb{N}$.

## Definition of the set of terms
For any sequence $(x_n)$, we can form the set of all terms $\{x_n : n \in \mathbb{N} \}$. We will notate this set $[x_n]$.


## Definition of $\epsilon$-closeness for sequences
A sequence $(x_n)$ is said to be **$\epsilon$-close** to $x$ iff its set of terms is.



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

## Equivalent characterization of convergence
A sequence $(x_n)$ converges to $x$ in a metric space $(X, d)$ iff the sequence $(d(x_n, x))$ converges to $0$ in $\mathbb{R}$.

*Proof:* If $(x_n) \to x$, then for any $\epsilon > 0$, we can find an $N$ such that $d(x_n, x) < \epsilon$ for all $n \geq N$. So the tail sequence of $(d(x_n, x))$ starting at $N$ is contained in an $\epsilon$-ball around $0$ in $\mathbb{R}$, proving the sequence $(d(x_n, x))$ converges to zero. Conversely, if some tail sequence of $(d(x_n, x))$ converges to $0$, then the tail seqence of $(x_n)$ starting at the same point has all terms within the $\epsilon$-ball around $x$.

## Topological characterization of convergence
If $(x_n)$ is a sequence in $(X, d)$, then $(x_n)$ converges to $c \in X$ iff every open set in $X$ containing $c$ also contains some tail of $(x_n)$.

*Proof:* If every open set containing $c$ contains a tail of $(x_n)$, then $(x_n) \to c$ since it proves that every open ball around $c$ contains a tail. Conversely, if every open ball centered at $c$ contains some tail, then if $U$ is open and $c \in U$, then some open ball around $c$ is contained in $U$. This open ball contains a tail, so $U$ does as well.


## A sequential characterization of interior and closure points.
If $(X, d)$ is a metric space and $S \subseteq X$, then $x$ is an interior point of $S$ iff no sequence in $X - S$ converges to $x$. Also, $x$ is a closure point of $S$ iff there is a sequence in $S$ that converges to $x$.

*Proof:* Every interior point $x$ of $S$ has a open ball centered at $x$ that is entirely contained in $S$, so no element entirely in $X - S$ could converge to $x$. 

If $x$ is a closure point of $S$, then every open ball around $x$ intersects $S$, so we can construct a sequence by choosing for each $n \in \mathbb{N}$, an element of $S$ in $B(x; 1/n)$. This sequence converges to $x$ since after we get to the $n$-th term, all points are within $1/n$ of $x$.

For the converses, if $x$ is not an interior point of $S$, it must be a closure point of $X - S$, so some sequence in $X - S$ converges to $x$. Also, if $x$ is not a closure point of $S$, it must be an interior point of $X - S$, so no sequence in $S$ converges to $x$.

## A sequential characterization of open and closed sets
If $S$ is a subset of a metric space $(X, d)$, then $S$ is closed iff every sequence in $S$ that converges in $X$ converges to a limit in $S$. $S$ is open iff every sequence in $X - S$ converges in $X - S$.

*Proof:* If $S$ is closed and $(x_n)$ is entirely in $S$ and convergent in $X$, then the limit of $(x_n)$, call it $L$, is a closure point of $S$ by the previous proposition, so $L \in S$. Conversely if every convergent sequence contained in $S$ converges to a limit in $S$, then since every closure point of $S$ has a limit in $S$ converging to it, $S$ must contain it.

$S$ is open iff $X - S$ is closed, so the second statement holds from the first.


## Every subsequence of a convergent sequence has the same limit.
If $(x_n)$ converges in a metric space $X$ to $L$, then any subsequence $(x_{n_k})$ also converges to $L$.

*Proof:* For any $\epsilon > 0$, we can find a tail starting at some $j$ that is contained in $B(L; \epsilon)$. Just find a $k$ such that $n_k > j$ to find a tail of $(x_{n_k})$ that is contained in $B(L; \epsilon)$.



## Convergence of subsequences
### Lemma: $\epsilon$-closeness for subseqences and tail sequences
If $(x_n)$ is a sequence and $(y_n)$ is a subsequence of $(x_n)$ such that $(y_n)$ is $\epsilon$-close to $z \in X$, then every tail of $(x_n)$ contains a term that is $\epsilon$-close to $z$.

*Proof:* Let $(x_n)_{n \geq k}$ be the tail of $(x_n)$ starting at $k$. Then $y_k = x_j$ for some $j > k$, i.e. $y_k$ is a term of the tail starting at $k$. Every term in $(y_n)$ is $\epsilon$-close by hypothesis, so this concludes the proof.

### Theorem
If $(x_n)$ is a sequence in $(X, d)$ and $z \in X$, then the following are equivalent:

 1. There is a subsequence of $(x_n)$ that converges to $z$
 2. Every open ball around $z$ intersects every tail sequence of $(x_n)$
 3. $z$ is in the closure of any tail sequence
 4. Either there are infinitely many terms of $(x_n)$ that equal $z$, or $z \in acc([x_n])$.

*Proof:* Another way of saying that every open ball around $z$ intersects every tail of $(x_n)$ is to say that every tail of $(x_n)$ intersects every open ball around $z$, or that $z$ is a closure point of any tail. So (2) and (3) are equivalent. 

If (1) is true, we know for every $\epsilon > 0$ there is some subsequence (tail sequence of the convergent subsequence) of $(x_n)$ that is $\epsilon$-close to $z$. So every tail of $(x_n)$ contains a term that is $\epsilon$-close to $z$. In other words, the $\epsilon$-ball around $z$ intersects every tail sequence. Since $\epsilon$ was arbitrary, $z$ is a closure point of every tail sequence.

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


## Definition of complete metric spaces
A metric space is **complete** if every Cauchy sequence converges.


## Definition of bounded subsets
A subset $S$ of a metric space $X$ is **bounded** if some $z \in X$ is such that an open ball centered at $z$ contains $S$.

## Cauchy sequences are bounded
If $(x_n)$ is Cauchy, then it is bounded

*Proof:* By definition, some tail sequence starting at $k$ of $(x_n)$ is contained in some open ball $B(z; 1)$, so letting $\epsilon = max \{ d(z, x_1), \ldots, d(z, x_{k - 1}, 1 \}$, the whole sequence is contained in $B(z; \epsilon + 1)$.

### Corollary: convergent sequences are bounded
Any convergent sequence is bounded.

*Proof:*  Every convergent sequence is Cauchy.


## Definition of bounded function
If $(X, d)$ is a metric space and $S$ is any set, then a function $f: S \to X$ is called a **bounded function** iff $img f$ is a bounded subset of $X$. The set of all bounded functions $S \to X$ is denoted $Bf(S, X)$.

## Metric space of bounded functions
We can define a metric on $Bf(S,X)$ by defining $e(f,g) := sup \{ d(f(s), g(s)) : s \in S \}$. This metric is called the **supremum metric**, and the resulting metric space is what we will take to be the standard metric space of bounded functions.

*Proof:*  We have to prove that $e$ is a metric on $Bf(S, X)$. First we must prove that $e$ is a function $Bf(S, X) \times Bf(S, X) \to \mathbb{R}$. Really we need to prove that the supremum is always finite. But $img f$ is contained in some ball $B(z_f; \epsilon_f)$, and similarly $img g$ is contained in some $B(z_g; \epsilon_g)$. So for all $s \in S$, $d(f(s), g(s)) \leq d(f(s), z_f) + d(z_f, z_g) + d(z_g, g(s)) \leq \epsilon_f + \epsilon_g + d(z_f, z_g)$ by the triangle inequality, so the set $\{d(f(s), g(s)) : s \in S\}$ is bounded above in $\mathbb{R}$ and hence has a finite supremum. So the function is well-defined, at least.

To prove symmetry, note that $d(f(s), g(s)) = d(g(s), f(s))$ for all $s \in S$ by symmetry of $d$, so $e(f,g) = e(g, f)$. 

To prove positive definiteness, note that $d(f(s), f(s)) = 0$ for all $s \in S$, so clearly $e(f, f) = sup \{ 0 \} = 0$. For $f \neq g$, there is some $s$ such that $f(s) \neq g(s)$, hence $d(f(s), g(s)) \neq 0$. So the supremum is positive.

To prove the triangle inequality, we need $e(f, h) \leq e(f, g) + e(g, h)$ for any bounded $f, g, h: S \to X$. So we need to prove

$$sup \{ d(f(s), h(s) : s \in S \} \leq sup \{ d(f(s), g(s)) : s \in S \} + sup \{ d(g(s), h(s)) : s \in S \}$$

We generalize slightly for more compact notation. We have an index set $I$, and 3 subsets of $\mathbb{R}$ that are bounded above: $X = \{x_i : i \in I \}$, $Y = \{y_i : i \in I \}$, $Z = \{z_i : i \in I \}$. For all $i$, $x_i \leq y_i + z_i$. Prove that $sup X \leq sup Y + sup Z$. The key is to note that for all $w_i \in W = \{ y_i + z_i : i \in I \}$, x_i \leq w_i$. So any upper bound $u$ of $W$ is an upper bound of $X$ as well, and hence $sup X \leq u$. Now just note that $sup Y + sup Z$ is an upper bound of $W$ since $y_i \leq sup Y$ for all $i$ and $z_i \leq sup Z$ for all $i$. This establishes the triangle inequality.

## Convergence in $Bf(S, X)$ implies pointwise convergence
If $S$ is any set, $(X, d)$ any metric space, and $(f_n)$ is a sequence in $Bf(S, X)$ that converges to $g$ in $Bf(S, X)$, then for all $s \in S$, the sequence $(f_n(s))$ converges to $g(s)$ in $X$.

 1. Let $x \in S$ and $\epsilon > 0$.

 2. There is a $k \in \mathbb{N}$ such that $sup \{ d(f_m(s), g(s) : s \in S \}$ for all $m \geq k$.

    *Proof:* Since $(f_n)$ converges to $g$, there is some $k$ such that the tail of $(f_n)$ starting at $k$ is contained within the $\epsilon$-ball around $g$.

 3. $(f_n(x))_{n \geq k}$ is $\epsilon$-close to $g(x)$.

    *Proof:* $d(f_m(x), g(x) \leq sup \{ d(f_m(s), g(s) : s \in S \} < \epsilon$ for all $m \geq k$ by (2).

 4. Q.E.D.

    *Proof:* (3) proves we can find a tail of $(f_n(x))$ that is $\epsilon$-close to $g(x)$, and $\epsilon$ was arbitrary by (1).


## Definition of uniform and pointwise convergence
If $S$ is any set, $(X,d)$ is any metric space, $(f_n)$ is a sequence of functions $S \to X$ and $g: S \to X$, then 

 - $(f_n)$ converges **pointwise** to $g$ iff $(f_n(s))$ converges to $g(s)$ for all $s \in S$
 - $(f_n)$ converges **uniformly** to $g$ iff $sup \{ d(f_n(s), g(s)) : s \in S \}$ is finite for all $n$ and $(sup \{ d(f_n(s), g(s)) : s \in S \})$ converges to $0$ in $\mathbb{R}$.

### Remark
The supremum metric defined on $B(S, X)$ is a metric that ensures that convergent sequences converge uniformly. However, we do not insist that functions must be bounded in order for them to converge uniformly. Our definition here is more general.

## Uniform convergence implies pointwise convergence
We generalize our previous proposition for metric spaces of bounded functions. If $S$ is any set, $(X, d)$ any metric space, and $(f_n)$ is a sequence of functions $S \to X$, then if $(f_n)$ converges uniformly to $g$, it converges pointwise to $g$ as well.

*Proof:* We must prove that $(d(f_n(s), g(s))$ converges to $0$ for all $s \in S$. But $0 \leq d(f_n(s), g(s)) \leq sup \{ d(f_n(x), g(x)) : x \in S \}$ by definition, so by the squeeze theorem of real analysis, $(d(f_n(s), g(s)))$ converges to $0$.


## Definition of totally bounded subsets
A subset $S$ of a metric space $X$ is **totally bounded** if for every $r \in \mathbb{R}_{\geq 0}$, there are finitely many open balls of radius $r$ that cover $S$.


## A totally bounded subset is bounded
Any totally bounded subset $S$ of $(X, d)$ is bounded.

*Proof:* We have some $1$-net covering $S$, so $\bigcup_1^n B(x_1; 1)$ for some $x_1, \ldots, x_n$. For any $s \in S$, $s$ is contained in the $1$-ball around some $x_k$, so $d(x_1, s) \leq d(x_1, x_k) + d(x_k, s) < d(x_1, x_k) + 1$. So let $\epsilon = max \{ d(x_1, x_k) + 1 : 1 \leq k \leq n \}$. Then $S \subseteq B(x_1; \epsilon)$, so $S$ is bounded.


## Definition of $\epsilon$-net
An $\epsilon$-net for a set $S$ is a finite subset $\{s_1, \ldots, s_n \}$ such that $S \subseteq \bigcup_1^n B(s_1, \epsilon)$.

We can rephrase the definition for totally bounded sets: a set $S$ is bounded if for every $\epsilon > 0$ there is an $\epsilon$-net for $S$.


## Sequential characterization of totally bounded subsets
A subset $S$ of a metric space $(X, d)$ is **totally bounded** iff every sequence in $S$ has a Cauchy subsequence.

*Proof:* If every sequence in $S$ has a Cauchy subsequence, then for every $\epsilon > 0$, pick a point $x_1 \in S$. If for some integer $k$, $x_k$ is chosen and $\{x_1, \ldots, x_k \}$ do not cover $S$, then we can find at least one point in $S$ that is isn't in any of the existing $k$ $\epsilon$-balls, so let that be $x_{k+1}$. This process must stop after finitely many terms, since otherwise we would have an infinite sequence with each term greater than $\epsilon$ away from every other term. Such a sequence would have no Cauchy subsequence.

Conversely, if $S$ is totally bounded and $(x_n)$ is any sequence in $S$, then there is some $1$-net for $S$, and one of the balls in this net contains infinitely many terms of $(x_n)$, so we have a subsequence $s_1$ of $(x_n)$ that is entirely contained in some open balls of radius $1$. Given that $s_1, \ldots, s_k$ are defined for some $k$, we can find a $1/(k+1)$-net of the terms of $s_k$, so we can find a subsequence of $s_k$ that is contained in one ball of of the $1/(k+1)$-net. Repeating this for all $k \in \mathbb{N}$, we obtain a sequence of subsequences of $(x_n)$, each term being a subsequence of the previous, and the $k$-th sequence contained in one $1/k$-ball. For any $m < n$,  $1/m$-ball that contains $s_m$ clearly contains the $1/n$-ball that contains $s_n$. So diagonalize the sequences by forming a new sequence $(a_n)$ where $a_n$ is the $n$-th term from sequence $s_n$. Then the tail sequence starting at $a_n$ is entirely contained in some $1/n$-ball, so $(a_n)$ is Cauchy.


## Bolzano-Weierstrass property
If $(X, d)$ is a non-empty metric space, then the following are equivalent.

 1. Every  infinite bounded subset of $X$ has an accumulation point in $X$
 2. every bounded sequence in $X$ has a subsequence that converges in $X$.
 3. $X$ is complete and every bounded subset is totally bounded.

*Proof:*

 1. (1) implies (2)

    *Proof:* If $(x_n)$ is a bounded sequence in $X$, then the collection $T = \{x_n : n \in \mathbb{N} \}$ is either infinite or finite. If infinite, $T$ must have an accumulation point $a$ by hypothesis, which means for every $\epsilon > 0$, every tail of $(x_n)$ has a term that is in $B(a; \epsilon)$, because if not then $B(a; min \{ x_1, \ldots, x_{k-1} \})$ would contain no elements of $T - a$, assuming that the tail sequence in question starts at position $k$.

Hence, we can find a term $x_{n_1} \in T - a$ that is also in $B(a; 1)$, and given that $x_{n_k}$ has been selected for some $k \in \mathbb{N}$, we can find a point $x_{n_{k+1}}$ from the tail sequence starting at $n_k$ in $B(a; 1/n)$. $(x_{n_k})$ is thus a subsequence of $(x_n)$ that converges to $a$.

 2. (2) implies (1)

    *Proof:* If $S$ is an infinite bounded subset of $X$, then we can find a sequence $(x_n)$ in $S$ of distinct terms. It's a bounded sequence, so by hypothesis it has a convergent subsequence $(x_{n_k})$. This means that the limit of the subsequence is an accumulation point, since every open ball around the limit entirely contains some tail of the subsequence and all the points are distinct.


 3. (2) implies (3)

    *Proof:* If $(x_n)$ is a Cauchy, it is bounded, so by hypothesis $(x_n)$ has a subsequence converging to some point $c$, so the whole sequence converges to $c$, meaning that $X$ is complete. Also, if $S$ is a bounded subset, any sequence in $S$ is also bounded, so any such sequence has a convergent subsequence. All convergent sequences are Cauchy, so every sequence in $S$ has a Cauchy subsequence. This implies that $S$ is totally bounded, by the sequential characterization of totally bounded sets.

 4. (3) implies (2)

    *Proof:* If $(x_n)$ is bounded, then its set of terms is bounded, and hence by hypothesis totally bounded. This is equivalent to saying that every sequence in the set has a Cauchy subsequence. Hence $(x_n)$ has a Cauchy subsequence. But by hypothesis $X$ is complete, so that same Cauchy subsequence is a convergent subsequence.

### Definition
A metric space that has any one of the three equivalent properties above is said to have the **Bolzano-Weierstrass property**.


## Metrics and containment of open balls
If $X$ is any set and $d$ and $e$ are two metrics on $X$, with $d(x,y) \leq e(x,y)$ for all $x, y \in X$, then $B_X^e(x; \epsilon) \subseteq B_X^d(x; \epsilon)$ for any $\epsilon > 0$.

*Proof:* If $y \in B_X^e(x; \epsilon)$, then $e(x, y) < \epsilon$. So $d(x,y) < \epsilon$ as well by hypothesis and transitivity, meaning that $y \in B_X^d(x; \epsilon)$.


## Product metric space, conserving metrics
If $(X_i, d_i)$ is a metric space for each $1 \leq i \leq n$, then we can define the **product metric space** on $\prod_1^n X_i$ in a number of ways:

 - $\mu_1 (a, b) = \sum_1^n d_i(a_i, b_i)$
 - $\mu_2 (a, b) = (\sum_1^n d_i(a_i, b_i)^2)^{1/2}$
 - $\mu_{\infty} (a, b) = max \{ d_i(a_i, b_i) : 1 \leq i \leq n \}$

Then $\mu_{\infty}(a,b) \leq \mu_2(a, b) \leq \mu_1(a, b)$ for all $a, b \in \prod_1^n X_i$. Also, any metric $d$ on $\prod_1^n X_i$  such that $\mu_{\infty}(a,b) \leq d(a, b) \leq \mu_1(a, b)$ for all $a, b$ is called a **conserving metric**.

 1. $\prod_1^n X_i$ is a metric space under $\mu_1$

    *Proof:* The metric is always positive since it is the sum of non-negative reals. The only way that $\mu_1(a, b)$ can be zero is if $d_i(a_i, b_i)$ is zero for all $i$ (since each is non-negative), so we must have $a_i = b_i$ by positive-definiteness of $d_i$'s. This proves that $\mu_1$ is positive definite. Symmetricity is proved directly from symmetricity for $d_i$'s. The triangle inequality follows similarly.

 2. $\prod_1^n X_i$ is a metric space under $\mu_2$

    *Proof:* $\sum_1^n d_i(a_i, b_i)^2$ is non-negative, so the square root is well defined and non-negative. For $\mu_2(a, b) = 0$, we must have $d_i(a_i, b_i)^2 = 0$ for all $i$. This means we must have $d_i(a_i, b_i) = 0$, or $a_i = b_i$ for all $i$. This proves that $\mu_2$ is positive definite. Symmetricity is proved once again from symmetricity for $d_i$'s. To prove the triangle inequality, we must prove $(\sum_1^n d_i(a_i, c_i)^2)^{1/2} \leq (\sum_1^n d_i(a_i, c_i)^2)^{1/2}. It's a lot of work to write it out here, but it essentially holds from the triangle inequality for each $d_i$ and the Cauchy-Schwarz inequality in $\mathbb{R}^n$.


 3. $\prod_1^n X_i$ is a metric space under $\mu_1$

    *Proof:* It's the max of non-negative values, so it's non-negative and zero iff each $d_i(a_i, b_i) = 0$, meaning $a_i = b_i$. This proves positive-definiteness. It's symmetric by symmetricity of each $d_i$. Finally, 

$$
\begin{aligned}
max \{ d_i(a_i, c_i) : 1 \leq i \leq n\} & \leq max \{ d_i(a_i, b_i) + d_i(b_i, c_i) : 1 \leq i \leq n\} \\
                                         & \leq max \{ d_i(a_i, b_i) : 1 \leq i \leq n \}$ + max \{ d_i(b_i, c_i) : 1 \leq i \leq n
\end{aligned}
$$

which proves the triangle inequality

 4. $\mu_{\infty}(a,b) \leq \mu_2(a, b) \leq \mu_1(a, b)$

    *Proof:* Letting $x = max \{ d_i(a_i, b_i) : 1 \leq i \leq n \}$, we have $x = (x^2)^{1/2} \leq (\sum_1^n d_i(a_i, b_i)^2)^{1/2}$, which proves $\mu_{\infty}(a, b) \leq \mu_2(a, b)$. To prove $\mu_2(a, b) \leq mu_1(a, b)$, we must prove that 

    $$\sum_1^n x_i^2 \leq (\sum_1^n x_i)^2$$

    This is, however, true by induction. It then follows from letting $x_i = d_i(a_i, b_i)$. and taking the square root of both sides.


## Product topology
For metric spaces $(X_i, d_i)$, $1 \leq i \leq n$ and any conserving metric $d$ on $P = \prod_1^n X_i$, the open sets with respect to this metric consist arbitrary unions of sets $\prod_1^n U_i$ for any collection of open sets $\{U_1, \ldots, U_n\}$.

 1. Let $\epsilon > 0$ and $x = (x_1, \ldots, x_n) \in P$

 2. $B_P^{\mu_{\infty}}(x; \epsilon) = \prod_1^n B_{X_i}(x_i; \epsilon)$

    *Proof:* if $y \in B_P^{\mu_{\infty}}(x; \epsilon)$, then $max \{ d_i(x_i, y_i) : 1 \leq i \leq n \} < \epsilon$, so $d_i(x_i, y_i) < \epsilon$ for all $i$. This means that $y_i \in B_{X_i}(x_i; \epsilon)$ for all $i$, so $y \in \prod_1^n B_{X_i}(x_i; \epsilon)$. Conversely, If $y \in \prod_1^n B_{X_i}(x_i; \epsilon)$, then $d_i(x_i, y_i) < \epsilon$, so $max \{ d_i(x_i, y_i) 1 \leq i \leq n \} < \epsilon$ as well, hence $y \in B_P^{\mu_{\infty}}(x; \epsilon)$.

 3. $B_P^{\mu_1}(x; \epsilon) \subseteq B_P^d(x; \epsilon) \subseteq B_P^{\mu_{\infty}}(x; \epsilon)$

    *Proof:* This holds because $\mu_{\infty}(x,y) \leq d(x,y) \leq \mu_1(x, y)$ for any $y$.

 4. For any $U_1, \ldots, U_n$, with $U_i$ open in $X_i$, we have $U = \prod_1^n U_i$ is open in $P$.

    *Proof:* If $y \in U$, then each $y_i \in U_i$, and we can find $\epsilon_i$ such that $B_{X_i}(y_i; \epsilon_i) \subseteq U_i$ since by hypothesis $U_i$ is open in $X_i$. Let $\epsilon = min \{ \epsilon_1, \ldots, \epsilon_n \}$. Then we know that $\prod_1^n B_{X_i}(y_i; \epsilon) \subseteq U$ by definition of $\epsilon$. But $\prod_1^n B_{X_i}(y_i; \epsilon = B_P^{\mu_{\infty}}(y; \epsilon)$ by (2). In words, we have an open ball with respect to the $\mu_{\infty}$ metric centered around $y$ that is contained in $U$. We wanted to prove that $U$ was open with respect to the $d$ metric, however, but (3) provides us this since the open ball of radius $\epsilon$ centered at $y$ with respect to $d$ is contained in $B_P^{\mu_{\infty}}(y; \epsilon)$.

 5. $B_P^{\mu_{\infty}}(x; \epsilon / n) \subseteq B_P^{\mu_1}(x; \epsilon)$

    *Proof:*  If $y \in B_P^{\mu_{\infty}}(x; \epsilon / n)$, then $d_i(x_i, y_i) < \epsilon / n$, so $\sum_1^n d_i(x_i, y_i) < \epsilon$, hence $y \in B_P^{\mu_1}(x; \epsilon)$.

 6. If $W$ is open in $P$, then $W$ is the union of sets $\prod_1^n U_i$ for $U_i$ open in $X_i$.

    *Proof:* For all $w \in W$, there is some $B_P^d(w; \epsilon) \subseteq W$. But by (3) we have B_P^{\mu_1}(w; \epsilon) \subseteq B_P^d(w; \epsilon) \subseteq W$, and by (5) we have $B_P^{\mu_{\infty}}(w; \epsilon / n) \subseteq W$. So every point in $W$ has a product of open balls around it that is contained in $W$, hence $W$ is the union of products of open balls.


### Definition of product topology
The collection of open sets induced by any conserving metric is called the **product topology** on $(X_1, \ldots, X_n)$, and any metric which induces this topology on the metric space is called a **product metric** for $(X_1, \ldots, X_n)$.

## Definition of projection operator
If $X_1, \ldots, X_n$ are sets and $P = \prod_1^n X_i$, then we define for every $i \in \mathbb{N}$ with $1 \leq i \leq n$ a function $\pi_i: P \to X_i$ by $pi_i(x_1, \ldots, x_n) = x_i$.

## Projection operator and containment
If $X_1, \ldots, X_n$ are sets, $P = \prod_1^n X_i$, and $A \subseteq B \subseteq P$, then $pi_i(A) \subseteq pi_i(B)$.

*Proof:* If $a \in pi_i(A)$, then there exists an $x = (x_1, \ldots, x_n) \in A$ with $x_i = a$. So $x \in B$ as well by hypothesis, hence $a \in pi_i(B)$.


## Convergent sequences in product space
If $(\prod_1^n X_i, d)$ is a metric space with a product metric $d$ for metric spaces $(X_i, d_i)$. Then if $(x_n)$ is a sequence in $P = \prod_1^n X_i$, and $c \in P$, then $(x_n) \to c$ iff for all $i$, $(\pi_i(x_n)) \to \pi_i(c)$, where $\pi_i(z_1, \ldots, z_n) = z_i$.

*Proof:* If $(x_n) \to c$ in $P$, then fixing $i$, we must prove that for every open $U$ \subseteq X_i$ containing $\pi_i(c)$, some tail of $(\pi_i(x_n))$ is contained in $U$. Form the product $S = \prod_1^n S_j$, where $S_i = U$ and $S_j = B_{X_j}(\pi_j(c); 1)$ for all $j \neq i$. This is open in $P$ by the product topology and it contains $c$, so some tail of $(x_n)$ starting at $k$ is contained in $S$. This means that the tail of $(\pi_i(x_n))$ starting at $k$ is contained in $U$, which implies that $(\pi_i(x_n)) \to \pi_i(c)$.

Conversely, $(\pi_i(x_n)) \to \pi_i(c)$ for all $i$, then for $W$ open in $P with $c \in W$. By hypothesis $P$ has the product topology, so $W$ is the union of products of open sets. So there must be $U_1, \ldots, U_n$ with $U_i \subseteq X_i$ and $c \in \prod_1^n U_i$. By hypothesis again, we can find for all $i$, an $N_i \in \mathbb{N}$ such that $(\pi_i(x_n))_{n \geq N_i}$ is contained in $U_i$ because $U_i$ is an open set containing $\pi_i(c)$ in $X_i$. Taking $N = max \{ N_1, \ldots, N_n \}$, we have that each $(\pi_i(x_n))_{n \geq N}$ is contained in $U_i$, so $(x_n)_{n \geq N}$ is contained in $\prod_1^n U_i \subseteq W$.

### Remark
I think this theorem was generalized to any space with product topology (instaed of just using conserving metric) because it's true for general product topological spaces, so someone going on to study topology would certainly see it later.


## Bounded subsets and product spaces
If $(X_i, d_i)$ are metric spaces for $1 \leq i \leq n$, letting $P = \prod_1^n X_i$ and supposing $S \subseteq P$, then if $d$ is a conserving metric on $P$, then $S$ is bounded in $P$ iff $\pi_i(S)$ is bounded in $X_i$ for all $i$, where $\pi_i(x_1, \ldots, x_n) := x_i$.

*Proof:* If $S$ is bounded, then by definition there is some $z \in P$ and some $\epsilon > 0$ such that $S \subseteq B_P^d(z; \epsilon)$. But $B_P^d(z; \epsilon) \subseteq B_P(z; \epsilon) = \prod_1^n B_{X_i}(\pi_i(z); \epsilon)$, and since $\pi_i(\prod_1^n B_{X_i}(\pi_i(z); \epsilon)) = B_{X_i}(\pi_i(z); \epsilon)$, we have $\pi_i(S) \subseteq B_{X_i}(\pi_i(z); \epsilon), so $\pi_i(S)$ is bounded.

Conversely, if $\pi_i(S)$ is bounded in $X_i$, then there exists some $z_i \in X_i$ and some $\epsilon_i$ such that $B_{X_i}(z_i; \epsilon_i)$ contains $\pi_i(S)$. Let $\epsilon = max \{ \epsilon_1, \ldots, \epsilon_n \}$. Then $\pi_i(S) \subseteq B_{X_i}(z_i; \epsilon)$, so $prod_1^n \pi_i(S) \subseteq \prod_1^n B_{X_i}(z_i; \epsilon) = B_P^{\mu_{\infty}}(z; \epsilon)$, where $z = (z_1, \ldots, z_n)$. But $S \subseteq \prod_1^n \pi_i(S)$, and $B_P^{\mu_{\infty}}(z; \epsilon) \subseteq B_P^{\mu_1}(z; n \epsilon) \subseteq B_P^d(z; n \epsilon)$, so $S$ is bounded in $P$.

### Corollary for bounded sequences
A sequence $(x_n)$ in $P$ with conserving metric $d$ is bounded iff each sequence $(\pi_i(x_n))$ is bounded in $X_i$.


## Bolzano-Weierstrass property on product spaces
If $(X_i, d_i)$ are metric spaces for $1 \leq i \leq n$, letting $P = \prod_1^n X_i$ and supposing $S \subseteq P$, then if $d$ is a conserving metric on $P$, then $(P, d)$ has the Bolzano-Weierstrass property iff each space $(X_i, d_i)$ has it.

*Proof:* Assuming $(P, d)$ has the BW-property, then any bounded sequence $(a_n)$ in $X_i$ can be turned into a sequence $(p_n)$ in $P$ by picking arbitrary $x_j \in X_j$ for $j \neq i$ and defining $p_n = (z_1, \ldots, z_n)$ with $z_i = a_n$ and $z_j = x_j$ for $i \neq j$. Then $(\pi_j(p_n)) = (a_n)$ if $j = i$ and $(\pi_j(p_n))$ is the constant sequence of $x_j$ otherwise. Since each $(\pi_j(p_n))$ is bounded in $X_j$, we have $(p_n)$ bounded in $P$, so it has a convergent subsequence $(p_{n_k})$ converging to come $c \in P$. This implies that, in particular, $(\pi_i(p_{n_k}))$ converges in $X_i$ to $\pi_i(c)$. But this is a subsequence of $(a_n)$, so $(a_n)$ has a subsequence converging to $\pi_i(c)$.

Conversely, if each $(X_i, d_i)$ has the BW-property, then for any bounded subset $S$ of $P$, we must have $\pi_i(S)$ bounded as well for all $i$. If $S$ is additionally infinite, then we must have some $i$ such that $\pi_i(S)$ is infinite, otherwise $\prod_1^n \pi_i(S)$ is finite and a superset of $S$, implying $S$ is finite as well. So $\pi_i(S)$ is an infinite bounded subset of $X_i$, and hence by the BW-property it has an accumulation point $a \in X_i$. Let $x_j \in \pi_j(S)$ be arbitrary for every $j \neq i$. Define $c = (c_1, \ldots, c_n)$, where $c_i = a$ and $c_j = x_j$ for all $j \neq i$. We want to prove that $c$ is an accumulation point of $

TODO



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

## Definition of uniform continuity
For metric spaces $(X, d)$ and $(Y, e)$, a function $f: X \to Y$ is **uniformly continuous$ if for every $\epsilon > 0$ there is a $\delta > 0$ such that for all $x, y$ with $d(x, y) < \delta$, $e(f(x), f(y)) < \epsilon$.

### Remark
Another way of looking at it is: for every $\epsilon > 0$, there is a $\delta > 0$ such that every $x \in X$ has the image of $B_X(x; \delta)$ contained in $B_Y(f(x); \epsilon)$. 

This contrasts with continuity, which is: for every $\epsilon > 0$, for every $x \in X$ there is a $\delta > 0$ such that the image of $B_X(x; \delta)$ is contained in $B_Y(f(x); \epsilon)$. In words, the difference is that the same $\delta$ works for every $x$ in the case of uniform continuity, but for vanilla continuous functions, each point might have a different $\delta$.

## Uniformly continuous functions are continuous
If $f: X \to Y$ is uniformly continuous, it is also continuous.

*Proof:* See the previous remark. Each point in fact has a $\delta$ that works (the same $\delta$, in fact).


## Compact sets

A subset $S$ of some metric space is **compact** if for every collection $\mathcal{U}$ of open sets whose union contains $S$, there's a finite subcollection $\{U_1, \ldots, U_n\}$ whose union also contains $S$. We call any collection of open sets whose union contains $S$ an **open cover** of $S$, and the finite subcollection is called a **finite sub-cover**. Restated, a subset is compact iff every open cover has a finite subcover.

## Open ball compactness
A subset $S$ is compact in $(X, d)$ iff every collection of open balls that cover $S$ containes a finite sub cover.

*Proof:* Compactness immediately implies that every cover of open balls has a finite subcover. Conversely, every open set is a union of open balls, so any open cover $\mathcal{O}$ can be transformed into a cover made out of open balls. By hypothesis this has a finite subcover $\mathcal{B}$. Each one of the balls in this subcover is a subset of one open set in the original open cover, so the subcollection of $\mathcal{O}$ of open sets that correspond to the open balls in $\mathcal{B}$ is finite, covers $S$, and is a subcollection of $\mathcal{O}$.


## Compact subsets are totally bounded
A compact set $S$ in a metric space is totally bounded, hence also bounded.  

*Proof:* For any $\epsilon > 0$, form the collection $S_{\epsilon} = \{ B(s; \epsilon) : s \in S \}$. $S_{\epsilon}$ is an open cover of $S$, hence has a finite subcover since $S$ is compact. This proves that $S$ is totally bounded since $\epsilon$ was arbitrary. Since totally bounded subsets are bounded, the result is established.

## Compact subsets are closed
A compact subset $S$ of some metric space $X$ is closed.

*Proof:* Let $y$ be any point in $X-S$. For any $x \in S$, $B(x; d(x, y) / 2)$ and $B(y; d(x,y)/2)$ are disjoint. Take the collection of open balls around points of $S$. This is an open cover of $S$, and hence has a finite subcover of balls $B(x_i; d(x_i; y)/2)$ for some $x_1, \ldots, x_n$. Then $\bigcap B(y; d(x_i, y)/2)$ is an open ball around $y$ that is disjoint from $S$, hence contained in $X - S$, so $X - S$ is open.


## Closed subsets of compact subsets are compact
If $S$ is a compact subset of $X$ and $C$ is a closed subset of $S$, then $C$ is compact.

*Proof:* Any open cover $\mathcal{O}$ of $C$ can be transformed into an open cover of $S$ via $\mathcal{O} \cup \{ X - C \}$ since $X - C$ is open on account of $C$ being closed. So we have some finite subcover of $S$, call it $\mathcal{S}$. If it contains $X - C$, then $\mathcal{S} - (X - C)$ is a finite subcover of $\mathcal{O}$. If not, then $\mathcal{S}$ is a finite subcover of $\mathcal{O}$. So $C$ is compact.


**Lemma:** If $K$ is a compact metric space, $f: K \rightarrow Y$ is a continuous function, with $Y$ arbitrary, then the image $f(K)$ is compact in $Y$.

*Proof:* Let $\mathcal{U}$ be an open cover of in $img(f)$, define $\mathcal{U}^{pre} = \{f^{pre}(A) : A \in \mathcal{U}\}$. Then $\mathcal{U}^{pre}$ covers $K$ since every $k \in K$ is mapped by $f$ to some $f(k) \in img(f)$, and $\mathcal{U}$, covering all of $img(f)$, has some $A_k$ containing $f(k)$, so $f^{pre}(A_k)$ contains $k$. But $K$ is compact, so $\mathcal{U}^{pre}$ has a finite subcover $\mathcal{F}$. All the sets in the subcover are the pre-images of sets in $img(f)$, i.e. of the form $f^{pre}(S)$ for some $S$. So $\mathcal{F} = \{ f^{pre}(S_1), \ldots, f^{pre}(S_n)\}$, and the $S_i$ form an open cover of $img(f)$ (since $f(f^{pre}(X)) = X$. Furthermore, the $S_i$'s are a subcollection of $\mathcal{U}$ by definition of $\mathcal{F}$. So $f(K)$ is compact. $\Box$

## Definition of finite intersection property
A collection $\mathcal{S}$ of subsets of a metric space $(X, d)$ has the **finite intersection property** if every non-empty finite subcollection of $\mathcal{S}$ has a non-empty intersection.

## Equivalent characterization of compactness
For a metric space $(X, d)$, the following are equivalent:

 1. $X$ is compact
 2. $X$ is complete and totally bounded
 3. $X$ is bounded and has the Bolzano-Weierstrass property.
 4. Every sequence in $X$ has a convergent subsequence
 5. Every collection of subsets of $X$ that possesses the finite intersection property has a non-empty intersection

*Proof:* If (3) is true, then $X$ is bounded and has the Bolzano-Weierstrass property, so $X$ is complete and every bounded subset is totally bounded. But since $X$ is bounded, it must be totally bounded as well. So (3) implies (2). Assuming (2), we have that $X$ is complete and totaly bounded. So $X$ must be bounded. Also, any bounded subset of $X$ is totally bounded since every subset is totally bounded. This proves that (2) implies (3).

If (3) holds, then every sequence in $X$ is bounded and so has a convergent subsequence, which implies (4).

If (4) holds, TODO: apparently you can prove that $X$ is totally bounded. Also if every sequence has a convergent sequence, every Cauchy sequence converges, so $X$ is complete and (4) implies (2).

(1) => (4) is "easy" according to notes I found online. (http://www.econ.brown.edu/fac/Mark_Dean/Maths_RA5_10.pdf). It involves using "closed subsets of compact spaces are compact", somehow.

If (1) fails to hold, then we have some open cover $\mathcal{O}$ of $X$, consisting entirely of open balls, and no finite subcollection of open balls covers $X$. So pick an arbitrary $x_0 \in S$. We can find a $B_0 \in \mathcal{O}$ such that $x_0 \in B_0$. By induction, for any $k \in \mathbb{N}$, if $x_k$ and $B_k$ are chosen such that $x_k \in B_k \in \mathcal{O}$, then we can find some $x_{k+1} \in S - \bigcup_1^k B_i$, and some $B_{k+1} \in \mathcal{O}$ such that $x_{k+1} \in B_{k+1}$. This gives a sequence $(x_n)$ which, by construction, has each term not in the union of the balls that contain the previous terms. If $(x_n)$ has a subsequence $(x_{n_k})$ that converges to some $c \in X$, then $ BLAH TODO FIXME

If (1) is true

TODO (1) iff [(2) or (3)]

### Definition of sequential compactness
Condition (4) of the previous proposition is called **sequential compactness**. The previous theorem, in particular, proves that a metric space is compact iff it is sequentially compact.

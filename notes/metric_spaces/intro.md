## Definition of metric spaces

A **metric space** is a pair $(X, d)$ where $d$ is a function $X \times X \rightarrow \mathbb{R}$ such that:

  - $d(x,y) \geq 0$ for all $x$, $y$, and $d(x,y) = 0$ iff $x = y$.
  - $d(x,y) = d(y,x)$
  - $d(x,z) \leq d(x,y) + d(y,z)$


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

## Definition of closure and interior points
A **closure point** of $S$ is any point $x$ such every open ball $B(x; \epsilon)$ around $x$ intersects $S$. An **interior point** of $S$ is a point $x$ such that there is some open ball $B(x; \epsilon)$ contained entirely in $S$.

## Alternative characterization of closure and interior
For any subset $S$ of a metric space, $int(S)$ is equivalently the set of all interior points of $S$, and $clo(S)$ is equivalently the set of all closure points of $S$.

*Proof:* TODO

## Closure of the complement is the complement of the closure
$X - int(S) = clo(X - S)$

*Proof:* If $x$ is not an interior point of $S$, then no open ball centered at $x$ is contained entirely in $S$, so every open ball centered around $x$ must actually intersect $X - S$, meaning $x \in clo(X - S)$. Conversely, $x \in clo(X - S)$, every open ball around $x$ intersects $X - S$ since $x$ is a closure point of $X - S$, so it could not be an interior point of $S$.


## Definition of boundary
The **boundary** of a set $S$, notated $\partial S$, is $\{x \in X : \text{every } B(x; \epsilon) \text{ intersects both } S \text{ and } X-S\}$. The boundary of $S$ is made up of the **boundary points** of $S$, which are defined as members of the boundary.


## Boundary facts
 1. $\partial S = \partial X-S$
 2. $\partial S \subseteq clo(S)$
 3. $int(S) = S - \partial S$
 4. $clo(S) = S \cup \partial S$
 5. $\partial S = clo(S) \cap clo(X-S)$

*Proof:* For (1), $X - (X - S) = X$, so by definition they are the same.

For (2), it's true by definition. Every boundary point is a closure point.

For (3), we know $int(S) \subseteq S - \partial S$ since every interior point of $S$ is in $S$ but does not have every open ball around it intersecting both $S$ and $X - S$. Conversely, if $x \in S - \partial S$, then some open ball around $x$ doesn't intersect $X - S$, so is entirely contained in $S$, hence $x \in int(S)$.

For (4), if $x \in clo(S)$, then every open ball around $x$ intersects $S$. If every open ball around $x$ also intersects $X-S$, then $x \in \partial S$. Otherwise one open ball $B$ does not, so $x$ must be in $S$ (because it could not be in $X-S$. Conversely, $S \subseteq clo(S)$ by definition and $\partial S \subseteq clo(S)$ by (2), so $S \cup \partial S \subseteq clo(S)$.

For (5), $x \in \partial S$ iff every open bal around $X$ intersects both $S$ and $X - S$ iff $x \in clo(S) \cap clo(X-S)$.


## Reorganize this somehow.

The **distance** of a point $x$ from a set $S$, written $dist(x,S)$, is defined to be $inf \{ d(x,s) : s \in S\}$.

**Lemma:** $clo(S) = \{ x \in X : dist(x,S) = 0$

*Proof:* A point $x$ has $dist(x, S) = 0$ iff every open ball around $x$ intersects $S$. $\Box$



## Continuity TODO reorganize
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

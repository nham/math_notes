# Prerequisites
Topological spaces, continuity, homeomorphisms, Hausdorff and second countable spaces

### Corollary
If $f: X \to Y$ is a continuous map between some topological spaces $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, then if $A \subseteq X$, the restriction $f|A,f(A): A \to f(A)$ is also continuous (where the topology on $A$ is the subspace topology).

*Proof:* We know $f|A: A \to Y$ is continuous. So if $V$ open in $f(A)$, $V = U \cap f(A)$ for $U$ open in $Y$, so $(f|A)^{pre}(U)$ is open in $A$. but $(f|A)^{pre}(V) = (f|A)^{pre}(U)$ since if $u \in U - f(A)$, it has no pre-image. Also, $(f|A)^{pre}(V) = (f|A,f(A))^{pre}(V)$, so $f|A,f(A)$ is continuous.


## Restriction of a homeomorphism is a homeomorphism
If $f: X \to Y$ is a homeomorphism between two spaces $X$ and $Y$, then the restriction of $f$ $f|A,f(A): A \to f(A)$ for any $A \subseteq X$ is also a homeomorphism.

*Proof:* $f$ is continuous, so $f|A: A \to Y$ is continuous as well since restrictions of continuous functions are continuous. But $f|A$ is injective since it is the restriction of an injective function, so the further restriction $f|A,f(A): A \to f(A)$ is a continuous bijection. Letting $g = f|A, f(A)$,



## Definition of product spaces
If $(X, M)$ and $(Y, N)$ are neighborhood topological spaces, then $(X \times Y, P)$ is a **product space** iff $P(x, y) = \{ S \subseteq X \times Y : \exists B \in M(x), C \in N(x), B \times C \subseteq S \}$. $(X \times Y, P)$ is a bona fide topological space, and $P$ is called the **product topology**.

In words, the neighborhoods of a point $(x, y) \in X \times Y$ when $X \times Y$ is a product space are the supersets of products of a neighborhood of $x$ and a neighborhood of $y$.

### Every neighborhood contains a product of open neighborhoods
If $(x,y) \in X \times Y$ and $S \in P(x,y)$, then there are $U$ open in $X$, $V$ open in $Y$, $U \in M(x)$, $V \in N(y)$ such that $U \times V \subseteq S$.

*Proof:* By definition of $P$, there are $B \in M(x)$ and $C \in N(y)$ such that $B \times C \subseteq S$. By definition of $M$ and $N$, there are open $U$ in X$ and open $V$ in $Y$ with $U \in M(x)$, $V \in N(y)$, such that $U \subseteq B$ and $V \subseteq C$. So $U \times V \subseteq B \times C \subseteq S$.


### Proof that $(X \times Y, P)$ is a topological space

*Proof:* We must prove that $P$ obeys the neighborhood axioms. Clearly $P(x,y) \neq \emptyset$ since $M(x) \neq \emptyset \neq N(y)$. For all $A \in P(x,y)$, there is $B \in M(x)$, $C \in N(y)$ such that $B \times C \subseteq A$. But $(x, y) \in B \times C$ by definition of $B$ and $C$, so the first neighborhood axiom holds. The second axiom holds since by definition of $P(x,y)$, every superset of a neighborhood of $(x,y)$ is again a neighborhood of $(x,y)$.

If $S, T \in P(x, y)$, then there are $B_1, B_2 \in M(x)$ and $C_1, C_2 \in N(y)$ such that $B_1 \times C_1 \subseteq S$, $B_2 \times C_2 \subseteq T$, then because $B_1 \cap B_2 \subseteq B_1, B_2$ and $C_1 \cap C_2 \subseteq C_1, C_2$, we have $(B_1 \cap B_2) \cap (C_1 \cap C_2) \subseteq S \cap T$, so $S \cap T \in P(x,y)$.

Finally, for any $S \in P(x,y)$, by the lemma there are $U$ open in X$ and $V$ open in $Y$ with $U \in M(x)$, $V \in N(y)$, such that $U \times V \subseteq S$. We also know (since $U \in M(x)$, $V \in N(y)$) that $U \times V \in P(x,y)$.

Now for any $(u, v) \in U \times V$, $U \in M(u)$ and $V \in N(v)$, so $U \times V \in P(u,v)$. Hence $U \times V$ is open in $X \times Y$, which proves that the fourth neighborhood axiom holds.


## Product of open sets is open in product space
If $(X, M)$ and $(Y, N)$ are neighborhood topological spaces and $(X \times Y, P)$ is a product space, then if $U$ is open in $X$ and $V$ open in $Y$, then $U \times V$ is open in $X \times Y$.

*Proof:* For all $(u, v) \in U \times V$, since $U \in M(u)$ and $V \in N(v)$, $U \times V \in P(u, v)$ (by the definition of $P$).


## Open set characterization of product space
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces, then $(X \times Y, \mathcal{U})$ is a product space iff $\mathcal{U} = \{ \bigcup_{i \in I} S_i \times T_i : \exists \{S_i : i \in I\} \subseteq \mathcal{S}, \exists \{T_i : i \in I\} \subseteq \mathcal{T} \}$

*Proof:* We know that each product of open sets is open in $X \times Y$ (from the last proposition), so clearly arbitrary unions of products of open sets will be open as well in $X \times Y$ (since a topology is closed under arbitrary union). To prove that these are the only open sets, consider an arbitrary open set $W \in \mathcal{U}$. Then $int W = W$ by definition, so for all $(x,y) \in W$, $W \in P(x,y)$. This means that (by a previous lemma) there are $U_x \in M(x)$, $V_y \in N(y)$, $U_x$ open in $X$ and $V_y$ open in $Y$ such that $(x,y) \in U_x \times V_y \subseteq W$. Since each $U_x \times V_y$ is open, $\bigcup_{(x,y) \in W} U_x \times V_y = W$.


## The basis of a product topology
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are spaces, $\mathcal{B}$ and $\mathcal{C}$ are bases for $X$ and $Y$, respectively, then a basis for the product topology on $X \times Y$ is $\mathcal{D} = \{U \times V : U \in \mathcal{B}, V \in \mathcal{C} \}$

 1. $\mathcal{D}$ is a basis

    *Proof:* If $(x,y) \in X \times Y$, then since $\mathcal{B}$ and $\mathcal{C}$ are bases for $X$ and $Y$, respectively, there is a $B \in \mathcal{B}$, $C \in \mathcal{C}$ such that $x \in B$, $y \in C$, so $(x,y) \in B \times C \in \mathcal{D}$.

    Also, if $B_1 \times C_1$ and $B_2 \times C_2$ are in $\mathcal{D}$, then if $(x, y) \in (B_1 \times C_1) \cap (B_2 \times C_2)$, there are $B_3 \in \mathcal{B}$ and $C_3 \in \mathcal{C}$ such that $x \in B_3 \subseteq B_1 \cap B_2$ and $y \in C_3 \subseteq C_1 \cap C_2$. So $(x,y) \in B_3 \times C_3$ and $B_3 \times C_3$ is a subset of both $B_1 \times C_1$ and $B_2 \times C_2$, hence is a subset of $(B_1 \times C_1) \cap (B_2 \times C_2)$, so the second basis property holds.

 2. The topology that $\mathcal{D}$ generates is the product topology

    *Proof:* We already know that the open sets of the product topology are unions of products of open sets. So it suffices to prove that for every $U$ open in $X$ and $V$ open in $Y$, $U \times V$ is the union of products of basis elements from $\mathcal{D}$. But we know that $U = \bigcup_i B_i$ and $V = \bigcup_j C_j$ for some $\{B_i : i \in I\} \subseteq \mathcal{B}$ and $\{C_j : j \in J\} \subseteq \mathcal{C}$. So if $(u, v) \in U \times V$, there is a $B_i$ and a $C_j$ such that $u \in B_i$ and $v \in C_j$, So clearly $(u, v) \in \bigcup_{(i, j) \in I \times J} B_i \times C_j$. Also if $(x,y) \in \bigcup_{(i, j) \in I \times J} B_i \times C_j$, then $(x,y) \in B_i \times C_j$ for some $i$ and $j$, so $(x,y) \in U \times V$.


## Definition of $n$-product spaces
If $(X_i, \mathcal{T}_i)$ are topological spaces for $1 \leq i \leq n$, then we define inductively $\prod_1^k X_i$ to be the product space of $\prod_1^{k-1} X_i$ and $X_n$. If $X_i = X$ for all $i$, then we denote the product space simply by $X^n$.


## The product topology on $\mathbb{R}^n$ is a metric topology.
The function $p: \mathbb{R}^n \times \mathbb{R}^n \to \mathbb{R}$ defined by $p(u, v) = max \{ | \pi_i(u) - \pi_i(v) | : 1 \leq i \leq n \}$ is a metric on $\mathbb{R}^n$ and its metric topology is the product topology on $\mathbb{R}^n$

*Proof:* It is easy to prove positive-definiteness and symmetricity. The triangle inequality holds because if $a_i \leq b_i + c_i$ for all $i$, then if $j = arg max_i a_i$, we have $max_i a_i = a_j \leq b_j + c_j \leq max_i b_i + max_i c_j$. So $p$ is a metric.

To prove that the topologies are identical, we can find bases for each topology and prove them equivalent. But $\mathcal{B} = \{ \prod_1^n (a_i, b_i) : a_i, b_i \in \mathbb{R}, a_i < b_i \}$ is a basis for the product topology on $\mathbb{R}^n$ since the collection of open intervals is a basis for the usual topology on $\mathbb{R}$. Also, $B_p(a; \epsilon) = \{(x_1, \ldots, x_n) \in \mathbb{R}^n : \forall i |a - x_i| < \epsilon\} = \prod_1^n (a_i - \epsilon, a_i + \epsilon)$. Hence $\mathcal{B}$ is exactly the collection of open balls under the metric $p$. So the bases are in fact identical.


## The product topology and the euclidean metric topology on $\mathbb{R}^n$ are the same
The topology induced by the Euclidean metric on $\mathbb{R}^n$ is the same as the product topology.

*Proof:* The previous theorem shows that the product topology is the metric topology induced by the "sup metric" $p(u, v) = max \{ | \pi_i(u) - \pi_i(v) | : 1 \leq i \leq n \}$. To prove that Euclidean metric and the sup metric are topologically equivalent, it suffices to prove that the bases are equivalent. We know that for every open ball, every point in the open ball has an open ball centered at that point contained in the original ball, so to prove basis equivalence it suffices to prove (letting $d$ be the Euclidean metric):

For any $a \in \mathbb{R}^n$ and any $\epsilon > 0$, there are $\delta, \gamma > 0$ such that $B_p(a; \delta) \subseteq B_d(a; \epsilon)$ and $B_d(a; \gamma) \subseteq B_p(a; \epsilon)$.

If $x \in B_d(a; \epsilon)$, $\sqrt{\sum_1^n (a_i - x_i)^2} < \epsilon$. If any $|a_i - x_i| \geq \epsilon$, then $x \notin B_d(a; \epsilon)$. So $B_d(a; \epsilon) \subseteq B_p(a; \epsilon)$.

Conversely, if $x \in B_p(a; \epsilon / \sqrt n)$, then $|a_i - x_i| < \epsilon / n$, by definition, so $\sum_1^n (a_i - x_i)^2 < n (\epsilon / \sqrt n)^2$, hence $\sqrt{\sum_1^n (a_i - x_i)^2} < \epsilon$.



## Examples
### Stretching $\mathbb{R}$ is a homeomorphism
The map $f: \mathbb{R} \to \mathbb{R}$ defined by $x \mapsto cx$ for $c \neq 0$ is a homeomorphism on $\mathbb{R}$.

*Proof:* It suffices to prove that $f$ is continuous, since each such $f$ is bijective and its inverse is also a stretching map. Let $A \subseteq \mathbb{R}$ is open in $\mathbb{R}$. Then $f^{pre}(A) = \{ c^{-1} a : a \in A \}$ is open in $\mathbb{R}$ since for all $b \in f^{pre}(A)$, $b = c^{-1} a$, for some $a \in A$. But by definition of open sets in a metric space, there is an $\epsilon > 0$ such that for all $x \in \mathbb{R}$ with $|x - a| < \epsilon$, $x \in A$.  So for all $y \in $f^{pre}(A)$ such that $|y - b| < |c^{-1}| \epsilon$, we have $|y - b| = |c^{-1}| |yc - a| < |c^{-1}| \epsilon$, or $|yc - a| < \epsilon$. Thus $yc \in A$, so $y \in f^{pre}(A)$.

### Translation of $\mathbb{R}$ is a homeomorphism
The map $f: \mathbb{R} \to \mathbb{R}$ defined by $x \mapsto x + z$ for $z \in \mathbb{R}$ is a homeomorphism on $\mathbb{R}$.

*Proof:* It suffices to prove that $f$ is continuous, since each such $f$ is bijective and its inverse is also a translation map. Let $A \subseteq \mathbb{R}$ is open in $\mathbb{R}$. Then $f^{pre}(A) = \{ a - z : a \in A \}$ is open in $\mathbb{R}$ since for all $b \in f^{pre}(A)$, $b = a - z$, for some $a \in A$. But by definition of open sets in a metric space, there is an $\epsilon > 0$ such that for all $x \in \mathbb{R}$ with $|x - a| < \epsilon$, $x \in A$.  So for all $y \in $B$ such that $|y - b| < \epsilon$, we have $|y - b| = |y - a + z|  \leq \epsilon$, so $y+z \in A$, hence $y \in f^{pre}(A)$.


### Any two open balls in $\mathbb{R}$ are homeomorphic
For any $a, b \in \mathbb{R}$ and any $\epsilon, \delta > 0$, $B(a; \epsilon)$ and $B(b; \delta)$ are homeomorphic.

*Proof:* It suffices to prove that $B(a; \epsilon)$ is homeomorphic to $B(0; 1)$. Via a restriction of the translation map (using local homeomorphism), $B(a; \epsilon)$ and $B(0; \epsilon)$ are homeomorphic. Via a restriction of the stretching map, if $x \in B(0; 1)$, then $\epsilon x \in B(0; \epsilon)$ and vice versa, so $B(0;1)$ and $B(0; \epsilon)$ are homeomorphic as well. Since the composition of homeomorphisms is a homeomorphism, it is proven.


## Every open ball in $\mathbb{R}^n$ is homeomorphic to every other open ball in $\mathbb{R}^n$.
If $a, b \in \mathbb{R}^n$ and $\epsilon, \delta > 0$, then $B(a; \epsilon)$ and $B(b; \delta)$ (considered as subspaces of the product topology on $\mathbb{R}^n$) are homeomorphic.

 1. $B(a; \epsilon)$ and $B(0; \epsilon)$ are homeomorphic

    *Proof:* $f: B(a; \epsilon) \to B(0; \epsilon)$ defined by $f(x) = x - a$ is clearly bijective. Also, $\|f(y) - f(x) \| = \|y - a - x + a\| = \|y - x\|$, so $\|f(y) - f(x)\| < \epsilon$ when $\|y - x\| < \epsilon$. g: B(0; \epsilon) \to B(a; \epsilon)$ defined by g(x) = x + a$ is continuous for the same reason, so $f$ is a homeomorphism.

 2. $B(0; \epsilon)$ and $B(0; 1)$ are homeomorphic

    *Proof:* $f: B(0; \epsilon) \to B(0; 1)$ defined by $f(x) = x / \epsilon$ is clearly bijective. $\|f(y) - f(x)\| = \|y - x\| / | \epsilon |$, so for all $x$ and all $y$ such that $\|y - x\| < \epsilon^2$, we have $\|f(y) - f(x)\| < \epsilon$. Also $g(x) := \epsilon x$ is continuous for the same reason.

 3. $B(a; \epsilon)$ and $B(0; 1)$ are homeomorphic

    *Proof:* Composition of the homeomorphisms in (1) and (2) yield such a homeomorphism.

 4. Q.E.D.

    *Proof:* (3) Proves that every open ball is homeomorphic to the open ball of radius 1 around 0.


### Every open ball in $\mathbb{R}^n$ is homeomorphic to $\mathbb{R}^n
$B(0; 1)$ in $\mathbb{R}^n$ is homeomorphic to $\mathbb{R}^n$.

*Proof:* Define $f: B(0; 1) \to \mathbb{R}^n$ by $f(x) = x/(1 - |x|)$, where $| \cdot |$ denotes the norm on $\mathbb{R}^n$. Then for any $x, y \in B(0; 1)$, $|f(y) - f(x)| = |y/(1 - |y|) - x/(1 - |x|)|$. If we let $X = 1 - |x|$ and $Y = 1 - |y|$, we can rewrite this as $|y/Y - x/X| = |Xy - Yx| / XY$ since $X, Y > 0$. But this equals $|Xy - Xx + Xx - Yx| / XY \leq |y - x| / Y + (X - Y) |x| / XY$. $X - Y = 1 - |x| - 1 + |y| = |y| - |x| \leq |y - x|$, so $|f(y) - f(x)| \leq |y - x| / Y + |y - x| |x| / XY = |y - x| / XY$.

Now, supposing $\delta > 0$ and $|x - y| < \delta$, we have $|y| \leq |x| + |x - y| < |x| + \delta$, so $Y > 1 - |x| - \delta = X - \delta$. Thus for all $y$ with $|x - y| < \delta$, $|f(y) - f(x)| < \delta / X(X - \delta)$. If we further restrict $\delta$ so that $\delta < \epsilon X^2 / (1 + \epsilon X)$ for any $\epsilon > 0$, then $X - \delta > (X(1 + \epsilon X) - \epsilon X^2) / (1 + \epsilon X) = X / (1 + \epsilon X)$, so $|f(y) - f(x)| < \epsilon X^2 (1 + \epsilon X) / [ X^2 (1 + \epsilon X)] = \epsilon$.

This proves that $f$ is continuous. To prove it is a bijection, define $g: \mathbb{R}^n \to B(0; 1)$ by $g(x) = x / (1 + |x|)$. Then $g(f(x)) = [x/(1 - |x|)] / (1 + |x| / (1 - |x|)) = [x/(1 - |x|)] / (1 / (1 - |x|)) = x$ and $f(g(x)) = [x/(1 + |x|)] / (1 - |x| / (1 + |x|)) = x$, so they are inverses.

Finally, we must prove that $g$ is continuous. But for any $y$, letting $X = 1 + |x|$ and $Y = 1 + |y|$, we have $|g(y) - g(x)| = |y/Y - x/X| = |Xy - Yx| / XY$. This is the same expression as for $f$, so $|g(y) - g(x)| \leq |y - x| / XY$. Here, however, $1 / Y < 2$ for all $y$ since $|y|$ is always positive, so $|g(y) - g(x)| < 2 |y - x| / X$. So for all $y$ with $|y - x| < \epsilon X / 2$, $|g(y) - g(x)| < \epsilon$.


TODO

 - the map between the 2-sphere and the unit cube in R^3 is a homeomorphism


## Definition of locally Euclidean
A topological space $(X, \mathcal{T})$ is **locally Euclidean of dimension $n$** iff every $x \in X$ has an open neighborhood which is homeomorphic to an open subset of $\mathbb{R}^n$. Any such neighborhood is called a **Euclidean neighborhood** of $x$


## Characterization of locally Euclidean space
A space $(X, \mathcal{T})$ is locally Euclidean iff every $x \in X$ has an open neighborhood homeomorphic to an open ball of $\mathbb{R}^n$.

*Proof:* First, clearly each point having an open neighborhood homeomorphic to an open ball implies that the space is locally Euclidean since open balls are open. Conversely, supposing each $x \in X$ has some homeomorphism $f: U \to V$, where $V$ is open in $\mathbb{R}^n$ and $U$ is an open neighborhood of $x$, then $f(x)$ has some open ball $B$ centered at $f(x)$ and contained in $V$, so $f^{pre}(B)$ is also an open neighborhood of $x$. Since $f$ is a bijection, $f[f^{pre}(B)] = B$, so we have a homeomorphism between $f^{pre}(B)$ and $B$, an open ball of $\mathbb{R}^n$.


## Definition of a coordinate chart
If $X$ is a space that is locally Euclidean of dimension $n$, then a **coordinate chart** is a homeomorphism between $U$ and $V$, where $U$ is open in $X$ and $V$ is open in $\mathbb{R}^n$



## Definition of dense subset
If $(X, \mathcal{T})$ is a topological space, $A \subseteq X$ is **dense** in $X$ iff $clo A = X$.


## Definition of separable space
If $(X, \mathcal{T})$ is a topological space, $X$ is **separable** iff it has a subset $S$ which is both countable and dense in $X$.


## The reals are separable
$\mathbb{Q}$ is dense in $\mathbb{R}$.

*Proof:* We already know $\mathbb{Q}$ is countable. It is a well-known theorem of real analysis that between any two reals there is a rational. Hence every open ball around a real number contains a rational, which means every open set around any real number also contains a rational, proving reals are closure points of the rationals.


## $\mathbb{R}^n$ is separable
$\mathbb{Q}^n$ is dense in $\mathbb{R}^n$.

*Proof:* We know that $\mathbb{Q}^n$ is countable. To prove it is dense in $\mathbb{R}^n$, we must prove that for all $x \in \mathbb{R}^n$ and for some basis $\mathbb{B}$ for $\mathbb{R}^n$, every basis element containing $x$ intersects $\mathbb{Q}^n$. But one basis for the product topology is the collection of $n$-fold products of open intervals in $\mathbb{R}$. Every such basis element $B = \prod_1^n B(x_i; \epsilon_i)$ for some $x_i$'s, so for each $i$ there is a $q_i \in B(x_i; \epsilon_i)$ since $\mathbb{Q}$ is dense in $\mathbb{R}$. So $(q_1, \ldots, q_n) \in B$, proving the statement.


## Separable metric space is second countable
If $(X,d)$ is a metric space whose metric topological space $(X, \mathcal{T})$ has an $S \subseteq X$ dense in $X$, then $X$ is second countable.

*Proof:* Define $\mathcal{B} = \{ B(s; q) : s \in S, q \in \mathbb{Q} \}$. We aim to prove that $\mathcal{B}$ is a basis for $X$. It is certainly a collection of open sets in $X$, and it is countable since it is the countable union of countable sets. Let $U$ be open in $X$. For all $x \in U$, there is an $\epsilon > 0$ such that $B(x; \epsilon) \subseteq U$.  We can find an $n \in \mathbb{N}$ such that $2/n < \epsilon$. By density of $S$, $B(x; 1/n)$ intersects $S$, meaning some $s \in B(x; 1/n) \cap S$. So $x \in B(s; 1/n)$, and if $z \in B(s; 1/n)$, then $d(z, x) \leq d(z, s) + d(s, x) < 2/n$, so $B(s; 1/n) \subseteq B(x; 2/n) \subseteqq B(x; \epsilon)$. So $U$ is a union of open balls with rational radii centered at elements of $S$.

### Corollary: $\mathbb{R}$ is second countable
The reals (with the standard topology) are second countable.

*Proof:* The standard topology on $\mathbb{R}$ is the metric topology, and we have proved above that it is separable. So the theorem applies

### Corollary: $\mathbb{R}^n$ is second countable.
$\mathbb{R}^n$ under the product topology is second countable

*Proof:* The product topology on $\mathbb{R}^n$ is separable and is the metric topology induced by the euclidean metric, so the theorem can be applied once again.


## Definition of topological manifold
An **$n$-dimensional topological manifold** is a second countable Hausdorff space that is locally Euclidean of dimension $n$.


### Remark
Since $\mathbb{R}^n$, being a metric topology, is Hausdorff and second countable, any locally Euclidean subspace of $\mathbb{R}^n$ will be a topological manifold, due do the fact that subspaces of Hausdorff spaces are Hausdorff and subspaces of second countable spaces are second countable.

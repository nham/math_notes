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


TODO

 - the map between the 2-sphere and the unit cube in R^3 is a homeomorphism


## Definition of locally Euclidean
A topological space $(X, \mathcal{T})$ is **locally Euclidean of dimension $n$** iff every $x \in X$ has an open neighborhood which is homeomorphic to an open subset of $\mathbb{R}^n$. Any such neighborhood is called a **Euclidean neighborhood** of $x$


## Characterization of locally Euclidean space
A space $(X, \mathcal{T})$ is locally Euclidean iff every $x \in X$ has an open neighborhood homeomorphic to an open ball of $\mathbb{R}^n$.

*Proof:* First, clearly each point having an open neighborhood homeomorphic to an open ball implies that the space is locally Euclidean since open balls are open. Conversely, supposing each $x \in X$ has some homeomorphism $f: U \to V$, where $V$ is open in $\mathbb{R}^n$ and $U$ is an open neighborhood of $x$, then $f(x)$ has some open ball $B$ centered at $f(x)$ and contained in $V$, so $f^{pre}(B)$ is also an open neighborhood of $x$. Since $f$ is a bijection, $f[f^{pre}(B)] = B$, so we have a homeomorphism between $f^{pre}(B)$ and $B$, an open ball of $\mathbb{R}^n$.


## Definition of a coordinate chart
If $X$ is a space that is locally Euclidean of dimension $n$, then a **coordinate chart** is a homeomorphism between $U$ and $V$, where $U$ is open in $X$ and $V$ is open in $\mathbb{R}^n$



## The reals are separable
$\mathbb{Q}$ is dense in $\mathbb{R}$.

*Proof:* We already know $\mathbb{Q}$ is countable. It is a well-known theorem of real analysis that between any two reals there is a rational. Hence every open ball around a real number contains a rational, which means every open set around any real number also contains a rational, proving reals are closure points of the rationals.


## $\mathbb{R}^n$ is separable
$\mathbb{Q}^n$ is dense in $\mathbb{R}^n$.

*Proof:* We know that $\mathbb{Q}^n$ is countable. To prove it is dense in $\mathbb{R}^n$, we must prove that for all $x \in \mathbb{R}^n$ and for some basis $\mathbb{B}$ for $\mathbb{R}^n$, every basis element containing $x$ intersects $\mathbb{Q}^n$. But one basis for the product topology is the collection of $n$-fold products of open intervals in $\mathbb{R}$. Every such basis element $B = \prod_1^n B(x_i; \epsilon_i)$ for some $x_i$'s, so for each $i$ there is a $q_i \in B(x_i; \epsilon_i)$ since $\mathbb{Q}$ is dense in $\mathbb{R}$. So $(q_1, \ldots, q_n) \in B$, proving the statement.


## Definition of topological manifold
An **$n$-dimensional topological manifold** is a second countable Hausdorff space that is locally Euclidean of dimension $n$.


### Remark
Since $\mathbb{R}^n$, being a metric topology, is Hausdorff and second countable, any locally Euclidean subspace of $\mathbb{R}^n$ will be a topological manifold, due do the fact that subspaces of Hausdorff spaces are Hausdorff and subspaces of second countable spaces are second countable.

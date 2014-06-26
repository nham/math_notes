# Prerequisites
Topological spaces, continuity, homeomorphisms, Hausdorff and second countable spaces


## Definition of subspaces
If $(X, \mathcal{T})$ is a topological space and $A \subseteq X$, then the **subspace topology** on $A$ is defined to be $\mathcal{S} := \{ A \cap T : T \in \mathcal{T} \}$. This is a topology on $A$, and under this topology $A$ is called a **subspace**.

*Proof:* $A \cap \emptyset = \emptyset \in \mathcal{S}$, $A \cap X = A \in \mathcal{S}$. If $U, V \in \mathcal{S}$, then there are $S, T \in \mathcal{T}$ such that $U = S \cap A$, $V = T \cap A$, $U \cap V = S \cap T \cap A$. But $S \cap T \in \mathcal{T}$, so $U \cap V \in \mathcal{S}$. Finally, if $\mathcal{B} \subseteq \mathcal{S}$, then by definition, if $I$ indexes $\mathcal{B}$, we can construct another collection $\mathcal{C} \subseteq \mathcal{T}$ indexed by $I$ such that $B_i = A \cap C_i$ for all $i \in I$. Hence $\bigcup \mathcal{B} = \bigcup_{i \in I} A \cap C_i = A \cap \bigcup \mathcal{C}$. But $\mathcal{T}$ is closed under arbitrary union, so $\bigcup \mathcal{C} \in \mathcal{T}$, proving $\bigcup \mathcal{B} \in \mathcal{S}$.


## Notation
For the neighborhood function $N$ and the sets $clo A$, $int A$, $acc A$, etc., it will often be necessary to specify which topological space we mean, especially when working with subspaces. So $clo_X Y$ will mean the closure of $A$ with respect to the topological space $X$. And so on for the other constructs.


## Inclusion map from a subspace is continuous
If $X$ is a space and $A$ a subspace, then the inclusion map $i: A \to X$ is continuous.

*Proof:* If $V$ is open in $X$, $i^{pre}(V) = V \cap A$ is open in $A$ by definition of the subspace topology, so $i$ is continuous.


## Characterization of subspaces (universal property?)
If $X$ is a subspace, $A$ is a subspace of $X$, then for any topological space $Y$, a map $f: Y \to A$ is continuous iff $i \circ f$ is, where $i: A \to X$ is the inclusion map.

*Proof:* If $f$ is continuous, $f \circ i$ is since we know $i$ is continuous from a previous proposition and since composition of continuous maps is continuous. 

Conversely, by hypothesis every open $V$ in $X$ has $(i \circ f)^{pre}(V)$ open as well. But $(i \circ f)^{pre}(V) = f^{pre}(i^{pre}(V))$.  If $U$ is open in $A$, there is a $V$ open in $X$ such that $U = V \cap A$. $i^{pre}(V) = U$, so $f^{pre}(U) = f^{pre}(i^{pre}(V))$, which is open. So $f$ is continuous.


## Properties of the subspace topology
If $A$ is a subspace of $X$, then:

 1. The inclusion $i: A \to X$ is a topological embedding
 2. If $f:X \to Y$ is continuous, then $f|A$ is also.
 3. If $B \subseteq A$ is a subspace of $A$, then $B$ is a subspace of $X$ as well.

*Proof:*

 1. The inclusion $i: A \to X$ is a topological embedding

    *Proof:* It's clearly injective and a bijection when restricted to $i|A, f(A): A \to A = i(A)$. In fact, the restriction is the identity on $A$, so it is its own inverse. It suffices to prove that $i$ is continuous. But if $V$ is open in $X$, then $V \cap A = i^{pre}(V)$ is open in $A$.

 2. If $f:X \to Y$ is continuous, then $f|A$ is also.
    
    *Proof:* If $V$ is open in $Y$, then $f^{pre}(V)$ is open in $X$ by hypothesis. $(f|A)^{pre}(V) = f^{pre}(V) \cap A$, so $(f|A)^{pre}(V)$ is open in $A$.

 3. If $B \subseteq A$ is a subspace of $A$, then $B$ is a subspace of $X$ as well.

    *Proof:* If $B$ is a subspace of $A$, then $U \subseteq B$ is open in $B$ iff $\exists V \subseteq A$, $V$ open in $A$ such that $U = V \cap B$. But since $A$ is a subspace of $X$, $V$ is open in $A$ iff $\exists W \subseteq X$ such that $V = W \cap A$. Since $U = W \cap A \cap B = W \cap B$, we've established that $B$ is a subspace of $X$


## Further subspace properties
If $X$ is a space, then

 1. If $X$ is Hausdorff, any subspace of $X$ is Hausdorff
 2. If $X$ is second countable, any subspace of $X$ is second countable

*Proof:* For (1), for any $x, y \in X$ with $x \neq y$, there are open neighborhoods $U$ and $V$ of $x$ and $y$, respectively, that are disjoint. So if $A$ is a subspace of $X$ and $a, b \in A$ and $a \neq b$, then we can find $U, V \subseteq X$ that are open neighborhoods of $a, b$ respectively and disjoint. Hence $B = U \cap A$ and $C = V \cap A$ are disjoint open neighborhoods of $a$ and $b$, respectively, so $A$ is Hausdorff.

For (2), if $A$ is a subspace of $X$, then if $\mathcal{B}$ is a countable basis for $X$, $\mathcal{C} = \{ B \cap A : B \in \mathcal{B} \}$ is a basis for $A$ (by a previous proposition), and it is countable by definition.


## The basis of a subspace topology
If $(X, \mathcal{T})$ is a space and $\mathcal{B}$ is a basis for $X$, then if $A$ is a subspace of $X$, the collection $\mathcal{C} = \{ A \cap B : B \in \mathcal{B} \}$ is a basis for the subspace topology on $A$.

*Proof:* First, every element of $\mathcal{C}$ is open in $A$ by definition of the subspace topology. To prove that every open subset of $A$ is a union of elements from $\mathcal{C}$, let $U$ be open in $A$. Then there exists a $V \subset X$ which is open in $X$ and for which $U = V \cap A$. But $V = \bigcup \mathcal{S}$ for some subcollection $\mathcal{S}$ of $\mathcal{B}$. So $U = \bigcup_{S \in \mathcal{S}} S \cap A$. Each such $S \cap A$ is an element of $\mathcal{C}$, which proves the statement.


## Restrictions of continuous maps are continuous
If $f: X \to Y$ is a continuous map between some topological spaces $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, then if $A \subseteq X$, the restriction $f|A: A \to Y$ is also continuous (where the topology on $A$ is the subspace topology).

*Proof:* By hypothesis for any open $U \subseteq Y$, $f^{pre}(U)$ open in $X$, so $V = f^{pre}(U) \cap A$ is open in $A$. It remains to prove that $(f|A)^{pre}(U) = V$, but this is true by inspection.

### Corollary
If $f: X \to Y$ is a continuous map between some topological spaces $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, then if $A \subseteq X$, the restriction $f|A,f(A): A \to f(A)$ is also continuous (where the topology on $A$ is the subspace topology).

*Proof:* We know $f|A: A \to Y$ is continuous. So if $V$ open in $f(A)$, $V = U \cap f(A)$ for $U$ open in $Y$, so $(f|A)^{pre}(U)$ is open in $A$. but $(f|A)^{pre}(V) = (f|A)^{pre}(U)$ since if $u \in U - f(A)$, it has no pre-image. Also, $(f|A)^{pre}(V) = (f|A,f(A))^{pre}(V)$, so $f|A,f(A)$ is continuous.



## Definition of an embedding
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces, then $f: X \to Y$ is an **embedding** iff it is injective, continuous, and when we consider $g: X \to f(X)$, we obtain a homeomorphism between $X$ and $f(X)$, where $f(X)$ is considered as a subspace of $Y$.


## Neighborhoods and subspaces
If $(X, \mathcal{T})$ is a topological space and $A \subseteq X$, then for any $a \in A$, $S \in N_A(a)$ iff $\exists M \in N_X(a)$, $S = M \cap A$.

*Proof:*

 1. If $S \in N_A(a)$, then $\exists M \in N_X(a)$, $S = M \cap A$.

    1. There is a $U$ open in $A$ such that $x \in U \subseteq S$. 

       *Proof:* $B \in N_A(x)$

    2. There is a $V$ open in $X$ such that $U = V \cap A$

       *Proof:* Definition of open subsets in a subspace.

    3. Q.E.D.

       *Proof:* $V$ contains $a$, so $V \in N_X(a)$. Then $S \cup V \in N_X(a)$ as well and $S = (S \cup V) \cap A = (S \cap A) \cup (V \cap A) = S \cup U = S$.

 2. If $\exists M \in N_X(a)$, $S = M \cap A$, then $S \in N_A(a)$.

    *Proof:* There is a $V$ open in $X$ such that $a \in V \subseteq M$, so $U := V \cap A$ is open in $A$, $a \in U$ (since $a \in V$ and $a \in A$) and $U \subseteq S$.Thus $S \in N_A(a)$.


## Neighborhoods and subspaces lemma
If $(X, \mathcal{T})$ is a topological space and $x \in X$, $M \in N_X(x)$, then any $B \in N_M(x)$ has $B \in N_X(x)$ as well.

*Proof:* We know that $B = C \cap M$ for some $C \in N_X(x)$. But since $M \in N_X(x)$ as well, so is $C \cap M = B$.


## Local criterion for continuity
If $f: X \to Y$ is a function between some topological spaces $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, then the following are equivalent:

 1. $f$ is continuous
 2. every $x \in X$ has some $B \in N(x)$ with $f|B$ is continuous.

*Proof:* If $f$ is continuous, every restriction to a subset is also continuous. So pick any neighborhood for every $x \in X$. 

Conversely, let $x \in X$ and $M \in N_Y(x)$. There is some $B \in N_X(x)$ such that $f|B$ is continuous, meaning that $(f|B)^{pre}(M) \in N_B(x)$. But $(f|B)^{pre}(M) = f^{pre}(M) \cap B$, so $(f|B)^{pre}(M) \subseteq f^{pre}(M)$ and $(f|B)^{pre}(M) \in N_X(x)$ by the lemma. Thus $f^{pre}(M) \in N_X(x)$ as well.



## Definition of a local homeomorphism
If $X$ and $Y$ are spaces and $f: X \to Y$ is a **local homeomorphism** iff it is continuous and for every $x \in X$, there is an open neighborhood $U$ of $x$ such that $f(U)$ is open and the restriction $f|U,f(U): U \to f(U)$ is a homeomorphism.


## Every homeomorphism is a local homeomorphism
If $X$ and $Y$ are spaces and $f: X \to Y$ is a homeomorphism, then it is also a local homeomorphism.

*Proof:* Since $f$ is bijective, for every $x \in X$, we can find an open neighborhood $V$ of $f(x)$ in $Y$. Since $f$ is continuous, $f^{pre}(V)$ is an open neighborhood of $x$. If we define $U := f^{pre}(V)$, then $f(U) = V$ since $f$ is injective.

the restriction to $f|U, f(U): U \to f(U)$ is also a bijection. It is also continuous, as was previously proved. It remains to prove that $(f|U,f(U))^{-1}$ is continuous. Let $g = f^{-1}$. Then $(g|f(U),U) = (f|U,f(U))^{-1}$ clearly, which is continuous because it is the restriction of a continuous map.


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


### Homeomorphism between $\mathbb{R}$ and $B(0; 1)$
$\mathbb{R}$ and $B(0; 1) \subseteq \mathbb{R}$ are homeomorphic.

*Proof:* 

 1. Let $f: B(0; 1) \to \mathbb{R}$ defined by $f(x) := x/(1 - |x|)$. Let $g: \mathbb{R} \to B(0;1)$ be defined by $g(x) = x/(1 + |x|)$. 

 2. $f$ and $g$ are inverses, which implies $f$ is a bijection.

    *Proof:* Then $(g \circ f)(x) = \frac{x/(1 - |x|)}{1 + |x / (1 - |x|)|} = \frac{x/(1 - |x|}{1 + |x|/(1 - |x|)} = x$ and $(f \circ g)(x) = \frac{x/(1 + |x|)}{1 - |x / (1 + |x|)|} = \frac{x/(1+|x|)}{1 - |x| / (1 + |x|)} = x$.

 3. $f$ is continuous at $0$ 

    *Proof:* For any $\epsilon > 0$, when $|x| < \epsilon/(1 + \epsilon)$, since $|f(x)| = |x|/(1 - |x|)$, so we have $1 - |x| > 1/(1 + \epsilon)$, so $|f(x)| < \epsilon/(1 + \epsilon) / (1 + \epsilon) = \epsilon$.

 4. If $x, y \in B(0;1)$ and $x, y > 0$ or $x, y < 0$, then $|f(x) - f(y)| = \frac{|x - y|}{(1 - |x|)(1 - |y|)}$

    *Proof:* We have $|f(x) - f(y)| = \frac{|x - x|y| - y + y|x||}{(1 - |x|)(1 - |y|} \leq \frac{|x - y|}{(1 - |x|)(1 - |y|} + \frac{-x|y| + y|x||}{(1 - |x|)(1 - |y|)}$. If $x$ and $y$ are the same sign, then $-x|y| + y|x| = 0$, so in such circumstances $|f(x) - f(y)| \leq \frac{|x-y|}{(1 - |x|)(1 - |y|)$.

 5. If $x > 0$ and $0 < \epsilon < |x|$, then $|f(x) - f(x - \epsilon)| < |f(x + \epsilon) - f(x)|$

    *Proof:* Since $\epsilon < x$, $0 < x - \epsilon < x < x + \epsilon$, so (4) applies and $|f(x) - f(x - \epsilon)| = |\epsilon| / (1 - |x|)(1 - |x - \epsilon)$ and $|f(x + \epsilon) - f(x)| = |\epsilon| / (1 - |x|)(1 - |x + \epsilon|)$. Since $|x - \epsilon| < |x + \epsilon|$, $1/(1 - |x - \epsilon| < 1/(1 - |x + \epsilon)$, so multiplying both sides by $|\epsilon| / (1 - |x|)$ establishes the statement.

 6. If $x < 0$ and $0 < \epsilon < |x|$, then $|f(x) - f(x - \epsilon)| > |f(x + \epsilon) - f(x)|$

    *Proof:* Since $\epsilon < |x|$, $x - \epsilon < x < x + \epsilon < 0$, so (4) applies and $|f(x) - f(x - \epsilon)| = |\epsilon| / (1 - |x|)(1 - |x - \epsilon)$ and $|f(x + \epsilon) - f(x)| = |\epsilon| / (1 - |x|)(1 - |x + \epsilon|)$. Since $|x - \epsilon| > |x + \epsilon|$, $1/(1 - |x - \epsilon| > 1/(1 - |x + \epsilon)$, so multiplying both sides by $|\epsilon| / (1 - |x|)$ establishes the statement.

 7. If $x, y \in B(0; 1)$ and $x < y$, then $f(x) < f(y)$

    *Proof:* First, if $0 < x < y$ or $x < y < 0$, then $|x| < |y|$, so $1 - |x| > 1 - |y|$, so $1/(1 - |x|) < 1 / (1 - |y|)$, hence $f(x) = x / (1 - |x|) < y / (1 - |y|) = f(y)$. If $x < 0 < y$, then $f(x)$ is negative and $f(y)$ is positive. If one or both of $x$ or $y$ is zero, then it holds since $f(0) = 0$.

 8. $f$ is continuous at every $x \in (0, 1)$.

    *Proof:* By (5) it suffices to prove that for every $\epsilon > 0$ there is a $0 < \delta < |x|$ such that for all $y \in (0, 1)$ with $x < y < x + \delta$, $f(y) - f(x) < \epsilon$. We know by (4) that $f(y) - f(x) = (y - x)/(1 - y)(1 - x)$. Let $\delta < \epsilon (1 - x)^2 / (1 + \epsilon(1 - x))$. Then since $y < x + \delta$, $1 - y > 1 - x - \delta$, so $f(y) - f(x) < (y - x)/(1 - x - \delta)(1 - x) = \delta / (1 - x - \delta)(1 - x). If we define $a = 1- x$, then we have $f(y) - f(x) < \delta  (a - \delta) \delta$ and $\delta < \epsilon a^2 / (1 + \epsilon a)$, so this can be simplified to $f(y) - f(x) < \epsilon$.

 9. $f$ is continuous at every $x \in (-1, 0)$.

    *Proof:* $f(x) = - f(x)$, so the same should be true by symmetry. The above argument should be adaptable.

 10. $g$ is continuous

     *Proof:* If $x, y > 0$ or $x, y < 0$, by similar arguments as above, we have $|g(y) - g(x)| = |y - x| / (1 + |x|) (1 + |y|)$. However, $1 / (1 + |y|) < 2$ since $|y|$ is always positive for all $y$, so for any $x$, for all $y$ with $|y - x| < \epsilon (1 + |x|), we have $|g(y) - g(x)| < \epsilon /2 < \epsilon$, so $g$ is continuous at all $x$.


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

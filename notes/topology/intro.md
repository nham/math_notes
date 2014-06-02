# Topology

## Definition of topological space (neighborhood topology)
A **neighborhood topology** on any set $X$ is a map $N: X \to \mathcal{P}(\mathcal{P} X)$ such that, for all $x \in X$:

 0. $N(x) \neq \emptyset$
 1. for all $U \in N(x)$, $x \in U$ (every neighborhood of $x$ contains $x$)
 2. for all $U \in N(x)$ and all $S \in \mathcal{P}(X)$ such that $U \subseteq S$, $S \in N(x)$ (every superset of a neighborhood of $x$ is a neighborhood of $x$)
 3. for all $U, V \in N(x)$, $U \cap V \in N(x)$ (every intersection of two neighborhoods of $x$ is a neighborhood of $x$)
 4. for all $U \in N(x)$, there is a $S \subseteq U$, $S \in N(x)$ such that for all $y \in S$, $S \in N(y)$. (something something open subset?)

A set $X$ equipped with a neighborhood topology $N$ is called a **topological space**.


## Example: metric space
Any metric space $(X, d)$ is a topological space with the neighborhood topology that assigns to each point all supersets of open balls containing $x$. Call such sets *neighborhoods of $x$*. Clearly the first two axioms are satisfied. If $U, V$ are neighborhoods of $X$, then there are $\epsilon, \delta > 0$ such that $x \in B(a; \epsilon) \subseteq U$ and $x \in B(b; \delta) \subseteq V$ for some $a, b \in X$.  Then $U \cap V$ contains $M = B(a; \epsilon) \cap B(b; \delta)$ and $x \in M$, so $M$ contains an open ball centered at $x$ since $M$, being the intersection of open sets, is open in $(X, d)$. Hence $U \cap V$ contains an open ball that contains $x$, and so is a neighborhood.

Finally, to prove the last axiom, we note that any open ball is a neighborhood of all of its points. Since we defined neighborhoods of $x$ as supersets of open balls containing $x$, each neighborhood of $x$ contains a neighborhood of $x$ that is also a neighborhood of all of its points.


## Definition of interior of a set
If $A \subseteq X$, then the **interior** of $A$ is defined to be $int A := \{x \in X : A \in N(x)\}$.

## Facts about the interior
For any topological space $(X, N)$ and $A, B \subseteq X$

 - $int A \subseteq A$
 - If $A \subseteq B$, then $int A \subseteq int B$
 - $int A$ is a neighborhood of all its points
 - $int (int A) = int A$

*Proof:* If $x \in int A$, then $A$ is a neighborhood of $x$, so by the first axiom $x \in A$.

If $A \subseteq B$, then for all $x \in int A$, $A$ is a neighborhood of $x$. But $B$, being a superset of $A$, is also a neighborhood of $x$, so $x \in int B$ as well.

If $x \in int A$, then $A \in N(x)$, so there is (by the fourth axiom) an $M \in N(x)$, $M \subseteq A$ which is a neighborhood of all of its points. That means that $A$ is a neighborhood of all of the points in $M$, so $M \subseteq int A$, hence $int A \in N(x)$.

Finally, the first and the second facts, $int(int A) \subseteq int A$. $int A \subseteq int(int A)$ comes from the third fact and the definition of interiors.


## Intersection of interiors is interior of intersection
For any $A, B \subseteq X$, $int A \cap B = int A \cap int B$.

*Proof:* If $x \in int A \cap B$, then $A \cap B$ is a neighborhood of $x$. so $A \cap B \subseteq A, B$ meaning $A$ and $B$ are both neighborhoods of $x$. Hence $x \in int A \cap int B$. Conversely, if $x \in int A \cap int B$, $A$ and $B$ are both neighborhoods of $x$, so $A \cap B$ is as well, hence $x \in int A \cap B$.


## Definition of an open set
A set $U$ is **open in topological space $(X, N)$** iff $int U = U$.

Alternatively, a set $U$ is open iff $U$ is a neighborhood of all of its elements.

*Proof:* If $U = int U$, then $U$ is a neighborhood of all of its elements (on account of $int U$ having that property). Conversely, if $U$ is a neighborhood of all of its elements, then $int U = U$ by definition of the interior.


## Alternate characterization of neighborhood
If $(X, N)$ is a topological space, then for all $x \in X$, $B \in N(x)$ iff there is an open $U$ such that $x \in U \subseteq B$.

*Proof:* For any $B \in N(x)$, $int B$ is an open set, $x \in int B$ (since $B$ is a neighborhood of $x$) and $int B \subseteq B$. Conversely, if $U$ is an open set and $x \in U \subseteq B$, then $B \in N(x)$ since it is a superset of $U$, which is a neighborhood of $x$ because it is open.


## Open set facts
In a topological space $(X, N)$:

 1. $\emptyset$, $X$ are open
 2. if $U, V$ are open, $U \cap V$ is open
 3. If $\mathcal{S} \subseteq \mathcal{P}(X)$ are all open, then $\bigcup \mathcal{S}$ is open

*Proof:* $int \emptyset = \emptyset$ and since every $x \in X$ has at least one neighborhood, $X$ is a superset of each such neighborhood, so $X$ is a neighborhood of every element of $X$, henc $X = int X$.

If $U, V$ are open, then $U \cap V = (int U) \cap (int V) = int U \cap V$, so $U \cap V$ is open.

Finally, if $\mathcal{S}$ is a collection of open subsets of $X$, then we must only prove that $\bigcup \mathcal{S} \subseteq int \bigcup \mathcal{S}$. If $x \in \bigcup \mathcal{S}$, there is some $B \in \mathcal{S}$ such that $x \in B$. Since $B$ is open, $B \in N(x)$, so $\bigcup \mathcal{S}$, being a superset of $B$, is as well. Hence $x \in int \bigcup \mathcal{S}$.


## Alternative axiomatization of topological spaces
If $X$ is any set and $\mathcal{U} \subseteq \mathcal{P}(X)$ such that

 - $\emptyset, X \in \mathcal{U}$
 - if $U, V \in \mathcal{U}$, then $U \cap V \in \mathcal{U}$
 - If $\mathcal{S} \subseteq \mathcal{U}$, then $\bigcup \mathcal{S} \in \mathcal{U}$

then defining $N: X \to \mathcal{P}(\mathcal{P}X)$ by $N(x) = \{N \subseteq X : \exists U \in \mathcal{U}, x \in U \subseteq N \}$, $(X, N)$ is a topological space. 

*Proof:* $N(x) \neq \emptyset$ since $X \in \mathcal{U}$, so by definition $X \in N(x)$. Also by definition, $x$ is an element of every neighborhood of $x$, and also all supersets of a neighborhood of $x$ are also neighborhoods of $x$. 

If $A, B \in N(x)$, there are $U, V \in \mathcal{U}$ such that $x \in U \subseteq A$ and $x \in V \subseteq B$. So $U \cap V \subseteq A \cap B$ and $x \in U \cap V \in \mathcal{U}$, hence $A \cap B \in N(x)$ as well.

Finally, if $A \in N(x)$, by definition there is a $U \in \mathcal{U}$ such that $x \in U \subseteq A$. So $U \in N(x)$. But for all $y \in U$, $U \in N(y)$ by definition ($y \in U \subseteq U$).


### Remark
We say that $(X, \mathcal{U})$ from the hypothesis of the last proposition is an **open set topological space**, and that the original definition of "topological space" is a **neighborhood topological space**. The previous proposition proves that any neighborhood topological space gives rise to an open set topological space, and vice versa.

It is more convenient to work with the open set topological space, so from now on a topological space will use the open set topological space definition.


## An open set topological space specifies the open sets
If $(X, \mathcal{U})$ is an open set topological space, then $\mathcal{U}$ is the collection of open sets of $(X, N)$

*Proof:* If $U \in \mathcal{U}$, for all $x \in U$, $U \in N(x)$ by definition of $N(x)$. So $U$ is open. Conversely, if $V$ is open for some $V \subseteq X$, then for all $x \in V$, $V \in N(x)$, so there is a $U_x \in \mathcal{U}$ such that $x \in U_x \subseteq V$. Hence $V = \bigcup_{x \in V} U_x \in \mathcal{U}$ by the union property of $\mathcal{U}$.


## Definition of metric topology
If $(X, d)$ is a metric space, we say that the **metric topology** on $X$ is the collection of open sets in the metric space. 

## Definition of usual topology on $\mathbb{R}$
The **usual topology on $\mathbb{R}$** is the metric topology from the metric $d(x, y) := |x - y|$.


## Definition of closed set
If $(X, \mathcal{T})$ is a topological space, then $C \subseteq X$ is **closed** in $(X, \mathcal{T})$ iff $X - C$ is open.

**Closed set facts
In a topological space $(X, \mathcal{T})$:

 1. $\emptyset$, $X$ are closed
 2. if $U, V$ are closed, $U \cup V$ is closed
 3. If $\mathcal{S} \subseteq \mathcal{P}(X)$ are all closed, then $\bigcap \mathcal{S}$ is closed

*Proof:*  (1) is true since $\emptyset$ and $X$ are both open. (2) and (3) are true via DeMorgan's laws: If $U, V$ are closed, $X - U$ and $X - V$ are open, so $(X - U) \cap (X - V)$ is open as well, hence $X - U \cup V$ is open, so $U \cup V$ is closed. Similarly, if $I$ indexes $\mathcal{S}$, then each $X - S_i$ is open, so $\bigcup_{i \in I} X - S_i = X - \bigcap_{i \in } S_i$ is open as well, hence the complement is closed.


## Definition of closure
If $(X, \mathcal{T})$ is a topological space and $A \subseteq X$, then the **closure** of $A$ in $(X, \mathcal{T})$ is defined to be $clo A := \{ x \in X : \forall S \in N(x), S \cap A \neq \emptyset \}$


## Compliment of the closure is the interior of the complement
$int(X - S) = X - clo S$

*Proof:* If $x \notin clo S$, there is some $M \in N(x)$ that is disjoint from $S$. Thus $x \in M \subseteq X - S$, so $X - S$ is a neighborhood of $x$, meaning $x \in int(X - S)$. Conversely, if $x \in int(X - S)$, $X - S$ is a neighborhood of $x$. If $x \in clo S$, then every neighborhood of $x$ intersects $S$, which contradicts that $X - S$ is a neighborhood.

## Facts about the closure
For any topological space $(X, \mathcal{T})$ and $A, B \subseteq X$

 - $A \subseteq clo A$
 - If $A \subseteq B$, then $clo A \subseteq clo B$
 - $A$ is closed iff $A = clo A$
 - $clo (clo A) = clo A$

*Proof:* $int X-A \subseteq X-A$, so $A \subseteq X - int(X - A) = clo A$. Also if $A \subseteq B$, if $x \in clo A$, every neighborhood of $x$ intersects $A$, hence also intersects $B$ since $A \subseteq B$.

$A$ is closed iff $X - A$ is open iff $int(X - A) = X - clo A = X - A$. But this is true iff $clo A = A$.

Finally, the last fact is true (by the third fact) iff $clo A$ is closed. So we must prove $X - clo A = int(X - A)$ is open. But this is already known.


## Union of closures is closure of union
For any $A, B \subseteq X$, $clo A \cup B = clo A \cup clo B$.

*Proof:* 

$$X - clo(A \cup B) = int(X - A \cup B) = int((X - A) \cap (X - B)) = int(X - A) \cap int(X - B) = (X - clo A) \cap (X - clo B) = X - (clo A \cup clo B)$$

Taking the complement of both sides establishes the theorem.


## Characterizing closure and interior
For a topological space $(X, \mathcal{T})$ and subset $A$ of $X$, $clo A$ is the intersection of all closed sets containing $A$, and $int A$ is the union of all open sets contained in $A$.

*Proof:*  Let $O(A) = \{S \subset A : S open \}$, $C(A) = \{A \subseteq S : S closed\}$ for all $A \subseteq X$.

If $U \subset A$ is open, $A$ is a neighborhood for all points in $U$, so $U \subseteq int A$. So the union of all of them is a subset of $int A$. But $int A$ itself is an open subset of $A$, so it is a subset of the union of all open subsets. This establishes half of the statement.

For the other half, $S \in C(A)$ iff $X - S \in O(X - A)$, so $X - clo A = int(X - A) = \bigcup O(X - A) = X - \bigcap_{S \in O(X - A)} (X - S) = X - \bigcap C(A)$, hence $clo A = \bigcap C(A)$.


## Definition of boundary
If $(X, \mathcal{T})$ is a topological space and $A \subseteq X$, then the **boundary** of $A$ in $(X, \mathcal{T})$ is defined to be $\partial A := clo A - int A$.


## Characterizing the boundary
For a topological space $(X, \mathcal{T})$ and subset $A$ of $X$, $\partial A$ is the collection of points for which every neighborhood intersects both $A$ and $X - A$.

*Proof:* $clo A = X - int(X - A)$, do $\partial A = X - int(X - A) - int A$. In other words, the boundary is exactly those elments not in the interior of $A$ or $X - A$. But this could only be true for an element $x$ of $X$ iff no neighborhood of $x$ is contained entirely in $A$ or in $X - A$.



## Definition of exterior
If $(X, \mathcal{T})$ is a topological space and $A \subseteq X$, then the **exterior** of $A$ in $(X, \mathcal{T})$ is defined to be $ext A := int X - A$.


## Definition of closure point, interior point, boundary point, isolated point, accumulation point
If $(X, \mathcal{T})$ is a topological space and $A \subseteq X$, then $x \in X$ is an **interior point** of $A$ iff $x \in int A$, a **closure point** of $A$ iff $x \in clo A$, and a **boundary point** iff $x \in \partial A$. $x$ is an **accumulation point** of $A$ iff each neighborhood of $x$ intersects $A - x$, and an **isolated point** of $A$ iff $x \in A$ and some neighborhood $B$ of $x$ does not intersect $A - x$.

The set of all accumulation points of $A$ is denoted $acc A$.


## Definition of dense subset
If $(X, \mathcal{T})$ is a topological space, $A \subseteq X$ is **dense** in $X$ iff $clo A = X$.


## Definition of separable space
If $(X, \mathcal{T})$ is a topological space, $X$ is **separable** iff it has a subset $S$ which is both countable and dense in $X$.



## Definition of continuity
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces and $f: X \to Y$, then $(f, \mathcal{S}, \mathcal{T})$ is a **continuous map** iff for all $x \in X$, for all $B \in N_Y(f(x))$, $f^{pre}(B) \in N_X(x)$.

Equivalently, $(f, \mathcal{S}, \mathcal{T})$ is continuous iff for all $x \in X$, for all $B \in N_Y(f(x))$, there is an $M \in N_X(x)$ such that $f(M) \subseteq B$.

*Proof:* Let  $B \in N_Y(f(x))$. Then if $f^{pre}(B) \in N_X(x)$, $f(f^{pre}(B)) = B$. Conversely, if $M \in N_X(x)$ with $f(M) \subseteq B$, then $M \subseteq f^{pre}(B)$, so $f^{pre}(B) \in N_X(x)$.


## Open set characterization of continuity
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces and $f: X \to Y$, then $f$ is a continuous map iff for every open $V \subseteq Y$, $f^{pre}(V)$ is open in $X$.

*Proof:* If $f$ is continuous, then for any open $V subseteq Y$, for all $x \in f^{pre}(V)$, $f(x) \in V$, so $V \in N_Y(f(x))$ (since $V$ is open), so $f^{pre}(V) \in N_x(x)$ by continuity, hence $f^{pre}(V)$ is open in $X$. Conversely if the inverse image of every open set is open, then for any $x \in X$ and any $M \in N_Y(f(x))$, there is a $V$ open in $Y$ such that $f(x) \in V \subseteq M$, so $x \in f^{pre}(V) \subseteq f^{pre}(M)$. Since $f^{pre}(V)$ is open in $X$ by hypothesis, $f^{pre}(M) \in N_X(x)$.



## Definition of subspaces
If $(X, \mathcal{T})$ is a topological space and $A \subseteq X$, then the **subspace topology** on $A$ is defined to be $\mathcal{S} := \{ A \cap T : T \in \mathcal{T} \}$. This is a topology on $A$, and under this topology $A$ is called a **subspace**.

*Proof:* $A \cap \emptyset = \emptyset \in \mathcal{S}$, $A \cap X = A \in \mathcal{S}$. If $U, V \in \mathcal{S}$, then there are $S, T \in \mathcal{T}$ such that $U = S \cap A$, $V = T \cap A$, $U \cap V = S \cap T \cap A$. But $S \cap T \in \mathcal{T}$, so $U \cap V \in \mathcal{S}$. Finally, if $\mathcal{B} \subseteq \mathcal{S}$, then by definition, if $I$ indexes $\mathcal{B}$, we can construct another collection $\mathcal{C} \subseteq \mathcal{T}$ indexed by $I$ such that $B_i = A \cap C_i$ for all $i \in I$. Hence $\bigcup \mathcal{B} = \bigcup_{i \in I} A \cap C_i = A \cap \bigcup \mathcal{C}$. But $\mathcal{T}$ is closed under arbitrary union, so $\bigcup \mathcal{C} \in \mathcal{T}$, proving $\bigcup \mathcal{B} \in \mathcal{S}$.


## Notation
For the neighborhood function $N$ and the sets $clo A$, $int A$, $acc A$, etc., it will often be necessary to specify which topological space we mean, especially when working with subspaces. So $clo_X Y$ will mean the closure of $A$ with respect to the topological space $X$. And so on for the other constructs.


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


## Restrictions of continuous maps are continuous
If $f: X \to Y$ is a continuous map between some topological spaces $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, then if $A \subseteq X$, the restriction $f|A: A \to Y$ is also continuous (where the topology on $A$ is the subspace topology).

*Proof:* By hypothesis for any open $U \subseteq Y$, $f^{pre}(U)$ open in $X$, so $V = f^{pre}(U) \cap A$ is open in $A$. It remains to prove that $(f|A)^{pre}(U) = V$, but this is true by inspection.


## Constant, identity functions are continuous
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces, then any function $f: X \to Y$ defined by $f(x) = y$ for all $x \in X$ and some $y \in Y$ is continuous, as is the identity function $id_X: X \to X$.

*Proof:* $f^pre(V)$ for any open $V \subseteq Y$ is either $X$ or $\emptyset$ based on whether $y \in V$. In either case, the pre-image is open. Also, $id_X^{pre}(V) = V$, so it is clearly continuous.


## Composition of continuous maps is continuous
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, $(Z, \mathcal{U})$ are topological spaces, $f: X \to Y$ and $g: Y \to Z$ are continuous maps, then $g \circ f$ is a continuous map.

*Proof:* If $W$ is open in $Z$, then $g^{pre}(W) is open in $Y$, hence $f^{pre}(g^{pre}(W))$ is open in $X$. But $(g \circ f)^{pre}(W) = \{x \in X : f(x) \in g^{pre}(W) \} = f^{pre}(g^{pre}(W))$.


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
If $f: X \to Y$ is a function between some topological spaces $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, then $f$ is continuous iff every $x \in X$ has some $B \in N(x)$ with $f|B$ is continuous.

*Proof:* If $f$ is continuous, every restriction to a subset is also continuous. So pick any neighborhood for every $x \in X$. 

Conversely, let $x \in X$ and $M \in N_Y(x)$. There is some $B \in N_X(x)$ such that $f|B$ is continuous, meaning that $(f|B)^{pre}(M) \in N_B(x)$. But $(f|B)^{pre}(M) = f^{pre}(M) \cap B$, so $(f|B)^{pre}(M) \subseteq f^{pre}(M)$ and $(f|B)^{pre}(M) \in N_X(x)$ by the lemma. Thus $f^{pre}(M) \in N_X(x)$ as well.


## Definition of coarser/finer topologies
If $\mathcal{S}$ and $\mathcal{T}$ are two topologies on a set $X$, then $\mathcal{S}$ is said to be **coarser** than $\mathcal{T}$ (and $\mathcal{T}$ **finer** than $\mathcal{S}$) iff $\mathcal{S} \subseteq \mathcal{T}$.

## Alternative characterization of coarser/finer topologies
If $X$ is a set and $\mathcal{S}$, $\mathcal{T}$ are two topologies on $X$, then $\mathcal{S}$ is coarser than $\mathcal{T}$ iff the identity function on $X$ is a continuous function $(X, \mathcal{T}, \mathcal{S})$

*Proof:* $id_X$ is a continuous map $(X, \mathcal{T}, \mathcal{S})$ iff every set open under $\mathcal{S}$ is also open under $\mathcal{T}$, which is true iff $\mathcal{S}$ is coarser than $\mathcal{T}$.


## Definition of discrete, trivial topologies
If $X$ is a set, the **discrete topology** on $X$ is the powerset of $X$ and the **trivial topology** on $X$ is $\{ \emptyset, X\}$. The discrete topology is the finest possible topology on $X$ and the trivial topology the coarsest possible topology.

*Proof:* Every topology on $X$ contains $\emptyset$ and $X$ and is a subcollection of the powerset.


## "Is coarser than" is a partial order
If $X$ is a set and $\mathcal{R}, \mathcal{S}, \mathcal{T}$ are topologies on $X$, then if we write $\mathcal{S} \sim \mathcal{T}$ exactly when $\mathcal{S}$ is coarser than $\mathcal{T}$, we have $\sim$ is a partial order.

*Proof:* $\sim$ is reflexive since the identity map from a space to itself is continuous. If $id_X$ is a continuous map $(id_X, \mathcal{T}, \mathcal{S})$ and $(id_X, \mathcal{S}, \mathcal{R})$, then $id_X \circ id_X = id_X$ is a continuous map $(id_X, \mathcal{T}, \mathcal{R})$ since the composition of continuous functions is continuous. This establishes transitivity.

Finally, if $\mathcal{S} \sim \mathcal{T}$ and $\mathcal{T} \sim \mathcal{S}$, then they are the same topologies.


## Definition of homeomorphism
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces, then $f: X \to Y$ is a **homeomorphism** iff it is bijective, continuous, and its inverse is continuous.


## Alternative characterization of homemorphism (neighborhoods)
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces, then $f: X \to Y$ is a homeomorphism iff for all $x \in X$ and $M \subseteq X$, $M \in N_X(x)$ iff $f(M) \in N_Y(f(x))$.

*Proof:* Let $g := f^{-1}$.

If $f$ is a homeomorphism, then for all $x \in X$, every $B \in N_Y(f(x))$ has $f^{pre}(B) \in N_X(x)$ and for every $y \in Y$, every $A \in N_X(g(y))$ has $g^{pre}(A) \in N_Y(y)$.

The latter statement is equivalent to: for all $x \in X$, every $A \in N_X(x)$ has $g^{pre}(A) \in N_Y(f(x))$.

But $g^{pre}(Z) = f(Z)$ for all $Z \subseteq X$, so we have that $f$ is a homeomorphism iff for all $x \in X$, every $B \in N_Y(f(x)) has $f^{pre}(B) \in N_X(x)$ and every $A \in N_X(x)$ has $f(A) \in N_Y(f(x))$

But $f^{pre}(f(M)) = M$ since $f$ is injective, so the statement holds.


## Composition of homeomorphisms is a homeomorphism
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, $(Z, \mathcal{U})$ are topological spaces, $f: X \to Y$ and $g: Y \to Z$ are homeomorphisms, then $g \circ f$ is a homeomorphism.

*Proof:* The composition of bijective functions is bijective and the composition of continuous functions is continuous.


## Definition of an embedding
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces, then $f: X \to Y$ is an **embedding** iff it is injective, continuous, and when we consider $g: X \to f(X)$, we obtain a homeomorphism between $X$ and $f(X)$ considered as a subspace of $Y$.


## Definition of Hausdorff space
A topological space $(X, \mathcal{T})$ is **Hausdorff** iff any two distinct points have disjoint neighborhoods around them.



## Examples
TODO
 - every open ball in R is homeomorphic to every other open ball
 - every open ball in R^n is homeomorphic to every other open ball
 - the map between the 2-sphere and the unit cube in R^3 is a homeomorphism
 - R^n is separable

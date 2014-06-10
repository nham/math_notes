# Topology

## Definition of countable
A set $X$ is **countable** iff it is bijective with a subset of $\mathbb{N}$. That is, $X$ is countable iff it is finite or countably infinite.


## Definition of topological space (neighborhood topology)
A **neighborhood topology** on any set $X$ is a map $N: X \to \mathcal{P}(\mathcal{P} X)$ such that, for all $x \in X$:

 0. $N(x) \neq \emptyset$
 1. for all $U \in N(x)$, $x \in U$ (every neighborhood of $x$ contains $x$)
 2. for all $U \in N(x)$ and all $S \in \mathcal{P}(X)$ such that $U \subseteq S$, $S \in N(x)$ (every superset of a neighborhood of $x$ is a neighborhood of $x$)
 3. for all $U, V \in N(x)$, $U \cap V \in N(x)$ (every intersection of two neighborhoods of $x$ is a neighborhood of $x$)
 4. for all $U \in N(x)$, there is a $S \subseteq U$, $S \in N(x)$ such that for all $y \in S$, $S \in N(y)$. (something something open subset?)

A set $X$ equipped with a neighborhood topology $N$ is called a **topological space**. All the sets in $N(x)$ are called **neighborhoods of $x$**.


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


## Definition of an open neighborhood
If $X$ is a space and $x \in X$, any neighborhood $U \in N(x)$ such that $U$ is open is called an **open neighborhood** of $x$.


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


## Definition of a basis
If $X$ is a set and $\mathcal{B}$ is a collection of subsets of $X$ such that 

 1. $X = \bigcup \mathcal{B}$
 2. If $U, V \in \mathcal{B}$, then for all $x \in U \cap V$ there is a $W \in \mathcal{B}$ such that $x \in W \subseteq U \cap V$.

Then $\mathcal{B}$ is a **basis**.


## A basis generates a topology
If $X$ is a set and $\mathcal{B}$ a basis for $X$, then $\mathcal{T} = \{\bigcup \mathcal{A} : \mathcal{A} \subseteq \mathcal{B}\}$ is a topology for $X$.

 1. Let $Z = \{ U \subseteq X : \forall x \in U \exists B \in \mathcal{B} x \in B \subseteq U\}$

 2. $\mathcal{T} \subseteq Z$

    *Proof:* For any $\mathcal{A} \subseteq \mathcal{B}$, if $x \in \bigcup \mathcal{A}$, \exists A \in \mathcal{A}$ such that $a \in X$. But $A \in \mathcal{B}$, and since $A \subseteq \bigcup \mathcal{A}$, $\bigcup \mathcal{A}$ is in $Z$.

 3. $Z \subseteq \mathcal{T}$

    *Proof:* For $M \in Z$, for all $x \in M$, there is a $B_x \in \mathcal{B}$, $x \in B_x \subseteq M$. So $M = \bigcup_{x \in X} B_x$.

 4. $\mathcal{T}$ is a topology on $X$

    1. $\emptyset, X \in \mathcal{T}$

       *Proof:* $\emptyset = \bigcup \emptyset$ and $\emptyset \subseteq \mathcal{B}$, obviously. Also, $X = \bigcup \mathcal{B}$ since $\mathcal{B}$ is a basis.

    2. If $U, V \in \mathcal{T}$, $U \cap V$ is too.

       *Proof:*  If $x \in U \cap V$, there are $A, B \in \mathcal{B}$ such that $x \in A \subseteq U$ and $x \in B \subseteq V$. Since $\mathcal{B}$ is a basis, there is a $C \in \mathcal{B}$ such that $x \in C \subseteq A \cap B$. Also, $C \subseteq U \cap V$ since $A \ cap B \subseteq U \cap V$, so $U \cap V \in \mathcal{T}$ as well by (2) and (3).

    3. If $\mathcal{S} \subseteq \mathcal{T}$, $\bigcup \mathcal{S}$ is too.

       *Proof:* Each $S \in \mathcal{S}$ is a union of basis elements, so $\bigcup \mathcal{S}$ is too.


## Example: metric space basis
The collection of open balls in any metric space $(X, d)$ is a basis for its topology.

*Proof:* The open balls in $X$ clearly cover $X$. Also, if $a, b \in X$ and $\epsilon, \delta > 0$ and $x \in B(a; \epsilon) \cap B(b; \delta)$, then let $\gamma = min \{ \epsilon - d(a,x), \delta - d(b, x) \}$. For any $y \in X$ with $d(x,y) < \gamma$, we have $d(a,y) \leq d(a,x) + d(x,y) < \epsilon$ and $d(b,y) \leq d(b,x) + d(x,y) < \delta$, so $y \in B(a; \epsilon) \cap B(b; \delta)$. Hence $B(x; \gamma) \subseteq B(a; \epsilon) \cap B(b; \delta)$, proving the open balls satisfy the second basis axiom.


## Definition of equivalent bases
Two bases are **equivalent** iff the topologies they generate are identical.


## Characterization of equivalent bases
If $\mathcal{B}$, $\mathcal{C}$ are two bases for $X$, then the following are equivalent statements:

 1. $\mathcal{B}$ and $\mathcal{C}$ are equivalent bases
 2. for every $B \in \mathcal{B}$, for every $x \in B$ there is a $C \in \mathcal{C}$ such that $x \in C \subseteq B$ and for every $C \in \mathcal{C}$, for every $x \in C$ there is a $B \in \mathcal{B}$ such that $x \in B \subseteq C$.

*Proof:* If $\mathcal{S}$ and $\mathcal{T}$ are the generated topologies of $\mathcal{B}$ and $\mathcal{C}$, respectively, then every $B \in \mathcal{B}$ is in $\mathcal{T}$ (since it is in $\mathcal{S}$) and every $C \in \mathcal{C}$ is in $\mathcal{S}$ (since it is in $\mathcal{T}$). Then (2) holds by the alternate characterization of the topology generated by a basis.

Conversely, if (2) holds, then  since

$$\mathcal{S} = \{ U \subseteq X : \forall x \in U \exists B \in \mathcal{B} x \in B \subseteq U\}$$

$$\mathcal{T} = \{ U \subseteq X : \forall x \in U \exists C \in \mathcal{C} x \in B \subseteq U\}$$

For any $S \in \mathcal{S}$, every $x \in S$ has a $B \in \mathcal{B}$ with $x \in B \subseteq S$. But by (2), there is a $C \in \mathcal{C}$ such that $x \in C \subseteq B \subseteq S$, so $S \in \mathcal{T}$, so $\mathcal{S} \subseteq \mathcal{T}$. $\mathcal{T} \subseteq \mathcal{S}$ holds for similar reasons.


## Definition of topologically equivalent metrics
Two metrics $d$ and $e$ on the same set $X$ are **topologically** equivalent iff their corresponding metric topologies are identical.



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


## Restrictions of continuous maps are continuous
If $f: X \to Y$ is a continuous map between some topological spaces $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, then if $A \subseteq X$, the restriction $f|A: A \to Y$ is also continuous (where the topology on $A$ is the subspace topology).

*Proof:* By hypothesis for any open $U \subseteq Y$, $f^{pre}(U)$ open in $X$, so $V = f^{pre}(U) \cap A$ is open in $A$. It remains to prove that $(f|A)^{pre}(U) = V$, but this is true by inspection.

### Corollary
If $f: X \to Y$ is a continuous map between some topological spaces $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, then if $A \subseteq X$, the restriction $f|A,f(A): A \to f(A)$ is also continuous (where the topology on $A$ is the subspace topology).

*Proof:* We know $f|A: A \to Y$ is continuous. So if $V$ open in $f(A)$, $V = U \cap f(A)$ for $U$ open in $Y$, so $(f|A)^{pre}(U)$ is open in $A$. but $(f|A)^{pre}(V) = (f|A)^{pre}(U)$ since if $u \in U - f(A)$, it has no pre-image. Also, $(f|A)^{pre}(V) = (f|A,f(A))^{pre}(V)$, so $f|A,f(A)$ is continuous.


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


## Alternative characterization of homemorphism
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces, then $f: X \to Y$ is a homeomorphism iff for all $U \subseteq X$, $U \in \mathcal{S}$ iff $f(U) \in \mathcal{T}$.

*Proof:* Since $f$ is bijective, for any $M \subseteq X$, $f(M) = \{ y \in Y : \exists m \in M f(m) = y \} = \{ y \in Y : f^{-1}(y) \in M\} = (f^{-1})^{pre}(M)$.

If $U \in \mathcal{S}$, then $(f^{-1})^{pre}(U) = f(U) \in \mathcal{S}$. Also if $V \subseteq X$ and $f(V) \in \mathcal{T}$, $f^{pre}(f(V)) = V \in \mathcal{S}$.


## Definition of an embedding
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces, then $f: X \to Y$ is an **embedding** iff it is injective, continuous, and when we consider $g: X \to f(X)$, we obtain a homeomorphism between $X$ and $f(X)$ considered as a subspace of $Y$.


## Composition of homeomorphisms is a homeomorphism
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, $(Z, \mathcal{U})$ are topological spaces, $f: X \to Y$ and $g: Y \to Z$ are homeomorphisms, then $g \circ f$ is a homeomorphism.

*Proof:* The composition of bijective functions is bijective and the composition of continuous functions is continuous.


## Definition of a local homeomorphism
If $X$ and $Y$ are spaces and $f: X \to Y$ is a **local homeomorphism** iff it is continuous and for every $x \in X$, there is an open neighborhood $U$ of $x$ such that $f(U)$ is open and the restriction $f|U,f(U): U \to f(U)$ is a homeomorphism.


## Every homeomorphism is a local homeomorphism
If $X$ and $Y$ are spaces and $f: X \to Y$ is a homeomorphism, then it is also a local homeomorphism.

*Proof:* Since $f$ is bijective, for every $x \in X$, we can find an open neighborhood $V$ of $f(x)$ in $Y$. Since $f$ is continuous, $f^{pre}(V)$ is an open neighborhood of $x$. If we define $U := f^{pre}(V)$, then $f(U) = V$ since $f$ is injective.

the restriction to $f|U, f(U): U \to f(U)$ is also a bijection. It is also continuous, as was previously proved. It remains to prove that $(f|U,f(U))^{-1}$ is continuous. Let $g = f^{-1}$. Then $(g|f(U),U) = (f|U,f(U))^{-1}$ clearly, which is continuous because it is the restriction of a continuous map.


## Restriction of a homeomorphism is a homeomorphism
If $f: X \to Y$ is a homeomorphism between two spaces $X$ and $Y$, then the restriction of $f$ $f|A,f(A): A \to f(A)$ for any $A \subseteq X$ is also a homeomorphism.

*Proof:* $f$ is continuous, so $f|A: A \to Y$ is continuous as well since restrictions of continuous functions are continuous. But $f|A$ is injective since it is the restriction of an injective function, so the further restriction $f|A,f(A): A \to f(A)$ is a continuous bijection. Letting $g = f|A, f(A)$,



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
 - R^n is separable


## Definition of sequence convergence in a topological space
If $(X, \mathcal{T})$ is a topological space, then a sequence $(x_n)$ in $X$ **converges** to $a \in X$ iff for every open neighborhood $U$ around $a$, there is some tail sequence of $(x_n)$ that is contained in $U$.



## Definition of locally Euclidean
A topological space $(X, \mathcal{T})$ is **locally Euclidean of dimension $n$** iff every $x \in X$ has an open neighborhood which is homeomorphic to an open subset of $\mathbb{R}^n$. Any such neighborhood is called a **Euclidean neighborhood** of $x$


## Characterization of locally Euclidean space
A space $(X, \mathcal{T})$ is locally Euclidean iff every $x \in X$ has an open neighborhood homeomorphic to an open ball of $\mathbb{R}^n$.

*Proof:* First, clearly each point having an open neighborhood homeomorphic to an open ball implies that the space is locally Euclidean since open balls are open. Conversely, supposing each $x \in X$ has some homeomorphism $f: U \to V$, where $V$ is open in $\mathbb{R}^n$ and $U$ is an open neighborhood of $x$, then $f(x)$ has some open ball $B$ centered at $f(x)$ and contained in $V$, so $f^{pre}(B)$ is also an open neighborhood of $x$. Since $f$ is a bijection, $f[f^{pre}(B)] = B$, so we have a homeomorphism between $f^{pre}(B)$ and $B$, an open ball of $\mathbb{R}^n$.


## Definition of a coordinate chart
If $X$ is a space that is locally Euclidean of dimension $n$, then a **coordinate chart** is a homeomorphism between $U$ and $V$, where $U$ is open in $X$ and $V$ is open in $\mathbb{R}^n$


## Definition of Hausdorff space
A topological space $(X, \mathcal{T})$ is **Hausdorff** iff any two distinct points have disjoint neighborhoods around them.


## Hausdorff space properties
If a topological space $(X, \mathcal{T})$ is Hausdorff, then

 - the limit of any convergent sequence is unique
 - every singleton is closed

*Proof:* Since the space is Hausdorff, any two distinct points have disjoint open neighborhoods, so a tail sequence can't be contained in both of them, hence any sequence could not converge to two different points.

Also, for any $x \in X$, for every $y \in X - x$, we can find an open neighborhood $U_y$ of $y$ that does not contain $x$. Unioning up all of these we get an open set that contains every element of $X$ except for $x$. Hence $\{ x \}$ is closed.


## Every metric topology is Hausdorff
If $(X, d)$ is a metric space and $\mathcal{T}$ is the metric topology on $X$, then $(X, \mathcal{T})$ is Hausdorff.

*Proof:* If $x \neq y \in X$, consider $\epsilon = d(x,y)/2$. $B(x; \epsilon)$ and $B(y; \epsilon)$ is disjoint from the triangle inequality.


## Definition of a second countable space
A space $(X, \mathcal{T})$ is **second countable** iff there is a countable basis which generates the topology


## Definition of a Lindelöf space
A space $(X, \mathcal{T})$ is **Lindelöf** if every open cover has a countable subcover.


## Every second countable space is Lindelöf
If $(X, \mathcal{T})$ is second countable, then it is Lindelöf.

*Proof:* Let $\mathcal{U}$ be an open cover for $X$ and $\mathcal{B}$ a countable basis for $(X, \mathcal{T})$. Let $\mathcal{B}' := \{ B \in \mathcal{B} : \exists U \in \mathcal{U} B \subseteq U\}$. Since for every $U \in \mathcal{U}$ and every $x \in U$ there is a $B \in \mathcal{B}$ such that $x \in B \subseteq U$, $\mathcal{B}'$ covers $X$ (since $\mathcal{U}$ does). Define for each $C \in \mathcal{B}'$ a $U_C \in \mathcal{U}$ such that $C \subseteq U_C$. Then $\{U_C : C \in \mathcal{B}' \}$ is a subcollection of $\mathcal{U}$ that also covers $X$ (since it is a collection of sets that are supersets of the sets from a cover). This subcover is countable since $\mathcal{B}'$, being a subset of a countable set, is also countable.

## Definition of topological manifold
An **$n$-dimensional topological manifold** is a second countable Hausdorff space that is locally Euclidean of dimension $n$.

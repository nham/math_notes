# Topology

## Definition of topological space (neighborhood topology)
A **neighborhood topology** on any set $X$ is a map $N: X \to \mathcal{P}(\mathcal{P} X)$ such that, for all $x \in X$:

 - $N(x) \neq \emptyset$
 - for all $U \in N(x)$, $x \in U$ (every neighborhood of $x$ contains $x$)
 - for all $U \in N(x)$ and all $S \in \mathcal{P}(X)$ such that $U \subseteq S$, $S \in N(x)$ (every superset of a neighborhood of $x$ is a neighborhood of $x$)
 - for all $U, V \in N(x)$, $U \cap V \in N(x)$ (every intersection of two neighborhoods of $x$ is a neighborhood of $x$)
 - for all $U \in N(x)$, there is a $S \subseteq U$, $S \in N(x)$ such that for all $y \in S$, $S \in N(y)$. (something something open subset?)

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


### Corollary
We say that $(X, \mathcal{U})$ from the hypothesis of the last proposition is an **open set topological space**, and that the original definition of "topological space" is a **neighborhood topological space**. The previous proposition proves that any neighborhood topological space gives rise to an open set topological space, and vice versa.

It is more convenient to work with the open set topological space, so from now on a topological space will use the open set topological space definition.


## An open set topological space specifies the open sets
If $(X, \mathcal{U})$ is an open set topological space, then $\mathcal{U}$ is the collection of open sets of $(X, N)$

*Proof:* If $U \in \mathcal{U}$, for all $x \in U$, $U \in N(x)$ by definition of $N(x)$. So $U$ is open. Conversely, if $V$ is open for some $V \subseteq X$, then for all $x \in V$, $V \in N(x)$, so there is a $U_x \in \mathcal{U}$ such that $x \in U_x \subseteq V$. Hence $V = \bigcup_{x \in V} U_x \in \mathcal{U}$ by the union property of $\mathcal{U}$.


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


## Definition of closure point, interior point, isolated point, accumulation point
If $(X, \mathcal{T})$ is a topological space and $A \subseteq X$, then $x \in X$ is an **interior point** of $A$ iff $x \in int A$, and is a **closure point** of $A$ iff $x \in clo A$. $x$ is an **accumulation point** of $A$ iff each neighborhood of $x$ intersects $A - x$, and an **isolated point** of $A$ iff $x \in A$ and some neighborhood $B$ of $x$ does not intersect $A - x$.

The set of all accumulation points of $A$ is denoted $acc A$.


## Definition of dense subset
If $(X, \mathcal{T})$ is a topological space, $A \subseteq X$ is **dense** in $X$ iff $clo A = X$.


## Definition of continuity
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces and $f: X \to Y$, then $(f, \mathcal{S}, \mathcal{T})$ is a **continuous map** iff for all $x \in X$, for all $B \in N_Y(f(x))$, $f^{pre}(B) \in N_X(x)$.

Equivalently, $(f, \mathcal{S}, \mathcal{T})$ is continuous iff for all $x \in X$, for all $B \in N_Y(f(x))$, there is an $M \in N_X(x)$ such that $f(M) \subseteq B$.

*Proof:* Let  $B \in N_Y(f(x))$. Then if $f^{pre}(B) \in N_X(x)$, $f(f^{pre}(B)) = B$. Conversely, if $M \in N_X(x)$ with $f(M) \subseteq B$, then $M \subseteq f^{pre}(B)$, so $f^{pre}(B) \in N_X(x)$.


## Definition of subspaces
TODO


## Restrictions of continuous maps are continuous
If $f: X \to Y$ is a continuous map between some topological spaces $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, then if $A \subseteq X$, the restriction $f|A: A \to Y$ is also continuous.

*Proof:* TODO

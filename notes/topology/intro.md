# Topology

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
If $X$ is a space and $x \in X$, any neighborhood $U \in N(x)$ such that $U$ is open is called an **open neighborhood** of $x$. The collection of all open neighborhoods of $x$ will be denoted $O(x)$.


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
We say that $(X, \mathcal{U})$ from the hypothesis of the last proposition is an **open set topological space**, and that the original definition of "topological space" is a **neighborhood topological space**. The previous proposition proves that any neighborhood topological space gives rise to an open set topological space, and the proposition before that proves the reverse direction.

It is often more convenient to work with the open set topological space, so the open set topological space will often be used, but generally we will use the different axiomatizations at will.


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


## Equivalent characterization of closure
If $(X, \mathcal{T})$ is a topological space and $A \subseteq X$, then $clo A := \{ x \in X : \forall S \in O(x), S \cap A \neq \emptyset \}$

*Proof*: Let $Z = \{ x \in X : \forall S \in O(x), S \cap A \neq \emptyset \}$. Then If $y \in clo A$, $y \in Z$ as well, since $O(x) \subseteq N(x)$. Conversely, if $y \in Z$, for every $M \in N(y)$, $int M \in O(y)$. By hypothesis, $int M$ intersects $A$, so clearly $M$ does as well. Hence $y \in clo A$.


## Equivalent characterization of closure with a basis
If $(X, \mathcal{T})$ is a topological space and $\mathcal{B}$ is a basis for this space, then $clo A = \{ x \in X : \forall B \in \mathcal{B}, x \in B \implies B \cap A \neq \emptyset\}$.

*Proof:* Let $Z = \{ x \in X : \forall B \in \mathcal{B}, x \in B \implies B \cap A \neq \emptyset\}$. We know from the last proposition that every $x \in clo A$ has all of its open neighborhoods intersecting $A$. Since basis elements are open, $clo A \subseteq Z$. Conversely, every open neighborhood of $x$ contains a basis element that contains $x$, and since all of the latter intersect $A$, the open neighborhood must as well.


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



## Definition of continuity
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces and $f: X \to Y$, then $(f, \mathcal{S}, \mathcal{T})$ is a **continuous map** iff for all $x \in X$, for all $B \in N_Y(f(x))$, $f^{pre}(B) \in N_X(x)$.

Equivalently, $(f, \mathcal{S}, \mathcal{T})$ is continuous iff for all $x \in X$, for all $B \in N_Y(f(x))$, there is an $M \in N_X(x)$ such that $f(M) \subseteq B$.

*Proof:* Let  $B \in N_Y(f(x))$. Then if $f^{pre}(B) \in N_X(x)$, $f(f^{pre}(B)) = B$. Conversely, if $M \in N_X(x)$ with $f(M) \subseteq B$, then $M \subseteq f^{pre}(B)$, so $f^{pre}(B) \in N_X(x)$.


## Open set characterization of continuity
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces and $f: X \to Y$, then $f$ is a continuous map iff for every open $V \subseteq Y$, $f^{pre}(V)$ is open in $X$.

*Proof:* If $f$ is continuous, then for any open $V subseteq Y$, for all $x \in f^{pre}(V)$, $f(x) \in V$, so $V \in N_Y(f(x))$ (since $V$ is open), so $f^{pre}(V) \in N_x(x)$ by continuity, hence $f^{pre}(V)$ is open in $X$. Conversely if the inverse image of every open set is open, then for any $x \in X$ and any $M \in N_Y(f(x))$, there is a $V$ open in $Y$ such that $f(x) \in V \subseteq M$, so $x \in f^{pre}(V) \subseteq f^{pre}(M)$. Since $f^{pre}(V)$ is open in $X$ by hypothesis, $f^{pre}(M) \in N_X(x)$.




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



## Constant, identity functions are continuous
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$ are topological spaces, then any function $f: X \to Y$ defined by $f(x) = y$ for all $x \in X$ and some $y \in Y$ is continuous, as is the identity function $id_X: X \to X$.

*Proof:* $f^pre(V)$ for any open $V \subseteq Y$ is either $X$ or $\emptyset$ based on whether $y \in V$. In either case, the pre-image is open. Also, $id_X^{pre}(V) = V$, so it is clearly continuous.


## Composition of continuous maps is continuous
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, $(Z, \mathcal{U})$ are topological spaces, $f: X \to Y$ and $g: Y \to Z$ are continuous maps, then $g \circ f$ is a continuous map.

*Proof:* If $W$ is open in $Z$, then $g^{pre}(W) is open in $Y$, hence $f^{pre}(g^{pre}(W))$ is open in $X$. But $(g \circ f)^{pre}(W) = \{x \in X : f(x) \in g^{pre}(W) \} = f^{pre}(g^{pre}(W))$.



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


## Composition of homeomorphisms is a homeomorphism
If $(X, \mathcal{S})$ and $(Y, \mathcal{T})$, $(Z, \mathcal{U})$ are topological spaces, $f: X \to Y$ and $g: Y \to Z$ are homeomorphisms, then $g \circ f$ is a homeomorphism.

*Proof:* The composition of bijective functions is bijective and the composition of continuous functions is continuous.


## Definition of sequence convergence in a topological space
If $(X, \mathcal{T})$ is a topological space, then a sequence $(x_n)$ in $X$ **converges** to $a \in X$ iff for every open neighborhood $U$ around $a$, there is some tail sequence of $(x_n)$ that is contained in $U$.



## Definition of a second countable space
A space $(X, \mathcal{T})$ is **second countable** iff there is a countable basis which generates the topology


## Definition of a Lindelöf space
A space $(X, \mathcal{T})$ is **Lindelöf** if every open cover has a countable subcover.


## Every second countable space is Lindelöf
If $(X, \mathcal{T})$ is second countable, then it is Lindelöf.

*Proof:* Let $\mathcal{U}$ be an open cover for $X$ and $\mathcal{B}$ a countable basis for $(X, \mathcal{T})$. Let $\mathcal{B}' := \{ B \in \mathcal{B} : \exists U \in \mathcal{U} B \subseteq U\}$. Since for every $U \in \mathcal{U}$ and every $x \in U$ there is a $B \in \mathcal{B}$ such that $x \in B \subseteq U$, $\mathcal{B}'$ covers $X$ (since $\mathcal{U}$ does). Define for each $C \in \mathcal{B}'$ a $U_C \in \mathcal{U}$ such that $C \subseteq U_C$. Then $\{U_C : C \in \mathcal{B}' \}$ is a subcollection of $\mathcal{U}$ that also covers $X$ (since it is a collection of sets that are supersets of the sets from a cover). This subcover is countable since $\mathcal{B}'$, being a subset of a countable set, is also countable.


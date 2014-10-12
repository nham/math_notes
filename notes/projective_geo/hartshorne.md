## Affine plane axioms
An **affine plane** is a set $\mathcal{P}$ called the *points* and a set $\mathcal{L}$ of subsets of $P$ called the *lines* such that the axioms below hold.

A couple definition to make the axioms easier to state: two lines $a$ and $b$ are said to be **parallel** iff they are either disjoint or equal. If $a$ and $b$ are parallel, we sometimes write $a \parallel b$. Also, if a collection of points all lie on the same line, they are **collinear**, and **non-collinear** otherwise.

 - for all points $P, Q$, $P \neq Q$, there is exactly one line containing both $P$ and $Q$
 - for any point $P$ and line $a$ such that $P$ is not on $a$, there is exactly one line $b$ on $P$ that is parallel to $a$
 - there are three non-collinear points.

## Parallel lines are an equivalence relation
The relation $\parallel$ between lines in the affine plane is an equivalence relation.

*Proof:* It is reflexive because every line is equal to itself. It is clearly symmetric. If $a \parallel b$ and $b \parallel c$, then if $a = b$, clearly $a \parallel c$ Also if $b = c$, we again have $a \parallel c$. Suppose neither is the case. Then $a$ and $b$ are disjoint, as are $b$ and $c$. If $a$ and $c$ intersect at some point $P$, then we know there is only one line through $P$ that is parallel to $b$, so we must have $a = c$.

## Hashtag affine facts
### A point not on a line
If $a$ is any line, there is a point $P$ not on $a$.

*Proof:* If not, all points are on $a$, contradicting the fact that there are 3 non-collinear points.

### At least two points on every line
Every line has at least two points on it.

*Proof:* A line must have at least one point, since the existence of an "empty line" would imply that there can only be one line on any other point (since every line is disjoint from, hence parallel to, the empty line), which contradicts the fact that there are 3 non-collinear points.

Now suppose there is a line with only one point on it, say point $P$. Let $Q \neq P$ be any other point, and let $R$ be a point not on $PQ$. There is a line $a$ through $R$ that is parallel to $PQ$. Consider how many lines through $P$ are parallel to $a$: $PQ$ is, by hypothesis, but also the singleton line through $P$ must be disjoint since $P$ could not be on $a$ ($a$ and $PQ$ are parallel and $R$ is on $a$ and not on $PQ$, so they must be disjoint). So we have two distinct lines through $P$ parallel to $a$, contradicting the second affine plane axiom.

### At most one intersection point
If $a$ and $b$ are distinct lines, then they have no  more than one intersection point.

*Proof:* If $P$ and $Q$ are both on $a$ and $b$, then if $P \neq Q$ we have $a = PQ = b$, a contradiction. So $P = Q$.

### Bijection between lines
If $a$ and $b$ are two lines in an affine plane, there is a bijection between the points of $a$ and the points of $b$.

*Proof:* Assume that $a$ and $b$ are distinct, since the identity map is a bijection from every line to itself. We can find points $P$ and $Q$ such that $P$ is on $a$ and not on $b$, and $Q$ is on $b$ and not on $a$: either $a$ and $b$ are disjoint, in which case it holds from each line having at least two points on it, or $a$ and $b$ meet at some point $R$, in which case it holds by picking $P \neq R$ on $a$ and $Q \neq R$ on $b$, both of which exist due to each living having at least two points. For every point $A$ on $a$ distinct from $P$, $A$ is not on $PQ$ (since otherwise $PQ$ would meet $a$ in two distinct points, contradicting that $Q$ is not on $a$). So there is exactly one line $l_A$ through $A$ and parallel to $PQ$. $l_A$ is not parallel to $b$, since that would imply that $b$ and $PQ$ are parallel, a clear contradiction since they are neither disjoint nor equal. So $l_A$ intersects $b$ in exactly one point, denoted $l_A \cdot b$. So the map $\phi: a \to b$ defined by $A \mapsto l_A \cdot b$ for $A \neq P$ and $P \mapsto Q$ is well-defined. This map must be surjective: if there is a point $B$ on $b$ not in the image of $\phi$, $B \neq Q$ so there is a line $l_B$ parallel to $PQ$. For the same reason as above it cannot be parallel to $a$, so it intersects it in some point $A$ on $A$, meaning $B$ is in the image after all. $\phi$ must also be injective: if $A \phi = C \phi$ for $A$ and $C$ on $a$, then since $l_A$ and $l_C$ are parallel to $PQ$, they are parallel to each other, so since they intersect at $A \phi$, we must have $l_A = l_C$, or $A = C$.


## Projective plane axioms
A **projective plane** is a set $\mathcal{P}$ called the *points* and a set $\mathcal{L}$ of subsets of $P$ called the *lines* such that the axioms below hold.

 - for all points $P, Q$, $P \neq Q$, there is exactly one line containing both $P$ and $Q$
 - for all lines $a$ and $b$, there is at least one point $P$ on both $a$ and $b$
 - there are three non-collinear points.
 - every line contains at least 3 points


## Projective completion of an affine plane
TODO

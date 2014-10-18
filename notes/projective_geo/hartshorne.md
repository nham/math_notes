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


## Examples
The smallest affine plane has 4 points in it. There could not be an affine plane with 3 points, say $P, Q, R$, since the axioms guarantee, for example, that there is a line through $P$ parallel to $QR$. Since each line has at least 2 points on it, there must be another point $S$ such that $PS$ is parallel to $QR$. There is an affine plane with only $P, Q, R, S$ in it, however: just take the lines to be all the pairs of distinct points.

The most familiar example is probably the **real affine plane**, which is the standard affine space over the vector space $\mathbb{R}^2$. As points we take the points of the affine space, and as lines we take the 1-dimensional affine subspaces. We can define, for any poitns $P \neq Q$, the line $PQ$ to be the generated affine subspace of $\{P, Q\}$, or $P + [(P, Q) \theta span]$, which is clearly a line, so affine plane axiom 1 holds. If $P + [V]$ is a line in the real affine plane and $Q$ a point not on $P + [V]$, we can define the unique line through $Q$ and parallel to $P + [V]$ to be $Q + [V]$, which satisfies axiom 2. Finally, the points $(0, 0), (0, 1), (1, 0)$ are not collinear, so the "real affine plane" really is an affine plane.

## Projective plane axioms
A **projective plane** is a set $\mathcal{P}$ called the *points* and a set $\mathcal{L}$ of subsets of $P$ called the *lines* such that the axioms below hold.

 1. for all points $P, Q$, $P \neq Q$, there is exactly one line containing both $P$ and $Q$
 2. for all lines $a$ and $b$, there is at least one point $P$ on both $a$ and $b$
 3. there are three non-collinear points.
 4. every line contains at least 3 points


## Projective completion of an affine plane
An **ideal point** is an equivalence class $[a]$ of parallel lines.

The **projective completion** of an affine plane is formed by by adding every ideal point to the set of points, making each line $a$ incident with the ideal point $[a]$, and by adding one new line which has all and only the ideal points on it.

Then the projective completion of any affine plane is a projective plane.

*Proof:* To verify that axiom 1 holds, we note that if $P$ and $Q$ are any two non-ideal points, there is at least one line containing both $P$ and $Q$, namely the line $PQ$ from the affine plane. Since $P$ and $Q$ are non-ideal, it's the only line, since we only added one line, the line of all ideal points. If $P$ is a non-ideal point and $Q$ is ideal, there is some equivalence class of lines that $Q$ was formed by. Let $a$ be in that class. Then either $a$ passes through $P$, or if not we can find a line $b$ parallel to $a$ that passes through $P$. In either case we have a line that contains both $P$ and $Q$. It's the only line that can contain both $P$ and $Q$: if $d$ is a line containing $P$ and $Q$, by definition it must be parallel to $PQ$ (since it contains the ideal point $Q$), but it must also contain $P$, so it must be equal to $PQ$. Finally, if $P$ and $Q$ are both ideal, there is exactly one line containing both of them: the line of all ideal points.

To verify axiom 2, if $a$ and $b$ are distinct lines, then if they are both not the line of all ideal points, either they were generated from parallel lines in the affine plane, in which case they intersect at a ideal point, or they were generated from non-parallel lines, so they intersect at some non-ideal point. If one is the line of all ideal points, then the two lines intersect at an ideal point.

Axiom 3 holds from the axioms for the affine plane, since if 3 points are non-collinear in the affine plane, they will not be collinear in the projective completion.

Finally, for axiom 4, every line that isn't the line of ideal points has at least 3 points, since each of these lines was generated from an affine line, which we know has at least 2 points, and had an ideal point added to it, making at least 3 points. The line of ideal points has at least 3 points if there are at least 3 mutually non-parallel lines, but there are due to there being 3 non-collinear points in the affine plane.


## Real projective plane from $\mathbb{R}^3$
For any point $O$ in the affine space on $\mathbb{R}^3$, we get a projective plane by defining points to be all the 1-dimensional affine subspaces through $O$ and, for each 2-dimensional affine subspace $\pi$ through $O$, we define a line by the set of all 1-dimensional affine subspaces through $O$ contained in $\pi$.

*Proof:* If $P = O+[V]$ and $Q = O+[W]$ are points, then $PQ$ is defined to be $O+[V+W]$, which accords with our definition of lines since $V+W$, being the sum of two non-identical 1-dimensional spaces, has dimension 2. This verifies that axiom 1 holds. If $a = O + [X]$ and $b = O + [Y]$ are two distinct lines (i.e. two 2-dimensional affine subspaces), then since they meet at $O$, we have $a \cap b = O + [X \cap Y]$. Since $X+Y$ must have dimension 3, $X \cap Y$ has dimension 1 (by $(X+Y) dim = X dim + Y dim - (X \cap Y) dim = 4 - (X \cap Y) dim$), so axiom 2 is verified. 

To verify axiom 3, let $U = (1, 0, 0) span$, $V = (0, 1, 0) span$, and $W = (0, 0, 1) span$. Then $P = O + [U]$, $Q = O + [V]$ and $R = O + [W]$ are 3 non-collinear points, since the line $PQ$ is the affine subspace through $O$ formed by the $xy$-plane, and the line $QR$ is the affine subspace through $O$ formed from the $yz$-plane, and the line $PR$ is the affine subspace through $O$ formed from the $xz$-plane.

Axiom 4 is verified by noting that each $2$-dimensional affine subspace through $O$ has infinitely many points on it (take any $1$-dimensional subspace and "rotate" it).


## Definition of isomorphism/collineation
If $A$ and $B$ are projective planes, then they are said to be **isomorphic** if there is a function $f: A \to B$ which is a bijection such that for all points $P, Q, R$ in $A$, if $R$ is on $PQ$, then $(Rf)$ is on $(Pf)(Qf)$. Such a function $f$ is called a **collineation**.

### It cuts both ways
If $A$ and $B$ are projective planes and $f$ is a collineation, prove that for any points $X, Y, Z$ in $B$ such that $Z$ is on $AB$, then $X f^{pre}$ is on $(Y f^{pre})(Z f^{pre})$.

TODO


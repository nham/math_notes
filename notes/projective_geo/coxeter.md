## Axioms for an affine plane



## Axioms for projective space (Veblen and Young)
A **projective space** is a collection of points, $\mathcal{P}$, a collection of lines $\mathcal{L} \subseteq Pow \mathcal{P}$, and a relation on $\mathcal{P} \times \mathcal{P}$, called the incidence relation, which obeys the properties below. If $P \in \mathcal{P}$, $a \in \mathcal{L}$, and $(P, a)$ is a member of the relation, then we say the point $P$ is **on** the line $a$. Similarly, we say that the line $a$ is **on** the point $P$.

A set of points which all lie on the same line are said to be **collinear**, and a set of points which are not all on the same line are (quite reasonably) said to be **non-collinear**. A set of lines which all intersect at the same point are said to be **concurrent**. A **plane** is a collection of points $\pi = \bigcup_{A \in a} AP$ for some line $a$ and some fixed point $P$ not on $a$. If two points, or two lines, or a point and a line are in the same plane, they are said to be **co-planar**.

### Projective plane axioms
 1. There is a point $P$ and a line $a$ such that $P$ is not on $a$.
 2. Every line has at least three distinct points on it.
 3. For every pair of distinct points $P$ and $Q$, there is a unique line (denoted $PQ$) that is on both.
 4. If $A, B, C, D$ are all distinct points and $AB$ and $CD$ are on some point $E$, then $AC$ and $BD$ are both on some point.

## Theorems

 1. There are at least 4 distinct points.

    *Proof:* By axiom 1 we have some line $a$ and some point $X$ with $X$ not on $a$. But $a$ has 3 distinct points $A, B, C$ by axiom 2, so $A, B, C, X$ are all distinct.

 2. If $a$ and $b$ are lines and $P$ and $Q$ are points, $P \neq Q$, such that both $a$ and $b$ are on both $P$ and $Q$, then $a = b$.

    *Proof:* If not it violates axiom 3.

 3. For any line $a$, there is a point $P$ not on $a$.

    *Proof:* If not, every point is on $a$, so $a$ is the only line (lines have at least two distinct points, so any other line $b$ shares 2 points with $a$, implying $a = b$), meaning axiom 1 is violated.

 4. There are at least two distinct lines through any point $P$.

    *Proof:* (1) guarantees distinct points $A, B, C, D$. At least one of these is distinct from $P$, WLOG say it's $A$. Then $PA$ is one line through $P$. By (3) there is a point $Q$ not on $PA$, so $PQ$ must be different from $PA$.

 5. For any point $P$, there is a line $a$ not on $P$.

    *Proof:* If not, every line is on $P$. But there are two distinct lines on $P$ by (4), call them $a$ and $b$, and each has 3 distinct points on it. Say $Q$ is on $a$ and $R$ is on $b$, both distinct from $P$. Then by assumption $QR$ is on $P$, implying $a$ and $QR$ intersect at both $P$ and $Q$ and $b$ and $QR$ intersect at both $P$ and $R$. This implies that $a = QR = b$, which contradicts that $a \neq b$. So there is some line not on $P$.

 6. Any point $P$ has at least three distinct lines on it.

    *Proof:* By (5) there's a line $a$ not on $P$. By axiom 2, $a$ has distinct points $A, B, C$ on it. So the lines $AP, BP, CP$ are on $P$. These lines must all be distinct, because otherwise the points would not be distinct.

 7. If $\pi$ is a plane generated by point $P$ and line $AB$, then for any points $X, Y$ in $\pi$, line $XY$ is in $\pi$ as well.

    *Proof:* If $X$ and $Y$ are both on $AB$, then it's obviously true by definition of a plane. Similarly, if $P$ is on $XY$, then it is also true. Assume that neither of these is the case. There are two possibilities.

    1. Case 1: $P$ is not on $XY$, $X$ is on $AB$, but $Y$ is not on $AB$.
    
       *Proof:* By definition, there is some point $C$ on $AB$ such that $Y$ is on $CP$, so for any point $Z$ distinct from $X$ and $Y$, $Z$ is also distinct from $P$ ($Z$ is on $XY$ and we've assumed $P$ is not on $XY$) and $C$ ($C = Z$ implies $XY = AB$, meaning $Y$ is on $AB$, which contradicts what we started with). $X \neq P$ since $P$ is not on $AB$ by hypothesis, and $X \neq C$ since we assumed $P$ is not on $XY$. Finally, $C \neq P$, once again by hypothesis. So $X, Z, C, P$ are 4 distinct points. We also have that $XZ = XY$ and $CP = CY$ meet at $Y$, so by axiom 4 $ZP$ and $XC$ meet at some point $D$. But $XC = AB$, so $D$ is on $AB$ and $Z$ is on $DP$, meaning $Z$ is in the plane $\pi$.

    2. Case 2: Neither $X$ nor $Y$ are on $AB$, and $P$ is not on $XY$.

       *Proof:* By definition there are points $C, D$ on $AB$ such that $X$ is on $CP$ and $Y$ is on $DP$. We know $X \neq Y$. We must have that $C \neq D$, since otherwise $X$ and $Y$ would both be on $CP$, contradicting that $P$ is not on $XY$. Both $X$ and $Y$ are distinct from $C$ and $D$ since we assumed $X$ and $Y$ are not on $AB$. Hence $X, Y, C, D$ are 4 distinct points. By definition of $C$ and $D$ we have that $XC$ and $YD$ meet at $P$, so by axiom 4 $XY$ and $CD = AB$ meet at some point $E$. This $E$ is on $AB$. If $Z$ is on $XY$, then we have reduced this to either a trivial case (if $Z = E$) or case 1, in which case it follows.

 8. If $a$ and $b$ are co-planar lines, then they meet at a point.

    *Proof:* We can find points $P$ and $Q$, $P$ on $a$ and not on $b$, and $Q$ on $b$ and not on $a$. There is at least one other point, $R$, on $PQ$, and it can't be on either $a$ or $b$, so it must be on neither. It's also in the same plane as $a$ and $b$. This plane can be generated by $a$ and $R$, so there are two points $B$ and $D$ on $b$ with corresponding points $A$ and $C$ on $a$ such that $R$ is on $AB$ and on $CD$. By axiom 4, $AC = a$ and $BD = b$ intersect.

 9. If two lines $a$ and $b$ meet, then they are co-planar.

    *Proof:* Let the  intersection point be $C$. Then $a = AC$ and $b = BC$ for some points $A$ and $B$ on $a$ and $b$, respectively. Then both lines are on the plane generated by $BC$ and $A$.

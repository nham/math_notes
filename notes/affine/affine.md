# Affine spaces

## Note
We use postfix function notation throughout.

## Definition of group actions
If $G$ is a group, a **group action** of $G$ on a set $X$ is a homomorphism $G \to Sym X$, where $Sym X$ is the symmetric group on $X$.

One specific map from which a group action may be recovered is a function $\phi: X \times G \to X$ obeying:

 - $\forall x \in X (x, e) \phi = x$, where $e$ is the group identity for $G$
 - $\forall x \in X$, $\forall $g, h \in G$, $((x, g) \phi, h) \phi = (x, gh) \phi$

Then $\theta: G \to Sym X$ is defined by, for all $g \in G$, $g \theta$ mapping $x \mapsto (x, g) \phi$.

This is a legit map since, by the first axiom, $g \theta$ and $g^{-1} \theta$ are inverses. It is a homomorphism since:


$$
\begin{aligned}
x (gh \theta) &= (x, gh) \phi \\
              &= ((x, g) \phi), h) \phi \\
              &= (x (g \theta), h) \phi \\
              &= (x (g \theta)) (h \theta) \\
              &= x (g \theta h \theta)
\end{aligned}
$$

## Definition of simply transitive group action
If $\phi: G \to Sym X$ is a group action, then $\phi$ is **simply transitive** iff for all $(x, y) \in X^2$, there is exactly one $g \in G$ such that $x (g \phi) = y$.


## Definition of affine space
An **affine space** is a tuple $(X, V, \theta)$ where

 - $X$ is some set
 - $V$ is a vector space over some field $\mathbb{F}$.
 - $\theta: X \times X \to V$

such that

 - for any $a \in X$, $\theta_a: X \to V$ defined by $(b)\theta_a = (a, b)\theta$ is a bijection
 - for all $a, b, c \in X$, $(a, b)\theta + (b, c)\theta = (a, c)\theta$

The first axiom says that if we "pick an origin" in $X$, we can recover a vector space by taking the difference. The second axiom ensures that the interaction between $X$ and $V$ behaves like one might intuitively expect: it implies, for example, after picking an origin at $a$, that the vector assigned to $a$ is the zero vector. It also implies that the vector going from $a$ to $b$ is the inverse of the vector going from $b$ to $a$.

Since each $\theta_a$ is a bijection, we can define its inverse $\phi_a$.

## Equivalent definition of affine space

### Definition of eniffa space
Let's temporarily define an **eniffa space** as a tuple $(X, V, \alpha)$ where

 - $X$ is some set
 - $V$ is a vector space over some field $\mathbb{F}$
 - $\alpha: X \times V \to X$

is such that (letting $x \to v$ denote $(x, v) \alpha$):

 - for any $x \in X$, $x \to 0 = x$
 - for any $x \in X$, $v, w \in V$, $(x \to v) \to w) = x \to (v + w)$
 - for any $x, y \in X$, there is a unique $v \in V$ such that $x \to v = y$.

The last axiom allows us to define a map $\omega: X \times X \to V$, so that for all $x, y \in X$, $x \to ((x, y) \omega) = y$.

### Proof of equivalence
For every eniffa space $E = (X, V, \alpha)$, there is an affine space $E_{affine} = (X, V, \omega)$. Also, for every affine space $A = (X, V, \theta)$, there is an eniffa space $A_{eniffa} = (X, V, (x, v) \mapsto v \phi_x)$. For every affine space $A$, $A = (A_{eniffa})_{affine}$, and for every eniffa space $E$, $E = (E_{affine})_{eniffa}$.

*Proof:*
First we prove that for every eniffa space $E$, $E_{affine}$ is affine. For every $x \in X$, $\omega_x$ defined by $y \omega_x = (x, y) \omega$ is surjective because for all $v \in V$, (x, (x \to v)) \omega = v$. It is also injective since $y \omega_x = z \omega_x$ implies $(x, y) \omega = (x, z) \omega$, implying some $v \in V$ has $x \to v = z$ and $x \to v = y$. So $z = y$.

For the second affine space axiom, we must prove that $(x, y) \omega + (y, z) \omega = (x, z) \omega$ for all $x, y, z \in X$. If we let $u := (x, y) \omega$, $v := (y, z) \omega$, $w := (x, z) \omega$, then $x \to w = z$, $x \to u = y$, y \to v = z$, so $(x \to u) \to v = z$. By the eniffa axioms, $z = x \to (u + v) = x \to w$, proving that $u + v = w$.

Next we prove that for every affine space $A$, $A_{eniffa}$ is an eniffa space. For the first axiom, $0 \phi_x = 0$. For the second, let $x \in X$ and $u, v \in V$, and let $y := u \phi_x$, $z := v \phi_y$.  Then $(x \to u) \to v = z$. By the axioms for $\theta$, $u + v = (x, z) \theta$, so $(u+v) \phi_x = z$, which establishes axiom 2 for eniffa spaces. For the third axiom, let $x, y \in X$. We need to prove that there is exactly one $v \in V$ such that $v \phi_x = y$, but that's true, because $v = (x, y) \theta$.

I don't feel like proving the rest. TODO.

### Remark
This says that an affine space is a vector space $V$, a set $X$, and a simply transitive group action of $V$'s additive group on $X$. We are justified in assuming that an affine space possesses either $\theta: X \times X \to V$ or $\alpha: X \times V \to X$, and also justified that both are present.


## Basic properties of affine spaces

 - $(P, Q) \theta = 0$ iff $P = Q$
 - $(P, Q) \theta = - (Q, P) \theta$
 - $(P, Q) \theta = (R, S) \theta$ implies $(P, R) \theta = (Q, S) \theta$
 - $(P, (P \to v)) \theta = v$
 - $P \to ((P, Q) \theta) = Q$

*Proof:* The first 2 hold directly from the axioms on $\theta$. For the third, assuming $(P, Q) \theta = (R, S) \theta$, we have

$$
\begin{aligned}
(P, R) \theta &= (P, Q) \theta + (Q, R) \theta
              &= (R, S) \theta + (Q, S) \theta + (S, R) \theta
              &= (Q, S) \theta
\end{aligned}
$$

The remaining properties hold since $(P \to v) = v \phi_P$.


## Every vector space is an affine space
If $V$ is a vector space over $\mathbb{F}$, then $(V, V, \theta)$ is an affine space, where $\theta$ is defined by:

$$(u, v) \theta = v - u$$

*Proof:* For any $u \in V$, $\theta_u$ is injective since $v \theta_u = w \theta_u$ implies $v - u = w - u$, or $v = w$. $\theta_u$ is also surjective because for any $v \in V$, $(u+v) \theta_u = v$.

Also, $(u, v) \theta + (v, w) \theta = v - u + w - v = w - u = (u, w) \theta$.


## Translations
If $(X, V, \theta)$ is an affine space, for every $v \in V$ we can define the **translation** $\tau_v: X \to X$ by $a \tau_v = v \phi_a$. In words, $a \tau_v$ is the unique $b \in X$ such that $\theta(a, b) = v$.


## Every translation is a permutation on $X$
For every $v \in V$, $\tau_v$ is a permutation on $X$.

*Proof:* We prove that $\tau_{-v}$ is an inverse for $\tau_v$. For any $a \in X$, $a \tau_v \tau_{-v} = (v \phi_a) \tau_{-v} = (-v) \phi_b$, where we are letting $b = v \phi_a$, meaning $b$ is the unique element of $X$ such that $\theta(a, b) = v$. But $(-v) \phi_b$ is the unique $c \in X$ such that $\theta(b, c) = -v$, and by the affine space axioms we have $c = a$, so $a \tau_v \tau_{-v} = a$. A similar proof shows that $a \tau_{-v} \tau_v = a$, so $\tau_v$ has a two-sided inverse, proving it is a bijection.

## Translation injection
The map $\tau: V \to Sym X$, where $Sym X$ is the symmetric group on $X$, defined by $v \tau = \tau_v$, is an injective group homomorphism.

*Proof:* To prove that it's a homomorphism, we must show $\tau_{v+w} = \tau_v \tau_w$, or that $(v+w) \phi_a = (v \phi_a) \tau_w = w \phi_{v \phi_a}$ for any $a \in X$. If we let $b = v \phi_a$ and $c = w \phi_b$, then because $v + w = (a, b) \theta + (b, c) \theta = (a, c) \theta$, it is proved.

To prove injectivity, by the properties of group homomorphisms it suffices to prove that the only $v \in V$ for which $\tau_v = id_X$ is $v = 0$. But if $a \tau_v = a$ for any $a \in X$, then $v \phi_a = a$, so $v = 0$ by the properties of $\theta$.

## Alternate representation for a translation
If $a, b \in X$ and $v = (a,b) \theta$, then $\tau_v = \theta_a \phi_b$.

*Proof:* Let $y = x \tau_v$. Then $(a, x) \theta + (x, y) \theta = (a, b) \theta + (b, y) \theta$. But since by definition of $y$, $(a, b) \theta = (x, y) \theta$, we have $x \theta_a = (a, x) \theta = (b, y) \theta$. So $x \theta_a \phi_b = y$.


## Definition of affine subspace
If $(X, V, \alpha: X \times V \to X)$ is an affine space, then $(Y, W, \beta: Y \times W \to Y)$ is an **affine subspace** of $(X, V)$ iff it is an affine space and $Y \subseteq X$, $W$ is a subspace of $V$, and $(y, w) \beta = (y, w) \alpha$ for all $(y, w) \in Y \times W$.


## Sufficient conditions for affine subspace
If $(X, V, \alpha)$ is an affine space and $Y \subseteq X$ and $W$ is a subspace of $V$, then if 

 - $(P \to w) \in Y$ for all $P \in Y, w \in W$
 - for all $P, Q \in Y$, $(P, Q) \theta \in W$

Then $(Y, W)$ forms an affine space under the restriction of $\alpha$ to $Y \times W \to Y$.

*Proof:* The only other properties we need to prove to hold are

 - $P \to 0 = P$ for all $P \in Y$
 - $P \to (v + w) = (P \to v) \to w$ for all $P \in Y$, $v, w \in W$

But these hold automatically since they hold for $\alpha$ and we are restricting $\alpha$ to $Y \times W \to Y$.


## Concrete affine subspaces
If $(X, V, \alpha)$ is an affine space and $P \in X$ and $W$ is a subspace of $V$, then $P + [W] := \{Q \in X: (P, Q) \theta \in W\}$ is an affine subspace of $X$. Furthermore, if $(Y, W)$ is an affine subspace of $(X, V)$ and $P \in Y$, then $Y = P + [W]$.

*Proof:* By definition, $P + [W]$ is, by definition, closed under "jumps", meaning for all $P \in Y, w \in W$, $(P \to w) \in P + [W]$. The vector space is also closed under "gaps", meaning for all $Q, R \in Y$, $(Q, R) \theta \in W$. This is true since $Q = P \to v$, $R = P \to w$ for some $v, w \in W$, and since $R = Q \to (w - v)$, and since $w - v$ must also be in $W$ since $W$ is a subspace, it is true.

Finally, if $(Y, W)$ is an affine subspace of $(X, V)$, and $P \in Y$, then for all $Q \in Y$, $(P, Q) \theta \in W$, so $P \to (P, Q) \theta = Q$. Also clearly $P \to w \in Y$ for all $w \in W$, so $Y = P + [W]$.

### Remark
This implies that no matter what point of an affine subspace is considered to be the origin, you always get the same space. The space $P + [W]$ is said to be the affine space through $P$ with orientation $W$.


## Non-empty intersections of affine subspaces
If $(A, U, \alpha)$ is an affine space and $P+[V]$, $Q+[W]$ are subspaces of $A$, then $(P+[V]) \cap (Q+[W]) != \emptyset$ iff $(P, Q) \theta \in V + W$.

*Proof:* If $R$ is in the intersection, $R = P \to v = Q \to w$ for some $v \in V, w \in W$, so $R \to (-w) = Q$, hence $(P, Q) \theta = v - w \in V + W$. Conversely, if $u := (P, Q) \theta \in V + W$, then $u = v + w$ for some $v \in V, w \in W$. So $X := P \to v = Q \to (-w)$ is in the intersection.

## Characterizing the non-empty intersection of affine subspaces
If $(A, U, \alpha)$ is an affine space and $P+[V]$, $Q+[W]$ are subspaces of $A$, and if $R \in (P+[V]) \cap (Q+[W])$, then

$$(P+[V]) \cap (Q+[W]) = R + [V \cap W]$$

*Proof:* We know that we can write $P+[V] = R + [V]$ and $Q + [W] = R + [W]$. Clearly $R + [V \cap W] \subseteq (R+[V]) \cap (R+[W])$. Conversely, if $Q = R \to v = R \to w$ for $v \in V, w \in W$, then $v = w \in V \cap W$.

## General intersections of affine subspaces
If $Z$ is a collection of affine subspaces $\{P_i + [V_i] : i \in I \}$ of some affine space $A$, and if $\bigcap Z \neq \emptyset$, then $\bigcap Z$ is an affine subspace, with $\bigcap_i P_i + [V_i] = X + [\bigcap_i V_i]$, where $X \in \bigcap Z$.

*Proof:* Same strategy as in the case of two subspaces: We can represent each $P_i + [V_i]$ as $X + [V_i]$. Clearly $X + [\bigcap_i V_i] \subseteq \bigcap_i (X + [V_i])$. Also, if $Q \in \bigcap (X + [V_i])$, then for all $i$, $Q = X \to v_i$ for some $v_i \in V_i$. This implies $v_i = v_j$ for all $i, j$, so $Q \in X + [\bigcap_i V_i]$.


## Generated affine subspaces
If $(A, U, \alpha)$ is an affine space and $S \subseteq A$, then $(S, A) gen$ is defined to be the intersection of all affine subspaces of $A$ that contain $S$. By the above, this is an affine subspace of $A$.


## Definition of affine subspace sums
If $(A, U, \alpha)$ is an affine space and $L_1, L_2$ are affine subspaces of $A$, then the **sum of subspaces** $L_1 + L_2$ is defined to be $(L_1 \cup L_2, A) gen$


## Characterization of affine sums
If $A$ is an affine space and $P + [V]$, $Q + [W]$ are affine subspaces, then $(P + [V]) + (Q + [W]) = P + [V+W + (P, Q) \theta span]$.

*Proof:* Let $L = P + [V + W + (P, Q) \theta span])$. It is not too hard to see that $L$ contains both $P + [V]$ and $Q + [W]$. If $M$ is an affine subspace of $A$ containing $P + [V]$ and $Q + [W]$, there is some vector subspace $Z$ such that $M = P + [Z] = Q + [Z]$. Let $u := (P, Q) \theta$. We need to prove that $L \subseteq M$, or equivalently, for all $v \in V$, $w \in W$, $\lambda \in \mathbb{F}$, that $P \to (v + w + \lambda u) \in M$. But $V$, $W$ and $u span$ must all be contained in $Z$.


## Definition of affine dimension
The **dimension** of an affine space is the dimension of the underlying vector space.

## Grassmann formulas
If $L_1 = P + [V]$ and $L_2 = Q + [W]$ are affine subspaces of some space $A$, then if $L_1 \cap L_2 \neq \emptyset$, we have

$$dim(L_1 + L_2) = dim L_1 + dim L_2 - dim(L_1 \cap L_2)$$

On the other hand, if $L_1 \cap L_2 = \emptyset$, then

$$dim(L_1 + L_2) = dim L_1 + dim L_2 - dim(V \cap W) + 1$$


*Proof:* If $L_1 \cap L_2 \neq \emptyset$, then $(P, Q) \theta \in V + W$, so $L_1 + L_2 = P + [V+W]$. We also have $L_1 \cap L_2 = R + [V \cap W]$ for some $R$, so

$$dim(L_1 + L_2) = dim(V + W) = dim V + dim W - dim(V \cap W) = dim L_1 + dim L_2 - dim(L_1 \cap L_2)$$

If we have $L_1 \cap L_2 = \emptyset$ instead, then $L_1 + L_2 = P + [V + W + (P, Q) \theta span]$, so letting $z = (P, Q) \theta$, we have:

$$dim(L_1 + L_2) = dim(V + W + z span) = dim(V+W) + 1 = dim V + dim W - dim(V \cap W) + 1 = dim L_1 + dim L_2 - dim(V \cap W) + 1$$


## Definition of parallel subspaces
Two affine subspaces $L_1 = P + [V]$ and $L_2 = Q + [W]$ are **parallel** if $V$ is a subspace of $W$ or $W$ is a subspace of $V$.


## Intersecting parallel subspaces
If $L_1 = P + [V]$ and $L_2 = Q + [W]$ are parallel affine subspaces of some affine space $A$ they meet in some point $R$, then one is contained in the other.

*Proof:* Without loss of generality we assume $V$ is a subspace of $W$. Then $L_1 = R + [V]$ and $L_2 = R + [W]$, so clearly $L_1 \subseteq L_2$.


## Definition of barycenter
If $P_1, \ldots, P_k$ are distinct points in some affine space, the **barycenter** is the point

$$P_1 \to \frac{1}{k} \sum_{j=2}^k (P_1, P_j) \theta$$

## Characterizing the barycenter
The barycenter of a collection $P_1, \ldots, P_k$ of points is the unique point $G$ such that

$$\sum_{j=1}^k (G, P_j) \theta = 0$$

*Proof:* Let $G$ be the barycenter as defined above. To prove that it is such a point, note that $\sum_{j=1}^k (G, P_j) \theta = k (G, P_1) \theta + \sum_{j=2}^k (P_1, P_j) \theta = 0$ by definition of $G$. To prove that it's the only one, if $X$ is a point such that

$$\sum_{j=1}^k (X, P_j) \theta = 0$$

then since $\sum_{j=1}^k (G, P_j) \theta = \sum_{j=1}^k (P_j, G) \theta = 0$, we can find that

$$k (X, G) \theta = \sum_{j=1}^k (X, P_j) \theta + (P_j, G) \theta = 0$$

This proves that $X = G$.


## Definition of simple ratio
If $P, Q, R$ are collinear points in some affine space, then we define $(P, Q, R)$ to be the scalar $\lambda$ such that $(P, Q) \theta = \lambda (P, R) \theta$.


## Simple ratios, real affine spaces and segments
This seems like an important fact to keep in mind. If $A$'s underlying vector space is a real vector space, we can define the **segment** between any distinct points $P$ and $Q$ to be $[P, Q] := \{P \to \lambda (P, Q) \theta : 0 \leq \lambda \leq 1\}$. The points in the segment are exactly those points $X$ such that $0 \leq (P, X, Q) \leq 1$, since $[P, Q] = \{X : \exists \lambda, 0 \leq \lambda \leq 1 (P, X) \theta = (P, Q) \theta \}$.



## The vector space on $X$
An affine space allows us to define a vector space on $X$ itself as follows: for any fixed $a \in X$ and any $b, c \in X$, $\alpha \in \mathbb{F}$:

 - define $b + c := (b \theta_a + c \theta_a) \phi_a$
 - define $\alpha \cdot b := (\alpha \cdot (b)\theta_a) \phi_a$.

The vector space induced on affine space $X$ at $a$ will be denoted $X @ a$.

 1. $\theta_a$ is "linear"

    For all $b, c \in X$, $\lambda \in \mathbb{F}$,

      - $(b + c)\theta_a = b \theta_a + c \theta_a
      - $(\lambda b)\theta_a = \lambda (b \theta_a)

    *Proof:* Since $b + c = (b \theta_a + c \theta_a) \phi_a$, $(b+c)\theta_a = b \theta_a + c \theta_a$. Also, since $\lambda b = (\lambda (b \theta_a)) \phi_a$ by definition, the second property (homogeneity) follows.

 2. associativity of $+$

    *Proof:* It essentially follows from associativity of addition in $V$:

    $$
    \begin{aligned}
    (b + c) + d & = ((b+c)\theta_a + d \theta_a) \phi_a \\
                & = ((b \theta_a + c \theta_a) + \theta_a(d)) \phi_a \\
                & = (b \theta_a + (c \theta_a + d \theta_a)) \phi_a \\
                & = (b \theta_a + (c+d) \theta_a) \phi_a \\
                & = b + (c + d)
    \end{aligned}
    $$

 3. commutativity of $+$

    *Proof:* Similarly to associativity, it follows from commutativity of addition in $V$.

 4. additive identity

    *Proof:* The additive identity is $a$:

    $$
    \begin{aligned}
    a + b &= (a \theta_a + b \theta_a) \phi_a \\
          &= (0 + b \theta_a) \phi_a \\
          &= (b \theta_a) \phi_a \\
          &= b
    \end{aligned}
    $$

 5. additive inverses

    *Proof:* For any $b \in X$, $-b := (- (b \theta_a)) \phi_a$, so

    $$
    \begin{aligned}
    b + (-b) &= (b \theta_a + ((- (b \theta_a)) \phi_a) \theta_a) \phi_a
             &= (b \theta_a + -(b \theta_a)) \phi_a
             &= 0 \phi_a
             &= a
    \end{aligned}
    $$

 6. scalar multiplication distributes over field addition

    *Proof:* For any $b \in X$, $\lambda, \mu \in \mathbb{F}$:

    $$
    \begin{aligned}
    (\lambda + \mu) b &= (\lambda + \mu) (b \theta_a) \phi_a
                      &= (\lambda (b \theta_a) + \mu (b \theta_a)) \phi_a
                      &= ((\lambda b) \theta_a + (\mu b) \theta_a) \phi_a
                      &= \lambda b + \mu b
    \end{aligned}
    $$

 7. scalar multiplication distributes over vector addition

    *Proof:* For any $b, c \in X$, $\lambda \in \mathbb{F}$:

    $$
    \begin{aligned}
    \lambda (b + c) &= (\lambda ((b+c) \theta_a)) \phi_a
                    &= (\lambda (b \theta_a + c \theta_a)) \phi_a
                    &= (\lambda (b \theta_a) + \lambda (c \theta_a)) \phi_a
                    &= ((\lambda b \theta_a) + (\lambda c \theta_a)) \phi_a
                    &= \lambda b + \lambda c
    \end{aligned}
    $$

 8. scalar multiplication by unit

    *Proof:* For any $b \in X$,

    $$
    \begin{aligned}
    1 b &= 1 (b \theta_a) \phi_a
        &= (b \theta_a) \phi_a
        &= b
    \end{aligned}
    $$

 9. scalar multiplication meshes with field multiplication

    *Proof:* For any $b \in X$, $\lambda, \mu \in \mathbb{F}$,

    $$
    \begin{aligned}
    \lambda (\mu b) &= (\lambda (\mu b \theta_a)) \phi_a
                    &= (\lambda (\mu (b \theta_a))) \phi_a
                    &= (\lambda \mu) (b \theta_a) \phi_a
                    &= ((\lambda \mu) b \theta_a) \phi_a
                    &= (\lambda \mu) b
    \end{aligned}
    $$




## Definition of affine map
If $(X, V, \theta)$ and $(Y, W, \xi)$ are affine spaces, then a map $f: X \to Y$ is an **affine map** if there is a linear map $L: V \to W$ such that

$$(a, b) \theta L = (af, ab) \xi$$

for all $a, b \in X$.

## Composition of affine maps is affine
If $(X, V_X, \theta_X), (Y, V_Y, \theta_Y), (Z, V_Z, \theta_Z)$ are all affine spaces, and $f: X \to Y$ and $g: Y \to Z$ are affine maps, then $fg: X \to Z$ is an affine map.

*Proof:* By definition, there are linear maps $L: V_X \to V_Y$ and $M: V_Y \to V_Z$ such that

$$(a, b) \theta_X L = (af, bf) \theta_Y$$

for all $a, b \in X$ and

$$(c, d) \theta_Y M = (cg, dg) \theta_Z$$

for all $c, d \in Y$. From this we have

$$(a, b) \theta_X (LM) = (af, bf) \theta_Y M = (afg, afg) \theta_Z$$

Since $LM$ is a linear map $V_X \to V_Z$, $fg$ meets the criteria for an affine map.

## Definition of affine isomorphism
An **affine isomorphism** is a bijective affine map.

## Inverse of an affine isomorphism is affine
If $f: X \to Y$ is an affine isomorphism between two affine spaces $(X, V, \theta), (Y, W, \xi)$, with linear map $L: V \to W$, then $f^{-1}$ is affine and its associated linear map is $M = L^{-1}$.

*Proof:* First we need to prove that $L$ is actually a linear isomorphism. If $L$ is not injective, then there is some $u \neq 0$ such that $uL = 0$. Since we know for any $a \in X$, there is some $b \neq 0$ such that $(a, b) \theta = u$, so $(a, b) \theta L = u L = 0 = (af, bf) \xi$, which implies that $af = bf$, contradicting $f$ being a bijection. So $L$ must be injective.

To prove $L$ is surjective, let $w \in W$. For any $c \in Y$, there is some $d \in Y$ such that $(c, d) \xi = w$. Then $(c f^{-1}, d f^{-1}) \theta L = (c, d) \xi = w$, so $v := (c f^{-1}, d f^{-1}) \theta$ gets mapped by $L$ to $w$, proving $L$ is surjective.

For $c, d \in Y$, there is a unique pair $(a, b) \in X^2$ such that $(af, bf) = (c, d)$. So $(c f^{-1}, d f^{-1}) = (a, b)$ and $(a, b) \theta_Y M

Now for any $c, d \in Y$, We need to prove that

$$(c, d) \xi L^{-1} = (c f^{-1}, d f^{-1}) \theta$$

But:

$$(c f^{-1}, d f^{-1}) \theta L = (c f^{-1} f, d f^{-1} f) \xi = (c, d) \xi$$

So the statement holds by applying $L^{-1}$ to both sides.


## When an affine map between vector spaces is linear
An affine map $f: X \to Y$ between two vector spaces (as affine spaces) $(X, X, \theta)$ and $(Y, Y, \xi)$ is linear iff $0f = 0$.

*Proof:* One direction is immediate since a linear map must send $0$ to $0$. For the other direction, if $0f = 0$, then we have:

$$
\begin{aligned}
(u+v)f & = (0, (u+v)f) \xi
       & = (0, u+v) \theta L
       & = (u+v) L
       & = uL + vL
       & = (0, u) \theta L + (0, v) \theta L
       & = (0, uf) \xi + (0, vf) \xi
       & = uf + vf
\end{aligned}
$$

### Corollary
If $(X, V, \theta)$ and $(Y, W, \xi)$ are affine spaces and $f: X \to Y$ is a map, then $f$ is a affine iff for some choice $a \in X$, $f$ is a linear map $X @ a \to Y @ af$.

*Proof:* Both directions follow immediately from the proposition.


## Characterizing an affine map between vector spaces
If $X$ and $Y$ are vector spaces and $f: X \to Y$ an affine map, then $xf = 0f + xL$, where $L$ is the underlying linear map of $f$.

*Proof:*
By the property of affine maps, $xL = (0, x) \theta L = (0f, xf) \xi = xf - 0f$.


## Definition of affine subspace
If $(X, V, \theta)$ is an affine space, then $(A, U, \xi)$ is an **affine subspace** of $X$ provided that $A \subseteq X$, $U$ is a vector subspace of $V$, and the inclusion $A \to X$ is an affine map.

## Alternative definition of affine subspace
If $(A, U, \xi)$ and $(X, V, \theta)$ are affine spaces. then $A$ is an affine subspace of $X$ iff for some $a \in A$, then $A @ a$ is a subspace of $X @ a$.

*Proof:* If $A$ is an affine subspace of $X$ then by definition the inclusion $i: A \to X$ is an affine map, so by a previous proposition there is an $a \in A$ such that $i$ is a linear map $A @ a \to X @ a$, which is a defining characteristic of a subspace. Conversely, if there is some $a \in A$ such that $A @ a$  is a subspace of $X @ a$, then the inclusion $i$ is a linear map, so it is affine as well.

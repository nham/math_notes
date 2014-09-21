# Affine spaces

## Note
We use postfix function notation throughout.

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

## The vector space on $X$
An affine space allows us to define a vector space on $X$ itself as follows: for any fixed $a \in X$ and any $b, c \in X$, $\alpha \in \mathbb{F}$:

 - define $b + c := (b \theta_a + c \theta_a) \phi_a$
 - define $\alpha \cdot b := (\alpha \cdot (b)\theta_a) \phi_a$.

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


## Translations
If $(X, V, \theta)$ is an affine space, for every $v \in V$ we can define the **translation** $\tau_v: X \to X$ by $a \tau_v = v \phi_a$. In words, $a \tau_v$ is the unique $b \in X$ such that $\theta(a, b) = v$.


## Every translation is a permutation on $X$
For every $v \in V$, $\tau_v$ is a permutation on $X$.

*Proof:* We prove that $\tau_{-v}$ is an inverse for $\tau_v$. For any $a \in X$, $a \tau_v \tau_{-v} = (v \phi_a) \tau_{-v} = (-v) \phi_b$, where we are letting $b = v \phi_a$, meaning $b$ is the unique element of $X$ such that $\theta(a, b) = v$. But $(-v) \phi_b$ is the unique $c \in X$ such that $\theta(b, c) = -v$, and by the affine space axioms we have $c = a$, so $a \tau_v \tau_{-v} = a$. A similar proof shows that $a \tau_{-v} \tau_v = a$, so $\tau_v$ has a two-sided inverse, proving it is a bijection.

## Translation injection
The map $\tau: V \to Perm X$, where $Perm X$ is the group of permutations on $X$, defined by $v \tau = \tau_v$, is an injective group homomorphism.

*Proof:* To prove that it's a homomorphism, we must show $\tau_{v+w} = \tau_v \tau_w$, or that $(v+w) \phi_a = (v \phi_a) \tau_w = w \phi_{v \phi_a}$ for any $a \in X$. If we let $b = v \phi_a$ and $c = w \phi_b$, then because $v + w = (a, b) \theta + (b, c) \theta = (a, c) \theta$, it is proved.

To prove injectivity, by the properties of group homomorphisms it suffices to prove that the only $v \in V$ for which $\tau_v = id_X$ is $v = 0$. But if $a \tau_v = a$ for any $a \in X$, then $v \phi_a = a$, so $v = 0$ by the properties of $\theta$.

## Alternate representation for a translation
If $a, b \in X$ and $v = (a,b) \theta$, then $\tau_v = \theta_a \phi_b$.

*Proof:* Let $y = x \tau_v$. Then $(a, x) \theta + (x, y) \theta = (a, b) \theta + (b, y) \theta$. But since by definition of $y$, $(a, b) \theta = (x, y) \theta$, we have $x \theta_a = (a, x) \theta = (b, y) \theta$. So $x \theta_a \phi_b = y$.


## Definition of affine map
If $(X, V, \theta)$ and $(Y, W, \xi)$ are affine spaces, then a map $f: X \to Y$ is an **affine map** if there is a linear map $L: V \to W$ such that

$$(a, b) \theta L = (af, ab) \xi$$

for all $a, b \in X$.

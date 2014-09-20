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

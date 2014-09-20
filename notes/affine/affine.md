An **affine space** is a tuple $(X, V, \theta)$ where

 - $X$ is some set
 - $V$ is a vector space over some field $\mathbb{F}$.
 - $\theta: X \times X \to V$

such that

 - for any $a \in X$, $\theta_a: X \to V$ defined by $\theta_a(b) = \theta(a, b)$ is a bijection
 - for all $a, b, c \in X$, $\theta(a, b) + \theta(b, c) = \theta(a, c)$

The first axiom says that if we "pick an origin" in $X$, we can recover a vector space by taking the difference. The second axiom ensures that the interaction between $X$ and $V$ behaves like one might intuitively expect: it implies, for example, after picking an origin at $a$, that the vector assigned to $a$ is the zero vector. It also implies that the vector going from $a$ to $b$ is the inverse of the vector going from $b$ to $a$.

Since each $\theta_a$ is a bijection, we can define its inverse $\phi_a$.

## The vector space on $X$
An affine space allows us to define a vector space on $X$ itself as follows: for any fixed $a \in X$ and any $b, c \in X$, $\alpha \in \mathbb{F}$:

 - define $b + c := \phi_a(\theta_a(b) + \theta_a(c))$
 - define $\alpha \cdot b := \phi_a(\alpha \cdot \theta_a(b))$.

 1. $\theta_a$ is "linear"

    For all $b, c \in X$, $\lambda \in \mathbb{F}$,

      - $\theta_a(b + c) = \theta_a(b) + \theta_a(c)
      - $\theta_a(\lambda b) = \lambda \theta_a(b)

    *Proof:* Since $b + c = \phi_a(\theta_a(b) + \theta_a(c))$, $\theta_a(b+c) = \theta_a(b) + \theta_a(c)$. Also, since $\lambda b = \phi_a(\lambda \theta_a(b))$, the second property (homogeneity) follows.

 2. associativity of $+$

    *Proof:* It essentially follows from associativity of addition in $V$:

    $$
    \begin{aligned}
    (b + c) + d & = \phi_a(\theta_a(b+c) + \theta_a(d)) \\
                & = \phi_a((\theta_a(b) + \theta_a(c)) + \theta_a(d)) \\
                & = \phi_a(\theta_a(b) + (\theta_a(c) + \theta_a(d))) \\
                & = \phi_a(\theta_a(b) + \theta_a(c+d)) \\
                & = b + (c + d)
    \end{aligned}
    $$

 3. commutativity of $+$

    *Proof:* Similarly to associativity, it follows from commutativity of addition in $V$.

 4. additive identity

    *Proof:* The additive identity is $a$:

    $$
    \begin{aligned}
    a + b &= \phi_a(\theta_a(a) + \theta_a(b))
          &= \phi_a(0 + \theta_a(b))
          &= b
    \end{aligned}
    $$

 5. additive inverses

    *Proof:* For any $b \in X$, $-b := \phi_a(- \theta_a(b))$, so

    $$
    \begin{aligned}
    b + (-b) &= \phi_a(\theta_a(b) + \theta_a(\phi_a(- \theta_a(b))))
             &= \phi_a(\theta_a(b) + - \theta_a(b))
             &= \phi_a(0)
             &= a
    \end{aligned}
    $$

 6. scalar multiplication distributes over field addition

    *Proof:* For any $b \in X$, $\lambda, \mu \in \mathbb{F}$:

    $$
    \begin{aligned}
    (\lambda + \mu) b &= \phi_a((\lambda + \mu) \theta_a(b))
                      &= \phi_a(\lambda \theta_a(b) + \mu \theta_a(b))
                      &= \phi_a(\theta_a(\lambda b) + \theta_a(\mu b))
                      &= \lambda b + \mu b
    \end{aligned}
    $$

 7. scalar multiplication distributes over vector addition

    *Proof:* For any $b, c \in X$, $\lambda \in \mathbb{F}$:

    $$
    \begin{aligned}
    \lambda (b + c) &= \phi_a(\lambda \theta_a(b+c))
                    &= \phi_a(\lambda (\theta_a(b) + \theta_a(c)))
                    &= \phi_a(\lambda \theta_a(b) + \lambda \theta_a(c))
                    &= \phi_a(\theta_a(\lambda b) + \theta_a(\lambda c))
                    &= \lambda b + \lambda c
    \end{aligned}
    $$

 8. scalar multiplication by unit

    *Proof:* For any $b \in X$,

    $$
    \begin{aligned}
    1 b &= \phi_a(1 \theta_a(b))
        &= \phi_a(\theta_a(b))
        &= b
    \end{aligned}
    $$

 9. scalar multiplication meshes with field multiplication

    *Proof:* For any $b \in X$, $\lambda, \mu \in \mathbb{F}$,

    $$
    \begin{aligned}
    \lambda (\mu b) &= \phi_a(\lambda \theta_a(\mu b))
                    &= \phi_a(\lambda (\mu \theta_a(b)))
                    &= \phi_a((\lambda \mu) \theta_a(b))
                    &= \phi_a(\theta_a((\lambda \mu) b))
                    &= (\lambda \mu) b
    \end{aligned}
    $$

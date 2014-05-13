# Derivatives

## Infinitesimal functions
If $(X, d)$ is a metric space, $f: X \to \mathbb{R}$ is said to be **infinitesimal** as $x \to a \in X$ if $lim_{x \to a} f(x) = 0$. If $g: X \to \mathbb{R}$, then $f$ is **infinitesimal with respect to $g$ as $x \to a$** iff for every $\epsilon > 0$, there is a $\delta$ such that for all $x \in D_X(a; \delta)$, $|f(x)| < \epsilon |g(x)|$.

If $p: X \to V$ and $q: X \to W$ for some normed vector spaces $V$ and $W$, then we say that **$p is infinitesimal with respect to $q$ as $x \to a$** iff the functions $P, Q: X \to \mathbb{R}$ defined by $P(x) = \|p(x)\|$, $Q(x) = \|q(x)\|$ have $P$ infinitesimal with respect to $Q$ as $x \to a$.

If $f$ is infinitesimal w.r.t. $g$ as $x \to a$, we write $f \in o_a(g)$.


## Limit of a linear function as input goes to zero
If $L \in Hom(\mathbb{R}^n, \mathbb{R}^p)$, then $lim_{h \to 0} L(h) = 0$

*Proof:*  for all $h \in \mathbb{R}^n$, there are $h_i$'s such that $h = \sum_1^n h_i e_i$. So $\|L(h)\| = \| \sum_1^n h_i L(e_i) \| \leq \sum_1^n |h_i| \|L(e_i)\|$. by linearity of $L$ and the triangle inequality of the norm. Let $j = arg max_i \|L(e_i)\|$, so that $\|L(h)\| \leq \|L(e_j)\| \sum_1^n |h_i|$.

If $\|h\| < \delta$, then we must have each $|h_i| < \delta$. So for every $\epsilon > 0$, pick $\delta = \|L(e_j)\| \epsilon / n$. This implies that for all $h$ with $0 < \|h\| < \delta$, $\|L(h)\| \leq \epsilon$. This proves the statement.


## Definition of difference set
If $A \subseteq \mathbb{R}^n$ and $a \in A$, then we denote the set $\{x - a : x \in A, x \neq a \}$ by $diff(A, a)$.


## Definition of a directional derivative
If $f: A \to \mathbb{R}^p$ for $A \subseteq \mathbb{R}^n$, $a \in int(A)$ and $0 \neq u \in \mathbb{R}^n$, then $f$ has a **directional derivative at $a$ in the direction of $u$** if there is a $c \in \mathbb{R}^p$ such that the function $g_a : \mathbb{R} - 0 \to \mathbb{R}^p$ is defined by

$$g_a(t) = \frac{f(a + tu) - f(a)}{t}$$

has

$$lim_{t \to 0} g_a(t) = c$$

The $c$ is clearly uniqe since functional limits are uniqe and will be denoted $D_u f(a)$.


## Definition of partial derivatives
If $f: A \to \mathbb{R}^p$ for $A \subesteq \mathbb{R}^n$, then letting $\{e_1, \ldots, e_n\}$ be the standard basis of $\mathbb{R}^n, we define the **$i$-th partial derivative** of $f$ at $a$ to be (if it exists) the directional derivative of $f$ w.r.t. $e_i$. These are denoted $D_i f(a)$.



## Definition of derivative (Zorich-influenced)
If $A \subseteq \mathbb{R}^n$, then $f: A \to \mathbb{R}^p$ has a **derivative** at $a \in int(A)$ iff for all $h \in diff(A, a)$, there is an $L \in Hom(\mathbb{R}^n, \mathbb{R}^p)$ such that

$$f(a+h) - f(a) = L(h) + \alpha(h)$$

where $\alpha: diff(A, a) \to \mathbb{R}^p$ has $\alpha \in o_0(h)$, where $h$ is shorthand for the identity function on $diff(A,a)$.



## Lemma for functions infinitesimal wrt identity
If $\alpha \in o_a(h)$, then $lim_{h \to a} \alpha(h) = 0$.

*Proof:* By hypothesis, for every $\epsilon > 0$ there is a $\delta$ such that for all $h \in dom \alpha$ with $0 < \|h\| < \delta$, then $\| \alpha(h) \| < \epsilon \|h\|$. So for all $h$ with $0 < \|h\| < min(\delta, 1)$, $\| \alpha(h) \| < \epsilon$, which proves the statement


## Lemma for the limit of a parameterized multivariable function
$f: A \to \mathbb{R}^p$ is a function, $a \in acc(A)$ and $lim_{x \to a} f(x) = c$, then for any $0 \neq u \in \mathbb{R}^n$,

$$lim_{t \to 0} f(a + tu) = c$$

*Proof:* 

 1. $g: \mathbb{R} \to \mathbb{R}^p$ defined by $g(t) = a + tu$ is a function such that $g(t) \neq a$ for all $t \neq 0$

    *Proof:* Since $u \neq 0$.

 2. $lim_{t \to 0} g(t) = a$

    *Proof:* For any $\epsilon$, we can make $\|a + tu - a \| = |t| \|u \| < \epsilon$ by choosing any $t$ such that $|t| < \epsilon / \|u\|$.


 3. Q.E.D.

    *Proof:* By (1) and (2), we can use composition of function limits to obtain the result.



## Derivative is unique
If $L$ and $M$ are derivatives of $f: A \to \mathbb{R}^p$ at $a \in $A$, then $L = M$. Also for any $u \neq 0$, $L(u) = D_u f(a)$.

*Proof:* By hypothesis for all $h \in diff(A, a)$, we have

$$L(h) = f(a+h) - f(a) - \alpha(h)$$

and

$$M(h) = f(a+h) - f(a) - \beta(h)$$

for some $\alpha, \beta$ both in $o_0(h)$.

For any $u \neq 0$, and for every $t \in \mathbb{R} - 0$ such that $tu \in diff(A, a)$, we have

$$L(h) = t L(u) = f(a + tu) - f(a) - \alpha(tu)$$

$$M(h) = t L(u) = f(a + tu) - f(a) - \beta(tu)$$

So 

$$
\begin{aligned}
L(u) & = lim_{t \to 0} L(u) \\
     & = lim_{t \to u} \frac{1}{t}(f(a + tu) - f(a) - \alpha(tu)) \\
     & = D_u f(a) - lim_{t \to 0} \frac{\alpha(tu)}{t}
\end{aligned}
$$

Similarly,

$$
\begin{aligned}
M(u) & = D_u f(a) - lim_{t \to 0} \frac{\beta(tu)}{t}
\end{aligned}
$$


It suffices to prove that $lim_{t \to 0} \frac{\gamma(tu)}{t} = 0$ for any $\gamma \in o_0(h)$.

We know that $lim_{t \to 0} \gamma(tu) / \|tu\| = 0$ by hypothesis, but by limit laws, $lim_{t \to 0} \gamma(tu) / |t| = 0 * lim_{t \to 0} \|u\| = 0$.

This proves that $L(u) = D_u f(a) = M(u)$. Since $u$ was arbitrary, $L = M$.


## Corollary
We speak of **the derivative** of $f$ at $a$, denoted $Df(a)$. From the previous theorem, we also have $Df(a)[u] = D_u f(a)$. So if $f$ is differentiable at $a$, then every directional derivative at $a$ exists.


## Definition of function increment
For any $f: A \to \mathbb{R}^p$ and $h \in \mathbb{R}^n$ such that $a \in A$ and $a + h \in A$, we define

$$\Delta f(a; h) = f(a + h) - f(a)$$

Then $\Delta f(a;h) = Df(a) + \alpha(h)$ for some $\alpha$ which is $o_0(h)$.


## Differentiable implies continuous
If $f: A \to \mathbb{R}^p$ is differentiable at $a$, then $f$ is continuous at $a$.

*Proof:*

 1. $lim_{h \to 0} f(a + h) - f(a) = 0$

    *Proof:* $f(a+h) - f(a) = Df(a)(h)  + \alpha(h)$ for some $\alpha in o_0(h)$. So the statement holds by previous proved propositions showing $lim_{h \to 0} Df(a)(h) = 0$ (since $Df(a)$ is linear) and $lim_{h \to 0} \alpha(h) = 0$.

 2. Q.E.D.

    *Proof:* (1) gives us $lim_{h \to 0} f(a + h) = f(a)$. It is straightforward to prove that $lim_{x \to a} f(x) = f(a)$.

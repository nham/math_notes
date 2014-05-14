# Derivatives

## Preliminary lemma on magnitude in $\mathbb{R}^n$
If $v = (v_1, \ldots, v_n) \in \mathbb{R}^n$ and $\|v\| < \epsilon$, then $|v_i| < \epsilon$ for all $i$

*Proof:* $\|v\|_{\infty} < \|v\|_2$ for all $v$ is already known (see metric space notes).


## Infinitesimal functions
If $(X, d)$ is a metric space, $f: X \to \mathbb{R}$ is said to be **infinitesimal** as $x \to a \in X$ if $lim_{x \to a} f(x) = 0$. If $g: X \to \mathbb{R}$, then $f$ is **infinitesimal with respect to $g$ as $x \to a$** iff for every $\epsilon > 0$, there is a $\delta$ such that for all $x \in D_X(a; \delta)$, $|f(x)| < \epsilon |g(x)|$.

If $p: X \to V$ and $q: X \to W$ for some normed vector spaces $V$ and $W$, then we say that **$p$ is infinitesimal with respect to $q$ as $x \to a$** iff the functions $P, Q: X \to \mathbb{R}$ defined by $P(x) = \|p(x)\|$, $Q(x) = \|q(x)\|$ have $P$ infinitesimal with respect to $Q$ as $x \to a$.

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
If $f: A \to \mathbb{R}^p$ for $A \subseteq \mathbb{R}^n$, then letting $\{e_1, \ldots, e_n\}$ be the standard basis of $\mathbb{R}^n$, we define the **$i$-th partial derivative** of $f$ at $a$ to be (if it exists) the directional derivative of $f$ w.r.t. $e_i$. These are denoted $D_i f(a)$.



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


## Functions differentiable iff component functions are differentiable
If $f: A \to \mathbb{R}^p$ for $A \subseteq \mathbb{R}^n$, $a \in int(A)$, then $Df(a)$ exists iff $pi_i \circ f$ is differentiable at $a$ for each $i$ with $1 \leq i \leq p$.

*Proof:* If $f$ differentiable at $a$, then let

$$f_i := \pi_i \circ f$$

$$Df(a)_i := \pi_i \circ Df(a)$$

$$\alpha_i := \pi_i \circ \alpha$$

Then if $Df(a)$ exists, then $f_i(a + h) - f_i(a) = Df(a)_i(h) + \alpha_i(h)$ for all $i$. $\alpha_i \in o_0(h)$ as well since $\alpha \in o_0(h)$ implies that for all $\epsilon > 0$ there is a $\delta$ such that for all $h$ with $0 < \|h\| < \delta$, $\| \alpha(h) \| < \epsilon \|h \|$, hence $| \alpha_i(h) | < \epsilon \|h\|$ as well. Since $\pi_i$ is linear, $Df(a)_i$ is linear as well. Hence $Df(a)_i = D f_i(a)$, so each $f_i$ is differentiable at $a$.

Conversely, if $D f_i(a)$ exists for all $i$, then each $D f_i(a) \in Hom(\mathbb{R}^n, \mathbb{R})$, so the "cartesian product" defined by $L(h) = (D f_1(a)(h), \ldots, D f_p(a)(h))$ is linear as well. If we can prove that the cartesian product $\alpha(h) := (\alpha_1(h), \ldots, \alpha_p(h))$ is infinitesimal w.r.t. $h$, then we will have that $Df(a) = L$ exists. But we can find a $\delta$ such that for all $h$ with $0 < \|h\| < \delta_i$, $| \alpha_i(h) | < \epsilon \|h\| / \sqrt{p}$. So for all $h$ with $0 < \|h\| < \delta = min \{\delta_1, \ldots, \delta_p\}$, $\| \alpha(h) \| = \sqrt{\sum_1^p | \alpha_i(h) |^2} \leq \epsilon \|h\|$, proving that $L = Df(a)$.


## Jacobian matrix
If $f: A \to \mathbb{R}^p$ for $A \subseteq \mathbb{R}^n$ is differentiable at $a$, then the matrix representation of $Df(a)$ is a matrix $A$ where $a_ij = D_j f_i(a)$ This matrix is called the **Jacobian matrix**.

*Proof:* We know that the $i$-th row of $A$ is the row-vector representation of $D f_i(a)$ from the previous proposition.

From the previous proposition we know that $Df(a)(v) = (D f_1(a)(v), \ldots, D f_p(a)(v))$ for all $v \in \mathbb{R}^n$. In other words,

$$Df(a)(v) = \sum_1^p D f_i(a)(v) e_i$$

But $v = \sum_1^n v_i e_i$ for some $v_i$'s, and each $D f_i(a)$ is linear, so

$$Df(a)(v) = \sum_{i=1}^p e_i \sum_{j=1}^n v_j D_j f_i(a)$$

This establishes the statement.


## Linearity of the derivative
If $f, g : A \to \mathbb{R}^p$, $A \subseteq \mathbb{R}^n$, $a \in int(A)$, $c \in \mathbb{R}$, then if $Df(a)$ and $Dg(a)$ exist, then $D(f+g)(a)$ and $D(cf)(a)$ also exist.

*Proof:* We know that $Df(a) + Dg(a)$ is linear. By hypothesis there are $\alpha, \beta: Diff(a, a) \to \mathbb{R}^p$ such that $\alpha, \beta \in o_0(h)$. For any $\epsilon > 0$, there are $\delta_1$, $\delta_2$ such that for all $h$, $0 < \|h\| < \delta_1$, $\| \alpha(h) \| < \epsilon \|h \| / 2$ and also for all $h$, $0 < \|h\| < \delta_2$, $\| \beta(h) \| < \epsilon \|h \| / 2$. So for all $h with $0 < \|h\| < min \{ \delta_1, \delta_2 \}$, \| (\alpha + \beta)(h) \| \leq \| \alpha(h) \| + \| \beta(h) \| < \epsilon \|h\|$. So $\alpha + \beta \in o_0(h)$ as well, hence $Df(a) + Dg(a) = D(f+g)(a)$.

Also, for any $\epsilon > 0$ there is a $\delta$ such that for all $h$ with $0 < \|h\| < \delta$, \| \alpha(h) \| < \epsilon \|h\| / |c|$, so for the same $h$ we have $\| c \alpha(h) \| = |c| \| \alpha(h) \| < \epsilon \|h\|$. Hence $(c \alpha) \in o_0(h)$. We know $c Df(a)$ is linear, so this proves that $c Df(a) = D (cf)(a)$.



## Definition of local extrema
If $(X, d)$ is a metric space and $f: X \to \mathbb{R}$, then $f$ has a **local maximum** at $a \in X$ if there is some $\delta > 0$ such that for all $x \in B(a; \delta)$ we have $f(x) \leq $f(a)$. $f$ has a **local minimum** at $a$ iff there is a $\delta$ such that $f(x) \geq f(a)$ for all $x \in B(a; \delta)$. Both local maxima and local minima are called **local extrema**.

## Characterizing local extrema
If $f: [a, b] \to \mathbb{R}$ has a local extremum at $c \in (a, b)$ and is differentiable at $c$, then $Df(c) = 0$.

*Proof:* If $f$ has a local maximum at $c$, then there is some $\delta > 0$ such that $\Delta f(c; h) \leq 0$ for all $h \in \mathbb{R}$ such that $|h| < \delta$. For all such $h$ we have the function defined by

$$\psi(h) := \Delta f(c; h) - Df(c)h$$

has $\psi o_0(h)$. Hence for all $\epsilon > 0$ there is a $\gamma$ such that for all $0 < |h| < min \{ \delta, \gamma \}$, $| \psi(h) | < \epsilon |h|$ and $\Delta f(c; h) \leq 0$. 

If $Df(c) > 0$, then for all $h$ with $0 < h < \delta $, | \psi(h) | \geq |Df(c)| |h|$ since $Df(c)h > 0$. This contradicts $\psi$ being $o_0(h)$.

If $Df(c) < 0$, then for all $h$ with $0 > h > - \delta $, | \psi(h) | \geq |Df(c)| |h|$ since, once again, $Df(c)h > 0$. This again contradicts $\psi$ being $o_0(h)$.

Hence $Df(c) = 0$.

If $f$ has a local minimum at $c$ instead, $g(x) := -f(x)$ has a local maximum at $c$, $g(a + h) - g(a) = f(a) - f(a + h) = - Df(c)h - \psi(h)$, so $Dg(c) = -Df(c)$. Hence by what was just proved, $Df(c) = 0$.



## Rolle's theorem
If $f: [a, b] \to \mathbb{R}$ for $a < b$ is continuous and differentiable on $(a, b)$ such that $f(a) = f(b)$, then there is a $c \in (a, b)$ such that $Df(c) = 0$.

*Proof:* We know that $f$, being a continuous function defined on a compact set, takes on a minimum and maximum value at some input. If both minimum and maximum are on $a$ (and hence $b$), then the function must be constant. So $c = (a+b)/2$ works.

Otherwise $f$ either has a maximum or a minimum on a point in $(a,b)$, so the local extremum theorem applies, giving us what we want.

## Mean value theorem
If $f: [a, b] \to \mathbb{R}$ for $a < b$ is continuous and differentiable on $(a, b)$, then there is a $c \in (a, b)$ such that $Df(c) = [f(b) - f(a)]/(b - a)$

*Proof:* Let $k = [f(b) - f(a)]/(b - a)$. Then $g: [a, b] \to \mathbb{R}$ defined by $g(x) = f(x) - \phi(x)$, where $\phi: [a, b] \to \mathbb{R}$ defined by $\phi(x) = k(x-a)$ is continuous since $\phi$ is and differentiable on $(a, b)$ since $\phi$ is. But $g(b) = f(b) - k(b-a)  = f(b) - (f(b) - f(a)) = f(a) = g(a)$, so Rolle's theorem applies to find a $c$ such that $Dg(c) = 0$. But $Dg(c) = Df(c) - D \phi(c)$, so $Df(c) = D \phi(c) = k = [f(b) - f(a)]/(b-a)$.
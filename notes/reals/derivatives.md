# Derivatives

## Preliminary lemma on magnitude in $\mathbb{R}^n$
If $v = (v_1, \ldots, v_n) \in \mathbb{R}^n$ and $\|v\| < \epsilon$, then $|v_i| < \epsilon$ for all $i$

*Proof:* $\|v\|_{\infty} < \|v\|_2$ for all $v$ is already known (see metric space notes).


## Infinitesimal functions
If $(X, d)$ is a metric space, $f: X \to \mathbb{R}$ is said to be **infinitesimal** as $x \to a \in X$ if $lim_{x \to a} f(x) = 0$. If $g: X \to \mathbb{R}$, then $f$ is **infinitesimal with respect to $g$ as $x \to a$** iff for every $\epsilon > 0$, there is a $\delta$ such that for all $x \in B_X(a; \delta)$, $|f(x)| < \epsilon |g(x)|$.

If $p: X \to V$ and $q: X \to W$ for some normed vector spaces $V$ and $W$, then we say that **$p$ is infinitesimal with respect to $q$ as $x \to a$** iff the functions $P, Q: X \to \mathbb{R}$ defined by $P(x) = \|p(x)\|$, $Q(x) = \|q(x)\|$ have $P$ infinitesimal with respect to $Q$ as $x \to a$.

If $f$ is infinitesimal w.r.t. $g$ as $x \to a$, we write $f \in o_a(g)$.

As shorthand for being infinitesimal w.r.t. the identity function on $\mathbb{R}^n$, we will often write $o_a(h)$ or $o_a(t)$ if $h$ or $t$ are vectors in $\mathbb{R}^n$.


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


## Directional derivatives are derivatives
If $A \subseteq \mathbb{R}^n$, $f: A \to \mathbb{R}^p$, and $D_u f(a)$ exists for $a \in int(A)$, $0 \neq u \in \mathbb{R}^n$, then let $B = \{t \in \mathbb{R} : a + tu \in A \}$. Define $\psi: B \to \mathbb{R}^p$ by $\psi(t) = a + tu$. Define $\phi = f \circ \psi$. Then $D \phi (0) = D_u f(a)$.

*Proof:* By definition $D_u f(a) = lim_{t \to 0} \frac{\phi(t) - \phi(0)}{t}$, so

$$lim_{t \to 0} \frac{\phi(t) - \phi(0) - t D_u f(a)}{t}$$

So $\alpha: B \to \mathbb{R}^p$ defined by $\alpha(t) = \phi(t) - \phi(0) - t D_u f(a)$ is $o_0(t)$. Also, the function $t \mapsto t D_u f(a)$ is linear, so by considering $D_u f(a)$ not as a vector in $\mathbb{R}^p$ but as a linear function $\mathbb{R} \to \mathbb{R}^p$, we have established the statement.



## Lemma for functions infinitesimal wrt identity
If $\alpha \in o_a(h)$, then $lim_{h \to a} \alpha(h) = 0$.

*Proof:* By hypothesis, for every $\epsilon > 0$ there is a $\delta$ such that for all $h \in dom \alpha$ with $\|h\| < \delta$, $\| \alpha(h) \| < \epsilon \|h\|$. So for all $h$ with $0 < \|h\| < min(\delta, 1)$, $\| \alpha(h) \| < \epsilon$, which proves the statement


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
If $f: A \to \mathbb{R}^p$ for $A \subseteq \mathbb{R}^n$, $a \in int(A)$, then $Df(a)$ exists iff $f_i := pi_i \circ f$ is differentiable at $a$ for each $i$ with $1 \leq i \leq p$. In either case, we have $Df(a)[x] = (D f_1(a)[x], \ldots, D f_p(a)[x])$.

*Proof:* If $f$ differentiable at $a$, then let

$$Df(a)_i := \pi_i \circ Df(a)$$

$$\alpha_i := \pi_i \circ \alpha$$

Then if $Df(a)$ exists, then $f_i(a + h) - f_i(a) = Df(a)_i(h) + \alpha_i(h)$ for all $i$. $\alpha_i \in o_0(h)$ as well since $\alpha \in o_0(h)$ implies that for all $\epsilon > 0$ there is a $\delta$ such that for all $h$ with $\|h\| < \delta$, $\| \alpha(h) \| < \epsilon \|h \|$, hence $| \alpha_i(h) | < \epsilon \|h\|$ as well. Since $\pi_i$ is linear, $Df(a)_i$ is linear as well. Hence $Df(a)_i = D f_i(a)$, so each $f_i$ is differentiable at $a$.

Conversely, if $D f_i(a)$ exists for all $i$, then each $D f_i(a) \in Hom(\mathbb{R}^n, \mathbb{R})$, so the "cartesian product" defined by $L(h) = (D f_1(a)(h), \ldots, D f_p(a)(h))$ is linear as well. If we can prove that the cartesian product $\alpha(h) := (\alpha_1(h), \ldots, \alpha_p(h))$ is infinitesimal w.r.t. $h$, then we will have that $Df(a) = L$ exists. But we can find a $\delta$ such that for all $h$ with $\|h\| < \delta_i$, $| \alpha_i(h) | < \epsilon \|h\| / \sqrt{p}$. So for all $h$ with $\|h\| < \delta = min \{\delta_1, \ldots, \delta_p\}$, $\| \alpha(h) \| = \sqrt{\sum_1^p | \alpha_i(h) |^2} \leq \epsilon \|h\|$, proving that $L = Df(a)$.


### Corollary
If $f: A \to \mathbb{R}^p$ for $A \subseteq \mathbb{R}^n$, $a \in int(A)$, then for any $u \neq 0$, $D_u f(a)$ exists iff for every component function $f_i$, $D_u f_i(a)$ exists.

*Proof:*  Let $B = \{ t \in \mathbb{R} : a + tu \in A \}$, $\phi: B \to \mathbb{R}^p$ defined by $t \mapsto f(a + tu)$.

If $D_u f(a)$ exists, then we already know from a previous proposition that $D_u f(a) = D \phi(0)$. So defining $\phi_i = \pi_i \circ \phi$, we know (from what was just proved) that $D \phi_i(0)$ all exist. By definition of derivatives:

$$\phi_i(t) - \phi_i(0) = t D \phi_i(0) + \alpha(t)$$

such that $\alpha \in o_0(t)$. This implies that

$$lim_{t \to 0} \frac{\phi_t(t) - \phi_i(0)}{t} = D \phi_i(0)$$

However, $\phi_i(t) = f_i(a + tu)$, so $D \phi_i(0) = D_u f_i(a)$.


Conversely, (TODO: prove this?) $\alpha: B \to \mathbb{R}$ defined by $\alpha(t) = f_i(a + tu) - f(a) - D_u f_i(a) t$ has $\alpha \in o_0(t)$. So the function which assigns $t \mapsto f(a + tu) - f(a) - D_u f(a) t$ has each component function in $o_0(t)$. TODO: prove that this means the function is in $o_0(h)$, hence $D_u f(a) = (D_u f_1(a), \ldots, D_u f_p(a)$.

TODO: is there a cleaner proof? This is supposed to be a corollary, not a completely distinct proof.


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

*Proof:* We know that $Df(a) + Dg(a)$ is linear. By hypothesis there are $\alpha, \beta: Diff(a, a) \to \mathbb{R}^p$ such that $\alpha, \beta \in o_0(h)$. For any $\epsilon > 0$, there are $\delta_1$, $\delta_2$ such that for all $h$, $\|h\| < \delta_1$, $\| \alpha(h) \| < \epsilon \|h \| / 2$ and also for all $h$, $\|h\| < \delta_2$, $\| \beta(h) \| < \epsilon \|h \| / 2$. So for all $h with $\|h\| < min \{ \delta_1, \delta_2 \}$, \| (\alpha + \beta)(h) \| \leq \| \alpha(h) \| + \| \beta(h) \| < \epsilon \|h\|$. So $\alpha + \beta \in o_0(h)$ as well, hence $Df(a) + Dg(a) = D(f+g)(a)$.

Also, for any $\epsilon > 0$ there is a $\delta$ such that for all $h$ with $\|h\| < \delta$, \| \alpha(h) \| < \epsilon \|h\| / |c|$, so for the same $h$ we have $\| c \alpha(h) \| = |c| \| \alpha(h) \| < \epsilon \|h\|$. Hence $(c \alpha) \in o_0(h)$. We know $c Df(a)$ is linear, so this proves that $c Df(a) = D (cf)(a)$.



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




## Continuous partial derivatives implies differentiable
If $f: A \to \mathbb{R}$ with $A \subseteq \mathbb{R}^n$ and $a \in int(A)$, then if there is some $\epsilon > 0$ such that for all $x \in B(a; \epsilon)$, $D_i f(x)$ exists for all $i$, $1 \leq i \leq n$, and if each function $\g_i: B(a; \epsilon) \to \mathbb{R}^p$ defined by $\g_i(x) = D_i f(x)$ is continuous at $a$, then $f$ is differentiable at $a$.


*Proof:* Let $B = B(0; \epsilon)$. We construct functions p_0, \ldots, p_n: B \to \mathbb{R}^n$ by, for all $h = \sum_1^n h_i e_i \in B$:

$$p_0(h) = a$$
$$p_k(h) = p_{k-1}(h) + h_k e_k$$

This means that $p_n(h) = a + h$. Also we have $f(a+h) - f(a) = \sum_1^n f(p_k(h)) - f(p_{k-1}(h))$.

We can define $\psi_j^h: [0, h_j] \to \mathbb{R}$ by $\psi_j^h(t) = f(p_{j-1}(h) + t e_j)$. Note that $\psi_j^h(0) = f(p_{j-1}(h))$ and $\psi_j^h(h_j) = f(p_j(h))$. Since the $j$-th partial derivative exists everywhere in $B(a; \epsilon)$, $\psi_j^h$ is continuous on $[0, h_j]$ and differentiable on $(0, h_j)$. We can apply the mean value theorem to find a $c_j \in \mathbb{R}$ such that $D \psi_j^h(c_j) h_j = \psi_j^h(h_j) - \psi_j^h(0)$. Since we can do this for every $h$, we define a function $c_j: h \mapsto c_j(h)$ such that $D \psi_j^h(c_j(h)) h_j = \psi_j^h(h_j) - \psi_j^h(0)$.

In other words:

$$D_j f(p_{j-1}(h) + c_j(h) e_j) h_j = f(p_j(h)) - f(p_{j-1}(h))$$

Define $q_j(h) = p_{j-1}(h) + c_j(h) e_j$. Then for any $h \in B$, $f(a + h) - f(a) = \sum_1^n D_k f(q_k(h)) h_k$.

Recall the definition of the derivative, if it exists: $f(a + h) - f(a) = Df(a)(h) + \alpha(h)$, where $\alpha \in o_0(h)$.

We know that $Df(a)$ should be defined such that $Df(a)(e_j) = D_j f(a)$. So our candidate for the derivative is $Df(a)(h) = \sum_1^n D_j f(a) h_j$.

To prove that this is the derivative, we must prove that $\alpha$ defined by

$$\alpha(h) = \sum_1^n D_k f(q_k(h)) h_k - D_k f(a) h_k$$

is such that $\alpha \in o_0(h)$.

But $p_k(h) \to a$ as $h \to 0$, and $c_k(h) \to 0$ as $h \to 0$, so $q_k(h) \to a$ as $h \to 0$. 


$$\alpha(h) \leq \sum_1^n [D_j f(q_j(h)) - D_j f(a)] \|h\|$$

Since $D_j f$ is continuous at $a$, for every $\epsilon$, there is a $\delta$ such that for all $x \in B(a; \delta)$,  $|D_j f(x) - D_j f(a)| < \epsilon / n$.

But also there is a $\gamma$ such that for all $0 < \|h\| < \gamma$, $\| q_j(h) - a \|  < \delta$. So for all $h$ with magnitudes smaller than $\gamma$,

$$\| D_j f(q_j(h)) - D_j f(a) \| < \epsilon / n$$

So for the same $h$, $| \alpha(h)| < \epsilon \|h\|$.



### Corollary
If $f: A \to \mathbb{R}^p$ with $A \subseteq \mathbb{R}^n$ and $a \in int(A)$, then if there is some $\epsilon > 0$ such that for all $x \in B(a; \epsilon)$, $D_i f(x)$ exists for all $i$, $1 \leq i \leq n$, and if each function $\g_i: B(a; \epsilon) \to \mathbb{R}^p$ defined by $\g_i(x) = D_i f(x)$ is continuous at $a$, then $f$ is differentiable at $a$.

*Proof:* Previous propositions show that each component function $f_i: A \to \mathbb{R}$ has every partial derivative existing at every point of $B(a; \epsilon)$. To use the previous theorem, we just need to prove that for every $j$,

$\pi_j \circ g_i$ maps $x \mapsto D_i f_j(x)$

since this would imply that the function is a composition of continuous functions and hence continuous. $g_i(x) = D_i f(x)$, so indeed the $j$-th component is the $i$-th partial derivative of $f_j$.


## Definition of continuously differentiable
A function $f: U \to \mathbb{R}^p$, $U$ open in $\mathbb{R}^n$ is said to be **continuously differentiable** or a $C^1$ mapping iff every partial derivative exists at every point of $U$ and each function $D_j f: U \to \mathbb{R}^p$ is continuous.

To go along with this, $f$ is said to be $C^0$ iff it is continuous.

# Derivatives

## Preliminary lemma on magnitude in $\mathbb{R}^n$
If $v = (v_1, \ldots, v_n) \in \mathbb{R}^n$ and $\|v\| < \epsilon$, then $|v_i| < \epsilon$ for all $i$

*Proof:* $\|v\|_{\infty} < \|v\|_2$ for all $v$ is already known (see metric space notes).


## Definition of infinitesimal w.r.t. identity 
If $V$ and $W$ are normed vector spaces and $S \subseteq V, 0 \in S$, then $f: S \to W$ is **infinitesimal with respect to identity** iff for every $\epsilon > 0$ there is a $\delta > 0$ such that for all $h \in S$ with $\|h\| < \delta$, $\|f(h)\| < \epsilon \|h\|$. We notate this by saying $f \in o(1)$.

## Alternate representation of $o(1)$ functions
If $V$ and $W$ are normed vector spaces and $S \subseteq V, 0 \in S$ and $f: S \to W$, then $f \in o(1)$ iff $f(h) = g(h) \|h\|$ for all $h \in S$ for some $g: S \to W$ such that $lim_{h \to 0} g(h) = 0$.

*Proof:* If $f(h) = g(h) \|h\|$ for some $g$ with $g(h) \to 0$ as $h \to 0$, then for every $\epsilon > 0$ there is a $\delta > 0$ such that for all $h \in S$ with $0 < \|h\| < \delta$, $\|g(h)\| < \epsilon$. So for all such $h$ we have $\|f(h)\| = \|g(h)\| \|h\| < \epsilon \|h\|$. For $h = 0$, $\|h\| = 0$, so $\|f(h)\| = 0$, proving $f \in o(1)$.

Conversely, if $f \in o(1)$, define $g: S \to W$ by $g(0) = 0$ and $g(h) = f(h) / \|h\|$ for $h \neq 0$. Then $clearly $f(h) = g(h) \|h\|$ by definition of $g$ for all $h \neq 0$. Also, we have $f(0) = 0$ by definition of $o(1)$, so $f(0) = g(0) \|0\|$. It remains to prove that $lim_{h \to 0} g(h) = 0$. But for all $\epsilon > 0$ there is a $\delta > 0$ such that for all $h$ with $\|h\| < \delta$, $\|f(h)\| < \epsilon \|h\|$. So for all $h$ with $0 < \|h\| < \delta$, $\|g(h)\| = \|f(h)\| / \|h\| < \epsilon$, which proves it.


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

The $c$ is clearly unique since functional limits are uniqe and will be denoted $D_u f(a)$.


## Definition of partial derivatives
If $f: A \to \mathbb{R}^p$ for $A \subseteq \mathbb{R}^n$, then letting $\{e_1, \ldots, e_n\}$ be the standard basis of $\mathbb{R}^n$, we define the **$i$-th partial derivative** of $f$ at $a$ to be (if it exists) the directional derivative of $f$ w.r.t. $e_i$. These are denoted $D_i f(a)$.



## Definition of derivative (Zorich-influenced)
If $A \subseteq \mathbb{R}^n$, then $f: A \to \mathbb{R}^p$ has a **derivative** at $a \in int(A)$ iff for all $h \in diff(A, a)$, there is an $L \in Hom(\mathbb{R}^n, \mathbb{R}^p)$ such that

$$f(a+h) - f(a) = L(h) + \alpha(h) \|h\|$$

where $\alpha: diff(A, a) \to \mathbb{R}^p$ has $lim_{h \to 0} \alpha(h) = 0$. 


### Remark
We will often blur the line between the derivative of a single-variable function and a scalar/vector. If we say that the derivative is a vector $v$, we mean that it is the function which maps $t \mapsto t \cdot v$.



## Directional derivatives are derivatives
If $A \subseteq \mathbb{R}^n$, $f: A \to \mathbb{R}^p$, and $D_u f(a)$ exists for $a \in int(A)$ and $0 \neq u \in \mathbb{R}^n$, then let $B = \{t \in \mathbb{R} : a + tu \in A \}$. Define $\psi: B \to \mathbb{R}^p$ by $\psi(t) = a + tu$. Define $\phi = f \circ \psi$. Then $D \phi (0) = D_u f(a)$.

*Proof:* By definition $D_u f(a) = lim_{t \to 0} \frac{\phi(t) - \phi(0)}{t}$, so

$$lim_{t \to 0} \frac{\phi(t) - \phi(0) - t D_u f(a)}{t}$$

So $\alpha: B \to \mathbb{R}^p$ defined by $\alpha(t) = \phi(t) - \phi(0) - t D_u f(a)$ is $o(1)$. Also, the function $t \mapsto t D_u f(a)$ is linear, so by considering $D_u f(a)$ not as a vector in $\mathbb{R}^p$ but as a linear function $\mathbb{R} \to \mathbb{R}^p$, we have established the statement.

TODO: revisit, generalize



## Lemma for functions infinitesimal wrt identity
If $f \in o(1)$, then $lim_{h \to 0} f(h) = 0$.

*Proof:* We know that $f(h) = g(h) \|h\|$ for some $g$ with $lim_{h \to 0} g(h) = 0$, so for every $\epsilon > 0$ there is some $\delta$ such that for all $h$ with $0 < \|h\| < \delta$, $\|g(h)\| < \epsilon$. So for all $h$ with $0 < \|h\| < min \{ \delta, 1 \}$, $\|f(h)\| = \|g(h)\| \|h\| < \epsilon$.


## Linear combination of functions infinitesimal wrt identity
If $f, g: S \subseteq V \to W$ for some normed vector spaces $V$ and $W$ and $f, g \in o(1)$, then for $c \in \mathbb{F}$, $f + g \in o(1)$ and $cf \in o(1)$.

*Proof:* By the alternate characterization, there are $\alpha, \beta$ such that $f(h) = \alpha(h) \|h\|$ and $g(h) = \beta(h) \|h\|$ for all $h \in S$ and such that $\alpha(h), \beta(h) \to 0$ as $h \to 0$. But by function limit laws, $(\alpha + \beta)(h) \to 0$ and $h \to 0$ and $(c \alpha)(h) \to 0$ and $h \to 0$, which proves the statement.


## Lemma for the limit of a parameterized multivariable function
If $A \subseteq \mathbb{R}^n$, $f: A \to \mathbb{R}^p$ is a function, $a \in acc(A)$ and $lim_{x \to a} f(x) = c$, then for any $0 \neq u \in \mathbb{R}^n$,

$$lim_{t \to 0} f(a + tu) = c$$

*Proof:* 

 1. $g: \mathbb{R} \to \mathbb{R}^p$ defined by $g(t) = a + tu$ is a function such that $g(t) \neq a$ for all $t \neq 0$

    *Proof:* Since $u \neq 0$.

 2. $lim_{t \to 0} g(t) = a$

    *Proof:* For any $\epsilon$, we can make $\|a + tu - a \| = |t| \|u \| < \epsilon$ by choosing any $t$ such that $|t| < \epsilon / \|u\|$.

 3. Q.E.D.

    *Proof:* By (1) and (2), we can use composition of function limits to obtain the result.



## Derivative is unique, directional derivatives exist
If $L$ and $M$ are derivatives of $f: A \subseteq \mathbb{R}^n \to \mathbb{R}^p$ at $a \in $A$, then $L = M$. Also for any $u \neq 0$, $L(u) = D_u f(a)$.

*Proof:* By hypothesis for all $h \in diff(A, a)$, we have

$$L(h) = f(a+h) - f(a) - \alpha(h) \|h\|$$

and

$$M(h) = f(a+h) - f(a) - \beta(h) \|h\|$$

for some $\alpha, \beta$ such that $\alpha(h) \to 0$ and $\beta(h) \to 0$ as $h \to 0$.

So $(L - M)(h) = [\beta(h) - \alpha(h)] \|h\|$.

Since we know $(\beta - \alpha)(h) \to 0$ as $h \to 0$, and $L - M$ is linear, it suffices to prove that if $D: Hom(\mathbb{R}^n, \mathbb{R}^p)$ and $\gamma(h) \to 0$ and $h \to 0$ and $D(h) = \gamma(h) \|h\|$ for all $h$, then $D$ is the zero function. This will prove that $L = M$.

For any $u \neq 0$, and for every $t > 0$, we have

$$D(u) = \gamma(tu) \|u\|$$

Since $lim_{t \to 0} \gamma(tu) = 0$, we have

$$D(u) = \|u\| lim_{t \to 0} \gamma(tu) = 0$$



## Corollary
We speak of **the derivative** of $f$ at $a$, denoted $Df(a)$. From the previous theorem, we also have $Df(a)[u] = D_u f(a)$. So if $f$ is differentiable at $a$, then every directional derivative at $a$ exists.


## Definition of function increment
For any $f: A \to \mathbb{R}^p$ and $h \in \mathbb{R}^n$ such that $a \in A$ and $a + h \in A$, we define

$$\Delta f(a; h) = f(a + h) - f(a)$$

Then $\Delta f(a;h) = Df(a) + \alpha(h) \|h\|$ for some $\alpha$ which has $\alpha(h) \to 0$ as $h \to 0$.


## Differentiable implies continuous
If $f: A \to \mathbb{R}^p$ is differentiable at $a$, then $f$ is continuous at $a$.

*Proof:*

 1. $lim_{h \to 0} f(a + h) - f(a) = 0$

    *Proof:* $f(a+h) - f(a) = Df(a)(h)  + \alpha(h)$ for some $\alpha \in o(1)$. So the statement holds by previous proved propositions showing $lim_{h \to 0} Df(a)(h) = 0$ (since $Df(a)$ is linear) and $lim_{h \to 0} \alpha(h) = 0$.

 2. Q.E.D.

    *Proof:* (1) gives us $lim_{h \to 0} f(a + h) = f(a)$. It is straightforward to prove that $lim_{x \to a} f(x) = f(a)$.


## Functions differentiable iff component functions are differentiable
If $f: A \to \mathbb{R}^p$ for $A \subseteq \mathbb{R}^n$, $a \in int(A)$, then $Df(a)$ exists iff $f_i := pi_i \circ f$ is differentiable at $a$ for each $i$ with $1 \leq i \leq p$. In either case, we have $Df(a)[x] = (D f_1(a)[x], \ldots, D f_p(a)[x])$.

*Proof:* If $f$ differentiable at $a$, then let

$$Df(a)_i := \pi_i \circ Df(a)$$

$$\alpha_i := \pi_i \circ \alpha$$

Then if $Df(a)$ exists, then $f_i(a + h) - f_i(a) = Df(a)_i(h) + \alpha_i(h)$ for all $i$. $\alpha_i \in o(1)$ as well since $\alpha \in o(1)$ implies that for all $\epsilon > 0$ there is a $\delta$ such that for all $h$ with $\|h\| < \delta$, $\| \alpha(h) \| < \epsilon \|h \|$, hence $| \alpha_i(h) | < \epsilon \|h\|$ as well. Since $\pi_i$ is linear, $Df(a)_i$ is linear as well. Hence $Df(a)_i = D f_i(a)$, so each $f_i$ is differentiable at $a$.

Conversely, if $D f_i(a)$ exists for all $i$, then each $D f_i(a) \in Hom(\mathbb{R}^n, \mathbb{R})$, so the "cartesian product" defined by $L(h) = (D f_1(a)(h), \ldots, D f_p(a)(h))$ is linear as well. If we can prove that the cartesian product $\alpha(h) := (\alpha_1(h), \ldots, \alpha_p(h))$ is infinitesimal w.r.t. $h$, then we will have that $Df(a) = L$ exists. But we can find a $\delta$ such that for all $h$ with $\|h\| < \delta_i$, $| \alpha_i(h) | < \epsilon \|h\| / \sqrt{p}$. So for all $h$ with $\|h\| < \delta = min \{\delta_1, \ldots, \delta_p\}$, $\| \alpha(h) \| = \sqrt{\sum_1^p | \alpha_i(h) |^2} \leq \epsilon \|h\|$, proving that $L = Df(a)$.


### Corollary
If $f: A \to \mathbb{R}^p$ for $A \subseteq \mathbb{R}^n$, $a \in int(A)$, then for any $u \neq 0$, $D_u f(a)$ exists iff for every component function $f_i$, $D_u f_i(a)$ exists.

*Proof:*  Let $B = \{ t \in \mathbb{R} : a + tu \in A \}$, $\phi: B \to \mathbb{R}^p$ defined by $t \mapsto f(a + tu)$.

If $D_u f(a)$ exists, then we already know from a previous proposition that $D_u f(a) = D \phi(0)$. So defining $\phi_i = \pi_i \circ \phi$, we know (from what was just proved) that $D \phi_i(0)$ all exist. By definition of derivatives:

$$\phi_i(t) - \phi_i(0) = t D \phi_i(0) + \alpha(t)$$

such that $\alpha \in o(1)$. This implies that

$$lim_{t \to 0} \frac{\phi_t(t) - \phi_i(0)}{t} = D \phi_i(0)$$

However, $\phi_i(t) = f_i(a + tu)$, so $D \phi_i(0) = D_u f_i(a)$.


Conversely, (TODO: prove this?) $\alpha: B \to \mathbb{R}$ defined by $\alpha(t) = f_i(a + tu) - f(a) - D_u f_i(a) t$ has $\alpha \in o(1)$. So the function which assigns $t \mapsto f(a + tu) - f(a) - D_u f(a) t$ has each component function in $o(1)$. TODO: prove that this means the function is in $o(1)$, hence $D_u f(a) = (D_u f_1(a), \ldots, D_u f_p(a)$.

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
If $f, g : A \to \mathbb{R}^p$, $A \subseteq \mathbb{R}^n$, $a \in int(A)$, $c \in \mathbb{R}$, then if $Df(a)$ and $Dg(a)$ exist, $D(f+g)(a)$ and $D(cf)(a)$ also exist. and $D(f+g)(a) = Df(a) + Dg(a)$ and $D(cf)(a) = c Df(a)$.

*Proof:* We know that $Df(a) + Dg(a)$ is linear. By hypothesis there are $\alpha, \beta: Diff(a, a) \to \mathbb{R}^p$ such that $\alpha, \beta \in o(1)$.  But $\alpha + \beta \in o(1)$ as well, which along with $(f+g)(a + h) - (f+g)(a) = Df(a)(h) + Dg(a)(h) + \alpha(h) + \beta(h)$ proves that $Df(a) + Dg(a) = D(f+g)(a)$.

Also, $cf(a+h) - cf(a) = c Df(a)(h) + c \alpha(h)$, and since $c \alpha \in o(1)$, we have $c Df(a) = D (cf)(a)$.


## Derivative of a restriction
If $A \subseteq \mathbb{R}^n$, $f: A \to \mathbb{R}^p$, and $a \in int(A)$ with $Df(a)$ existing, then if $B \subseteq A$ such that $a \in int(B)$, then for $g := f|B$,  $D(g)(a)$ exists and equals $Df(a)$.

*Proof:* For all $h \in diff(B, a)$, $h \in diff(A, a)$, so $g(a+h) - g(a) = f(a+h) - f(a) = Df(a) + \alpha(h)$ for $\alpha$ infinitesimal w.r.t. $h$, which proves the statement.



## Definition of local extrema
If $(X, d)$ is a metric space and $f: X \to \mathbb{R}$, then $f$ has a **local maximum** at $a \in X$ if there is some $\delta > 0$ such that for all $x \in B(a; \delta)$ we have $f(x) \leq $f(a)$. $f$ has a **local minimum** at $a$ iff there is a $\delta$ such that $f(x) \geq f(a)$ for all $x \in B(a; \delta)$. Both local maxima and local minima are called **local extrema**.

## Characterizing local extrema
If $f: [a, b] \to \mathbb{R}$ has a local extremum at $c \in (a, b)$ and is differentiable at $c$, then $Df(c) = 0$.

*Proof:* If $f$ has a local maximum at $c$, then there is some $\delta > 0$ such that $\Delta f(c; h) \leq 0$ for all $h \in \mathbb{R}$ such that $|h| < \delta$. For all such $h$ we have the function defined by

$$\psi(h) := \Delta f(c; h) - Df(c)h$$

has $\psi o_0(1)$. Hence for all $\epsilon > 0$ there is a $\gamma$ such that for all $0 < |h| < min \{ \delta, \gamma \}$, $| \psi(h) | < \epsilon |h|$ and $\Delta f(c; h) \leq 0$. 

If $Df(c) > 0$, then for all $h$ with $0 < h < \delta $, | \psi(h) | \geq |Df(c)| |h|$ since $Df(c)h > 0$. This contradicts $\psi$ being $o_0(1)$.

If $Df(c) < 0$, then for all $h$ with $0 > h > - \delta $, | \psi(h) | \geq |Df(c)| |h|$ since, once again, $Df(c)h > 0$. This again contradicts $\psi$ being $o_0(1)$.

Hence $Df(c) = 0$.

If $f$ has a local minimum at $c$ instead, $g(x) := -f(x)$ has a local maximum at $c$, $g(a + h) - g(a) = f(a) - f(a + h) = - Df(c)h - \psi(h)$, so $Dg(c) = -Df(c)$. Hence by what was just proved, $Df(c) = 0$.



## Rolle's theorem
If $f: [a, b] \to \mathbb{R}$ for $a < b$ is continuous and differentiable on $(a, b)$ such that $f(a) = f(b)$, then there is a $c \in (a, b)$ such that $Df(c) = 0$.

*Proof:* We know that $f$, being a continuous function defined on a compact set, takes on a minimum and maximum value at some input. If both minimum and maximum are on $a$ (and hence $b$), then the function must be constant. So $c = (a+b)/2$ works.

Otherwise $f$ either has a maximum or a minimum on a point in $(a,b)$, so the local extremum theorem applies, giving us what we want.

## Mean value theorem
If $f: [a, b] \to \mathbb{R}$ for $a < b$ is continuous and differentiable on $(a, b)$, then there is a $c \in (a, b)$ such that $Df(c) = [f(b) - f(a)]/(b - a)$

*Proof:* Let $k = [f(b) - f(a)]/(b - a)$. Then $g: [a, b] \to \mathbb{R}$ defined by $g(x) = f(x) - \phi(x)$, where $\phi: [a, b] \to \mathbb{R}$ defined by $\phi(x) = k(x-a)$ is continuous since $\phi$ is and differentiable on $(a, b)$ since $\phi$ is. But $g(b) = f(b) - k(b-a)  = f(b) - (f(b) - f(a)) = f(a) = g(a)$, so Rolle's theorem applies to find a $c$ such that $Dg(c) = 0$. But $Dg(c) = Df(c) - D \phi(c)$, so $Df(c) = D \phi(c) = k = [f(b) - f(a)]/(b-a)$.



TODO: factor out part of the proof below? if the line segment $[a, b] \subseteq \mathbb{R}^n$ is such that for $f: A \subseteq \mathbb{R}^n \to \mathbb{R}^p$ and $A$ is open and the directional derivative for $b - a$ exists everywhere on $A$,

hmm, only useful for applying MVT. how many times do we need to do this?



## Continuous partial derivatives implies differentiable
If

 - $A \subseteq \mathbb{R}^n$
 - $a \in int(A)$ 
 - $f: A \to \mathbb{R}$

then if there is some $\epsilon > 0$ such that 

 - for all $x \in B(a; \epsilon)$, $D_i f(x)$ exists for all $i$, $1 \leq i \leq n$
 - each function $g_i: B(a; \epsilon) \to \mathbb{R}$ defined by $g_i(x) = D_i f(x)$ is continuous at $a$

then $f$ is differentiable at $a$.

 1. Let $p_0, \ldots, p_n: B(0; \epsilon) \to \mathbb{R}^n$ be defined by for all $h = \sum_1^n h_i e_i \in B(0; \epsilon)$:

    $$p_0(h) = a$$
    $$p_k(h) = p_{k-1}(h) + h_k e_k$$

 2. Each $p_k(h)$ is an element of $B(a; \epsilon)$.

    *Proof:* $p_k(h) = a + \sum_1^k h_j e_j$, so by the pythagorean theorem, $\| \sum_1^k h_j e_j \|^2 \leq \|h\|^2$, so $p_k(h) \in B(a; \epsilon)$.

 3. $f(a+h) - f(a) = \sum_1^n f(p_k(h)) - f(p_{k-1}(h))$.

    *Proof:* $\sum_1^n f(p_k(h)) - f(p_{k-1}(h)) = f(p_n(h)) - f(p_0(h)) = f(a+h) - f(a)$ by definition in (1)

 4. Let $\psi_j^h: [0, h_j] \to \mathbb{R}$ be defined by $\psi_j^h(t) = f(p_{j-1}(h) + t e_j)$ for $1 \leq j \leq n$.

 5. For all $j$, $\psi_j^h(0) = f(p_{j-1}(h))$ and $\psi_j^h(h_j) = f(p_j(h))$. 

    *Proof:* By definition in (1)

 6. Each $\psi_j^h$ is continuous on $[0, h_j]$ and differentiable on $(0, h_j)$

    *Proof:*  Since $p_{j-1}(h)$, $p_j(h)$ are in $B(a; \epsilon)$ by (2), we can find $\delta$ and $\gamma$ such that $p_{j-1} - \delta e_j$ and $p_j + (h_j + \gamma) e_j$ are in $B(a; \epsilon)$ as well. So the function $[- \delta, h_j + \gamma] \to \mathbb{R}$ defined by $t \mapsto f(p_{j-1} + t e_j)$ is differentiable on $[0, h_j]$ since its derivative at $t$ is $D_j f(a + t e_j)$, which exists everywhere in $B(a; \epsilon)$. So this function is continuous on that interval since it is differentiable, and $\psi_j^h$ is a restriction of this function to $[0, h_j]$, so it is continuous on its domain and differentiable on $(0, h_j)$.

 7. For each $h \in B(0; \epsilon)$ and each $j$, there is a $c_j \in \mathbb{R}$ such that  $D \psi_j^h(c_j) h_j = \psi_j^h(h_j) - \psi_j^h(0)$.

    *Proof:* By (6) and the mean value theorem.

 8. Define a function $c_j: h \mapsto c_j(h)$ such that $D \psi_j^h(c_j(h)) h_j = \psi_j^h(h_j) - \psi_j^h(0)$.

    *Proof:* Such $c_j$'s exist for each $j$ and each $h$ by (7)

 9. Define, for all $j$, $q_j: B(0; \epsilon) \to \mathbb{R}^n$, $q_j(h) = p_{j-1}(h) + c_j(h) e_j$. 

 10. For any $h \in B(0; \epsilon)$ and $j$ such that $1 \leq j \leq n$, $f(a + h) - f(a) = \sum_1^n D_j f(q_j(h)) h_j$.

     *Proof:* $f(a+h) - f(a) = \sum_1^n f(p_k(h)) - f(p_{k-1}(h))$ holds by (3), so by (7) and the definition of the $\psi_j^h$'s it holds.


Recall the definition of the derivative, if it exists: $f(a + h) - f(a) = Df(a)(h) + \alpha(h)$, where $\alpha \in o_0(1)$.

We know that $Df(a)$ should be defined such that $Df(a)(e_j) = D_j f(a)$. So our candidate for the derivative is $Df(a)(h) = \sum_1^n D_j f(a) h_j$.

To prove that this is the derivative, we must prove that $\alpha$ defined by

$$\alpha(h) = \sum_1^n D_k f(q_k(h)) h_k - D_k f(a) h_k$$

is such that $\alpha \in o_0(1)$.

But $p_k(h) \to a$ as $h \to 0$, and $c_k(h) \to 0$ as $h \to 0$, so $q_k(h) \to a$ as $h \to 0$. 


$$\alpha(h) \leq \sum_1^n [D_j f(q_j(h)) - D_j f(a)] \|h\|$$

Since $D_j f$ is continuous at $a$, for every $\epsilon$, there is a $\delta$ such that for all $x \in B(a; \delta)$,  $|D_j f(x) - D_j f(a)| < \epsilon / n$.

But also there is a $\gamma$ such that for all $0 < \|h\| < \gamma$, $\| q_j(h) - a \|  < \delta$. So for all $h$ with magnitudes smaller than $\gamma$,

$$\| D_j f(q_j(h)) - D_j f(a) \| < \epsilon / n$$

So for the same $h$, $| \alpha(h)| < \epsilon \|h\|$.



### Corollary
If $f: A \to \mathbb{R}^p$ with $A \subseteq \mathbb{R}^n$ and $a \in int(A)$, then if there is some $\epsilon > 0$ such that for all $x \in B(a; \epsilon)$, $D_i f(x)$ exists for all $i$, $1 \leq i \leq n$, and if each function $g_i: B(a; \epsilon) \to \mathbb{R}^p$ defined by $g_i(x) = D_i f(x)$ is continuous at $a$, then $f$ is differentiable at $a$.

*Proof:* Previous propositions show that each component function $f_i: A \to \mathbb{R}$ has every partial derivative existing at every point of $B(a; \epsilon)$. To use the previous theorem, we just need to prove that for every $j$,

$\pi_j \circ g_i$ maps $x \mapsto D_i f_j(x)$

since this would imply that the function is a composition of continuous functions and hence continuous. $g_i(x) = D_i f(x)$, so indeed the $j$-th component is the $i$-th partial derivative of $f_j$.


## Definition of continuously differentiable
A function $f: U \to \mathbb{R}^p$, $U$ open in $\mathbb{R}^n$ is said to be **continuously differentiable** or a $C^1$ mapping iff every partial derivative exists at every point of $U$ and each function $D_j f: U \to \mathbb{R}^p$ is continuous.

To go along with this, $f$ is said to be $C^0$ iff it is continuous.



## Chain rule
If $U \subseteq \mathbb{R}^n$, $V \subseteq \mathbb{R}^p$, $f: U \to V$, $g: V \to \mathbb{R}^q$, $a \in U$, $f$ is differentiable at $a$, $g$ is differentiable at $b = f(a)$, then $g \circ f$ is differentiable at $a$ and $D(g \circ f)(a) = $D g(b) \circ D f(a)$.

*Proof:* For all $h \in diff(U, a)$, we have:

$$(g \circ f)(a + h) - (g \circ f)(a) = g(f(a+h)) - g(f(a)) = g(b + \Delta f(a;h)) - g(b)$$

But $g(b + \Delta f(a; h)) - g(b) = Dg(b)(\Delta f(a; h)) + \beta(\Delta f(a; h)) \|h\|$ for some $\beta(h) \to 0$ as $h \to 0$.

Since $\Delta f(a; h) = Df(a)(h) + \alpha(h) \|h\|$ for some $\alpha(h) \to 0$ as $h \to 0$, we have:

$$(g \circ f)(a + h) - (g \circ f)(a) = Dg(b)(Df(a)(h) + \alpha(h) \|h\|) + \beta(\Delta f(a;h)) \|h\|$$

Since our candidate for $D(g \circ f)(a)$ is $Dg(b) \circ Df(a)$, we would like to prove (by linearity):

$$Dg(b)(\alpha(h) \|h\|) + \beta(\Delta f(a;h)) \|h\|$$

is in $o(1)$. Using linearity of $Dg(b)$ again, we have to prove that

$$h \mapsto Dg(b(\alpha(h)) + \beta(\Delta f(a; h))$$

has a limit of $0$ as $h \to 0$.

But we can apply composite function limit law to $Dg(b) \circ \alpha$ since $Dg(b)$ is continuous at $0$ (since $Dg(b)(h) \to 0$ as $h \to 0$ and because $Dg(b)(0) = 0$ since $Dg(b)$ is linear), and since $\alpha(h) \to 0$ as $h \to 0$, we have $Dg(b)(\alpha(h)) \to 0$ as $h \to 0$.

Also, $\beta(h) \to 0$ as $h \to 0$ and $\beta(0) = 0$, so $\beta$ is continuous at $0$. $h \mapsto \Delta f(a; h)$ has a limit of $0$ as $h \to 0$ also, so again by function composition limit law the composite has a limit of $0$ as $h \to 0$. Then we use the regular additive limit law to prove the whole function goes to zero.



## Definition of a line segment
For $a, b \in \mathbb{R}^n$, the **line segment** $[a, b]$ is the set $\{ a + t(b - a) : t \in [0, 1] \}$.

## Multivariable mean value theorem
If $A$ open in $\mathbb{R}^n$, $f: A \to \mathbb{R}$ is differentiable, $A$ contains the line segment $[a, b]$, then there is a $t_0 \in \mathbb{R}$, $0 < t_0 < 1$ such that $c := a + t_0 (b - a)$ has $f(b) - f(a) = Df(c)(b-a)$.

*Proof:* By letting $\phi: (- \epsilon, 1 + \delta) \to \mathbb{R}$ be defined by $\phi(t) = f(a + t(b-a))$ where $\epsilon$ and $\delta$ are such that $a - \epsilon (b - a)$ and $a + \delta(b - a)$ are in $A$, we see that $\phi = f \circ g$, where $g: (- \epsilon, 1 + \delta) \to A$ defined by $g(t) = a + t(b-a)$. $g$ is of course differentiable, and $Dg(t) = b-a$ for all $t$. By the chain rule, $D \phi (t) = Df(a + t(b-a)) \circ D g(t)$ for all $t \in (- \epsilon, 1 + \delta)$. So the restriction of $\phi$ to $[0, 1]$, call it $\psi$, is continuous and differentiable on $(0, 1)$. We can apply the mean value theorem for functions $\mathbb{R} \to \mathbb{R}$ to obtain a $t_0 \in (0, 1)$ such that $D \psi(t_0) = f(b) - f(a) = Df(a + t_0(b-a)) [b - a]$.

# Introduction
This is woefully incomplete. I'm making this first as a place to stash my notes on countable sets.


## Definition of countable
A set $X$ is **countable** iff it is bijective with a subset of $\mathbb{N}$. That is, $X$ is countable iff it is finite or countably infinite.

## Equivalent characterization of countable
A set $X$ is countable iff there is an injective function $f: X \to \mathbb{N}$ iff there is a surjective function $g: \mathbb{N} \to X$.

*Proof:* The first iff is clear since from any injective function we can be manufacture a bijection by restricting the codomain so the image. The second iff holds because a function is injective iff it has a left inverse, and a function is surjective iff it has a right inverse.

## The integers are countable
$\mathbb{Z}$ is countable

*Proof:* $f: \mathbb{Z} \to \mathbb{N}$ defined by $k \mapsto 2k - 1$ for positive $k$ and $k \mapsto 2k$ for non-positive $k$ is a bijection.

## The rationals are countable
$\mathbb{Q}$ is countable.

*Proof:* First, $\mathbb{Z}^2$ is countable by previously proved propositions. For every $q \in \mathbb{Q}$, there are $a, b \in \mathbb{Z}$, $b > 0$, such that $a/b = q$. There are infinitely many such pairs, so pick $a_q$ and $b_q$ such that $gcd(a_q, b_q) = 1$. Then $q \mapsto (a_q, b_q)$ is injective, so we can compose it with the injective function $\mathbb{Z}^2 \to \mathbb{N}$ to obtain an injective function $\mathbb{Q} \to \mathbb{N}$.


## Finite cartesian product of countable set is countable
If $S_1, \ldots, S_n$ are countable, $\prod_1^n S_i$ is countable.

*Proof:* By definition there are functions $f_i: S_i \to \mathbb{N}$ that are injective. So construct a function $g: \prod_1^n S_i \to \mathbb{N}$ by

$$(s_1, \ldots, s_n) \mapsto \sum_1^n (p_i)^{f_i(s_i)}$$

where $p_i$ is the $i$-th prime number. The only way $g$ could fail to be injective is if

$$\sum_1^n (p_i)^{f_i(s_i)} = \sum_1^n (p_i)^{f_i(t_i)}$$

for some $(s_1, \ldots, s_n)$ and $(t_1, \ldots, t_n)$. Since primes have unique prime factorizations, the only way this happens is when $f_i(s_i) = f_i(t_i)$ for all $i$, but if that's true then $s_i = t_i$ since $f$ is injective. So $g$ is injective.


## Countable union of countable sets is countable
If $\{S_i : i \in I\}$ is a countably-indexed family of countable sets, then $P = \bigcup_{i \in I} S_i$ is countable.

*Proof:* For each $p \in P$ there is a set $J_p = \{i \in I : p \in S_i\}$. By the axiom of countable choice we have a choice function $g: P \to I$ such that for all $p$, $p \in S_{g(p)}$. By hypothesis there is, for each $i \in I$, a $f_i: S_i \to \mathbb{N}$ which is injective. Then define $h: P \to I \times \mathbb{N}$ by $h(p) = (g(p), f_{g(p)}(p))$. $h$ is injective because, in particular, the only way for $(g(p), f_{g(p)}(p)) = (g(q), f_{g(q)}(p))$ is if both $g(p) = g(q) = i$ and $f_i(p) = f_i(q)$, which implies $p = q$ since $f_i$ is injective. But $I \times \mathbb{N}$ is a finite product of countable sets, hence countable, so $h$ itself is injective.



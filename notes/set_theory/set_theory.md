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

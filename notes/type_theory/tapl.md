## Proof of generalized version of 3.2.6
If we have $(P, O, ar: O \to \mathbb{N}^+)$ where $P$ is a set of *primitives* and $O$ is a set of *operators*, then define $T$ to be the smallest set such that

 - $P \subseteq T$
 - for all $o \in O$, letting $n = ar(o)$, for any $(t_1, \ldots, t_n) \in T^n$, we have $(o, (t_1, \ldots, t_n)) \in T$.

Also define $S_0 = P$, $S_{k+1} = \{(o,t) : \exists o \in O, t \in (S_k)^{ar(o)}\}$ for all $k > 0$, and $S = \bigcup_k S_k$.

Then $S = T$.

*Proof:* Clearly by definition $P \subseteq S \cap T$, so $S_0 \subseteq T$. If $S_k \subseteq T$, then for any $(o, t) \in S_{k+1}$, $t \in (S_k)^n \subseteq T^n$, so $(o, t) \in T$, hence $S_{k+1} \subseteq T$. By induction, then, every $S_i \subseteq T$, so $S \subseteq T$. 

Conversely, $S$ is a set such that $P \subseteq S$. Also, if $o \in O$, $n = ar(o)$ and $(t_1, \ldots, t_n) \in S^n$, then let $k_1, \ldots, k_n$ be such that $t_i \in S_{k_i}$ for all $i$. Let k = max \{k_1, \ldots, k_n\}$. Then each $t_i \in S_k$, so $(o, t) \in S_{k+1}$ by definition. and hence in $S$ as well. So $S$ is a set satisfying the properties that $T$ satisfies. But $T$ is the smallest such set, so $T \subseteq S$.

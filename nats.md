# Notes on natural numbers

## Peano axioms for $\mathbb{N}$

The **natural numbers** are a set $(\mathbb{N}$ along with an operation $++: \mathbb{N} \to \mathbb{N}$ called the *increment* or *successor* operation such that:

 1. $0 \in \mathbb{N}$
 2. $n \in \mathbb{N}$ implies $n++$
 3. $\forall n \in N$, $n++ \neq 0$
 4. $++$ is an injective function ($m++ = n++$ implies $m = n$)
 5. (Induction) If $S \subseteq \mathbb{N}$ and a) $0 \in S$ and b) $n \in S$ implies $n++ \in S$, then $S = \mathbb{N}$.

This defines the naturals as the numbers you get when starting at zero and counting up. Axiom 3 ensures that the number system doesnt wrap back around to zero when counting up. Axiom 4 roughly ensures that every time we count one more, we get a new number and not some number we've already seen. Axiom 5 ensures that there are no numbers beyond what can be reached by starting at zero and counting up.

## Recursive definitions in $\mathbb{N}$

If $(f_n)$ is a sequence of functions $f_n: \mathbb{N} \to \mathbb{N}$ and $c \in \mathbb{N}$, then there is a unique function $g: \mathbb{N} \to \mathbb{N}$ assigning $g(0) = c$ and $g(n++) = f_n(g(n))$.

*Proof:* TODO $\Box$

## Addition in $\mathbb{N}$

There is a binary operation $+: \mathbb{N} \times \mathbb{N} \to \mathbb{N}$

We start out defining functions recursively: for every $m \in \mathbb{N}$, the function $g_m$ is defined by $g_m(0) = m$ and g_m(n++) = g_m(n)++$ (so each $f_n = ++$). These functions having been defined, we define a  by

  $$n + m = g_m(n)$$

We explicitly note here the two main properties of addition that we have defined:

 - $0 + m = m$
 - $(n++) + m = (n + m)++$


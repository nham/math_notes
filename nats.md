# Notes on natural numbers

## Peano axioms for $\mathbb{N}$

The **natural numbers** are a set $(\mathbb{N}$ along with an operation $++: \mathbb{N} \to \mathbb{N}$ called the *increment* or *successor* operation such that:

 1. $0 \in \mathbb{N}$
 2. $n \in \mathbb{N}$ implies $n++$
 3. $\forall n \in N$, $n++ \neq 0$
 4. $++$ is an injective function ($m++ = n++$ implies $m = n$)
 5. (Induction) If $S \subseteq \mathbb{N}$ and a) $0 \in S$ and b) $n \in S$ implies $n++ \in S$, then $S = \mathbb{N}$.

This defines the naturals as the numbers you get when starting at zero and counting up. Axiom 3 ensures that the number system doesnt wrap back around to zero when counting up. Axiom 4 ensures that different numbers have different successors. Axiom 5 ensures that there are no numbers beyond what can be reached by starting at zero and counting up.

## Definition of a sequence
A sequence in a set $X$ is any function $\mathbb{N} \to X$. Each natural number is assigned an element of $X$.

## One is the loneliest number
We define $1 := 0++$.

## Recursive definitions in $\mathbb{N}$

If $(f_n)$ is a sequence of functions $f_n: \mathbb{N} \to \mathbb{N}$ and $c \in \mathbb{N}$, then there is a unique function $g: \mathbb{N} \to \mathbb{N}$ assigning $g(0) = c$ and $g(n++) = f_n(g(n))$.

 1. It suffices to assume $X$ is the collection of all sets $S \subseteq \mathbb{N} \times \mathbb{N}$ such that $(0, c) \in S$ and for all elements $(n, x) \in S$, $(n++, f_n(x)) \in S$ as well, and to prove that $\bigcap X$ is a function.

 2. $X$ is non-empty.
    *Proof:* $\mathbb{N} \times \mathbb{N}$ is one set in $X$.

 3. For every $n \in \mathbb{N}$, there is a $x_n \in \mathbb{N}$ such that $(n, x_n) \in \bigcap X$.

     1. It suffices to assume $S$ is the set of $n \in \mathbb{N}$ such that there is an $x_n$ such that $(n, x_n) \in S$ and prove $S = \mathbb{N}$.
     2. $0 \in S$
        *Proof:* By definition of $X$, $(0, c)$ is an element of every set in $X$.
     3. If $n \in S$, then $n++ \in S$.
        *Proof:* There is some $x_n$ such that $(n, x_n) \in \bigcap X$. So $(n, x_n)$ is an element of every set in $X$. By the definition of $X$, $(n++, f_n(x))$ is an element of every set in $X$, hence is also an element of \bigcap X$.
     4. Q.E.D.
        *Proof:* $S = \mathbb{N}$ by induction.

 4. For all $n \in \mathbb{N}$, the $x_n$ such that $(n, x_n) \in \bigcap X$ is unique.

     1. It suffices to assume $T$ is the set of all $n \in \mathbb{N}$ such that there is a unique $x_n \in \mathbb{N}$ such that $(n, x_n) \in \bigcap X$ and prove $T = \mathbb{N}$
     2. $0 \in T$
        1. It suffices to assume that there is some $y \in \mathbb{N}$ such that $y \neq c$ but $(0, y) \in \bigcap X$, and then establish a contradiction.
           *Proof:* We know $(0, c) \in \bigcap X$, so such a $y$ is the only way $0$ coul fail to be in $T$.
        2. $\bigcap X \ {(0, y)}$ is an element of $X$
           TODO
        3. Q.E.D.
           *Proof:* (2) contradicts the definition of $\bigcap X$, since we found an element of $X$ that doesn't contain $\bigcap X$.
     3. If $n \in T$, then $n++ \in T$.
        TODO
     4. Q.E.D.
        *Proof:* $T = \mathbb{N}$ by induction.

 5. Q.E.D.
    *Proof:* (3) and (4) establish that $\bigcap X$ is a function. So $g = \bigcap X$.


## Addition in $\mathbb{N}$

There is a binary operation $+: \mathbb{N} \times \mathbb{N} \to \mathbb{N}$ such that

 - $0 + m = m$
 - $(n++) + m = (n + m)++$

 1. It suffices to prove, for all $m \in \mathbb{N}$, the existence of a function $g_m : \mathbb{N} \to \mathbb{N}$ such that

     - $g_m(0) = m$
     - $g_m(n++) = g_m(n)++$
    
    We then define $n + m := g_m(n)$.

 2. Each such function $g_m$ can be established via recursive definition.
    *Proof:* Recursively define $g_m$ by $g_m(0) = m$ and, for all $n \in \mathbb{N}$, $f_n = ++$.

 3. Q.E.D.
    *Proof:* Immediate from (2).


## Addition is associative
For all $k, m, n \in \mathbb{N}$, $(k + m) + n = k + (m + n)$.

 1. $(0 + m) + n = 0 + (m + n)$
    *Proof:* $(0 + m) + n = m + n = 0 + (m + n)$ by the definition of addition.

 2. if $(k + m) + n = k + (m + n)$, then $(k++ + m) + n = k++ + (m + n)$.
    *Proof:* $(k++ + m) + n = (k + m)++ + n = ((k + m) + n)++ = (k + (m + n))++ = k++ + (m + n)$ by definition of addition twice, the induction hypothesis, and the definition of addition once more.

 3. Q.E.D.
    *Proof:* By induction on $k$.


## Lemmas for proving addition commutativity.
*Commutativity lemma 1:* For all $m \in \mathbb{N}$, $m + 0 = m$.

 1. $0 + 0 = 0$
    *Proof:* Immediate from definition of addition.

 2. if $n + 0 = n$, then $n++ + 0 = n++$
    *Proof:* $n++ + 0 = (n + 0)++ = n++$ by definition of addition and the induction hypothesis, respectively.

 3. Q.E.D.
    *Proof:* By induction.


*Commutativity lemma 2:* For all $m, n \in \mathbb{N}$, $n + (m++) = (n + m)++$.

 1. $0 + (m++) = (0 + m)++$
    *Proof: $0 + (m++) = m++ = (0 + m)++$ because left addition by zero leaves the element unchanged.

 2. If $n + (m++) = (n + m)++$, then $(n++) + (m++) = (n++ + m)++$.
    *Proof:* $(n++ + m++) = (n + m++)++ = ((n + m)++)++ = (n++ + m)++ by definition of addition, induction hypothesis, definition of addition, respectively.

 3. Q.E.D.
    *Proof:* By induction.

### A corollary of the previous two
For all $n \in \mathbb{N}$, $n++ = n + 1$.

*Proof:* $n++ = (n + 0)++ = n + 0++ = 1$.


## Addition is commutative.
For all $m, n \in \mathbb{N}, $m + n = n + m$.

 1. $0 + m = m + 0$
    *Proof:* Immediately from the definition of addition and commutativity lemma 1.

 2. If $n + m = m + n$, then $n++ + m = m + n++$.
    *Proof:* $(n++ + m) = (n + m)++ = (m + n)++ = m + n++$ by definition, induction hypothesis, commutativity lemma 2, respectively.

 3. Q.E.D.
    *Proof:* By induction, since $m$ was arbitrary.


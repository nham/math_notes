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


## Definition of addition in $\mathbb{N}$

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

## Addition obeys the cancellation law
For all $k, m, n \in \mathbb{N}$, $k + m = k + n$ implies $m = n$.

 1. ($0 + m = 0 + n$) implies $m + n$.

    *Proof: Immediate from definition of addition.

 2. If ($k + m = k + n$) implies $m = n$, then ($k++ + m = k++ + n$) implies $m + n$.

     *Proof:* $(k++ + m) = (k + m)++$, and also $(k++ + n) = (k + n)++$ by definition. So we have $(k + m)++ = (k + n)$, which implies $k + m = k + n$ by injectivity of the increment operator, and hence $m = n$ by the induction hypothesis.

 3. Q.E.D.

    *Proof:* By induction.


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

*Proof:* $n++ = (n + 0)++ = n + 0++ = n + 1$.


## Addition is commutative.
For all $m, n \in \mathbb{N}, $m + n = n + m$.

 1. $0 + m = m + 0$

    *Proof:* Immediately from the definition of addition and commutativity lemma 1.

 2. If $n + m = m + n$, then $n++ + m = m + n++$.

    *Proof:* $(n++ + m) = (n + m)++ = (m + n)++ = m + n++$ by definition, induction hypothesis, commutativity lemma 2, respectively.

 3. Q.E.D.

    *Proof:* By induction, since $m$ was arbitrary.


## Definition of positive naturals

A number $n \in \mathbb{N}$ is said to be **positive** iff it isn't equal to $0$. The positive natural numbers are denoted $\mathbb{N}^+$

## Successor is strictly greater
If $n \in \mathbb{N}$, then $n < n++$.

*Proof:* n++ = n + 1.


## Positives are closed under addition of naturals
If $m \in \mathbb{N}^+$ and $n \in \mathbb{N}, then $(m + n) \in \mathbb{N}^+$.

 1. $m + 0 \in \mathbb{N}^+$

    *Proof:* $m + 0 = m$.

 2. If $(m + n) \in \mathbb{N}^+$, then $(m + n++) \in \mathbb{N}^+$.

    *Proof:* $(m + n++) = (m + n)++$, which must be in $\mathbb{N}^+$ since it is the successor of another natural number, and zero is not the successor of any natural number.

 3. Q.E.D.

    *Proof:* By induction.


### Corollary: only two zeroes can sum to zero
If $m, n \in \mathbb{N}$ and $m + n = 0$, then $m = 0 = n$.

 1. It suffices to assume $m \neq 0$ and prove that $m + n \neq 0$.

    *Proof:* There is no loss of generality by commutativity.

 2. Q.E.D.

    *Proof:* By the previous proposition, $m + n \neq 0$.


## Uniqueness of predecessor
If $m \neq 0$, then there is a unique $b \in \mathbb{N}$ such that $b++ = m$.

 1. It suffices to assume that $S$ is the set of all $n \in \mathbb{N}$ such that ($n = 0$ or ($n \neq 0$ and there's a unique $b$ such that $b++ = n$)).

 2. $0 \in S$

    *Proof:* By definition.

 3. If $n \in S$, then $n++ \in S$

    *Proof: $n$ is the predecessor of $n++$, and it must be unique by injectivity of the successor operation. Also, $n++ \neq 0$  since $0$ is not the successor of any element.

 4. Q.E.D.

    *Proof:* $S = \mathbb{N}$ by induction, so all nonzero elements have a unique predecessor by construction of $S$.


## Definition of $\leq$ on $\mathbb{N}$
For all $m, n \in \mathbb{N}$, we define $m \leq n$ iff $\exists a \in \mathbb{N}$ such that $m + a = n$. We also define $m < n$ iff $m \leq n$ and $m \neq n$. These relations are called **inequality** and **strict inequality**, respectively.


## Inequality is a partial order on $\mathbb{N}$
### Reflexive
For all $m \in \mathbb{N}$, $m \leq m$.

*Proof:* $m + 0 = m$.


### Antisymmetric
For all $m, n \in \mathbb{N}$, if both $m \leq n$ and $n \leq m$, then $m = n$.

 1. There exist $a, b \in \mathbb{N}$ such that $m + a = n$ and $n + b = m$.

    *Proof:* Definition of $\leq$

 2. $m + (a + b) = m$

    *Proof:* Substituting equation one equation from (1) into the other.

 3.  $a + b = 0$

    *Proof:* Cancellation law, since $m + 0 = m$.

 4. Q.E.D.

    *Proof:* By the corollary to "Positives are closed under addition of naturals", both $a = 0$ and $b = 0$. So $m = n$.


### Transitive
For all $k, m, n \in \mathbb{N}$, if $k \leq m$ and $m \leq n$, then $k \leq n$.

 1. There exist $a, b \in \mathbb{N}$ such that $k + a = m$ and $m + b = n$.

    *Proof:* Definition of $\leq$

 2. Q.E.D.

    *Proof:* $k + a + b = n$ by substitution of equations in (1), and (a + b) \in \mathbb{N}.


## Addition preserves order
For any $m, n, k \in \mathbb{N}$, then $m \leq n$ iff $m + k \leq n + k$

 1. $m \leq n$ implies $m + k \leq n + k$

    *Proof:*  By definition there is some $a$ such that $m + a = n$. So $m + k + a = n + k$.

 2. $m + k \leq n + k$ implies $m \leq n$.

    *Proof:* There is some $a$ such that $m + k + a = n + k$. We can reorder the additions (by commutativity and associativity) and use the cancellation law to obtain $m + a = n$.

 3. Q.E.D.

    *Proof:* (1) and (2) imply the statement.


## Strict inequality equivalents
## A positive gap
$m < n$ iff there is a $b \in \mathbb{N}^+$ such that $m + b = n$.

*Proof:* If $m < n$, then $m \leq n$ so there is some $b$ such that $m + b = n$. Also, $b \neq 0$ since $m \neq n$. Conversely, if $m + b = n$ for positive $b$, then $m \leq n$ by definition. We must have $m \neq n$, because otherwise $b = 0$ by the cancellation law, a contradiction.


### Room to grow
$m < n$ iff $m++ \leq n$

 1. It suffices to prove $m++ \leq n$ iff there's a $b \in \mathbb{N}^+$ with $m + b = n$.

    *Proof:* See the previous proposition, "A positive gap".

 2. $m++ \leq n$ implies that there's a $b \in \mathbb{N}^+$ with $m + b = n$

    *Proof:* $m++ \leq n$ implies $m + 1 \leq n$, which implies there is some $a \in \mathbb{N}$ with $m + 1 + a = n$, which implies that $m + a++ = n$. $a++$ is positive by the axioms of $\mathbb{N}$.

 3. If there's a $b \in \mathbb{N}^+$ with $m + b = n$, then  $m++ \leq n$

    *Proof:* If $m + b = n$ for positive $b$, then by the unique predecessor proposition, there's an $a \in \mathbb{N}$ such that $a++ = b$. So $n = m + a++ = m++ + a$, which is the definition of $m++ \leq n$.

 4. Q.E.D.

    *Proof:* (2) and (3).


## Transitivity of strict inequality
If $m < n$ and $n < k$ then $m < k$.

*Proof:* There are $a, b \in \mathbb{N}^+$ such that $m + a = n$ and $n + b = k$. So $m + a + b = k$. $(a + b) \in \mathbb{N}^+$ by closure of positives under addition. This establishes the statement.


## Trichotomy law for inequality on naturals
For any $m, m \in \mathbb{N}$, exactly one of these is true:

 A.  $m < n$
 B.  $m = n$
 C.  $n < m$

 1. For all $m, n \in \mathbb{N}, at most one of the 3 conditions is true.
    1. It suffices to assume that $m, n \in \mathbb{N}$ and prove that

       $$(m = n) \implies \not (m < n \or n < m)$$

       and
    
       $$(m < n) \implies \not (n < m)$$

       *Proof:* The first statement implies both that when (B) holds, neither (A) nor (C) could hold, and that when (A) or (C) hold, (B) could not hold. The only thing that remains is to establish that (A) and (C) cannot hold simultaneously. But the second statement establishes both that (A) implies not (C) and that (C) implies not (A).

    2. $(m = n) \implies \not (m < n \or n < m)$

       *Proof:* Immediate from the definition of strict inequality

    3. $(m < n) \implies \not (n < m)$

       1. It suffices to assume both $m < n$ and $n < m$ are true and derive a contradiction.

       2. There is some $c \neq 0$ is such that $m + c = n$

          *Proof:* Because $m < n$, by the "A positive gap" proposition.

       3. There is some $d \in \mathbb{N}$ such that $n + d = m$

          *Proof:* From the definition of $n < m$.

       4. $c + d = 0$
          *Proof:* Substitution of (1.3.2) into (1.3.3) yields $m + c + d = m$. The cancellation law implies the statement.

       5. Q.E.D.

          *Proof:* (4) implies $c = 0$ via "Only two zeroes can sum to zero." corollary, which contradicts (1)..

 2. For all $m, n \in \mathbb{N}$, at least one of the 3 conditions is true

    1. It suffices to assume that $n \in \mathbb{N}$ and prove that for all $m \in \mathbb{N}$, at least one of the 3 conditions is true.

    2. $0 < n$ or $0 = n$

       *Proof:* $0 \leq n$ since $0 + n = n$. We also must have either $n = 0$ or $n \neq 0$. In either case, the statement follows.

    3. If there's an $m \in \mathbb{N}$ such that one of the three conditions is true for $m$ and $n, then the same is true for $m++$ and $n$.

       1. It suffices to prove the statement for each of these cases:

           - $m < n$
           - $m = n$
           - $n < m$

       2. Case $m < n$

          *Proof:* $m++ \leq n$, so either $m++ < n$ or $m++ = n$.

       3. Case $m = n$

          *Proof:* $n < m++$ because the successor is strictly greater.

       4. Case $n < m$

         *Proof:* $n < m++$ by transitivity of strict inequality.

    4. Q.E.D.
       *Proof:* (2) and (3) establish an induction on $n$.

 3. Q.E.D.

    *Proof:* (1) and (2)


## Induction above
For any $k \in \mathbb{N}$, if $S$ is a set such that $k \in S$ and $n \in S$ implies $n++ \in S$, then all $x \in \mathbb{N}$ such that $k \leq x$ have $x \in S$.

 1. It suffices to assume 

     - $k > 0$
     - $T$ is the set of $n \in \mathbb{N}$ such that $n < k$ or $n \in S$.

    and prove $T = \mathbb{N}$.

    *Proof:* If $k = 0$, then $S = \mathbb{N}$ by regular induction. Also, if such a set $T$ is established, then all $n \geq k$ must lie in $S$.

 2. $0 \in T$

    *Proof:* It follows from the assumption in (1) that $k > 0$.

 3. If $n \in T$, then $n++ \in T$.
 
    1. It suffices to prove the statement for each case:

        - $n++ < k$
        - $n++ = k$
        - $n++ > k$

       *Proof:* Trichotomy law for $\mathbb{N}$

    2. Case $n++ < k$ 

       *Proof:* $n++ \in T$ by definition.

    3. Case $n++ = k$

       *Proof:* $n++ \in S$ by definition, so $n++ \in T$.

    4. Case $n++ > k$

       1. There is a positive $d$ such that $k + d = n++$

          *Proof:* By "A positive gap" proposition.

       2. There is a $c \in \mathbb{N}$ such that $c++ = d$

          *Proof:* Positive naturals have unique predecessors.

       3. $(k + c)++ = n++$
         
          *Proof:* Substitution of (2) into (1) yields $(k + c)++ = k + c++ = n++$.

       4. $k \leq n$

          *Proof:* (3) implies $k + c = n$

       5. Q.E.D.

          *Proof:* $n \in S$ by definition of $S$, so $n++ \in S$ as well.

 4. Q.E.D.
    *Proof:* (2) and (3) establish the induction.


## Strong induction for $\mathbb{N}$
TODO

## Definition of multiplication in $\mathbb{N}$

There is a binary operation $\cdot: \mathbb{N} \times \mathbb{N} \to \mathbb{N}$ such that

 - $0 \cdot m = 0$
 - $(n++) \cdot m = (n \cdot m) + m$

 1. It suffices to assume $m \in \mathbb{N}$ and prove the existence of a function $g_m : \mathbb{N} \to \mathbb{N}$ such that

     - $g_m(0) = 0$
     - for all $n \in \mathbb{N}$, $g_m(n++) = g_m(n) + m$

    *Proof:* Given such functions $g_m$, we define $n \cdot m := g_m(n)$.

 2. Q.E.D.

    *Proof:* Recursively define $g_m$ by $g_m(0) = 0$ and, for all $n \in \mathbb{N}$, $f_n(x) := x + m$.


## Lemmas for proving multiplication commutativity
*Commutativity lemma 1:* For all $m \in \mathbb{N}$, $m \cdot 0 = 0$.

 1. $0 \cdot 0 = 0$

    *Proof:* Immediate from definition of addition.

 2. if $n \cdot 0 = 0$, then $n++ \cdot 0 = 0$

    *Proof:* $n++ \cdot 0 = (n \cdot 0) + 0 = 0 + 0 = 0$ by definition of addition, the induction hypothesis, and (1),  respectively.

 3. Q.E.D.

    *Proof:* By induction.


*Commutativity lemma 2:* For all $m, n \in \mathbb{N}$, $n \cdot (m++) = (n \cdot m) + n$.

 1. $0 \cdot (m++) = (0 \cdot m) + 0$

    *Proof: $0 + (m++) = 0 = (0 \cdot m) + 0$ by commutativity lemma 1.

 2. If $n \cdot (m++) = (n \cdot m) + n$, then $(n++) \cdot (m++) = (n++ \cdot m) + n++$.

    *Proof:* $(n++ \cdot m++) = (n \cdot m++) + m++ = (n \cdot m + n) + m++ = n \cdot m + (n++) + m = (n++ \cdot m) + n++$ by definition, induction hypothesis, properties of addition and definition, respectively.

 3. Q.E.D.

    *Proof:* By induction.


## Multiplication is commutative.
For all $m, n \in \mathbb{N}, $m \cdot n = n \cdot m$.

 1. $0 \cdot m = m \cdot 0$

    *Proof:* Immediately from the definition of multiplication and commutativity lemma 1.

 2. If $n \cdot m = m \cdot n$, then $n++ \cdot m = m \cdot n++$.

    *Proof:* $(n++ \cdot m) = (n \cdot m) + m = (m \cdot n) + m = m \cdot n++$ by definition, induction hypothesis, commutativity lemma 2, respectively.

 3. Q.E.D.

    *Proof:* By induction, since $m$ was arbitrary.


## Multiplication in $\mathbb{N}$ has no zero divisors
If $m \cdot n = 0$, then $m = 0$ or $n = 0$.

 1. It suffices to assume $m \in \mathbbb{N}$ is positive and prove

    $$m \cdot n > 0$$
 
    for all positive $n \in \mathbb{N}$.

    *Proof:* This is the contrapositive.

 2. $m \cdot 1 > 0$
    
    *Proof:* $m \cdot 1 = m \cdot 0 + m = 0 + m = m$

 3. If $m \cdot n > 0$, then $m \cdot n++ > 0$

    *Proof:* $m \cdot n++ = m \cdot n + m$, which implies $ m \cdot n++ > m \cdot n > 0$.

 4. Q.E.D.

    *Proof:* (2) and (3) establish, by "induction above", every positive $n$ has $m \cdot n > 0$.


## Multiplication distributes over addition in $\mathbb{N}$
For all $k, m, n \in \mathbb{N}$, $k \cdot (m + n) = k \cdot m + k \cdot n$.

 1. It suffices to assume $m, n \in \mathbb{N}$ and to prove, for all $k \in \mathbb{N}$ that the statement holds.

 2. $0 \cdot (m + n) = 0 \cdot m + 0 \cdot n$

    *Proof:* Both sides equal $0$ by definition.

 3. If $k \cdot (m +n) = k \cdot m + k \cdot n$, then $k++ \cdot (m + n) = k++ \cdot m + k++ \cdot n$.

    *Proof:*  $k++ \cdot (m + n) = k \cdot (m + n) + (m + n) = k \cdot m + k \cdot n + m + n = k++ \cdot m + k++ \cdot n$, by definition, induction hypothesis, and definition, respectively.

 4. Q.E.D.

    *Proof:* Induction via (2) and (3).

## Multiplication is associative
For all $k, m, n \in \mathbb{N}$, $(k \cdot m) \cdot n = k \cdot (m \cdot n)$.

 1. It suffices to assume $m , n \in \mathbb{N}$ and prove the statement for all $k \in \mathbb{N}$.

 2. $(0 \cdot m) \cdot n = 0 \cdot (m \cdot n)$

    *Proof:* Both sides equal $0$ by definition.

 3. if $(k \cdot m) \cdot n = k \cdot (m \cdot n)$, then $(k++ \cdot m) \cdot n = k++ \cdot (m \cdot n)$.

    *Proof:* $(k++ \cdot m) \cdot n = ((k \cdot m) + m) \cdot n = (k \cdot m) \cdot n + m \cdot n = k \cdot (m \cdot n) + m \cdot n = k++ \cdot (m \cdot n)$ by definition, distributivity, induction hypothesis and definition, respectively.

 4. Q.E.D.

    *Proof:* Induction via (2) and (3)


## Multiplication preserves order
For $k, m, n \in \mathbb{N}$, if $m \leq n$, then $k \cdot m \leq k \cdot n$.

*Proof:* Since $m \leq n$, there is a $b \in \mathbb{N}$ with $m + b = n$. So $k \cdot n = k \cdot (m + b) = k \cdot m + k \cdot b$. This establishes that $k \cdot m \leq k \cdot n$.


## Multiplication preserves strict order
For $m, n \in \mathbb{N}$ and positive $k$, if $m < n$, then $k \cdot m < k \cdot n$.

*Proof:* There is a positive $d$ such that $m + d = n$, so $km + kd = kn$ by distributivity. Neither $k$ nor $d$ are zero, so $kd > 0$. So $km < kn$.


### Corollary: Cancellation law for multiplication
For all $m, n \in \mathbb{N}$ and $k \in \mathbb{N}^+$, if $k \cdot m = k \cdot n$, then $m = n$.

 1. It suffices to assume

     - $m, n \in \mathbb{N}$
     - $k \in \mathbb{N}^+$
     - $k \cdot m = k \cdot n$

    and prove that both $m < n$ and $m > n$ lead to contradiction

    *Proof:* By Trichotomy law.

 2. Case $m < n$

    *Proof:* This implies $km < kn$, contradicting (1)

 3. Case $m > n$

    *Proof:* This implies $km > kn$, contradicting (1)

 4. Q.E.D.

    *Proof:* (2) and (3) establish the statement.


### Euclidean division theorem for $\mathbb{N}$
For any $n \in \mathbb{N}$, $d \in \mathbb{N}^+$, there exist unique $k, r \in \mathbb{N}$ with $0 \leq r < d$ such that

$$n = k \ cdot d + r$$


 1. It suffices to assume $q \in \mathbb{N}^+$ and prove for all $n \in \mathbb{N}$ that the statement is true.

 2. The statement is true for $n = 0$.

    *Proof:* We need to prove that there exist unique $k, r$ such that $k \cdot d + r = 0$. We must have $r = 0$ since otherwise the left hand side would be positive. So k \cdot d = 0$. But this implies $k = 0$, since by hypothesis $q \neq 0$.

 3. If the statement is true for $n$, it is true for $n++$.

    1. It suffices to assume $k_0, r_0$ are the unique naturals such that $n = k_0 \cdot d + r_0$ (with $0 \leq r_0 < d$) and to assume $r_0++ \neq d$.


        - $r_0++ = d$
        - $r_0++ \neq d$


    2. Case $r_0++ = d$

       1. $n++ = k_0++ \cdot d$

          *Proof:* $n++ = k_0 \cdot d + r_0++ = k_0 \cdot d + d = k_0++ \cdot d$

       2. If $n++ = k \cdot d + r$ for some $k$ and $r$ with $0 \leq r < d$, then $k = k_0++$ and $r = 0$.

          1. If $r = 0$, then $k = k_0++$

             *Proof:* $n++ = k \cdot d = k_0++ \cdot d$. $q > 0$, so by cancellation $k = k_0++$.

          2. It is not the case that $r \neq 0$
             1. It suffices to assume $r \neq 0$ and derive a contradiction.

             2. There is an $s \in \mathbb{N}$ such that $s++ = r$, 

                *Proof:* $r$ is positive, so it has a predecessor.

             3. $n = k \cdot d + s$

                *Proof:* $n++ = k \cdot d + r = k \cdot d + s++$, implying $n = k \cdot d + s$. 

             4. Q.E.D.

                *Proof:* By the induction hypothesis (3), $k = k_0$ and $s = r_0$, so $r = s++ = r_0++ = d$. This contradicts the assumption that $r < d$.

       3. Q.E.D.

          *Proof:* (3.2.1) and (3.2.2) prove existence and uniqueness of the solution pair.


    3. Case $r_0++ \neq d$
       1. $n++ = k_0 \cdot d + r_0++$

          *Proof:* This solution clearly works since $0 \leq r_0++ < d$.

       2. If $n++ = k \cdot d + r$ for some $k$ and $r$ with $0 \leq r < d$, then $k = k_0$ and $r = r_0++$.

          1. If $r = 0$ then a contradiction follows.

             1. There exists $p \in \mathbb{N}$ with $p++ = d$

                *Proof:* $q > 0$ by hypothesis, so it has a predecessor.

             2. There exists $j in \mathbb{N}$ with $j++ = k$.

                *Proof:* $n++ = k \cdot d, so $k > 0$ since $n++ > 0$, so it has a predecessor.

             3. $n = j \cdot d + p$
                *Proof:* n++ = j++ \cdot d = j \cdot d + d = j \cdot d + p++$ by (3.3.2.1.1) and (3.3.2.1.2) The statement follows.

             4. Q.E.D.

                *Proof:* The induction hypotheses and (3) imply $j = k_0$ and $p = r_0$, so $r_0++ = d$, contradicting our assumption.

          2. There is an $s \in \mathbb{N}$ such that $s++ = r$.

             *Proof:* (3.3.2.1) proves that $r$ is positive, so it has a predecessor.

          3. $k = k_0$ and $s = r_0$
             *Proof:* $n++ = k \cdot d + r_0++$, so $n = k \cdot d + s$. The statement follows from the induction hypothesis.


          4. Q.E.D.

             *Proof:* (3.3.2.3) proves that $k = k_0$ and $r = r_0++$.

       3. Q.E.D.
          *Proof:* (3.3.1) and (3.3.2) prove existence and uniqueness of the solution pair.


    4. Q.E.D.

       *Proof:* (3.2) and (3.3) prove both cases

 4. Q.E.D.
    *Proof:*  (2) and (3) complete the induction.

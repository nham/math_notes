# Finite dimensional vector spaces

## Definition of a group
A **group** is a tuple $(G, \circ, e)$ where $G$ is a set and $\circ: G \times G \to G$ such that

 - for all $a, b, c$ \in G$, $a \circ (b \circ c) = (a \circ b) \circ c$
 - for all $a \in G$, $a \circ e = e \circ a = a$
 - for all $a \in G$ there is a $b \in G$ with $a \circ b = b \circ a = e$

$e$ is called the **unit** of the group and the elements specified in the third axiom are called **inverses**.

## Unit is unique
If there's a $u \in G$ with $\forall g \in G$ $g \circ u = u \circ g = g$, then $u = e$.

*Proof:* $u = u \circ e = e$ by the properties of $e$ and the assumed properties of $u$.

## Inverses are unique
If $b$ and $c$ are inverses for an element $a$, then $b = c$.

*Proof:* $b = b \circ e = b \circ (a \circ c) = (b \circ a) \circ c = e \circ c = c$

## Notation for inverses
Since each $a \in G$ has a unique inverse, we notate it $a^{-1}$.

## Notation convention for the group operation
Writing all these $\circ$'s will be tedious, so we will abbreviate the group operation between two elements $g$ and $h$ by $g h$.

## Cancellation laws
For any $a, b, c \in G$:

 - If $a b = a c$, then $b = c$.
 - If $a c = b c$, then $a = b$.

 1. If $a b = a c$, then $b = c$.

    *Proof:* $b = a^{-1} (a b) = a^{-1} (a c) = c$ (after ommitting steps where we use associativity and properties of inverses).

 2. If $a c = b c$, then $a = b$.
    *Proof:* $a = (a c) c^{-1} = (b c) c^{-1} = b$ (again after omitting steps using associativity and properties of inverses).

## Unique solvability
For any $g, h \in G$, there is a unique $x \in G$ such that $g x = h$ and a unique $y \in G$ such that $y g = h$. Furthermore, $x = g^{-1} h$ and $y = h g^{-1}$.

*Proof:* $x = g^{-1} h$ is a solution for $g x = h$. If some $z$ also solves it, then $h = g z = g (g^{-1} h)$, so by cancellation $z = g^{-1} h$.

For the second equation, $h g^{-1}$ is a solution for $y g = h$. If some $z$ also solves it, again by cancellation $z = h g^{-1}$.


## Inverse of the inverse
For any $g \in G$, $(g^{-1})^{-1} = g$

*Proof:* $g^{-1} (g^{-1})^{-1} = e = g^{-1} g$, so the statement is established via unique solvability.


## Definition of an abelian group
An **abelian group** is a group with a commutative group operation.

## Definition of a subgroup
A **subgroup** of a group $G$ is a subset $S$ which is a group when the group operation is restricted to $S$. 

## Definition of a field
TODO


## A brief note on notation
We often write the group operation of many elements together without any parentheses, even though technically the operation works only on two elements at a time. For example $g h i j k$ would represent the a group product like $(g h) ((i j) k)$. Since the parentheses don't matter, it is convenient to omit them.

Furthermore, in an abelian group, the left-to-right sequence of the elements in a group product doesn't matter. For example, $a b c = a c b = b a c = b c a = c a b = c b a$. In this case, it is convienent (especially when we get to vector spaces) to use the summation notation $\sigma_{i=1}^n g_i$, where the $g_i$ are group elements. Not only are we not writing parentheses, but the order in which the vectors are being added is not specified since the group's commutativity makes it irrelevant. The relevant information in a commutative group is merely which set of group elements is being combined.

## Vector spaces
A vector space is a tuple $(V, \mathbb{F}, \cdot)$ where $V$ is an abelian group of *vectors*, $\mathbb{F}$ is a field of *scalars*, and $\cdot$ is an operation of *scalar multiplication* such that the following hold:

 - for all $a \in \mathbb{F}$ and $u, v \in V$, $a \cdot (u + v) = a \cdot u + a \cdot v$
 - for all $a, b in \mathbb{F}$ and $u \in V$, $(a + b) \cdot u = a \cdot u + b \cdot u$
 - $\mathbb{F}$'s multiplicative identity $1$ has $1 \cdot u = u$ for all $u \in V$
 - for all $a, b in \mathbb{F}$ and $u \in V$, $a \cdot (b \cdot u) = (a b) \cdot u$


## Basic scalar multiplication facts
### Zero scalar nullifies all vectors
For all $v \in V$, $0 \cdot v = 0 \in V$.

*Proof:* $0 \cdot v = (0 + 0) \cdot v = 0 \cdot v + 0 \cdot v. Add inverses to both sides to obtain the statement.

### $-1 \in \mathbb{F}$ negates the vector
For all $v \in V$, $-1 \cdot v = -v \in V$.

*Proof:* $v + -1 \cdot v = 1 \cdot v + -1 \cdot v = (1 + -1) \cdot v = 0 \cdot v = 0$ by distributivity and the previous proposition. The additive inverse of any group is unique, so $-v = -1 \cdot v$.


## Definition of linear combinations
Let $S$ be some finite set of vectors in a vector space $(V, \mathbb{F})$. A **scaling** of $S$ is a mapping $s: S \rightarrow \mathbb{F}$ assigning to every vector in $S$ some scalar. Then a **linear combination** is the vector $\sum{v \in S} s(v) \cdot v$. 

If the scaling assigns all zero scalars, then it is called a **trivial scaling**.

## Definition of a basis
A **basis** set for a vector space $(V, \mathbb{F})$ is a subset $S$ of $V$ such that for every $v \in V$ there is a unique scaling whose linear combination is $v$.

A basis is very often represented in ordered form $(v_1, \ldots, v_n)$, so that a scaling can be specified by $(a_1, \ldots, a_n)$. The scaling of a basis that represents a vector $v$ is often instead called the **coordinates** of $v$ with respect to the basis.

## Definition of a generating or spanning set
A **generating** set or **spanning** set for a vector space $(V, \mathbb{F})$ is a subset $S$ of $V$ such that for every $v \in V$ there is some scaling whose linear combination is $v$.

More generally, the **span** of a set $S$, denoted $span S$, is the set of vectors in $v \in V$ for which there exist scalings of $S$ that combine to $v$. So a set $S$ is a spanning set for vector space $V$ if $V = span S$.

## Definition of an independent set
An **independent** set for a vector space $(V, \mathbb{F})$ is a subset $S$ of $V$ such that for every $v \in V$ there is at most one scaling whose linear combination is $v$.

A set of vectors is **dependent** if it is not independent.


## A basis is an independent spanning set
$B$ is a basis iff it is an independent spanning set.

*Proof:* immediately from the definitions.

## The standard definition of independence
A set $S$ is linearly independent iff the zero vector has a unique representation as the trivial scaling of $S$.

*Proof:* Clearly if $S$ is independent then zero is uniquely obtained as a linear combination of a trivial scaling of $S$. Conversely, if some vector $v$ has two distinct scalings $f$ and $g$, then 

$$v = \sum_{x \in S) f(x) \cdot x = \sum_{x \in S} g(x) \cdot x$$

Then we must have

$$ 0 = v - v = \sum_{x \in S} h(x) \cdot x$$

for the scaling defined by $h(x) = f(x) - g(x)$. $h(x)$ is non-trivial since $f$ and $g$ are distinct by hypothesis, so the zero vector does not have a unique scaling.

### Remark
This is a more convenient way of determining when some set is independent.


## Necessary and sufficient condition for dependence
A set $S$ is dependent iff some $v \in S$ is in the span of the others

 1. If $S$ is dependent, then some $v \in S$ is in the span of the others.

    1. There is some $v \in S$ and some scaling $f$ of $S$ such that $f(v) \neq 0$ and $0 = \sum_{x \in S} f(x) \cdot x$

    *Proof:* By the standard definition for independence.

    2. $0 = f(v) \cdot v + \sum_{x \in S, x \neq v} f(x) \cdot x$

       *Proof:* Rearrangement of (1)

    3. Q.E.D.

       *Proof:* (2) implies that $v = \sum_{x \in S, x \neq v} g(x) \cdot x$ for $g(x) := f(x) / f(v)$. So $v \in span(S - v)$.

     
 2. If some $v \in S$ is in the span of the others, then $S$ is dependent

    *Proof:* If $v = \sum_{x \in S, x \neq v} f(x) \cdot x$, then 

    $$
    g(x) = 
    \cases{
    f(x)  & \text{if } x \neq v\cr
    -1 & \text{o.w.}
    }
    $$

    is a non-trivial scaling of $S$ that combines to $0$, so $S$ is dependent.

 3. Q.E.D.

    *Proof:* By (1) and (2)

## Removing dependent vectors doesn't change the span
If $S$ is a set of vectors and $u \in S$ with $u \in span(S - u)$, then $span S = span(S - u)$.

 1. It suffices to assume $v \in V$ and that $g$ is a scaling of $S$ that combines to $v$, and prove there exists a scaling of $S - u$ that combines to $v$.

   *Proof:* We already have $span(S - u) \subseteq span S$.

 2. There is a scaling $f$ of $S - u$ such that $u = \sum_{x \in S - u} f(x) \cdot x$.

    *Proof:* By assumption that $u \in span(S - u)$.

 3. Q.E.D.

    *Proof:* $v = \sum_{x \in S} g(x) \cdot x = g(u) \cdot u + \sum_{x \in S - u} g(x) \cdot x$ by (1). The scaling of $S - u$ defined by $h(x) := g(u) f(x) + g(x)$ combines to $v$.


## A finite spanning set contains a basis
If $S$ is a finite spanning set for a vector space $V$, then there is a $B \subseteq S$ which is a basis for $V$.

*Proof:* If $S$ is independent, then it is a basis. Otherwise it is dependent and one element $x \in S$ is in the span of the others, so remove $x$ from $S$. The new set $S - x$ still spans $V$ because removing dependent vectors doesn't change the span. Repeat this process until an independent set is obtained. It must terminate eventually since we started with a finite set.

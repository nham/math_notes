# Finite dimensional vector spaces
These notes introduce vector spaces and prove the dimension theorem for finitely-generated vector spaces. We also introduce some fundamental notions like vector spaces of scalar-valued functions.


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
A **field** is a commutative division ring. See the ring theory notes for details.


## A brief note on notation
We often write the group operation of many elements together without any parentheses, even though technically the operation works only on two elements at a time. For example $g h i j k$ would represent the a group product like $(g h) ((i j) k)$. Since the parentheses don't matter, it is convenient to omit them.

Furthermore, in an abelian group, the left-to-right sequence of the elements in a group product doesn't matter. For example, $a b c = a c b = b a c = b c a = c a b = c b a$. In this case, it is convienent (especially when we get to vector spaces) to use the summation notation $\sum{i=1}^n g_i$, where the $g_i$ are group elements. Not only are we not writing parentheses, but the order in which the vectors are being added is not specified since the group's commutativity makes it irrelevant. The relevant information in a commutative group is merely which set of group elements is being combined.

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

### Scaling the zero vector results in zero
For all $c \in \mathbb{F}$, $c \cdot 0 = 0$.

*Proof:* $c \cdot 0 = c \cdot (0 + 0) = c \cdot 0 + c \cdot 0$. Add inverses to both sides to obtain the statement.

### $-1 \in \mathbb{F}$ negates the vector
For all $v \in V$, $(-1) \cdot v = -v \in V$.

*Proof:* $v + -1 \cdot v = 1 \cdot v + -1 \cdot v = (1 + -1) \cdot v = 0 \cdot v = 0$ by distributivity and the previous proposition. The additive inverse of any group is unique, so $-v = -1 \cdot v$.

### Cancellation law for scalar multiplication
If $c \in \mathbb{F}$ and $v \in V$, if $c \cdot v = 0$ then either $c = 0 \in \mathbb{F}$$ or $v = 0 \in V$.

*Proof:* If $c \neq 0$, then $v = 1 \cdot v = c^{-1} \cdot (c \cdot v) = c^{-1} \cdot 0 = 0$.


## Definition of linear combinations
Let $S$ be some finite set of vectors in a vector space $(V, \mathbb{F})$. A **scaling** of $S$ is a mapping $s: S \rightarrow \mathbb{F}$ assigning to every vector in $S$ some scalar. Then a **linear combination** is the vector $\sum{v \in S} s(v) \cdot v$. 

If the scaling assigns all zero scalars, then it is called a **trivial scaling**.

## Definition of a basis
A **basis** set for a vector space $(V, \mathbb{F})$ is a subset $S$ of $V$ such that for every $v \in V$ there is a unique scaling whose linear combination is $v$.

A basis is very often represented in ordered form $(v_1, \ldots, v_n)$, so that a scaling can be specified by $(a_1, \ldots, a_n)$. The scaling of a basis that represents a vector $v$ is often instead called the **coordinates** of $v$ with respect to the basis.

## Definition of finite-dimensional vector spaces
A vector space is **finite-dimensional** if it has a finite basis. The word "dimension" in this phrase will be explained later.

## Assume all vector spaces are finite-dimensional from now on
Unless mentioned otherwise, we will assume that all vector spaces are finite-dimensional from here on out. Proving things about infinite-dimensional vector spaces requires more machinery.


## Definition of a generating set
A **generating** set for a vector space $(V, \mathbb{F})$ is a subset $S$ of $V$ such that for every $v \in V$ there is some scaling whose linear combination is $v$.

More generally, the **span** of a set $S$, denoted $span S$, is the set of vectors in $v \in V$ for which there exist scalings of $S$ that combine to $v$. In other words, the span of $S$ is the set of all linear combinations of $S$. It is easy to see that $S$ is a generating set for vector space $V$ iff $V = span S$.

## Definition of an independent set
An **independent** set for a vector space $(V, \mathbb{F})$ is a subset $S$ of $V$ such that for every $v \in V$ there is at most one scaling whose linear combination is $v$.

A set of vectors is **dependent** if it is not independent.

## A basis is an independent generating set
$B$ is a basis iff it is an independent generating set.

*Proof:* immediately from the definitions.

## The standard definition of independence
A set $S$ is linearly independent iff the zero vector has a unique representation as the trivial scaling of $S$.

*Proof:* Clearly if $S$ is independent then zero is uniquely obtained as a linear combination of a trivial scaling of $S$. Conversely, if some vector $v$ has two distinct scalings $f$ and $g$, then 

$$v = \sum_{x \in S) f(x) \cdot x = \sum_{x \in S} g(x) \cdot x$$

Then we must have

$$ 0 = v - v = \sum_{x \in S} h(x) \cdot x$$

for the scaling defined by $h(x) = f(x) - g(x)$. $h(x)$ is non-trivial since $f$ and $g$ are distinct by hypothesis, so the zero vector does not have a unique scaling.

### Remark
This is a more convenient way of determining when some set is independent. Note that we defined $S$ to be independent by saying that every element of $span S$ has a unique scaling of $S$ that combines to it, but found that a "weaker" statement, that merely $0$ has a unique scaling of $S$ that combines to it, is an equivalent formulation.


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
If $S$ is a set of vectors and $u \in S$, then $u \in span(S - u)$ iff $span S = span(S - u)$.

 1. If $u \in span(S - u)$, then $span S = span(S - u)$

    1. It suffices to assume $v \in V$ and that $g$ is a scaling of $S$ that combines to $v$, and prove there exists a scaling of $S - u$ that combines to $v$.

      *Proof:* We already have $span(S - u) \subseteq span S$.

    2. There is a scaling $f$ of $S - u$ such that $u = \sum_{x \in S - u} f(x) \cdot x$.

       *Proof:* By assumption that $u \in span(S - u)$.

    3. Q.E.D.

       *Proof:* $v = \sum_{x \in S} g(x) \cdot x = g(u) \cdot u + \sum_{x \in S - u} g(x) \cdot x$ by (1). The scaling of $S - u$ defined by $h(x) := g(u) f(x) + g(x)$ combines to $v$.

 2. If $span(S) = span(S - u)$, then $u \in span(S - u)$

    *Proof:* Immediate since $u \in span(S)$.


### Corollary
$S$ is dependent iff there is a $u \in S$ such that $span(S) = span(S - u)$


## A finite generating set contains a basis
If $S$ is a finite generating set for a vector space $V$, then there is a $B \subseteq S$ which is a basis for $V$.

*Proof:* If $S$ is independent, then it is a basis. Otherwise it is dependent and one element $x \in S$ is in the span of the others, so remove $x$ from $S$. The new set $S - x$ still spans $V$ because removing dependent vectors doesn't change the span. Repeat this process until an independent set is obtained. It must terminate eventually since we started with a finite set.

## An independent set can be extended to a basis
If $S$ is an independent subset of a vector space $V$, then there is a basis $B$ such that $S \subseteq B$.

*Proof:* $V$ is by assumption finite-dimensional, so it has a basis $C$. If $S$ is not already a basis, then it must not generate $V$, so we can find one element of $C$ that isn't in the span of $S$ (if not, all are in the span, which means $S$ generates $V$, contradicting our assumption that it didn't). Continually add vectors from $C$ that are not in the span of $S$ until we achieve a basis. This will be achieved because we only add vectors not in the span of $S$, so each addition maintains the independence of the set. This process eventually terminates since there are finitely many vectors in the basis.


## Equivalent definitions of basis
A set $B$ is a basis for fdvs $V$ iff $B$ is a maximal independent set iff $B$ is a minimal generating set.

*Proof:* If $B$ is a basis, $span B = V$, so we could not add any other element to $B$ and obtain an indepedent set, since all other elemends in $V$ are in the span of $B$. So $B$ is a maximal independent set. Also, $B$ could not be a non-minimal generating set, since that would imply it is dependent, contrary to the assumption it is a basis. So it must be a minimal generating set.

If $B$ is a maximal independent set, we cannot add any element of $V$ to $B$ without making the set dependent, so for all $v \in V - B$ we have $B + v$ dependent. This means some non-trivial scaling of $B + v$ combines to $0$, and we must have a non-zero coefficient on $v$ since otherwise we would have a non-trivial scaling of an independent set that combines to $0$, a contradiction. So $v \in span(B)$, meaning that $B$ generates $V$ and so $B$ is a basis.

If $B$ is a minimal generating set, then for all $x \in B$ we have $span(B - x) \neq span(B)$, so $B$ could not be dependent and must be independent, hence a basis.


## Steinitz exchange lemma
If $S$ is independent in $V$ and $T$ generates $V$, with $S$ finite, then $|S| \leq |T|$.

*Proof:* We can assume $S \neq \emptyset$ ($S = \emptyset$ immediately implies the statement to be proved), and impose some ordering so that $S = \{s_1, \ldots, s_k \}$.
Note that we will use notation $a + X$ for an element $a$ of some set, and some set $X$, to be the union $X \cup \{a\}$. Also, if $b \in X$, then $X - b = \{x \in X : x \neq b\}$.

By hypothesis $T$ generates $V$, so letting $S_0 = \emptyset$, $S_1 = \{ s_1 \}$, $T_0 = T$, we have $span(S_0 \cup T_0) = span(S_1 \cup T_0)$. The set $X_1 = S_1 \cup T_0$ is dependent since $T$ generates $V$ and $s_1 \in V$, and furthermore we can find a $t_1 \in T_0$ such that $t_1 \in span(X_1 - t_1)$ since we know some non-trivial scaling of $X_1$ combines to $0$ and that all zero-coefficients on the elements of $T$ in this scaling would imply that $s_1 = 0$, which is impossible. So let $T_1 = T_0 - t_1$. We have $span(S_0 \cup T_0) = span(S_1 \cup T_1)$ since removing a dependent vector doesn't change the span.

Now suppose that we have $S_j$ and $T_j$ for some $j$ such that $span(S_j \cup T_j) = span(S_0 \cup T_0)$ and $S_j$ is a proper subset of $S$. By the same reasoning as above, we can find a $t_{j+1}$ that is in the span of $S_j + s_j + T_j - t_{j+1}$, hence $span(S_{j+1} \cup T_{j+1}) = span(S_j \cup T_j)$, where $S_{j+1} = S_j + s_j$ and $T_{j+1} = T_j - T_{j+1}$.

This proves that there are at least $k$-elements in $T$ (since when we have defined $S_{k-1}$ and $T_{k-1}$, we can add $s_k$ to the set and still find a $t_k$ in the span of the others).


## Corollary
Any two finite bases in a finite dimensional vector space $V$ have the same number of elements.

*Proof:* If $B$ and $C$ are bases, then $B$ is independent and $C$ generating, hence $|B| \leq |C|$, and also $C$ is independent and $B$ generating, so $|C| \leq |B|$.

## No finite-dimensional vector space has an infinite independent set
If $V$ has a finite basis, then there is no infinite subset $S$ of $V$ which is independent.

*Proof:* If there is an infinite independent $S$, then any subset of $S$ is independent. In particular, we can find a subset with $n+1$ elements in it. This contradicts the Steinitz exchange lemma which says any independent set must have no more elements than any other spanning set.

### Corollary
Any two bases in a finite dimensional vector space have the same number of elements.

## Definition of dimension
The last corollary allows us to define the **dimension** of a finite-dimensional vector space, which is the (unique) number of elements in any basis.


## Vector spaces of functions
For any set $X$ and field $\mathbb{F}$, consider the set $\mathbb{F}^X$ of all functions $X \to \mathbb{F}$. We can define a vector space on $\mathbb{F}^X$ by:

 - $(f+g)(x) = f(x) + g(x)$
 - $(c \cdot f)(x) = c f(x)$

This is a vector space for essentially the same reason the direct product was: addition of functions is defined component wise, and component-wise addition is commutative, associative, has an additive identity and additive inverses, due to the components belonging to a field. Similarly the scalar multiplication properties hold.

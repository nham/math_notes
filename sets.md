## Set axioms

In mathematics we study objects. A **set**, informally an unordered collection of objects, is a certain kind of object. If an object $x$ belongs to a set $A$, we denote this fact by $x \in A$, and we write $x \notin A$ if $x$ does not belong to $A$. If $A$ is not a set, then it is meaningless to ask whether $x \in A$ or $x \notin A$.

Sets satisfy the following axioms:

 1. Every set $A$ is an object (i.e. a set could be an element of another set).
 2. There exists a set, denoted $\emptyset$, called the **empty set**, such that for every object $x$, $x \notin \emptyset$.
 3a. For every object $a$, there is a set $A$ such that $a \in A$ and for all $x \in A$, $x = a$. Such sets are called **singleton** sets.
 3b. For any objects $a$ and $b$, there is a set $C$ such that $a \in C$, $b \in C$, and if $x \in C$, then ($x = a$ or $x = b$).
 4. For any two sets $A$ and $B$, there is a set $A \cup B$ called the **union** of $A$ and $B$ such that $x \in A \cup B$ iff ($x \in A$ or $x \in B$).
 5. (Axiom of specification) For any set $A$ and property $P$ defined over all $x \in A$, there is a set $B$ whose elements are exactly the $x \in A$ such that $P(x)$ is true. This is often written $B := \{x \in A : P(x) \}$.
 6. (Axiom of replacement) For any set $A$ and any property $P$ such that for any $x \in A$, there is at most one object $y$ for which $P(x, y)$ is true. Then there is a set $B$ that contains exactly the $y$ such that $P(x, y)$ is true for some $x \in A$.
 7. (Axiom of infinity) There exists a set $\mathbb{N}$ that satisfies the Peano axioms (see the page on the natural numbers).

## Definition of set equality

For sets $A$ and $B$, they are **equal**, written $A = B$, if $\forall x \in A$, $x \in B$ and $\forall x \in B$, $x \in A$. That is, if the sets contain exactly the same objects.


## Uniqueness of empty set
If $A$ and $B$ are both empty sets, then $A = B$.

 1. It suffices to prove that $x \notin B$ implies $x \notin A$.

    *Proof:* Proof by contrapositive. Symmetry of set equality establishes the other direction of implication.

 2. Q.E.D.

    *Proof:* For every object $x$, by definition of $B$, $x \notin B$ and $x \notin A$.


## Uniqueness of singleton sets
If $x$ is an object and $X$ is the singleton set containing $x$ that exists by Axiom 3a, then if $Y$ is another singleton set for $x$, we must have $X = Y$.

*Proof:* $x \in X$ and $x \in Y$, and neither $X$ nor $Y$ contain any other objects. So they must be equal.


## Single choice
If $A$ is a non-empty set, then there is some object $x \in A$.

*Proof:* If no object $x$ is such that $x \in A$, then $A$ is the empty set, which contradicts the assumption that it is non-empty.


## Set equality is an equivalence relation

### Reflexivity
For every set $A$, $A = A$.

*Proof:* For all $x$, ($x \in A$) clearly implies ($x \in A$).


### Symmetricity
For all sets $A$ and $B$, $A = B$ implies $B = A$

 1. ($\forall x$, $x \in A$ iff $x \in B$) implies ($\forall x$, $x \in B$ iff $x \in A$).

    *Proof:* By basic logic, bidirectional implication is symmetric.

 2. Q.E.D.

    *Proof:* ($\forall x$, $x \in A$ iff $x \in B$) is just a restatement of the definition of $A = B$.

### Transitivity
Dependencies: Symmetricity of set equality

For all sets $A$, $B$ and $C$, ($A = B$ and $B = C$) imply $A = C$.

 1. It suffices to assume

      1. $A = B$
      2. $B = C$

    and prove $A = C$.

 2. $x \in A$ implies $x \in C$

    *Proof:* If $x \in A$, then $x \in B$ by (1.1). But $x \in B$ implies $x \in C$ by (1.2).

 3. $x \in C$ implies $x \in A$.

    *Proof:* By applying symmetricity to $A = B$ and $B = C$, we use (2).

 4. Q.E.D.

    *Proof:* By the definition of $A = C$.


## Definition of subset, proper subset
If $A$ and $B$ are sets, then $A$ is a **subset** of $B$, denoted $A \subseteq B$, if for all objects $x$, $x \in A$ implies $x \in B$.

$A$ is a **proper subset** of $B$, denoted $A \subset B$, if $A \subseteq B$ and $A \neq B$.


## A lemma about subsets
For any sets $A$ and $B$, 

 1. $A \subseteq A \cup B$
 2. $A \cap B \subseteq A$

*Proof:* If $x \in A, then clearly ($x \in A$ or $x \in B$), establishing (1). If ($x \in A$ and $x \in B$), then $x \in A$, establishing (2)


## Equivalent definitions for subsets
For any sets $A$ and $B$, $A \subseteq B$ iff $A \cup B = B$ iff $A \cap B = A$

 1. $A \subseteq B$ implies $A \cup B = B$

    *Proof:* From the previous lemma we have B \subseteq A \cup B$. If $x \in A \cup B$, $x$ must also be in $B$ since $x \in A$ implies $x \in B$ via the hypothesis.

 2. $A \cup B = B$ implies $A \cap B = A$

    *Proof:* The previous lemma proves $A \cap B \subseteq A$. Conversely, If $x \in $A$, $x$ must be in $B$ as well since by hypothesis $A \cup B = B$, so if $x \notin B$ it's not in $A \cup B$, implying it's not in $A$ either. This proves $x \in A \cap B$.

 3. $A \cap B = A$ implies $A \subseteq B$

    *Proof:* If there were an element of $x \in A$ that wasn't in $B$, then $A$ would not be a subset of $A \cap B$, a contradiction.


## Set inclusion is a partial order
### Reflexivity
For any set $A$, $A \subseteq A$.

*Proof:* $x \in A$ implies $x \in A$.

### Antisymmetricity
For any sets $A$, $B$, $A \subseteq B$ and $B \subseteq A$, then $A = B$.

*Proof:* This is essentially a restatement of the definition of set equality.

### Transitivity
For any sets $A$, $B$, $C$, if $A \subseteq B$ and $B \subseteq C$ then $A \subseteq C$.

*Proof:* $x \in A$ implies $x \in B$ (since $A \subseteq B$), and $x \in B$ implies $x \in C$ (since $B \subseteq C$).

## Strict set inclusion is transitive
If $A, B, C$ are sets such that $A \subset B$ and $B \subset C$, then $A \subset C$.

*Proof:* From the hypothesis and transitivity of set inclusion, we know $A \subseteq C$. If $A = C$, then $C \subseteq A$ in particular, meaning $C \subseteq B$ by transitivity. But we already had $B \subseteq C$, so $B = C$, a contradiction.


## Definition of set intersection
An operation $\cap$ on sets is defined, via the axiom of specification, by $X \cap Y := \{x \in X : x \in Y\}$

## Definition of disjoint sets
Sets $A$ and $B$ are **disjoint** if $A \cap B = \emptyset$

## Definition of difference sets
If $X$ and $Y$ are sets, the set $X\Y$ is defined by $X\Y := \{x \in X : x \notin Y\}$. This is also denoted $X - Y$.


## Another lemma about subsets
For any sets $A, B, C$, 

 - if $C \subseteq A$ and $C \subseteq B$, then $C \subseteq A \cap B$

 - if $A \subseteq C$ and $B \subseteq C$, then $A \cup B \subseteq C$.


 1. if $C \subseteq A$ and $C \subseteq B$, then $C \subseteq A \cap B$

    *Proof:* Every element of $C$ is an element of both $A$ and $B$, so it must be an element of $A \cap B$ as well.

 2. if $A \subseteq C$ and $B \subseteq C$, then $A \cup B \subseteq C$.

    *Proof:* If every element of $A$ is an element of $C$ and every element of $B$ is an element of $C$, then every element of $A \cup B$ is an element of $C$.


## Absorption laws
If $A$ and $B$ are sets, then $A \cap (A \cup B) = A = A \cup (A \cap B)$

 1. $A \cap (A \cup B) \subseteq A$ and $A \subseteq A \cup (A \cap B)$

   *Proof:* "A lemma about subsets"

 2. $A \subseteq A \cap (A \cup B)$

    *Proof:* If $x \in A$, then ($x \in A$ and $x \in B$).

 3. $(A \cap B) \subseteq A \cap (A \cup B)$

    *Proof:* If ($x \in A$ and $x in B$), then ($x \in A$ and $x \in A \cup B$).

 4. $A \cup (A \cap B) \subseteq A \cap (A \cup B)$

    *Proof:* (2) and (3) and "Another lemma about subsets" imply the statement.


## Partition of the union
For any sets $A$ and $B$, $A - B$, $A \cap B$ and $B - A$ are pairwise disjoint and $(A - B) \cup (A \cap B) \cup (B - A) = A \cup B$

*Proof:* If $x \in A \cap B$, $x$ could not be in either $A - B$ or $B - A$ by definition (since $x$ is in both $A$ and $B$). If $x \in A - B$, $x$ is not in $B - A$ since $x \notin B$. The rest follow from contrapositives of the above.

## Sets form a boolean algebra
For any set $X$, if $A, B, C$ are any subsets of $X$, then the following properties hold:

 a. (Minimal element) $\emptyset \cup A = A$ and $\emptyset \cap A = \emptyset$

 b. (Maximal element) $X \cup A = X$ and $X \cap A = A$.

 c. (Idempotent) $A \cap A = A$, $A \cup A = A$

 d. (Commutativity) $A \cap B = B \cap A$, $A \cup B = B \cup A$

 e. (Associativity) $A \cap (B \cap C) = (A \cap B) \cap c$ and $A \cup (B \cup C) = (A \cup B) \cup c$

 f. (Distributivity) $A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$ and $A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$

 g. (Partition) $A \cup (X - A) = X$ and $A \cap (X - A) = \emptyset$

 h. (DeMorgan laws) $X - A \cup B$ = (X - A) \cap (X - B)$ and $X - A \cap B = (X - A) \cup (X - B)$

*Proof (a):*

 1. $\emptyset \cup A = A$

    *Proof:* $x \in \emptyset \cup A$ means $x \in emptyset$ or $x \in A$, which implies $x \in A$ since no object is an element of $\emptyset$.  Clearly $x \in A$ implies $x \in \emptyset \cup A$.

 2. $\emptyset \cap A = \emptyset$

    *Proof:* $x \in \emptyset \cap A means $x \in \emptyset$ and $x \in A$. The former is false for every object, so $\emptyset \cap A$ contains no objects and must be the empty set.

*Proof (b):*

 1. $X \cup A = X$

    *Proof:* It is immediate that $X \subseteq X \cup A$. Conversely, if $x \in X \cup A$, then $x \in X$ or $x \in A$. But $A$ is a subset of $X$, so $x \in A$ implies $x \in X$.

 2. $X \cap A = A$

    *Proof:* $X \cap A \subseteq A$. If $x \in A$

*Proof (c):* Follows from the idempotence of logical "and" and logical "or".
*Proof (d):* Follows from the commutativity of logical "and" and logical "or".
*Proof (e):* Follows from the associativity of logical "and" and logical "or".
*Proof (f):* Follows from the distributivity of logical "and" and logical "or".

*Proof (g):*

 1. $A \cup (X - A) = X$

    *Proof:* Both $A$ and $X - A$ are subsets of $X$, so $A \cup (X - A) \subseteq X$. Conversely, if $x \in X$, it's either in $A$ or in $X - A$.

 2. $A \cap (X - A) = \emptyset$

    *Proof:* We need only prove $A \cap (X - A) \subseteq \emptyset$, which is true since no object is both in $A$ and not in $A$.


*Proof (h):*
 1. $X - A \cup B$ = (X - A) \cap (X - B)$ 

    *Proof:* For all $x \in X$, $x$ is not in $A \cup B$ implies it is neither in $A$ nor in $B$. Conversely, if $x$ is not in $A$ and not in $B$, it must not be in $A \cup B$ either.

 2. $X - A \cap B = (X - A) \cup (X - B)$

    *Proof:* If $x \in X$ isn't in $A \cap B$, it is either not in $A$ or not in $B$. If $x$ is in $A \cap B$, then $x$ is both in $A$ and in $B$.

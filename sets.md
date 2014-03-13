## Set axioms

In mathematics we study objects. A **set** is an unordered collection of objects. If an object $x$ belonging to a set $A$, we denote this fact by $x \in A$, and we write $x \notin A$ if $x$ does not belong to $A$.

Sets satisfy the following axioms:

 1. Every set $A$ is an object (i.e. a set could be an element of another set).
 2. There exists a set, denoted $\emptyset$, called the **empty set**, such that for every object $x$, $x \notin \emptyset$.
 3a. For every object $a$, there is a set $A$ such that $a \in A$ and for all $x \in A$, $x = a$.
 3b. For any objects $a$ and $b$, there is a set $C$ such that $a \in C$, $b \in C$, and if $x \in C$, then ($x = a$ or $x = b$).
 4. For any two sets $A$ and $B$, there is a set $A \cup B$ called the **union** of $A$ and $B$ such that $x \in A \cup B$ iff ($x \in A$ or $x \in B$).

## Definition of set equality

For sets $A$ and $B$, they are **equal**, written $A = B$, if $\forall x \in A$, $x \in B$ and $\forall x \in B$, $x \in A$. That is, if the sets contain exactly the same objects.


## Uniqueness of empty set
Dependencies: Symmetricity of set equality

If $A$ and $B$ are both empty sets, then $A = B$.

 1. It suffices to prove that $x \notin B$ implies $x \notin A$.

    *Proof:* Proof by contrapositive. Symmetry of set equality establishes the other direction of implication.

 1. Q.E.D.

    *Proof:* For every object $x$, by definition of $B$, $x \notin B$ and $x \notin A$.


## Single choice

If $A$ is a non-empty set, then there is some object $x \in A$.

If no object $x$ is such that $x \in A$, then $A$ is the empty set, which contradicts the assumption that it is non-empty.


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


## Set union is commutative

## Set union is associative


## The empty set is a neutral element for set union


## Definition of subset, proper subset
If $A$ and $B$ are sets, then $A$ is a **subset** of $B$, denoted $A \subseteq B$, if for all objects $x$, $x \in A$ implies $x \in B$.

$A$ is a **proper subset** of $B$ if $A \subseteq B$ and $A \neq B$.


## Set inclusion is a partial order
### Reflexivity
### Antisymmetricity
### Transitivity

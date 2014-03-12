## Set axioms

In mathematics we study objects. A **set** is an unordered collection of objects. If an object $x$ belonging to a set $A$, we denote this fact by $x \in A$, and we write $x \notin A$ if $x$ does not belong to $A$.

Sets satisfy the following axioms:

 1. Every set $A$ is an object (i.e. a set could be an element of another set).
 2. For sets $A$ and $B$, they are **equal**, written $A = B$, if $\forall x \in A$, $x \in B$ and $\forall x \in B$, $x \in A$. That is, if the sets contain exactly the same objects.

## Set equality is an equivalence relation

### Reflexivity
For every set $A$, $A = A$.

 1. By definition we must prove that for all $x \in A$, we also have $x \in A$. This is immediate. $\Box$.


### Symmetricity
For all sets $A$ and $B$, $A = B$ implies $B = A$

 1. ($\forall x$, $x \in A$ iff $x \in B$) implies ($\forall x$, $x \in B$ iff $x \in A$).

    *Proof:* From basic logic, bidirectional implication is symmetric.

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


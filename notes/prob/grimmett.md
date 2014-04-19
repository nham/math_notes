## sigma-field
A **$\sigma$-field** on a set $\Omega$ is a collection $E$ of subsets of $\Omega$ such that

 - $\emptyset \in E$
 - If $\{A_i : i \in \mathbb{N}\}$ are all in $E$, then $\bigcup_1^{\infty} A_i$ is in $E$ as well
 - If $X \in E$, then $\Omega - X \in E$.

## sigma-fields are closed under countable intersection
Using DeMorgan's law, complements, and closure under countable union, you can prove closure under countable intersection.

The set $\Sigma$ is called the **sample space**, and it contains the possible outcomes off an experiment. A $\sigma$-field is the collection of **events** or subsets of $\Omega$ that we can assign probability to. We cannot, in general, assign probability to every subset of $\Omega$, since some sample spaces are too large. (Vague, don't really understand. Likely some techical reason revealed in measure theory).

## Probability measure
A **measure** on a sigma-field $(\Omega, F)$ is a function $\mu: F \to [0, 1] \subseteq \mathbb{R}$ satisfying

 - $\mu (\emptyset) = 0$
 - If $\{A_i : i \in \mathbb{N}\}$ is a collection of pairwise disjoint events in $F$, then $P(\bigcup_1^{\infty} A_i) = \sum_1^{\infty} \mu (A_i)$.

A **probability measure** is a measure $\mathbb{P}$ such that $\mathbb{P}(\Omega) = 1$. We will generically denote arbitrary probability measures by $\mathbb{P}$. A triple $(\Omega, F, \mathbb{P})$ where the first two are a sigma-fied and the last is a probability measure is called a **probability space**.

## Basic properties
For any probability space $(\Sigma, F, \mathbb{P})$, and for any events $A$ and $B$ in $F$, we have

 1. $\mathbb{P}(A) + \mathbb{P}(A^c) = 1$
 2. if $A \subseteq B$, then $\mathbb{P}(A) \leq \mathbb{P}(A) + \mathbb{P}(B - A) = \mathbb{P}(B)$
 3. $\mathbb{P}(A \cup B) = \mathbb{P}(A) + \mathbb{P}(B) - \mathbb{P}(A \cap B)$

*Proof:* (1) is proved by noting that $A \ cup A^c = \Omega$, and that the two sets are disjoint. (2) is proved by noting that $B = A \cup (B - A$, which is also disjoint. Also since probabilities are non-negative, the inequality holds. For (3), note that $A \cup B = (A - B) \cup (A \cap B) \cup (B - A)$ and that the 3 events are pairwise disjoint, so $\mathbb{P}(A \cup B) = \mathbb{P}(A - B) + \mathbb{P}(A \cap B) + \mathbb{P}(B - A)$ = \mathbb{P}(A) + \mathbb{P}(B) - \mathbb{P}(A \cap B)$.

## Inclusion-exclusion principle
If $A_1, \ldots, A_n$ are events in a probability space, then letting $S_k$ be all $k$ subsets of the set $\{A_1, \ldots, A_n \}$, then

$$\mathbb{P}(\bigcup_1^n A_i) = \sum_{k = 1}^n (-1)^{k+1} \sum_{S_k} \mathbb{P}(\bigcap S_k)$$

*Proof:* Omitted, but we've proved it for $n = 2$ and the general case is proved by induction.

## Monotonic sequences of events, limits
If $\{A_i : i \in \mathbb{N} \}$ is a collection of events from some probability space and $(A_n)$ is a sequence such that $A_i \subseteq A_j$ when $i \leq j$, then

$$ lim_{n \to \infty} \mathbb{P}(A_n) = \mathbb{P}(\cup_1^{\infty} A_n)$$

If instead we have $A_i \superseteq A_j$ when $i \leq j$, then

$$ lim_{n \to \infty} \mathbb{P}(A_n) = \mathbb{P}(\cap_1^{\infty} A_n)$$

*Proof:* We know from a previous proposition that when events are such that $A \subseteq B$, then we have $\mathbb{P}(A) \leq \mathbb{P}(B)$. For this reason, if the sequence $(A_n)$ is non-decreasing, then the sequence $(\mathbb{P}(A_n))$ is non-decreasing. It's also bounded above (by $1$) by definition, so we can apply the monotone convergence theorem to prove that $lim_{n \to \infty} \mathbb{P}(A_n)$ converges to $sup (\mathbb{P}(A_n))$.

Define $B_1 = A_1$ and $B_{n+1} = A_{n+1} - A_n$. then you can prove that $\bigcup_1^{\infty} B_n = \bigcup_1^{\infty} A_n$, the difference being that for all $n$, $\mathbb{P}(A_n) = \sum_1^n \mathbb{P}(B_k)$, since each union $\bigcup_1^n B_k = A_n$ is a disjoint union. So $lim_{n \to \infty} \mathbb{P}(A_n) = \sum_1^{\infty} \mathbb{P}(B_n) = \bigcup_1^{\infty} B_n = \bigcup_1^{\infty} A_n$.

Virtually the same argument holds for the other case.

## Conditional probability
If $B$ is an event with $\mathbb{P}(B) > 0$, we can define the **conditional probability** of event $A$ given event $B$ holds, $\mathbb{P}(A | B) = \mathbb{P}(A \cap B) / \mathbb{P}(B)$.

## Decomposing into partitions
If $B_1, \ldots, B_n$ are events with $\mathbb{P}(B_i) \neq 0$ for all $i$ and $\Omega = \bigcup_1^n B_i$, then for any event $A$ we have $A = \bigcup_1^n (A \cap B_i)$, so

$$\mathbb{P}(A) = \sum_1^n \mathbb{P}(A \cap B_i) = \sum_1^n \mathbb{P)(A | B) \mathbb{P}(B)$$

## Bayes' theorem
If $A$ and $B$ are events with $\mathbb{P}(A) \neq 0 \neq \mathbb{P}(B)$, then we can say that

$$\mathbb{P}(A | B) = \mathbb{P}(B | A) \mathbb{P}(A) / \mathbb{P}(B)$$

*Proof:* $\mathbb{P}(A | B) \mathbb{P}(B) = \mathbb{P}(A \cap B) = \mathbb{P}(B | A) \mathbb{P}(A)$

## Corollary
If $\mathbb{P}(A | B) > \mathbb{P}(A)$, then $\mathbb{P}(B | A) > \mathbb{P}(B)$.

*Proof:* By definition and by hypothesis we have

$$\mathbb{P}(B | A) \mathbb{P}(A) / \mathbb{P}(B) > \mathbb{P}(A)$$

so we must have

$$\mathbb{P}(B | A) / \mathbb{P}(B) > 1$$

Rearrangement proves the proposition.

## sigma-field
A **$\sigma$-field** on a set $\Omega$ is a collection $E$ of subsets of $\Omega$ such that

 - $\emptyset \in E$
 - If $\{A_i : i \in \mathbb{N}\}$ are all in $E$, then $\bigcup_1^{\infty} A_i$ is in $E$ as well
 - If $X \in E$, then $\Omega - X \in E$.

## sigma-fields are closed under countable intersection
Using DeMorgan's law, complements, and closure under countable union, you can prove closure under countable intersection.

The set $\Omega$ is called the **sample space**, and it contains the possible outcomes off an experiment. A $\sigma$-field is the collection of **events** or subsets of $\Omega$ that we can assign probability to. We cannot, in general, assign probability to every subset of $\Omega$, since some sample spaces are too large. (Vague, don't really understand. Likely some techical reason revealed in measure theory).

## Probability measure
A **measure** on a sigma-field $(\Omega, F)$ is a function $\mu: F \to [0, 1] \subseteq \mathbb{R}$ satisfying

 - $\mu (\emptyset) = 0$
 - If $\{A_i : i \in \mathbb{N}\}$ is a collection of pairwise disjoint events in $F$, then $P(\bigcup_1^{\infty} A_i) = \sum_1^{\infty} \mu (A_i)$.

A **probability measure** is a measure $\mathbb{P}$ such that $\mathbb{P}(\Omega) = 1$. We will generically denote arbitrary probability measures by $\mathbb{P}$. A triple $(\Omega, F, \mathbb{P})$ where the first two are a sigma-fied and the last is a probability measure is called a **probability space**.

## Definition of null, almost certain events
An event $A$ is said to be **null** of $\mathbb{P}(A) = 0$ and **almost certain** if $\mathbb{P}(A) = 1$. The empty event $\emptyset$ is null, but is not necessarily the only null event, and the whole sample space $\Omega$ is almost certain, but not necessarily the only almost certain event.

## Basic properties
For any probability space $(\Omega, F, \mathbb{P})$, and for any events $A$ and $B$ in $F$, we have

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

$$\mathbb{P}(A) = \sum_1^n \mathbb{P}(A \cap B_i) = \sum_1^n \mathbb{P}(A | B) \mathbb{P}(B)$$

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


## Definition of independence
### Discussion
We'd like some notion of when witnessing one event doesn't change the probability that some other event will occur. In other words, we are looking for criteria for when $\mathbb{P}(A | B) = \mathbb{P}(A)$. We can expand the conditional probability to obtain

$$\mathbb{P}(A \cap B) / \mathbb{P}(B) = \mathbb{P}(A)$$

or, by rearrangement:

$$\mathbb{P}(A \cap B) = \mathbb{P}(A) \mathbb{P}(B)$$

Note that the above required $\mathbb{P}(B) > 0$. We will generalize slightly to allow for $\mathbb{P}(B) = 0$, and also to allow for multiple events.

### Definition
Two events $A$ and $B$ are said to be **independent** if $\mathbb{P}(A \cap B) = \mathbb{P}(A) \mathbb{P}(B)$. A collection $\mathcal{A} = \{A_i : i \in I\}$ of events is said to be independent iff for every finite subcollection $\{A_j : j \in J \subseteq I\}$ of $\mathcal{A}$, we have

$$\mathbb{P}(\bigcap_{j \in J} A_j) = \prod_{j \in J} \mathbb{P}(A_j)$$


## Definition of pairwise independence
A collection of events is **pairwise independent** if any two events $A_i$ and $A_j$ in the collection are independent. Every independent collection of events is pairwise independent, but the converse is not true.


## Independent of a pair with one event null or almost certain
If $A$ and $B$ are two events, then $A$ and $B$ are independent if $A$ is null or if $A$ is almost certain.

*Proof:* In the null case, $\mathbb{P}(A \cap B) \leq \mathbb{P}(A) = 0$, so $\mathbb{P}(A \cap B) = 0 = 0 \mathbb{P}(B) = \mathbb{P}(A) \mathbb{P}(B)$.

In the almost certain case, we know that $A^c$ is null, so $\mathbb{P}(A^c \cap B) = 0$, implying $\mathbb{P}(A \cap B) = \mathbb{P}(B)$, which implies independence since $\mathbb{P}(A) = 1$.


## Definition of conditional independence
A collection $\mathcal{A} = \{A_i : i \in I\}$ of events is said to be **conditionally independent** given event $B$ iff for every finite subcollection $\{A_j : j \in J \subseteq I\}$ of $\mathcal{A}$, we have

$$\mathbb{P}(\bigcap_{j \in J} A_j | B) = \prod_{j \in J} \mathbb{P}(A_j | B)$$


## Definition of random variable
A **random variable** on a probability space $(\Omega, F, \mathbb{P})$ is a function $X: \Omega \to \mathbb{R}$ such that $\{\omega \in \Omega : X(\omega) \leq x \}$ is an event for every $x \in \mathbb{R}$.

The event $\{\omega \in \Omega : X(\omega) \leq x \}$ will be notated $X(\omega) \leq x$, or just $X \leq x$ for short.

## Definition of a distribution function
If $X$ is a random variable in some probabiity space, then the **distribution function** of $X$ is the function $F: \mathbb{R} \to \mathbb{R}$ defined by

$$F(x) := \mathbb{P}(X \leq x)$$


## Facts about distribution functions
If $F$ is the distibution of a random variable $X$, then

 1. $X(\omega) > x$ is an event for any $x \in \mathbb{R}$ and $\mathbb{P}(X(\omega) > x) = 1 - F(x)$.
 2. $x < X(\omega) \leq y$ is an event for any $x, y \in \mathbb{R}$, and $\mathbb{P}(x < X(\omega) \leq y) = F(y) - F(x)$
 3. $X(w) = x$ is an event and $\mathbb{P}(X(\omega) = x) = F(x) - lim_{y \to x^-} F(y)$.

*Proof:* For (1), letting $A = \{\omega \in \Omega : X(\omega) \leq x\}$, we have $A^c = \{ \omega \in \Omega : X(\omega) > x \}$, which we notate by $X(\omega) > x$. So it holds.

For (2), we define $x < X(\omega) \leq y$ by $(X(\omega) \leq y) \cap (X(\omega) > x)$. Then $(X(\omega) \leq y) = [(X(\omega) \leq x) \cup (X(\omega) > x)] \cap (X(\omega) \leq y)$ since $(X(\omega) \leq x) \cup (X(\omega) > x) = \Omega$ by (1). By distributivity, we have

$$(X(\omega) \leq y) = (X(\omega) \leq x) \cup (x < X(\omega) \leq y)$$

Since this is a disjoint union, by additivity we have the statement.

For (3), we know for all $n$ that $(X(\omega) \leq x + 1/n)$ is an event, so 

$$A = \bigcap_1^{\infty} (X(x - 1/n < \omega) \leq x)$$

is an event. if $\omega \in \Omega$ such that $X(\omega) = x$, then $x - 1/n \leq x$ for any $n$, hence $\omega \in A$. Conversely, if $a \in A$, then $x - 1/n \leq X(a)$ for all $n$, so we could not have $X(a) < x$, since otherwise we'd be able to find an $n$ such that $1/n < x - X(a)$, excluding it from the intersection. We can't have $X(a) > x$ since $X(a) \leq x$ by definition of $A$. So $X(a) = x$. Hence $X(\omega) = x$ is an event, is equal to $A$, and so

$$\mathbb{P}(A) = lim_{n \to \infty} F(x) - F(x - 1/n)$$

or

$$\mathbb{P}(A) = F(x) - lim_{n \to \infty} F(x - 1/n)$$

But by the non-decreasingness of $F$, we have $lim_{n \to \infty} F(x - 1/n) = lim_{y \to x^-} F(y)$.


## Distribution function properties
For any distribution function $F$ for a random variable $X$, we have

 1. $x < y$ implies $F(x) \leq F(y)$ ($F$ is non-decreasing)
 2. $lim_{x \to - \infty} F(x) = 0$ and $lim_{x \to \infty} F(x) = 1$
 3. $F$ is *right-continuous*: $lim_{h \to 0^+} F(x + h) = F(x)$

*Proof:* if $x < y$, then $X(\omega) \leq x \subseteq X(\omega) \leq y$, so by basic properties of the probability measure, $F(x) \leq F(y)$.

For (2), first note that for $A_n = X(\omega) \leq -n$ and $B_n = X(\omega) \leq n$, we have $(A_n)$ a non-increasing sequence of events and $(B_n)$ a non-decreasing sequence of events, so $lim_{n \to \infty} \mathbb{P}(A_n) = \mathbb{P}(\bigcap A_n) =: \mathbb{P}(A)$ and $lim_{n \to \infty} \mathbb{P}(B_n) = \mathbb{P}(\bigcup B_n) = \mathbb{P}(B)$. But there can be no outcome $o \in A$, since we can find a natural $k$ such that $-k < X(o)$, so that the event $X(w) \leq -k$ does not contain $o$. Also every outcome $o \in B$, since we can find a natural $j$ such that $j \geq X(o)$, so that $X(w) \leq j$ contains $o$. So $A = \emptyset$ and $B = \Omega$, hence $\mathbb{P}(A) = 0$ and $\mathbb{P}(B) = 1$.

To complete (2), we need to prove that for all $\epsilon > 0$ there is a $y$ such that for all $x < y$, $|F(x)| < \epsilon$, and that there is a $z$ such that for all $x > z$, $|F(x) - 1| < \epsilon$. But we can make $F(k)$ arbitrarily close to $0$ for integer $k$, so because the function is non-decreasing we can make it arbitrarily close for real $x$. Ditto for the other end.

For (3), prove that for all $\epsilon > 0$, there is a $y$ such that for all $z$ with $x < z < y$, we have $|F(z) - F(x)| < \epsilon$. But it can be proven that $lim_{n \to \infty} \mathbb{P}(X(\omega) \leq x + 1/n) = F(x)$, so we can always find an $n$ such that $F(x + 1/n)$ is $\epsilon$-close to $F(x)$, meaning all $y$ such that $x < y < x + 1/n$ are as well by non-decreasingness of $F$.


## Examples of random variables
TODO: Need more. For now just constant. Maybe add Bernoulli r.v.'s, indicator r.v.'s?

A **constant random variable** $X: \Omega \to \mathbb{R}$ defined by $X(\omega) = c$ for some $c \in \mathbb{R}$ and all $\omega \in \Omega$ is a random variable.

*Proof:* If $x < c$, $(X(\omega) \leq x) = \emptyset$. If $x \geq c$, $(X(\omega) \leq x) = \Omega$ since $X(\omega) = c \leq x$ for all $\omega$.


## Scalar multiples, added constants for a random variable
If $X$ is a random variable, then for any $c, d \in \mathbb{R}$, $cX + d$ defined by $(cX + d)(\omega) = c X(\omega) + d$ is a random variable.

*Proof:* If $c = 0$, then $cX + d$ is the constant random variable taking a value of $d$. Otherwise, $c \neq 0$, so for any $x \in \mathbb{R}$, if $c > 0$, then the event $((cX + d)(\omega) \leq x) = (X(\omega) \leq (x - d)/c)$, which we know is an event since $X$ is a random variable. Else if $c < 0$, then the event $((cX + d)(\omega) \leq x) = (X(\omega) > (x - d)/c)$, which is again an event.


## Definition of random vector
If $X_1, \ldots, X_n$ are random variables for a probability space, then $X: \Omega^n \to \mathbb{R}^n$ defined by $X(\omega) = (X_1(\omega), \ldots, X_n(\omega))$ is a **random vector**.

## Partial order on $\mathbb{R}^n$.
If $x, y \in \mathbb{R}^n$, we define $x \leq y$ iff $x_i \leq y_i$ for all $i$. $\leq$ is a partial order.

*Proof:* Clearly reflexive. If $x \leq y$ and $y \leq x$, $x_i = y_i$ by $\leq$ being antisymmetric for $\mathbb{R}$. Also transitivity similarly holds.

## Joint probability
For any random vector $X$ on $X_1, \ldots, X_n$, the event $X(\omega) \leq x$ for $x = (x_1, \ldots, x_n) \in \mathbb{R}^n$ is defined to be the event

$$\bigcap_1^n (X_i(\omega) \leq x_i)$$

This is obviously a well-defined event since it is a finite intersection of events.

## Definition of joint distribution
For any random vector $X$ on $X_1, \ldots, X_n$, the **joint distribution function** of $X$ is a function $F: \mathbb{R}^n \to \mathbb{R}$ defined by $F(x) = \mathbb{P}(X(\omega) \leq x)$


## Joint distribution function properties
For any joint distribution function $F$ for a random vector $X = (X_1, \ldots, X_n)$, we have

 1. $x < y$ implies $F(x) \leq F(y)$ ($F$ is non-decreasing)
 2. $lim_{x \to - \infty} F(x) = 0$ and $lim_{x \to \infty} F(x) = 1$
 3. $F$ is *right-continuous*: $lim_{h \to 0+} F(x + h) = F(x)$

Where, for (2) and (3), we define for any $g: \mathbb{R}^n \to \mathbb{R}$

 - $lim_{x \to - \infty} g(x) = L$ iff for all $\epsilon > 0$ there is an $h \in \mathbb{R}^n$ such that for all $x < h$, $|L - g(x)| < \epsilon$
 - $lim_{x \to \infty} g(x) = L$ iff for all $\epsilon > 0$ there is an $h \in \mathbb{R}^n$ such that for all $x > h$, $|L - g(x)| < \epsilon$
 - $lim_{h \to 0+} g(x + h) = L$ iff for all $\epsilon > 0$ there is an $a \in \mathbb{R}^n$, $a > 0$, such that for all $h$ with $0 < h < a$, $|L - g(x + h)| < \epsilon$

*Proof:* $x < y$ implies $x_i < y_i$, so $X \leq x$ is a subset of $X \leq y$, hence $F(x) \leq F(y)$. This establishes (1).

Let $f_i$ be the distribution function for random variable $X_i$.

For (2), for any $x = (x_1, \ldots, x_n) \in \mathbb{R}^n$, the event $(X(\omega) \leq x)$ is a subset of the event $(X_i(\omega) \leq x_i)$ for all $i$, so $F(x) \leq f_i(x_i)$. For any $\epsilon > 0$ and any $i$, we already know we can find an $h_i \in \mathbb{R}$ such that for all $x < h_i$, $0 \leq f_i(x) < \epsilon$. So for any $v \in \mathbb{R}^n$ whose $i$-th component is $h_i$, we have for all $x < v$, $0 \leq F(x) \leq f_i(h_i) < \epsilon$. This proves that $lim_{x \to - \infty} F(x) = 0$.



TODO


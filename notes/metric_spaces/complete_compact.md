## Definition of complete metric spaces
A metric space is **complete** iff every Cauchy sequence converges.

## Closed subsets of complete metric spaces are complete
If $(X, d)$ is complete and $S \subseteq X$ is closed in $X$, then the subspace $(S, d|S)$ is complete.

*Proof:*  If $(x_n)$ is a Cauchy sequence contained in $S$, then it converges to some $c \in X$. Because $S$ is closed, we must have $c \in S$. Finally, every Cauchy sequence in a metric space is a Cauchy sequence in any superspace, so 

If $(y_n)$ is Cauchy in the subspace of $S$, then it is Cauchy in $X$ since $X$ is a superspace. $X$ being complete, we have some $c \in X$ such that $(y_n)$ converges to c$ in $X$. But $S$ is closed in $X$, so $c \in S$. This means that $(y_n)$ must converge to $c$ in $S$ (due to the metric on $S$ being a restriction of $d$).

## Definition of bounded subsets
A subset $S$ of a metric space $X$ is **bounded** if some $z \in X$ is such that an open ball centered at $z$ contains $S$.

## Cauchy sequences are bounded
If $(x_n)$ is Cauchy, then it is bounded

*Proof:* By definition, some tail sequence starting at $k$ of $(x_n)$ is contained in some open ball $B(z; 1)$, so letting $\epsilon = max \{ d(z, x_1), \ldots, d(z, x_{k - 1}, 1 \}$, the whole sequence is contained in $B(z; \epsilon + 1)$.

### Corollary: convergent sequences are bounded
Any convergent sequence is bounded.

*Proof:*  Every convergent sequence is Cauchy.


## Definition of totally bounded subsets
A subset $S$ of a metric space $X$ is **totally bounded** if for every $r \in \mathbb{R}_{\geq 0}$, there are finitely many open balls of radius $r$ that cover $S$.


## A totally bounded subset is bounded
Any totally bounded subset $S$ of $(X, d)$ is bounded.

*Proof:* We have some $1$-net covering $S$, so $\bigcup_1^n B(x_1; 1)$ for some $x_1, \ldots, x_n$. For any $s \in S$, $s$ is contained in the $1$-ball around some $x_k$, so $d(x_1, s) \leq d(x_1, x_k) + d(x_k, s) < d(x_1, x_k) + 1$. So let $\epsilon = max \{ d(x_1, x_k) + 1 : 1 \leq k \leq n \}$. Then $S \subseteq B(x_1; \epsilon)$, so $S$ is bounded.


## Definition of $\epsilon$-net
An $\epsilon$-net for a set $S$ is a finite subset $\{s_1, \ldots, s_n \}$ such that $S \subseteq \bigcup_1^n B(s_1, \epsilon)$.

We can rephrase the definition for totally bounded sets: a set $S$ is bounded if for every $\epsilon > 0$ there is an $\epsilon$-net for $S$.


## Sequential characterization of totally bounded subsets
A subset $S$ of a metric space $(X, d)$ is **totally bounded** iff every sequence in $S$ has a Cauchy subsequence.

*Proof:* If every sequence in $S$ has a Cauchy subsequence, then for every $\epsilon > 0$, pick a point $x_1 \in S$. If for some integer $k$, $x_k$ is chosen and $\{x_1, \ldots, x_k \}$ do not cover $S$, then we can find at least one point in $S$ that is isn't in any of the existing $k$ $\epsilon$-balls, so let that be $x_{k+1}$. This process must stop after finitely many terms, since otherwise we would have an infinite sequence with each term greater than $\epsilon$ away from every other term. Such a sequence would have no Cauchy subsequence.

Conversely, if $S$ is totally bounded and $(x_n)$ is any sequence in $S$, then there is some $1$-net for $S$, and one of the balls in this net contains infinitely many terms of $(x_n)$, so we have a subsequence $s_1$ of $(x_n)$ that is entirely contained in some open balls of radius $1$. Given that $s_1, \ldots, s_k$ are defined for some $k$, we can find a $1/(k+1)$-net of the terms of $s_k$, so we can find a subsequence of $s_k$ that is contained in one ball of of the $1/(k+1)$-net. Repeating this for all $k \in \mathbb{N}$, we obtain a sequence of subsequences of $(x_n)$, each term being a subsequence of the previous, and the $k$-th sequence contained in one $1/k$-ball. For any $m < n$,  $1/m$-ball that contains $s_m$ clearly contains the $1/n$-ball that contains $s_n$. So diagonalize the sequences by forming a new sequence $(a_n)$ where $a_n$ is the $n$-th term from sequence $s_n$. Then the tail sequence starting at $a_n$ is entirely contained in some $1/n$-ball, so $(a_n)$ is Cauchy.


## Bolzano-Weierstrass property
If $(X, d)$ is a non-empty metric space, then the following are equivalent.

 1. Every  infinite bounded subset of $X$ has an accumulation point in $X$
 2. every bounded sequence in $X$ has a subsequence that converges in $X$.
 3. $X$ is complete and every bounded subset is totally bounded.

*Proof:*

 1. (1) implies (2)

    *Proof:* If $(x_n)$ is a bounded sequence in $X$, then the collection $T = \{x_n : n \in \mathbb{N} \}$ is either infinite or finite. If infinite, $T$ must have an accumulation point $a$ by hypothesis, which means for every $\epsilon > 0$, every tail of $(x_n)$ has a term that is in $B(a; \epsilon)$, because if not then $B(a; min \{ x_1, \ldots, x_{k-1} \})$ would contain no elements of $T - a$, assuming that the tail sequence in question starts at position $k$.

Hence, we can find a term $x_{n_1} \in T - a$ that is also in $B(a; 1)$, and given that $x_{n_k}$ has been selected for some $k \in \mathbb{N}$, we can find a point $x_{n_{k+1}}$ from the tail sequence starting at $n_k$ in $B(a; 1/n)$. $(x_{n_k})$ is thus a subsequence of $(x_n)$ that converges to $a$.

 2. (2) implies (1)

    *Proof:* If $S$ is an infinite bounded subset of $X$, then we can find a sequence $(x_n)$ in $S$ of distinct terms. It's a bounded sequence, so by hypothesis it has a convergent subsequence $(x_{n_k})$. This means that the limit of the subsequence is an accumulation point, since every open ball around the limit entirely contains some tail of the subsequence and all the points are distinct.


 3. (2) implies (3)

    *Proof:* If $(x_n)$ is a Cauchy, it is bounded, so by hypothesis $(x_n)$ has a subsequence converging to some point $c$, so the whole sequence converges to $c$, meaning that $X$ is complete. Also, if $S$ is a bounded subset, any sequence in $S$ is also bounded, so any such sequence has a convergent subsequence. All convergent sequences are Cauchy, so every sequence in $S$ has a Cauchy subsequence. This implies that $S$ is totally bounded, by the sequential characterization of totally bounded sets.

 4. (3) implies (2)

    *Proof:* If $(x_n)$ is bounded, then its set of terms is bounded, and hence by hypothesis totally bounded. This is equivalent to saying that every sequence in the set has a Cauchy subsequence. Hence $(x_n)$ has a Cauchy subsequence. But by hypothesis $X$ is complete, so that same Cauchy subsequence is a convergent subsequence.

### Definition
A metric space that has any one of the three equivalent properties above is said to have the **Bolzano-Weierstrass property**.



## Bounded subsets and product spaces
If $(X_i, d_i)$ are metric spaces for $1 \leq i \leq n$, letting $P = \prod_1^n X_i$ and supposing $S \subseteq P$, then if $d$ is a conserving metric on $P$, then $S$ is bounded in $P$ iff $\pi_i(S)$ is bounded in $X_i$ for all $i$.

*Proof:* If $S$ is bounded, then by definition there is some $z \in P$ and some $\epsilon > 0$ such that $S \subseteq B_P^d(z; \epsilon)$. But $B_P^d(z; \epsilon) \subseteq B_P^{\mu_{\infty}}(z; \epsilon) = \prod_1^n B_{X_i}(\pi_i(z); \epsilon)$, and since $\pi_i(\prod_1^n B_{X_i}(\pi_i(z); \epsilon)) = B_{X_i}(\pi_i(z); \epsilon)$, we have $\pi_i(S) \subseteq B_{X_i}(\pi_i(z); \epsilon), so $\pi_i(S)$ is bounded.

Conversely, if $\pi_i(S)$ is bounded in $X_i$, then there exists some $z_i \in X_i$ and some $\epsilon_i$ such that $B_{X_i}(z_i; \epsilon_i)$ contains $\pi_i(S)$. Let $\epsilon = max \{ \epsilon_1, \ldots, \epsilon_n \}$. Then $\pi_i(S) \subseteq B_{X_i}(z_i; \epsilon)$, so $prod_1^n \pi_i(S) \subseteq \prod_1^n B_{X_i}(z_i; \epsilon) = B_P^{\mu_{\infty}}(z; \epsilon)$, where $z = (z_1, \ldots, z_n)$. But $S \subseteq \prod_1^n \pi_i(S)$, and $B_P^{\mu_{\infty}}(z; \epsilon) \subseteq B_P^{\mu_1}(z; n \epsilon) \subseteq B_P^d(z; n \epsilon)$, so $S$ is bounded in $P$.

### Corollary for bounded sequences
A sequence $(x_n)$ in $P$ with conserving metric $d$ is bounded iff each sequence $(\pi_i(x_n))$ is bounded in $X_i$.


## Bolzano-Weierstrass property on product spaces
If $(X_i, d_i)$ are metric spaces for $1 \leq i \leq n$, letting $P = \prod_1^n X_i$ and supposing $S \subseteq P$, then if $d$ is a conserving metric on $P$, then $(P, d)$ has the Bolzano-Weierstrass property iff each space $(X_i, d_i)$ has it.


 1. If each $(X_i, d_i)$ have the BW-property, then $(P, d)$ does.

    *Proof:* For what follows, if $g: \mathbb{N} \to \mathbb{N}$ is injective, then the subsequence of $(x_n)_{n \in \mathbb{N}}$ formed by $g$ is denoted $(x_n);g$.

    If $(x_m)$ is bounded in $P$, then $(\pi_1 x_m)$ is bounded in $X_1$, so there is some some increasing function $f_1: \mathbb{N} \to \mathbb{N}$ and some $c_1 \in X_1$ such that $(\pi_1 x_m);f_1 \to c_1. Then $(\pi_2 x_m);f_1$ is bounded, so we can again find an increasing $f_2: \mathbb{N} \to \mathbb{N}$ and $c_2$ such that $(\pi_2 x_m);f_2 \circ f_1 \to c_2$. Continue this to obtain $f_3, \ldots, f_n$ and $c_3, \ldots, c_m$. For all $i$, $(\pi_i x_m); f_n \circ \cdots \circ f_1$ converges to $c_i$ since it is a subsequence of $(\pi_i x_m);f_i \circ \cdots \circ f_1$, and this latter sequence converges go to $c_i$ by construction. So $(x_m);f_n \circ \cdots \circ f_1$ is a convergent subsequence of $(x_m)$.


 2. If $(P, d)$ has to BW-property, then each $(X_i, d_i)$ does.

    *Proof:* Any bounded sequence $(a_n)$ in $X_i$ can be turned into a sequence $(p_n)$ in $P$ by picking arbitrary $x_j \in X_j$ for $j \neq i$ and defining $p_n = (z_1, \ldots, z_n)$ with $z_i = a_n$ and $z_j = x_j$ for $i \neq j$. Then $(\pi_j(p_n)) = (a_n)$ if $j = i$ and $(\pi_j(p_n))$ is the constant sequence of $x_j$ otherwise. Since each $(\pi_j(p_n))$ is bounded in $X_j$, we have $(p_n)$ bounded in $P$, so it has a convergent subsequence $(p_{n_k})$ converging to come $c \in P$. This implies that, in particular, $(\pi_i(p_{n_k}))$ converges in $X_i$ to $\pi_i(c)$. But this is a subsequence of $(a_n)$, so $(a_n)$ has a subsequence converging to $\pi_i(c)$.


## Cauchy sequences and product spaces
If $(X_i, d_i)$ are metric spaces for $1 \leq i \leq n$, letting $P = \prod_1^n X_i$ and supposing $d$ is a conserving metric on $P$, then for any sequence $(x_m)$ in $P$, we have $(x_m)$ Cauchy in $P$ iff $(\pi_i(x_m))$ is Cauchy in $X_i$ for all $i$.

*Proof:* If $(x_m)$ is Cauchy in $(P, d)$, then for every $\epsilon > 0$ there is an $N$ such that for $k, m \geq N$, $d(x_k, x_m) < \epsilon$. But for each $i$, we have $d_i(\pi_i(x_k), \pi_i(x_m)) \leq \mu_{\infty}(x_k, x_m) \leq d(x_k, x_m) < \epsilon$. So each sequence $(\pi_i(x_m))$ is also Cauchy.

Conversely, if $(x_m)$ is a sequence in $P$ and $(\pi_i(x_m))$ is Cauchy in $X_i$ for every $i$, then for every $\epsilon > 0$ there is an $M_i$ for every $i$ such that for any $k, m \geq M_i$, $d_i(\pi_i(x_k), \pi_i(x_m)) < \epsilon / n$. So for every $k, m \geq M = max \{M_1, \ldots, M_n\}$ we have $d_i(\pi_i(x_k), \pi_i(x_m)) < \epsilon / n$ for all $i$. Hence for all $k, m \geq M$, we have $\mu_1(x_k, x_m) = \sum_1^n d_i(\pi_i(x_k), \pi_i(x_m)) < \epsilon$. But $d(x_k, x_m) \leq \mu_1(x_k, x_m)$, so the tail starting at $M$ of $(x_m)$ has all terms within the $\epsilon$ of one another. So $(x_m)$ must also be Cauchy.


## Completeness and product spaces
If $(X_i, d_i)$ are metric spaces for $1 \leq i \leq n$, letting $P = \prod_1^n X_i$ and supposing $d$ is a conserving metric on $P$, then $(P, d)$ is complete iff each $(X_i, d_i)$ is complete.

*Proof:* If $P$ is complete, then for any collection of Cauchy sequences $(x_{im})$ in $X_i$, the sequence $(p_m)$ in $P$ defined by $p_m = (x_{1m}, \ldots, x_{nm})$ is a Cauchy sequence (since $d$ is conserving, by the previously proved proposition), so $(p_m)$ converges in $P$ to some $c \in P$ (since $P$ is complete by hypothesis). So this implies that each $(x_{im})$ converges to $\pi_i(c)$, since the $(P, d)$ has a product metric (due to $d$ being conserving). Since $(x_{im})$'s were arbitrary sequences, each $X_i$ must be complete.

Conversely, if each $X_i$ is complete, for any Cauchy sequence $(p_m)$ in $P$, we have that each $(\pi_i(p_m))$ is Cauchy as well, so each sequence converges to some $c_i$ by hypothesis (completeness of $X_i$). But since each sequence $(\pi_i(p_m))$ converges, $(p_m)$ must converge as well to $c = (c_1, \ldots, c_n)$ since $P$ has the product metric. So $P$ is complete.



## Compact sets

A subset $S$ of some metric space is **compact** if for every collection $\mathcal{U}$ of open sets whose union contains $S$, there's a finite subcollection $\{U_1, \ldots, U_n\}$ whose union also contains $S$. We call any collection of open sets whose union contains $S$ an **open cover** of $S$, and the finite subcollection is called a **finite sub-cover**. Restated, a subset is compact iff every open cover has a finite subcover.

## Open ball compactness
A subset $S$ is compact in $(X, d)$ iff every collection of open balls that cover $S$ containes a finite sub cover.

*Proof:* Compactness immediately implies that every cover of open balls has a finite subcover. Conversely, every open set is a union of open balls, so any open cover $\mathcal{O}$ can be transformed into a cover made out of open balls. By hypothesis this has a finite subcover $\mathcal{B}$. Each one of the balls in this subcover is a subset of one open set in the original open cover, so the subcollection of $\mathcal{O}$ of open sets that correspond to the open balls in $\mathcal{B}$ is finite, covers $S$, and is a subcollection of $\mathcal{O}$.


## Compact subsets are totally bounded
A compact set $S$ in a metric space is totally bounded, hence also bounded.  

*Proof:* For any $\epsilon > 0$, form the collection $S_{\epsilon} = \{ B(s; \epsilon) : s \in S \}$. $S_{\epsilon}$ is an open cover of $S$, hence has a finite subcover since $S$ is compact. This proves that $S$ is totally bounded since $\epsilon$ was arbitrary. Since totally bounded subsets are bounded, the result is established.

## Compact subsets are closed
A compact subset $S$ of some metric space $X$ is closed.

*Proof:* Let $y$ be any point in $X-S$. For any $x \in S$, $B(x; d(x, y) / 2)$ and $B(y; d(x,y)/2)$ are disjoint. Take the collection of open balls around points of $S$. This is an open cover of $S$, and hence has a finite subcover of balls $B(x_i; d(x_i; y)/2)$ for some $x_1, \ldots, x_n$. Then $\bigcap B(y; d(x_i, y)/2)$ is an open ball around $y$ that is disjoint from $S$, hence contained in $X - S$, so $X - S$ is open.


## Closed subsets of compact subsets are compact
If $S$ is a compact subset of $X$ and $C$ is a closed subset of $S$, then $C$ is compact.

*Proof:* Any open cover $\mathcal{O}$ of $C$ can be transformed into an open cover of $S$ via $\mathcal{O} \cup \{ X - C \}$ since $X - C$ is open on account of $C$ being closed. So we have some finite subcover of $S$, call it $\mathcal{S}$. If it contains $X - C$, then $\mathcal{S} - (X - C)$ is a finite subcover of $\mathcal{O}$. If not, then $\mathcal{S}$ is a finite subcover of $\mathcal{O}$. So $C$ is compact.


## Continuous image of a compact space is compact
If $K$ is a compact metric space, $f: K \rightarrow Y$ is a continuous function, with $Y$ an arbitrary metric space, then the image $f(K)$ is compact in $Y$.

*Proof:* Let $\mathcal{U}$ be an open cover of in $img(f)$, define $\mathcal{U}^{pre} = \{f^{pre}(A) : A \in \mathcal{U}\}$. Then $\mathcal{U}^{pre}$ covers $K$ since every $k \in K$ is mapped by $f$ to some $f(k) \in img(f)$, and $\mathcal{U}$, covering all of $img(f)$, has some $A_k$ containing $f(k)$, so $f^{pre}(A_k)$ contains $k$. But $K$ is compact, so $\mathcal{U}^{pre}$ has a finite subcover $\mathcal{F}$. All the sets in the subcover are the pre-images of sets in $img(f)$, i.e. of the form $f^{pre}(S)$ for some $S$. So $\mathcal{F} = \{ f^{pre}(S_1), \ldots, f^{pre}(S_n)\}$, and the $S_i$ form an open cover of $img(f)$ (since $f(f^{pre}(X)) = X$. Furthermore, the $S_i$'s are a subcollection of $\mathcal{U}$ by definition of $\mathcal{F}$. So $f(K)$ is compact. $\Box$


## Continuous function on a compact space is uniformly continuous
If $f: X \to Y$ is a continuous map between metric spaces $(X, d)$ and $(Y, e)$ and $X$ is compact, then $f$ is uniformly continuous.

 1. It suffices to assume $\epsilon > 0$ and prove that there is some $\delta > 0$ such that for any $x, y \in X$, $d(x, y) < \delta$ implies $e(f(x), f(y)) < \epsilon$,

 2. For any $\gamma > 0$, there is some $n \in \mathbb{N}$ and some $x_1, \ldots, x_n \in X$ and $\delta_1, \ldots, \delta_n > 0$ such that the collection of $B_X(x_k; \delta_k / 2)$'s covers $X$ and $f(B_X(x_k; \delta_k / 2)) \subseteq B_Y(f(x_k); \gamma)$ for all $1 \leq k \leq n$.

    *Proof:* By $f$'s continuity, for every $x$ there is some $\delta_x > 0$ such that $f(B_X(x; \delta_x)) \subseteq B_Y(f(x); \gamma)$. The collection $\{ B_X(x; \delta_x / 2) \}$ is an open cover of $X$, so it has a finite subcover. The proposition holds since $f(B_X(x; \delta_x / 2)) \subseteq f(B_X(x; \delta_x))$.

 3. Define $\delta = min \{ \delta_k : 1 \leq k \leq n \}$, where $\delta_k$'s are defined by setting $\gamma = \epsilon / 2$ in (2).

 4. For any $x, y \in X$ with $d(x, y) < \delta$, there is a $k$ such that $x$ and $y$ are elements of $B_X(x_k; \delta_k)$.

    *Proof:* There is a $k$ such that $x \in B_X(x_k; \delta_k)$, since they cover $X$. If $y$ is such that $d(x,y) < \delta$, then $d(x_k, y) \leq d(x_k, x) + d(x, y) < \delta_k$, so $y \in B_X(x_k; \delta_k)$ as well.

 5. If $x$ and $y$ are such that $d(x, y) < \delta$, then $e(f(x), f(y)) < \epsilon$.

    *Proof:* By triangle inequality, $e(f(x), f(y)) \leq e(f(x), f(x_k)) + e(f(x_k), f(y)) < \epsilon/2 + \epsilon/2 = \epsilon$< where $k$ is the integer that we know exists by (4), and where the inequality holds by the properties of the finite cover in (2).

 6. Q.E.D.

    *Proof:* The $\delta$ we wanted to define is established in (3), and it has the desired properties by (5).


## Equivalent characterization of compactness
For a metric space $(X, d)$, the following are equivalent:

 1. $X$ is compact
 2. $X$ is complete and totally bounded
 3. $X$ is bounded and has the Bolzano-Weierstrass property.
 4. Every sequence in $X$ has a convergent subsequence
 5. Every infinite subset of $X$ has an accumulation point in $X$

*Proof:* If (3) is true, then $X$ is bounded and has the Bolzano-Weierstrass property, so $X$ is complete and every bounded subset is totally bounded. But since $X$ is bounded, it must be totally bounded as well. So (3) implies (2). Assuming (2), we have that $X$ is complete and totaly bounded. So $X$ must be bounded. Also, any bounded subset of $X$ is totally bounded since every subset is totally bounded. This proves that (2) implies (3).

If (3) holds, then every sequence in $X$ is bounded and so has a convergent subsequence, which implies (4).

If (4) holds, then every sequence in $X$ has a convergent, hence Cauchy subsequence. This implies that $X$ is totally bounded. Also if every sequence has a convergent sequence, then in particular every Cauchy sequence has a convergent subsequence, implying every Cauchy sequence converges, so $X$ is complete and (4) implies (2).

If (3) holds, we know that for every bounded infinite subset there is an accumulation point in $X$. But we also know it's bounded, so every subset is bounded. Hence for every infinite subset there is an accumulation point in $X$, proving that (3) implies (5).

If (5) holds, then any sequence's set of terms is either finite (in which case it certainly contains a convergent subsequence, namely any subsequence of a term that repeats infinitely often), or the set of terms is infinite, in which case there is an accumulation point of the set in $X$. But this implies that we can find a subsequence that converges to it. So (4) holds.


Up til now, we've proven that (2) through (5) are equivalent.

If (1) is true, then for any infinite subset $S$ of $X$, if there are no accumulation points of $S$ in $X$, then every $s \in S$ is an isolated point and every $x \in X - S$ has an open ball around $x$ disjoint from $S$. In either case, every $x \in X$ has some $B(x; \epsilon_x)$ that contains, at most, one element from $S$, which could only be $x$ if it exists. The collection of $B(x; \epsilon_x)$'s is an open cover of $X$, but there could not be any finite subcover, since that would imply a finite cover of $S$, which is an impossibility since each cover element contains at most one element of $S$, which is infinite. So (1) implies (5).

If (4) is true, then for every open cover $\mathcal{O}$ of $X$, we can find an $\epsilon > 0$ such that every $x \in X$ has a $U \in \mathcal{O}$ such that $x \in B(x; \epsilon) \subseteq U$. If not, for every $n \in \mathbb{N}$, we can find (in particular) an $x_n \in X$ such that every $U \in \mathcal{O}$ that contains $x_n$ does not contain $B(x; 1/n)$. We now have a sequence $(x_n)$, so by hypothesis it has a convergent subsequence $(x_{n_k})$ converging to some $c \in X$. But $c$ is contained in some $U_c \in \mathcal{O}$, and since $U_c$ is open, there is an  $\epsilon > 0$ such that $B(c; \epsilon) \subseteq U_c$. We can find a $j$ such that $(x_{n_k})_{k \geq j}$ is contained in $B(c; \epsilon / 2)$. We can also find an $N$ such that $1/N < \epsilon / 2$. This implies that for all $m \geq max \{j, N\}$ we have, for all $y \in B(x_m; 1/m)$, $d(c, y) \leq d(c, x_m) + d(x_m, y) < \epsilon / 2 + \epsilon / 2 = \epsilon$. So $y \in B(c; \epsilon)$, hence $B(x_m; 1/m) \subseteq U_c$, which contradicts how $x_m$ was chosen, namely that the $1/m$-ball around $x_m$ is not completely contained by any element.

Now, since we know $X$ is totally bounded, there is an $\epsilon$-net of $X$. Each of those $\epsilon$-balls is contained in some $U \in \mathcal{O}$, so the collection of those cover elements is a finite subcover, hence $X$ is compact.


### Definition of sequential compactness
Condition (4) of the previous proposition is called **sequential compactness**. The previous theorem, in particular, proves that a metric space is compact iff it is sequentially compact.


## Banach fixed point theorem
If $f: X \to X$ is a contraction map on a complete metric space $X$, then there is a unique $x \in X$ such that $f(x) = x$.

*Proof:* Let $(x_n)$ be the sequence in $X$ defined by $x_0$ being arbitrary and $x_n = f^n(x_0)$. Then 

$$d(x_2, x_1) \leq k d(x_1, x_0)$$

and in general:

$$d(x_{n+1}, x_n) \leq k^n d(x_1, x_0)$$

Also note for any $x, y \in X$,

$$
\begin{aligned}
d(x, y) & \leq d(x, f(x)) + d(f(x), f(y)) + d(f(y), y) \\
        & \leq k d(x, y) + d(x, f(x)) + d(y, f(y))
\end{aligned}
$$

which leads to

$$(1 - k) d(x, y) \leq d(x, f(x)) + d(y, f(y))$$

Note that this implies that if $x$ and $y$ are fixed points of $f$, then $d(x, y) \leq 0/(1 -k)$, or $d(x,y) = 0$, so $x = y$. Hence the fixed point, if it exists, is unique.

For any $N$ and any $m, n \geq N$, we have

$$d(x_n, x_m) \leq \frac{1}{1-k} [k^n + k^m] d(x_1, x_0)$$

But since the sequence $(k^n)$ is strictly decreasing, $k^n \leq k^N$ and $k^m \leq k^N$, so

$$d(x_n, x_m) \leq \frac{2 k^N}{1-k} d(x_1, x_0)$$

So for any $\epsilon$< choose $N$ such that $\frac{2 k^N}{1-k} d(x_1, x_0) < \epsilon$ to ensure that all terms in the tail starting at $N$ are within $\epsilon$ of each other. This proves that $(x_n)$ is a Cauchy sequence, so it converges in $X$ since $X$ is complete. Let $y = lim_{n \to \infty} x_n$. By $f$'s continuity, we have that $(f(x_n))$ converges to $f(y)$. But $(f(x_n))$ is tail of $(x_n)$ starting at the second term, so it has the same limit as $(x_n)$, namely $y$. In other words, $f(y) = y$.

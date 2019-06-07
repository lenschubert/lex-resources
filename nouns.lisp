;; Noun lexicon modified from *n.le*, which is a copy of the Alvey n.le 
;; noun lexicon.
;;
;; Possible SUBCATs in n.le are PP, SFIN, VPINF, SBSE, and WHS. 
;; Unfortunately that's very incomplete, esp. for deverbal nouns.
;; E.g., "distortion" and "murder" have no SUBCAT, yet we may well 
;; have "the distortion of the lens by the water pressure", "murder
;; of Jamal by Ahmad". I think in many cases we can recover subcats
;; for subjects and objects by looking in the verb lexicon for verbs
;; identical with the noun up to perhaps -ion, -ment, -ing, -ence,
;; or variants thereof (allowing for instance "abolish" --> "abolition", 
;; where the "sh" is lost, or "abstain" --> "abstinence", where "ain"
;; is lost). Some cases are special, though: "ascend"--> "ascent";
;; "baptize" --> "baptism"; "inquire" --> "inquiry"; "foreclose" 
;; --> "foreclosure"; and sometimes the N/V relation is misleading 
;; ("bash", "incur"/"incursion").
;;
;; We collapse nouns with the same stem to single entries with various
;; subcat patterns. We omit plurals, if there is a corresponding singular.
;; (Sometimes there is not, as in the case of "pickings" or "false pretenses").
;; So we keep these as PLUR entries (distinct from MASS and COUNT).
;; We retain COUNT information as feature COUNT or MASS, while SING
;; designates ambiguity -- which in Alvey is signaled by absence of
;; a COUNT +/- feature. n.le also uses (GROUP +), tyically for singulars
;; denoting a group, e.g., "crew", "audience", "battalion", "blues", 
;; "elite", "fair sex", "family", "middle class", etc.). 
;;
;; For honorifics/terms of address we use both the N category and a
;; separate entry as VOC or HON; e.g., "mother" as (COUNT +) is N, and 
;; as (ADDRESS +) is both VOC and HON. If an entry allows both (ADDRESS +)
;; and (PREMOD +), it's classifiable as HON; if (ADDRESS +) but not
;; (PREMOD +), it is classifiable as VOC. If it is (COUNT +) as a
;; separate entry without (ADDRESS +), then it is classifiable as N.
;; By these criteria "mister" is VOC, and HON ("Hey, Mister"; "Mr. Green")
;; and also N, which is questionable (?"He became a Mister"). By contrast,
;; informal ones like "Mom", "babe", or "boss", are only N and VOC. 
;; Alvey also "bastard" as VOC (which isn't really ADDRESS at all, 
;; just an insulting nominal predicate), let alone  "beast", "bighead", 
;; "bitch", "blabbermouth", "caveman", and many others (though probably 
;; not the majority). It seems that they classify as ADDR + whenever you
;; can say "you <so-and-so>!". But one can also say "You joker!", and
;; they don't catch all the insults either, like "You loser!", or "You
;; scumbag!" (they do have "scum" as ADDRESS).
;;
;; Multiwords are put in quotes, e.g., "fall guy" (but the stem is given
;; as FALL_GUY). We convert this to (N fall guy), and use ULF FALL_GUY.N.
;;
;; SUBCAT PP and PFORM need to be aligned as in the case of verbs.
;;
;; n.le also has some (REG -) features for many plural entries,
;; latinate and foreign singulars, and multiwords that don't pluralize
;; regularly. It's too miscellaneous to keep.
;;
;; There is also a PN feature for proper nouns like Acts, Adam, Afrikaans,
;; etc. Mostly they're names, alas not all. E.g., "animal kingdom", which
;; requires "the" to become a NP, i.e., ULF is |animal kingdom|.n. I think
;; most of these can be detected from the fact that the second word has
;; its own entry; though this fails for "Ascension Day", "Ash Wednesday".
;; My guess about the PN feature on some entries like "axe", "back crawl":
;; it seems that the justification is terms like "[They gave him] the axe",
;; "[He did] the back crawl"... The lower case indicates the N category,
;; thus |back crawl|.n (or back_crawl.n?). They even have PN for "back of ..."
;; i.e., functional nouns. I suppose we want back-of.n or even back-of.f
;; in such a case. I think these ULFs are safe if both PFORM OF and PN + 
;; are present. Often PFORM OF indicates a partitive ("bale", "batch",
;; "dollop", "couple", "pinch", etc.)

;; When a word or multiword contains upper case, I'm using |word{s}|.n
;; even if no PN feature is given; e.g., "National Health Service".
;;
;; Concerning deadjectival nominals, we also may need to add some subcats --
;; e.g., "kindness" currently lacks any subcats. Looking for -ness endings
;; preceded by lexicalized ADJ stems is risky, though: e.g., "business"
;; is hardly "busy + -ness"; but (1) more often than not, deadjectival
;; nouns don't have significant complement structure, and (2) examples
;; like "business" are rare. We get "consciousness", and this actually
;; does have subcats in n.le, "effectiveness", "fitness", "fullness",
;; "gayness", "goodness", "happiness", "hardness", "Highness" (skip --
;; caps), "holiness", "illness", "kindness", etc. Then there are the -ity
;; nominals, like "ability" (hard to see as derivative from "able", from
;; which it should inherit an NP[inf] subcat). But again that's fairly
;; unusual: "acerbity", "acidity", "activity" (oops), "adversity", 
;; "anxiety", ... we'll just pick up the subcats explicitly provided for
;; such nominals.
;;
;; HOWEVER, many deajectival nominals are missing: abruptness, absurdity,
;; accessibility, etc.

module Base
  ( Noun (..),
    Verb (..),
    Modf (..),
    Phrase (..),
  )
where

-- The module Base is where all the basis of sentence construction in nwnr is contained. 


{-| There are three parts of speech in nwnr, namely: Noun, Verb, and Modifier.
The types Noun, Verb, and Modf here shows which parts of speech the word belongs to.

Noun corresponds to nouns, pronouns, and some numerals. For example, Noun \"Apple\", Noun \"You\", Noun \"3, three\".
Verb corresponds to verbs, which describe the action of an agent. For example, Verb \"Run\", Verb \"Swim\", Verb \"Pray to the god for your code's debugging\". # third one's a joke lol

Modifier corresponds to adjectives or adverbs. As seen in the construction \"I *am American*\", the modifier can also be used as a predicate of a sentence.
This kind of construction is common in languages like Korean, Chinese, etc.
Actually, Modifier plays another important role: narrowing down the meaning of a phrase. It will be discussed later.
 For example, Modf \"red, be red, redly\", Modf \"generous, be generous, generously\".

The typeclasses Show and Eq are derived from the urge of printing the phrases, and comparing their equality.-}

newtype Noun = Noun String deriving (Show, Eq)

newtype Verb = Verb String deriving (Show, Eq)

newtype Modf = Modf String deriving (Show, Eq)


{-| The phrase type shows the syntactical relationship between the words.
NWord, VWord, and MWord is used for a single-worded Phrase, a.k.a. the \"leaf\" of the syntax tree.
For example, NWord (Noun \"Water\"), VWord (Verb \"Scribble\").

Add is the 'branch' of syntax tree, and is mostly seen as applying the second phrase to the first phrase.
In nwnr, the type of phrase, or branch generated by Add is determined by the first leaf it has, because the language is very strictly head-initial.
For example, Add (NWord (Noun \"Water\")) (NWord (Noun \"John\")) means \"John's water\" normally. However, other interpretations are possible.
Hence, if you want to specify the \"possessive\" nature between John and his water, you can add MWord (Modf \"be possessed by, be owned by\") to the phrase.
In other words, Add (Add (NWord (Noun \"Water\")) (NWord (Noun \"John\"))) (MWord (Modf \"be possessed by, be owned by")).
The arguments of the verb other than the agent are generally bound to the verb using Add.
For instance, Add (VWord (Verb \"Write\")) (NWord (Noun \"Book\")) means \"to write a/the book\".

Join, on the other hand, is the way of constructing the sentence from the noun phrase and verb phrase.
The noun phrase in the second argument of Join is normally thought to be the agent or the actor of the verb phrase, unless explicitly noted.
Although the sentence created by Join is not strictly a part of speech, it can be used in the other sentence without any conversion.
The first Phrase of Join should be Verb or Modifier.
For example, Join (VWord (Verb \"Run\")) (NWord (Noun \"Jimin\")) means \"Jimin runs\".
It can be used as a component of other phrase. For example, Join (Add (VWord (Verb \"Think\")) (Join (VWord (Verb \"Run\")) (NWord (Noun \"Jimin\")))) (NWord (Noun \"I\")) means \"I think (that) Jimin runs\".

The Jux type, shortening for the Juxtaposition type, literally juxtaposes two same-typed words.
For example, Jux (NWord (Noun \"Apple\")) (NWord (Noun \"Samsung\")).
It is mostly used for equivalent conjunctions like \"and\", \"or\". Without the Modf to specify its meaning the Jux is normally considered as having \"and\" between its components.
However, if there exists a Modf to limit its meaning, it can mean or, xor, whatever defined.

The typeclasses Show and Eq are derived from the urge of printing them, and comparing equalities between them.
-}

data Phrase
  = NWord Noun
  | VWord Verb
  | MWord Modf
  | Add Phrase Phrase
  | Join Phrase Phrase
  | Jux Phrase Phrase
  deriving (Show, Eq)
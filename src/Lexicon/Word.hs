module Lexicon.Word where

import Base
import qualified Data.Map as M
import Data.Maybe

-- word list, just for testing and debugging
gzvu = verb "like"

zkjn = noun "Python"

fyeg = noun "Andrew"

gawy = verb "think"

bott = noun "I"

zqyq = noun "that"

ktzx = verb "catch"

tiwv = noun "he"

awyi = modf "PST"

bbqc = modf "after"

klmd = verb "run"

fzmf = modf "of"

axdv = noun "an expletive for completing the relative phrase that misses a noun"

ovyn = verb "an expletive for completing the relative phrase that misses a verb"

snic = modf "an expletive for completing the relative phrase that misses a modf"

kpnc = noun "the sentence containing this word is considered an error"

lookupWord :: String -> Phrase
lookupWord x = fromMaybe kpnc (M.lookup x wordList)

--word list (actual)
wordList :: M.Map String Phrase
wordList =
  M.fromList
    [ ("axdv", noun "I, me"),
      ("ovyn", noun "you"),
      ("snic", noun "this"),
      ("cnpk", noun "that"),
      ("rpma", noun "he, she, it"),
      ("ezbz", modf "any, someone, something"),
      ("gywf", modf "alone, isolated, self"),
      ("qtpc", noun "each other, together"),
      ("mvgr", noun "person, human"),
      ("fnpc", noun "body"),
      ("nqdf", noun "frame, bone"),
      ("wmcd", noun "head, face"),
      ("nuvx", noun "hand, arm"),
      ("ocrl", noun "foot, leg"),
      ("rshs", noun "sex, gender"),
      ("pxck", noun "male, man"),
      ("qhna", noun "female, woman"),
      ("ehhb", noun "love"),
      ("yqgm", noun "mind, spirit, soul"),
      ("pbaa", noun "parent, mother, father"),
      ("oymy", noun "child, kid, son, daughter"),
      ("scor", noun "brother, sister, sibling, ethnic group"),
      ("tabh", noun "mammal, beast"),
      ("ifvu", noun "bird, fowl"),
      ("agcx", noun "reptile, amphibian, batrachian"),
      ("hxsp", noun "fish"),
      ("oejs", noun "bug, worm, insect"),
      ("bybw", noun "plant, grass"),
      ("atoz", noun "tree, wood"),
      ("yxvu", noun "fruit, nut, berry"),
      ("wirh", noun "seed, egg, nucleus"),
      ("mrom", noun "grain, wheat, rice, barley, bread"),
      ("xsgf", noun "taste, flavor"),
      ("fitd", modf "sweet"),
      ("zrve", modf "bitterness, bitter"),
      ("awwm", modf "sour, acid"),
      ("fppl", modf "salt, salty"),
      ("rsfn", noun "sky, heaven"),
      ("dtvw", noun "earth, land, ground, soil"),
      ("duda", noun "sun, solar, year"),
      ("cbjd", noun "moon, month, satelite"),
      ("tvqg", noun "day"),
      ("slys", modf "dark, black"),
      ("zaad", modf "white, blank"),
      ("rlfn", noun "light"),
      ("edlo", noun "color"),
      ("yxjj", modf "red"),
      ("aiyw", modf "yellow"),
      ("jhge", modf "green"),
      ("dflu", modf "blue"),
      ("fioa", noun "water, wash"),
      ("zghv", modf "cold, frozen"),
      ("cwve", modf "hot, warm"),
      ("rtfm", noun "fire, burn"),
      ("bcjh", noun "oil, slippery"),
      ("yiio", noun "nature, original, character"),
      ("skah", noun "air, wind"),
      ("grfs", noun "stone, rock"),
      ("avdu", noun "metal, iron, steel"),
      ("ldkb", noun "money, gold, expensive"),
      ("ogge", noun "electricity, thrill"),
      ("wcyk", noun "tool, machine"),
      ("ntis", noun "thing, stuff, object"),
      ("asuh", noun "stick, rod, bar"),
      ("izvg", noun "board, plank"),
      ("smee", noun "box, bag, dish, bowl, cup"),
      ("zvfz", noun "house, home, building, room"),
      ("bkyg", noun "hole, door, gate"),
      ("kulj", noun "glass, transparent"),
      ("agqv", noun "gap, distance"),
      ("ddhh", noun "rubber, elasticity"),
      ("csro", noun "cloth, fabric, material"),
      ("pjxd", noun "paper, page"),
      ("vmmg", noun "picture, photograph, draw"),
      ("tzwc", noun "book, document"),
      ("rjjd", noun "sign, symbol, mark, trace"),
      ("qqux", noun "kind, sort, resemble, similar"),
      ("femh", noun "form, shape"),
      ("ktag", noun "dot, point"),
      ("cddl", noun "line, string, rope"),
      ("uqyh", noun "surface, skin, bark, plane"),
      ("dizw", noun "circle, ball"),
      ("ighx", noun "curve, bend"),
      ("vyja", noun "slope, twisted"),
      ("vvzz", noun "directly, straight"),
      ("zxaa", noun "edge, border, corner, limit"),
      ("upps", noun "way, path, passage, method"),
      ("goqd", noun "flat, fair, justice, balance, horizontal"),
      ("kwej", noun "ethics, moral, manners, etiquette"),
      ("xiuz", noun "rule, law"),
      ("dfiy", noun "public, social"),
      ("hart", noun "system, net"),
      ("emkz", noun "main, master, king, lead"),
      ("ezfv", noun "replace, represent, substitute"),
      ("axuo", noun "group, organization"),
      ("xlfo", noun "part, piece, lump, some, any"),
      ("oonj", noun "powder, dust, paste, dough"),
      ("rdhq", noun "number, count"),
      ("iwtu", noun "one, first, only, sole"),
      ("mufm", noun "two, second, pair"),
      ("fjwb", noun "three, third"),
      ("qril", noun "four, fourth"),
      ("iiyt", noun "five, fifth"),
      ("wcaf", noun "ten, tenth"),
      ("wfgp", noun "all, every, whole, entire"),
      ("qgeu", noun "each, individual"),
      ("qfil", noun "amount, quantity"),
      ("txfi", noun "state, level"),
      ("abqt", noun "compare, contest, compete"),
      ("ymbu", noun "value, worth, important"),
      ("owao", noun "most, best"),
      ("uyjj", noun "special, unique"),
      ("lxsn", noun "big, large"),
      ("navn", noun "small, little"),
      ("uegj", noun "long"),
      ("zwlo", noun "short"),
      ("bzzu", noun "many, much, a lot of"),
      ("lisw", noun "few, little"),
      ("tujw", noun "wide, thick"),
      ("iopl", noun "narrow, thin, sharp"),
      ("nnxs", noun "far, away"),
      ("fcuv", noun "near, nearly"),
      ("xmov", noun "fast, quick, early"),
      ("bzsg", noun "slow, late"),
      ("gips", noun "heavy, load, lift, weight"),
      ("wduw", noun "problem, matter, difficult, knot"),
      ("ksro", noun "old"),
      ("cwny", noun "young, new"),
      ("eeff", noun "different, another"),
      ("lrri", noun "same"),
      ("diua", noun "good, nice, like"),
      ("nxfr", noun "bad, wrong, crime"),
      ("qqxh", noun "fool, stupid, idiot"),
      ("jlni", noun "odd, strange, crazy"),
      ("dopy", noun "dirty, rotten, stink"),
      ("hnny", noun "clean, pure, innocent, clear"),
      ("czqu", noun "power, force, energy, strong"),
      ("dawm", noun "sacred, holy, god"),
      ("gslk", noun "art, beautiful"),
      ("plmp", noun "fun, play, game"),
      ("rzxg", noun "soft, comfortable"),
      ("udrp", noun "hard, solid"),
      ("lylz", noun "danger, risk"),
      ("prpl", noun "scary, terrible, afraid, fear"),
      ("qbhg", noun "sad, sorrow"),
      ("jbik", noun "angry, irritation, annoyance, stress"),
      ("jgir", noun "surprised, sudden, unexpected"),
      ("ctce", noun "feel, emotion"),
      ("evax", verb "see, look, watch"),
      ("hfze", verb "hear, listen"),
      ("eter", verb "smell, breathe"),
      ("fzbt", verb "eat, food"),
      ("tszw", verb "need"),
      ("zlnl", verb "want, wish, hope"),
      ("qzrf", verb "believe, lean"),
      ("uhwn", verb "record, save, store, keep"),
      ("krgr", verb "find, search, seek"),
      ("zmoe", verb "touch, rob, scratch"),
      ("vvan", verb "think"),
      ("ddeq", verb "know, knowledge"),
      ("nikd", verb "mean, signify"),
      ("wzon", verb "skill, technology, study, learn"),
      ("athx", verb "ask, question, curious, request"),
      ("yvyd", verb "meet, greeting, hello"),
      ("bloi", verb "call, name"),
      ("xrno", verb "sound"),
      ("ucmj", verb "language, talk, say, tell, speak"),
      ("nwnr", verb "write, writing, letter"),
      ("cfkn", verb "begin, start, open, on"),
      ("phml", verb "end, finish, close, shut, off"),
      ("qxbm", verb "cover, pack, wrap, hide, conceal"),
      ("vrba", verb "sleep, dream"),
      ("xojz", verb "sit, rest, relax, vacation"),
      ("bavw", verb "stand, vertical, wall"),
      ("zqwq", verb "wait, stay, remain"),
      ("swtc", verb "plan, ready, prepare"),
      ("ifta", verb "make, produce"),
      ("fvff", verb "try, attempt"),
      ("sqlb", verb "interest, care"),
      ("owvc", verb "grow, raise"),
      ("fyea", verb "base, support, endure, root"),
      ("phdo", verb "help"),
      ("izcu", verb "do, work, job"),
      ("hktj", verb "order, command"),
      ("ruma", verb "catch, hold, grab, hunt"),
      ("paut", verb "have, possess"),
      ("xpch", noun "pile, stack, heap, mountain"),
      ("bsal", verb "put, set, insert"),
      ("ymfq", verb "progress, process, continue"),
      ("mfjr", verb "produce, release, result"),
      ("vowh", verb "throw, send"),
      ("ovlm", verb "give, for, gift, present, donate"),
      ("twek", verb "get, accept, receive"),
      ("ovfq", verb "buy, sell"),
      ("hdoa", verb "change"),
      ("rqcu", verb "fit, proper, adapt, adjust"),
      ("fzlt", verb "live, habitation"),
      ("xxij", verb "die, kill"),
      ("fwlz", verb "sick, disease, suffer, poison"),
      ("pbrx", verb "hit, beat, bump"),
      ("ajrb", verb "fight, battle"),
      ("yfjl", verb "win, success, achieve"),
      ("rzje", verb "control, govern, manage, administer"),
      ("cids", verb "choose, select, decide"),
      ("kmqx", verb "list, table, sequence, order, organize"),
      ("rsml", verb "relate, relation, about"),
      ("hghv", verb "connect, link"),
      ("emiz", verb "add, supplement"),
      ("csvb", verb "subtract, minus, remove"),
      ("fcbf", verb "divide, cut, distribute"),
      ("bayc", verb "break, smash, damage, destroy"),
      ("rnfr", verb "mix"),
      ("cvrd", verb "burst, explode, gunpowder"),
      ("lfgh", verb "shake, vibrate, wave"),
      ("hjgt", verb "go, move"),
      ("fccy", verb "come, happen, event, occur"),
      ("qhjk", verb "pull, push, press"),
      ("fsxr", verb "follow, trace, chase, copy"),
      ("clzl", verb "pass, through, over"),
      ("suma", verb "carry, transport, car"),
      ("kudl", verb "turn, rotate, spin"),
      ("otso", verb "block, shut out, stop"),
      ("huvc", verb "fix, attach, hang, tie"),
      ("cynl", verb "untie, solve, release, free"),
      ("nhlo", verb "be, exist"),
      ("anhx", verb "in, inside"),
      ("fqyc", verb "out, outside"),
      ("zlax", verb "up, top, on, above, high, tall"),
      ("bbdc", verb "down, bottom, under, floor, low"),
      ("mdel", verb "middle, center, among"),
      ("ytql", verb "side, direction, around"),
      ("jsey", verb "next, subsequent, neighbor, adjoin"),
      ("mdzn", verb "right"),
      ("xmis", verb "left"),
      ("vkzs", verb "front"),
      ("citj", verb "back, the rear"),
      ("xxtu", verb "time"),
      ("svqu", verb "past, ago, before"),
      ("cmng", verb "future, after"),
      ("qyjg", verb "possible, can, ability"),
      ("stpu", verb "coincidence, chance, luck"),
      ("gmbh", verb "maybe, guess, if"),
      ("gojo", verb "be -ed, become"),
      ("vumx", verb "must, should"),
      ("jglk", verb "cause, reason"),
      ("ejsr", verb "truth, verity, fact, right"),
      ("peuy", verb "false, lie, temporary, wrong"),
      ("qmjc", verb "no, not, negation"),
      ("dnfe", verb "opposite, reflect, reaction"),
      ("obqy", verb "again, repeat"),
      ("eypi", verb "use, with"),
      ("rmdz", verb "place, in, at"),
      ("lego", verb "from, departure"),
      ("qtjq", verb "to, goal, aim, target, arrive"),
      ("zsge", noun "what"),
      ("gret", noun "to-noun dummy word"),
      ("yckv", verb "to-verd dummy word"),
      ("klbz", modf "to-modf dummy word"),
      ("lpkq", noun "an expletive for completing the relative phrase that misses a noun")
    ]

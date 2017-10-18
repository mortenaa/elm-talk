module UnionTypes exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)

-- union types
type Suit = Clubs | Diamonds | Hearths | Spades

type Rank = Face Name | Value Int
type Name = Ace | Jack | Queen | King

type alias Card =
  { suit : Suit
  , rank : Rank
  }

print : Card -> String
print card =
  case card.rank of
    Value value ->
      toString value ++ " of " ++ toString card.suit

    Face name ->
      toString name ++ " of " ++ toString card.suit

value : Card -> Int
value card =
  case card.rank of
    Value value ->
      value

    Face name ->
      case name of
        Ace -> 1
        Jack -> 11
        Queen -> 12
        King -> 13


suite : Test
suite =
    describe "Word Count"
        [ test "print" <|
            \() ->
                Expect.equal "Ace of Spades" <|
                    print { suit = Spades, rank = Face Ace}

        , test "value" <|
            \() ->
                Expect.equal 11 <|
                    value { suit = Diamonds, rank = Face Jack}

        ]

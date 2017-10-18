module Functions exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)

-- Function / with type signature
sayHello : String -> String
sayHello name =
  "Hello, " ++ name ++ "!"

-- Recursive
fibonacci : Int -> Int
fibonacci n =
  if n == 0 then
    0
  else if n == 1 then
    1
  else
   fibonacci (n - 1) + fibonacci (n - 2)

-- Record
card =
  { suit = "Spades"
  , rank = "Ace"
  }

-- Function taking a record
toString : { suit : String, rank : String } -> String
toString card =
  card.rank ++ " of " ++ card.suit
-- toString card

-- Type alias
type alias Card =
  { suit : String
  , rank : String
  }

toString2 : Card -> String
toString2 card =
  card.rank ++ " of " ++ card.suit
-- toString2 { suit = "Diamonds", rank = "King"}
-- toString2 (Card "Diamonds" "King")


suite : Test
suite =
    describe "Word Count"
        [ test "say hello" <|
            \() ->
                Expect.equal "Hello, Newman!" <|
                    sayHello "Newman"

        , test "toString card" <|
            \() ->
                Expect.equal "Ace of Spades" <|
                  toString card

        , test "toString2 card" <|
            \() ->
                Expect.equal "King of Diamonds" <|
                  toString2 { suit = "Diamonds", rank = "King"}
        , test "toString2 card constructor" <|
            \() ->
                Expect.equal "King of Diamonds" <|
                  toString2 (Card "Diamonds" "King")
        , test "fibonacci" <|
            \() ->
                Expect.equal 55 <|
                  fibonacci 10

        ]

# Elm
## En introduksjon
#### Morten Nygaard Åsnes

---

## Hva er Elm
- Kompilert til JavaScript
- Funksjonelt
- Statisk typet
- Frontend rammeverk

Note:
Elm er for mennesker, JavaScript er for maskiner
Ingen sideefekter.
Funksjoner er førsteklasses objekter.
JavaScript fatigue
React / Redux
Shadow Dom

---

## Hvorfor Elm
- Sikkert
- Stabilit
- Refaktorering
- Typesystem

Note:
Typesystem
Ingen null verdier
Feilmeldinger
Elm kompilatoren gjør kjøretidsfeil om til kompileringsfeil


---

## Funksjoner
```elm
sayHello : String -> String
sayHello name =
  "Hello, " ++ name ++ "!"
```
@[2-3]
@[1]

---
## Rekursive Funksjoner
```elm
fibonacci : Int -> Int
fibonacci n =
  if n == 0 then
    0
  else if n == 1 then
    1
  else
   fibonacci (n - 1) + fibonacci (n - 2)
```
@[1]
@[2-4]
@[1-2,5-6]
@[1-2,7-8]
---
## Records
```elm
card =
  { suit = "Spades"
  , rank = "Ace"
  }

toString : { suit : String, rank : String } -> String
toString card =
  card.rank ++ " of " ++ card.suit
```
@[1-4]
@[6-8]

---
## Type Alias
```elm
type alias Card =
  { suit : String
  , rank : String
  }

toString : Card -> String
toString card =
  card.rank ++ " of " ++ card.suit
```
@[1-4]
@[6-8]
---

---
Topics:
- Hva er elm
	- Statisk typet
	- Funksjonelt
	- Kompilerer til JavaScript
	- Elm Arkitekturen
	  - Frontend
		- Shadow Dom
		- React / Redux
- Hvorfor elm
	- Sikkerhet
	- Stabilitet
	- Brukervenlig
	- Feilmeldinger
	- Refaktorering
	- Typer
	- Uten null verdier
- Eksempel
	- Funksjoner
	- Typer
	- Arkitekturen



- test
- test 2
	- test 3

---

```elm
type alias Card =
  { suit : String
  , value : Int
  }
```
https://ellie-app.com/3wwM4XmnBa1/0
https://ellie-app.com/3wwM4XmnBa1/1

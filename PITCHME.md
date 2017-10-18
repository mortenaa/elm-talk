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
sayHello String -> String
sayHello name =
	"hello " ++ name
```
@[2-3](function body)
@[1](type signature)

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

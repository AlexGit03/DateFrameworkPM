# DateFramworkPM

Un framework che facilita la gestione delle date in swift!

Composto da:

1. PMFormatter
2. Extension DateFormatter
3. Extension di Date e String
4. PropertyWrapper

## PMFormatter

Un enum che stabilisce tutti i tipi di formati della data.
All'interno una variabile publica value che rappresenta il formato della data come tipo stringa.
e un dateFormatter di tipo DateFormatter appunto che ritorna la sua rappresentazione di quel tipo.
utile per trasformare date in stringa e viceversa

ES:

    PMFormatter.italianDateFormatter.dateFormatter?.string(from: <#T##Date#>)
    PMFormatter.italianDateFormatter.dateFormatter?.date(from: <#T##String#>)

## Extension DateFormatter

Identica cosa detta prima il date formatter serve per trasformare date in stringa e viceversa.
questi ti da tutti i tipi fomatter della data e la data formattata modello italiano

ES:

    DateFormatter.italianDateFormatter.string(from: <#T##Date#>)
    DateFormatter.italianDateFormatter.date(from: <#T##String#>)

## Extension di Date e String

Estensioni di date e stringhe ti da la possibilità da una stringa di trasformarla nel fomato che preferisci passato nel tipo PMFormatter o direttamente in stringa se non risulta nell'elenco
viceversa per la data.

ES:

    "22/07/2019".date(formatter: <#T##PMFormatter#>)
    "22/07/2019".date(formatter: <#T##String#>)
    ...
    
    Date().getStringWith(format: <#T##String#>)
    Date().getStringWith(format: <#T##PMFormatter#>)
    

## PropertyWrapper

Aggiunta una propertyWrapper chiamata FormatDateTypeString che ti da diverse opportunita sfrutando tutti i metodi visti prima.

La properti wrapper ha 4 costruttori per dare la possibilità di conversione a 360 gradi
Ti serve per dare in fare di dichiarazione nel modello stesso il formato disiderato di output della stringa sapendo a priori il formato della data che arriva dal server o semplicemente passata nel costruttore

ES:

    @FormatDateTypeString(dateFormatter: <#T##PMFormatter#>, inDateformat: <#T##PMFormatter#>)
    @FormatDateTypeString(dateFormatter: <#T##PMFormatter#>, inDateformat: <#T##String#>)
    @FormatDateTypeString(dateFormatter: <#T##String#>, inDateformat: <#T##PMFormatter#>)
    @FormatDateTypeString(dateFormatter: <#T##String#>, inDateformat: <#T##String#>)
    
Dichiarando la properti prededuta dal @ ed impostando il formato in input e il formato in output

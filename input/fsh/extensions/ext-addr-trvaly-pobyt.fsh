Extension: AddresaTrvalehoPobytuCz
Id:   addresa-trvaleho-pobytu-cz
Title:  "Adresa trvalého pobytu"
Description: "Tato extenze umožňuje zápis příznaku označujícího adresu trvalého pobytu. / This extension provides a link to the order [(Reference(ServiceRequest)] or requisition [ServiceRequest.requisition (i.e., 'Request.groupIdentifier')] that this report document is based on and fulfills."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert SetFmmandStatusRule ( 1, draft )
* insert ExtensionContext(Address)
* . ^short = "Adresa trvalého pobytu"
* . ^definition = "Toto rozšíření umožňuje určit, zda tato adresa je nebo není oficiální adresou (adresou trvalého pobytu), nebo uvést, že se jedná o oficiální adresu pro danou zemi./n/nThis extension allows to specify whether or not the address is an official address (permanent address) or to indicate that it is the official address for that country."

* value[x] 1..1
* value[x] only boolean or CodeableConcept
//* value[x] from $iso3166-1-2 (preferred)
* valueCodeableConcept from $iso3166-1-2 (preferred)
  * ^short = "Kód země, ve které je adresa oficiální adresou obdobnou adrese trvalého pobytu"
* valueBoolean ^short = "Příznak adresy trvalého pobytu"
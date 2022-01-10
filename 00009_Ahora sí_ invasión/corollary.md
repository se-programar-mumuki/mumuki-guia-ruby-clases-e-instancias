¡De acuerdo! Es importante tener en cuenta que nuestros objetos **también pueden crear otros objetos**, enviando el mensaje `new` a la clase que corresponda.

Por lo tanto, los casos en los que un objeto puede conocer a otro son:

* Cuando es un **objeto bien conocido**, como con los que veníamos trabajando hasta ahora
* Cuando el objeto se pasa por parámetro en un mensaje (`Juliana.atacar bouba, 4`)
* Cuando un objeto crea otro mediante el envío del mensaje `new`

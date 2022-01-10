Al igual que nos pasó con el resto de los mensajes, `sin_vida?` es exactamente igual para ambos zombis. ¡Otra vez hubo que escribir todo dos veces! :confounded:

Ahora ya es imposible no verlo: todo lo que se modifique en un zombi también se modifica en el otro. ¿Qué problemas nos trae esto?

* Aunque nos equivoquemos en _una_ cosa, el error se repite _dos_ veces.
* Si cambiara la forma en la que, por ejemplo, reciben daño, tendríamos que reescribir `recibir_danio` dos veces.
* ¿Y si hubiese **diez** zombis en lugar de dos? ¿Y si hubiese **cien**? ¡Cuántas veces habría que copiar y pegar! :flushed: 

Veamos una solución posible...
Los 4 primeros archivos despues del readme son simplemente relleno para el script del md5, no tienen ningun contenido.  

Respuestas a los conceptos a explicar:  

**-¿Qué hace el comando "cd"?**  
_Change Directory_, te permite cambiar de un directorio a otro.  

**-¿Y "ps"? ¿Por qué lo usamos con "aux"?**  
Sirve para saber qué procesos estan ocurriendo en el sistema.  
Se utiliza _aux_ para ver los procesos en activo de todos los usuarios del sistema.  

**-¿Qué es ".vimrc"? ¿Qué opciones hemos puesto en clase?**  
.vimrc es un archivo en el que puedes modificar los ajustes de vim.  
Hemos puesto estas opciones:  
_Number_ - Te muestra a la izquierda el numero de linea.  
_Syntax_ - Te permite poner color al código.  
_Set ts/Set tabstop = n_ - Permite cambiar el numero de espacios de los que esta formada una tabulación.  

**-¿Por qué es importante conocer la línea de comandos? ¿Qué ventajas tiene?**  
Permite conocer de una manera mucho más exhaustiva la máquina que se está usando.  
Además, te permite moverte muchísimo más ágilmente por esta, sustituyendo a la interfaz  
gráfica del sistema.  
Las ventajas que tiene es que si aprendes a utilizar la línea de comandos correctamente,  
da igual que la interfaz de una máquina difiera de otra, ya que podrás conocer esta  
mediante la línea de comandos.  
Además, como ya he comentado, es más agil que una interfaz gráfica.  


-----------------------------------------------------------------------------------------------------------------  
  
En el video se me ha olvidado explicar como funcionan los scripts que has pedido, asi que te lo pongo aquí:  
  
-----------------------------------------------------------------------------------------------------------------  

**El script del md5.**
  
Basicamente hacemos un for que recorre todo el ls, y a cada iteracion del bucle se le asigna el valor a la variable VARIABLE.  
Cada vez que se recorre el bucle, se ejecuta el comando echo junto con md5+las letras necesarias para hacer que cambie de color  
el mensaje, a continuacion el mensaje y para finalizar las letras para que el color de la terminal vuelva a ser el normal.  
Finalmente utilizamos | cowsay para que se mande dicho comando mediante la salida y entrada standard a cowsay.  
  
**El script del directorio, archivo, frase y fecha.**
  
Pedimos un nombre de directorio con _read_ y lo guardamos en la variable _DIRECTORIO_.  
Pedimos un nombre de archivo con _read_ y lo guardamos en la variable _ARCHIVO_.  
Finalmente pedimos una frase con _read_ y la guardamos en la variable _FRASE_.  

Para hacer que se genere el directorio con el archivo que contiene la frase dada por el usuario y la fecha actual se hace lo siguiente.  
_mkdir $DIRECTORIO_ para generar el directorio con el nombre que ha dado el usuario.  
_cd $DIRECTORIO_ para meternos dentro del directorio.  
_echo "`date`$FRASE" > $ARCHIVO_ para que se genere el archivo dado por el usuario y además contenga la fecha actual y la frase dada.

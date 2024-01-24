# Ejercicio 1: Diseño del contador

> Contexto: Este proyecto pretende hacer el diseño de la interfaz de un contador, no tiene aún ninguna funcionalidad, solo se ha trabajado en la parte visual, este proyecto se ha creado con flutter, siguiendo los parámetros marcados por figma.

### Diseño del proyecto:
- **__Estructura:__** Para el posicionamiento he creado un widget `Column`, además, he centrado todo el contenido de ese widget con otro widget llamado `Center`, la columna tiene cuatro secciones o `Containers`. El primer contenedor ocupa el 10% de la altura de la pantalla  y tenía como hijo el título "CONTADOR", el segundo contenedor ocupa el 60% de la altura de la pantalla y contiene el "0" como hijo, el tercer contenedor ocupa el 25% de la altura de la pantalla y contiene como hijo un widget `Row` que contiene tres hijos, los tres botones, posicionados con un `SpaceAround`, por último, el cuarto contenedor ocupa el 5% de la altura de la pantalla y contiene como hijo el texto de "By Pablo Ballesteros Lara".

- **__Estilos:__** He replicado los estilos más visibles del contador, colores y demás, lo único más complicado es implementar la fuente `Poppins`, para ello he seguido los siguientes pasos:
    1. Descargar la fuente (hay muchas páginas que permiten descargar cientos de tipos de fuentes).
    2. Crear en la raíz principal del proyecto una carpeta (en mi caso "fonts") donde incluyas el archivo descargado con la fuente deseada.
    3. Incluir en el archivo `pubspec.yaml` la fuente, en mi caso el código quedaría así:
  ```
         fonts:
    - family: Poppins
      fonts:
        - asset: fonts/Poppins-Bold.ttf
        - asset: fonts/Poppins-Regular.ttf
        - asset: fonts/Poppins-Thin.ttf

    ```
    4. Ejecutar en la terminal del proyecto el comando `flutter pub get` para que el proyecto descargue la fuente.
    5. Incluir la fuente en tus textos, en mi caso: `fontFamily: "Poppins" | fontWeight: "Bold"`

- **__Resultado:__**
  ![image](https://github.com/BallesterosDEV/BallesterosLaraA02/assets/118269269/fd3a6e1f-4c38-4add-a0f9-feeb8ed9aa31)

  __`Nota:`__ Al haber trabajado con porcentajes `height: MediaQuery.of(context).size.height * 0.05,` la página es bastante responsive.
  
  ![image](https://github.com/BallesterosDEV/BallesterosLaraA02/assets/118269269/a7e7dbba-b8ec-4995-9054-dd14f222082f)

  # Ejercicio 2: Lógica del contador

  > Contexto: Esta es una aplicación Flutter simple que muestra un contador en pantalla y proporciona botones "+" "RESET" y "-" para incrementar, resetear y decrementar el contador respectivamente. La implementación utiliza un widget personalizado (BotonContador) para representar los botones y sigue las mejores prácticas de Flutter para mejorar la modularidad y el mantenimiento del código.

### Estructura del Proyecto:
El proyecto está organizado en dos archivos principales:

- `main.dart`: Contiene la clase principal MyApp que define la estructura general de la aplicación y utiliza el widget ContadorApp como la página principal.

- `btn_contador.dart`: Contiene la definición del widget BotonContador, que es una plantilla para los botones utilizados en la aplicación.

### Uso del Widget `BotonContador`:
El widget `BotonContador` se utiliza para representar los botones "+" "RESET" y "-" en la aplicación. Este widget toma dos parámetros obligatorios:

- `label`: Un String que representa el texto en el botón.
- `onPressed`: Un callback VoidCallback que se ejecuta cuando se presiona el botón.
- 
### Implementación del Contador
La clase `_ContadorAppState` es un `StatefulWidget` que mantiene el estado del contador. La interfaz de usuario se actualiza mediante el método `setState` cada vez que se realiza una operación sobre el contador.

Los métodos para gestionar el contador son:

1. `incrementarContador`: Incrementa el valor del contador en 1.
2. `decrementarContador`: Decrementa el valor del contador en 1, pero solo si el contador es mayor que cero.
3. `resetearContador`: Restablece el valor del contador a cero.
   
### Estructura del Widget `ContadorApp`:
ContadorApp es un StatefulWidget que utiliza el estado definido en _ContadorAppState. La estructura de la aplicación se compone de contenedores y texto para mostrar el título, el contador y el autor. Además, utiliza el widget BotonContador para crear los botones de acción.

Esta estructura modular facilita la lectura y mantenimiento del código, siguiendo las mejores prácticas de Flutter.

- **__Resultado:__**
  ![image](https://github.com/BallesterosDEV/BallesterosLaraA02/assets/118269269/f3b1cc5a-8381-41d7-8a4f-78fba0dd0390)



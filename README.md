# By Pablo Ballesteros Lara

> Contexto: Este proyecto pretende hacer el diseño de la interfaz de un contador, no tiene aún ninguna funcionalidad, solo se ha trabajado en la parte visual, este proyecto se ha creado con flutter, siguiendo los parámetros marcados por figma.

### Diseño del proyecto:
- __**Estructura:**__ Para el posicionamiento he creado un widget `Column`, además, he centrado todo el contenido de ese widget con otro widget llamado `Center`, la columna tiene cuatro secciones o `Containers`. El primer contenedor ocupa el 10% de la altura de la pantalla  y tenía como hijo el título "CONTADOR", el segundo contenedor ocupa el 60% de la altura de la pantalla y contiene el "0" como hijo, el tercer contenedor ocupa el 25% de la altura de la pantalla y contiene como hijo un widget `Row` que contiene tres hijos, los tres botones, posicionados con un `SpaceAround`, por último, el cuarto contenedor ocupa el 5% de la altura de la pantalla y contiene como hijo el texto de "By Pablo Ballesteros Lara".

- __**Estilos:**__ He replicado los estilos más visibles del contador, colores y demás, lo único más complicado es implementar la fuente `Poppins`, para ello he seguido los siguientes pasos:
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

- __**Resultado:**__
  ![image](https://github.com/BallesterosDEV/BallesterosLaraA02/assets/118269269/fd3a6e1f-4c38-4add-a0f9-feeb8ed9aa31)

  __`Nota:`__ Al haber trabajado con porcentajes `height: MediaQuery.of(context).size.height * 0.05,` la página es bastante responsive.
  ![image](https://github.com/BallesterosDEV/BallesterosLaraA02/assets/118269269/a7e7dbba-b8ec-4995-9054-dd14f222082f)


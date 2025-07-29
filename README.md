# DecaPack
Datapack de Minecraft hecho para el Decacraft SMP.

## Instalación

1. Descarga los archivos `decapack-[versión].zip` y `decapack.json`.

### Al Crear un Mundo de Minecraft
1. Ir a `Más > Datapacks (Paquetes de Datos)` y pulsar `Abrir carpeta de paquetes`.
2. Descomprime el `.zip` en esa carpeta.

### Instalación en un Mundo de Minecraft ya Existente
1. Descomprime el archivo `.zip` en la carpeta `[raíz del servidor]/saves/<World Name/Folder>/datapacks/`.
2. Ejecuta `/reload`
3. Asegúrate de que el Datapack está activado. Para eso ejecuta `/datapack list`. En la lista de paquetes(s) de dato(s) activo(s) debería de aparecer `file/■ DecaPack ■`.

### Setup del mod Melius Commands
1. Instala el Mod `Melius Commands` (enlace de Modrinth [aquí](https://modrinth.com/mod/melius-commands)).
2. Pon en archivo `.json` en `[raíz del servidor]/config/melius-commands/commands/`.
3. Ejecuta `/reload`

## Uso

### /shop
Abre la tienda.

### /sell <price>
Venda el objeto en tu mano por el precio indicado.

### /money <get|set> <player> <amount: set>
#### /money get <player>
Obtener la cantidad de dinero que tiene un jugador.
#### /money set <player> <amount> [SOLO OP]
Establecer la cantidad de dinero que tiene un jugador.

### /pay <player> <amount>
Pagar cierta cantidad de dinero a un jugador.
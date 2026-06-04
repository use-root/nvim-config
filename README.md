
# NEOVIM - MY CONFURATION _(DOCS)_

Note: **This configuration is constantly updated**

---
</br>
PHILOSOPHY
---------------------------------------------------------

```bash

󰈸 ~ ❯ cat ide_minimal_conf.txt | rg -Ue "^Summary:[\n+\w\-:\s()]+\n$"

Summary:

Included:
- LSP
- Formatter conform
- Telescope
- Emmet
- Mason
- Statusline personalizada
- Transparencia

Not included:
- Autocomplete (nvim-cmp)
- Snippets
- Lateral Menu
- Dashboard
- Git UI
- DAP (debugger)
```

=============================================================
</br>
PLUGINS INSTALADOS
---------------------------------------------------------

```bash
󰈸 ~ ❯ cat ide_minimal_conf.txt | rg -Ue "^Summary:[\n+\w\-:\s()]+\n$"

1. lazy.nvim
---------------------------------------------------------

Administrador de plugins.

Funciones:
- Instala plugins
- Actualiza plugins
- Carga plugins

Comandos:

:Lazy

Dentro de Lazy:

u     -> actualizar plugins
U     -> actualizar todo
x     -> limpiar plugins no usados
q     -> salir

=============================================================
2. mason.nvim
---------------------------------------------------------

Gestor de herramientas externas.

Funciones:
- Instala LSP
- Instala formatters
- Instala linters

Comandos:

:Mason

:MasonInstall pyright

:MasonInstall clangd

:MasonInstall stylua

:MasonInstall prettier

:MasonInstall black

:MasonUninstall nombre

=========================================================

3. mason-lspconfig.nvim
---------------------------------------------------------

Conecta Mason con LSP.

No tiene comandos propios.

Su trabajo es:

Mason
   ↓
Instala servidor
   ↓
LSP lo utiliza

=========================================================

4. nvim-lspconfig
---------------------------------------------------------

Cliente LSP.

Lenguajes configurados:

Python      -> pyright
Lua         -> lua_ls
C           -> clangd
C++         -> clangd
Java        -> jdtls
HTML        -> html
CSS         -> cssls
JSON        -> jsonls
JS          -> ts_ls
TS          -> ts_ls

=========================================================

5. conform.nvim
---------------------------------------------------------

Formateador.

Formatters:

Lua         -> stylua
Python      -> black
JavaScript  -> prettier
TypeScript  -> prettier
HTML        -> prettier
CSS         -> prettier
JSON        -> prettier
Java        -> google-java-format
C           -> clang-format
C++         -> clang-format

Comandos:

:ConformInfo

Atajos:

<leader>f

Ejemplo:

Space + f

=========================================================

6. telescope.nvim
---------------------------------------------------------

Buscador principal.

Atajos:

<leader>ff

Buscar archivos.

Ejemplo:

Space ff

---------------------------------------------------------

<leader>fg

Buscar texto dentro del proyecto.

Ejemplo:

Space fg

Escribe:

main

Y busca todas las apariciones.

---------------------------------------------------------

<leader>fb

Lista buffers abiertos.

Ejemplo:

Space fb

---------------------------------------------------------

<leader>fh

Buscar ayuda de Neovim.

Ejemplo:

Space fh

=========================================================

7. telescope-fzf-native.nvim
---------------------------------------------------------

Acelera Telescope.

No tiene comandos.

Trabaja automáticamente.

=========================================================

8. plenary.nvim
---------------------------------------------------------

Dependencia de Telescope.

No tiene comandos.

=========================================================

9. emmet-vim
---------------------------------------------------------

Expansión HTML rápida.

Ejemplos:

ul>li*5

TAB

Resultado:

<ul>
  <li></li>
  <li></li>
  <li></li>
  <li></li>
  <li></li>
</ul>

---------------------------------------------------------

div.container

TAB

Resultado:

<div class="container"></div>

---------------------------------------------------------

html:5

TAB

Genera plantilla HTML completa.
```
=============================================================
LSP

Ir a definición:

gd

Ejemplo:

funcion();

cursor encima

gd

Salta a la definición.

---------------------------------------------------------

Referencias:

gr

Muestra todos los lugares donde se usa.

---------------------------------------------------------

Documentación:

K

Muestra documentación flotante.

---------------------------------------------------------

Renombrar:

<leader>rn

Ejemplo:

Space rn

nuevo_nombre

---------------------------------------------------------

Code Actions:

<leader>ca

Ejemplo:

Space ca

=========================================================
VENTANAS
=========================================================

División vertical:

<leader>sv

Space sv

---------------------------------------------------------

División horizontal:

<leader>sh

Space sh

---------------------------------------------------------

Moverse entre ventanas:

Ctrl+h

izquierda

Ctrl+j

abajo

Ctrl+k

arriba

Ctrl+l

derecha

=========================================================
BUFFERS
=========================================================

Siguiente:

<leader>bn

Space bn

---------------------------------------------------------

Anterior:

<leader>bp

Space bp

=========================================================
TERMINAL
=========================================================

Abrir terminal:

<leader>t

Space t

---------------------------------------------------------

Salir de terminal:

Esc

=========================================================
ARCHIVOS
=========================================================

Explorador:

<leader>e

Space e

---------------------------------------------------------

Buscar archivo:

<leader>ff

Space ff

=========================================================
EDICIÓN
=========================================================

Guardar:

<leader>s

Space s

---------------------------------------------------------

Guardar y salir:

<leader>x

Space x

---------------------------------------------------------

Unir líneas:

J

Mantiene posición del cursor.

=========================================================
MOVER LÍNEAS
=========================================================

Subir línea:

Alt+k

---------------------------------------------------------

Bajar línea:

Alt+j

---------------------------------------------------------

Modo visual:

Alt+k

Alt+j

También funciona.

=========================================================
INDENTACIÓN
=========================================================

Visual:

>

Indentar derecha.

---------------------------------------------------------

<

Indentar izquierda.

=========================================================
CONFIGURACIÓN
=========================================================

Editar config:

<leader>rc

Space rc

---------------------------------------------------------

Recargar config:

<leader>rl

Space rl

=========================================================
PORTAPAPELES
=========================================================

Copiar línea:

yy

---------------------------------------------------------

Pegar:

p

---------------------------------------------------------

Copiar selección:

y

---------------------------------------------------------

Pegar antes:

P

=========================================================
NAVEGACIÓN NATIVA VIM
=========================================================

h

izquierda

---------------------------------------------------------

j

abajo

---------------------------------------------------------

k

arriba

---------------------------------------------------------

l

derecha

---------------------------------------------------------

gg

inicio archivo

---------------------------------------------------------

G

final archivo

---------------------------------------------------------

0

inicio línea

---------------------------------------------------------

$

final línea

---------------------------------------------------------

w

siguiente palabra

---------------------------------------------------------

b

palabra anterior

---------------------------------------------------------

e

final palabra

=========================================================
BUSCAR
=========================================================

/

buscar texto

Ejemplo:

/main

Enter

---------------------------------------------------------

n

siguiente resultado

---------------------------------------------------------

N

resultado anterior

=========================================================
ESTADO ACTUAL
---------------------------------------------------------

✓ Lazy
✓ Mason
✓ Mason-LSP
✓ LSP
✓ Conform
✓ Telescope
✓ Emmet
✓ Statusline propia
✓ Transparencia
✓ Python
✓ Lua
✓ JavaScript
✓ TypeScript
✓ HTML
✓ CSS
✓ JSON
✓ C
✓ C++
✓ Java

Total plugins:
9

Configuración:
Minimalista + moderna + sin interfaz pesada.

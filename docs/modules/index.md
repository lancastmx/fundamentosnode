# Módulo: index.ts

## Descripción

El archivo `index.ts` sirve como el punto de entrada principal para probar el entorno de ejecución Bun en este proyecto. Su propósito central es demostrar la ejecución de un script de TypeScript nativo en Bun, imprimir información del entorno y proporcionar una utilidad básica de suma que además es verificada mediante un caso de prueba interno básico y aserciones del lenguaje.

## Análisis de Funciones

### `suma`

| Parámetro | Tipo     | Retorno  |
| --------- | -------- | -------- |
| `a`       | `number` |          |
| `b`       | `number` | `number` |

#### Lógica Interna

La función `suma` toma dos operandos numéricos y retorna el resultado lógico de su adición. Está exportada (`export`) de manera que pueda ser consumida por otros módulos, primariamente por suites de testing.

#### Ejemplo de uso

```typescript
import { suma } from './index.ts'

const resultado = suma(10, 5)
console.log(resultado) // Imprime: 15
```

### `resta`

| Parámetro | Tipo     | Retorno  |
| --------- | -------- | -------- |
| `a`       | `number` |          |
| `b`       | `number` | `number` |

#### Lógica Interna

La función `resta` toma dos operandos numéricos y retorna la sustracción del primero menos el segundo. Está exportada (`export`) de manera que pueda ser consumida por otros módulos, primariamente por suites de testing.

#### Ejemplo de uso

```typescript
import { resta } from './index.ts'

const resultado = resta(10, 5)
console.log(resultado) // Imprime: 5
```

### `multiplicar`

| Parámetro | Tipo     | Retorno  |
| --------- | -------- | -------- |
| `a`       | `number` |          |
| `b`       | `number` | `number` |

#### Lógica Interna

La función `multiplicar` toma dos operandos numéricos y retorna su producto cruzado multiplicando el factor uno con el segundo. Está exportada (`export`) de manera que pueda ser consumida por otros módulos.

#### Ejemplo de uso

```typescript
import { multiplicar } from './index.ts'

const resultado = multiplicar(10, 5)
console.log(resultado) // Imprime: 50
```

### `quienesSomos`

| Parámetro | Tipo | Retorno  |
| --------- | ---- | -------- |
|           |      | `string` |

#### Lógica Interna

La función `quienesSomos` se encarga de presentar el proyecto a través de una cadena de texto. Está exportada (`export`) de manera que pueda ser consumida por otros módulos, principalmente para corroborar sus valores en testing.

#### Ejemplo de uso

```typescript
import { quienesSomos } from './index.ts'

const presentacion = quienesSomos()
console.log(presentacion)
```

## Relación con Tests

Este módulo cuenta con pruebas unitarias asociadas en el archivo `index.test.ts`. Dichas pruebas validan que el funcionamiento aritmético de la función `suma` maneje correctamente tanto sumas de factores positivos como negativos mediante la librería nativa `bun:test`. Adicionalmente, `index.ts` cuenta con un simple `throw new Error` al final de su script a manera de aserción preventiva en tiempo de ejecución.

console.log('Hello via Bun!')
console.log(process.version)
console.log('hola perrita')
/**
 * Función que suma dos números.
 * @param a - El primer número a sumar.
 * @param b - El segundo número a sumar.
 * @returns La suma de ambos números.
 */
export function suma(a: number, b: number): number {
  return a + b
}

/**
 * Función que resta dos números.
 * @param a - El minuendo.
 * @param b - El sustraendo.
 * @returns La resta de a menos b.
 */
export function resta(a: number, b: number): number {
  return a - b
}

/**
 * Función que multiplica dos números.
 * @param a - El primer factor.
 * @param b - El segundo factor.
 * @returns El producto de ambos factores.
 */
export function multiplicar(a: number, b: number): number {
  return a * b
}

/**
 * Función que presenta el proyecto.
 * @returns Un saludo indicando el nombre de los creadores o propósito del proyecto.
 */
export function quienesSomos(): string {
  return 'Este es un proyecto de fundamentos de Node/Bun creado por el agente de IA'
}

const resultado = suma(2, 3)

if (resultado !== 5) {
  throw new Error('La suma está mal ❌')
}

console.log('Todo correcto ✅')

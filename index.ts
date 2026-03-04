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

const resultado = suma(2, 3)

if (resultado !== 5) {
  throw new Error('La suma está mal ❌')
}

console.log('Todo correcto ✅')

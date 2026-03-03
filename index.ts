console.log('Hello via Bun!')
console.log(process.version)
console.log('hola perrita')
function suma(a: number, b: number): number {
  return a + b
}

const resultado = suma(2, 3)

if (resultado !== 5) {
  throw new Error('La suma está mal ❌')
}

console.log('Todo correcto ✅')

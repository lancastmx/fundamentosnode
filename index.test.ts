import { expect, test } from 'bun:test'
import { suma } from './index.ts'

test('suma() debe sumar dos números correctamente', () => {
  expect(suma(2, 3)).toBe(5)
  expect(suma(-1, 5)).toBe(4)
})

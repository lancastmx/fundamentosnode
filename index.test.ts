import { expect, test } from 'bun:test'
import { suma, resta, multiplicar, quienesSomos } from './index.ts'

test('suma() debe sumar dos números correctamente', () => {
  expect(suma(2, 3)).toBe(5)
  expect(suma(-1, 5)).toBe(4)
})

test('resta() debe restar dos números correctamente', () => {
  expect(resta(10, 5)).toBe(5)
  expect(resta(2, 5)).toBe(-3)
})

test('multiplicar() debe multiplicar dos números correctamente', () => {
  expect(multiplicar(10, 5)).toBe(50)
  expect(multiplicar(-2, 5)).toBe(-10)
})

test('quienesSomos() debe retornar la presentación del proyecto', () => {
  const presentacion = quienesSomos()
  expect(presentacion).toBeTypeOf('string')
  expect(presentacion).toContain('proyecto de fundamentos de Node/Bun')
})

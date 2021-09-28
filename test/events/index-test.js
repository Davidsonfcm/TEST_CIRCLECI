const assert = require('assert');
const events = require('../../src/events');

describe('Testes unitários de eventos.', () => {
  it('Inserir evento', () => {
    const result = events.insert('foo', 1);
    assert.ok(result);
  });
  it('Obter Evento', () => {
    const result = events.get('foo');
    assert.ok(result);
   });
  it('Remove evento', () => {
    const result = events.remove('foo');
    assert.ok(result);
  });
});

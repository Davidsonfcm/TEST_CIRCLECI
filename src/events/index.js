const events = new Map();

const insert = (key, value) => events.set(key, value);

const get = (key) => events.get(key);

const remove = (key) => events.delete(key);

module.exports = {
  insert,
  get,
  remove
};

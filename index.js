const events = require('./src/events');

setInterval(() => {
  const count = events.get('request_received') || 0;
  events.insert('request_received', count + 1);
  console.info('Receiving request_received event number:', count);
}, 1000);

setInterval(() => {
  events.remove('request_received');
  console.info('request_received event cleaned.');
}, 10000);
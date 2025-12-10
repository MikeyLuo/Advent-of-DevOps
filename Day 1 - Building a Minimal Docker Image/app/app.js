const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello from Advent of DevOps!');
});

server.listen(8000, '0.0.0.0', () => {
  console.log('Server running on port 8000...');
});
import * as THREE from 'three';

const server = Bun.serve({
    port: 3000,
    fetch(req) {
      return new Respnse("djnde!");
    },
  });
  
  console.log(`Listening on http://localhost:${server.port} ...`);
  
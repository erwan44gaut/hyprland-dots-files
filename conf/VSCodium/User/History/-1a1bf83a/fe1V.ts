const server = Bun.serve({
    port: 3000,
    fetch(req) {
        import * as THREE from 'three';
      return new Response("djnde!");
    },
  });
  
  console.log(`Listening on http://localhost:${server.port} ...`);
  
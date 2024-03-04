import { monComposant } from './app.html';

const server = Bun.serve({
    port: 3000,
    fetch(req) {
      return new Response(monComposant);
    },
  });
  
  console.log(`Listening on http://localhost:${server.port} ...`);
  
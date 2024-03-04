import { monComposant } from './components/monComposant/monComposant.ts';
import { app } from "./app.html";

const server = Bun.serve({
    port: 3000,
    fetch(req) {
        return new Response(monComposant, {
            headers: { 'Content-Type': 'text/html' }, // Spécifiez le type de contenu pour le HTML
        });
    },
});

console.log(`Listening on http://localhost:${server.port} ...`);

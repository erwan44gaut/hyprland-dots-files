import { monComposant } from './components/monComposant/monComposant.ts';

const server = Bun.serve({
    port: 3000,
    fetch(req) {
        return new Response(Bun.file("./path/to/your/styles.css"), {
            headers: { "Content-Type": "text/css" },
        });
    },
});

console.log(`Listening on http://localhost:${server.port} ...`);

Bun.serve({
    port: 3000,
    fetch(req) {
      if (req.url.endsWith(".css")) {
        return new Response(Bun.file("./path/to/your/styles.css"), {
          headers: { "Content-Type": "text/css" },
        });
      }
      // Votre logique pour servir le HTML ici
    },
  });
  
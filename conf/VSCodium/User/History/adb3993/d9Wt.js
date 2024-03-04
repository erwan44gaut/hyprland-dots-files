// bun.config.js
module.exports = {
    entries: {
        app: './src/app.ts'
    },
    plugins: [
        // Plugin pour charger les fichiers HTML
        {
            name: 'html',
            setup(build) {
                build.onLoad({ filter: /\.html$/ }, async (args) => {
                    const contents = await args.readFile(args.path, 'utf8');
                    return { contents, loader: 'text' };
                });
            }
        }
    ],
    output: {
        dir: 'dist',
        format: 'esm',
        sourcemap: true
    }
};

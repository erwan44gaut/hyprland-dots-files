const style = 
`<style>
  .mon-composant {
    color: purple;
    background-color: #f0f0f0;
    border: 2px dashed orange;
    padding: 15px;
    border-radius: 5px;
    font-size: 16px;
  }
</style>`;

const content = `
<!DOCTYPE html> <html lang="en"> <head> <meta charset="utf-8"> <title>My first three.js app</title> <style> body { margin: 0; } </style> </head> <body> <script type="module" src="/main.js"></script> </body> </html>
`;

const monComposant = `${style} ${content}`;

export { monComposant };

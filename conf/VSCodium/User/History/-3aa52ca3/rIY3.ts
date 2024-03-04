// monComposant.ts
export function monComposant(): HTMLElement {
    const element = document.createElement('div');
    element.textContent = 'Ceci est mon composant.';
    return element;
}

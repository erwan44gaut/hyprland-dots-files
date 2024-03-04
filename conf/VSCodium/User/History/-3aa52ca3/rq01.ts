// monComposant.ts
import monComposantHTML from './monComposant.html';

export function monComposant(): void {
    // Créer un élément div
    const element = document.createElement('div');
    
    // Injecter le HTML du composant dans l'élément div
    element.innerHTML = monComposantHTML;

    // Ajouter l'élément à la page
    document.body.appendChild(element);
}

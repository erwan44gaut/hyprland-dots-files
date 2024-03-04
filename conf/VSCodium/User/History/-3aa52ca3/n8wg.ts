// const style = 
// `<style>
//   .mon-composant {
//     color: purple;
//     background-color: #f0f0f0;
//     border: 2px dashed orange;
//     padding: 15px;
//     border-radius: 5px;
//     font-size: 16px;
//   }
// </style>`;

// const content = 
// `<div class="mon-composant">
//     Ceci est mon composant.
// </div>`;

// const monComposant = `${style} ${content}`;

import * as THREE from 'three'; const scene = new THREE.Scene(); const camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 0.1, 1000 ); const renderer = new THREE.WebGLRenderer(); renderer.setSize( window.innerWidth, window.innerHeight ); document.body.appendChild( renderer.domElement );

export { monComposant };

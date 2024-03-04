const styles = `<style>
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
<div class="mon-composant">
    Ceci est mon composant.
</div>
`;

const monComposant = '${styles} '

export { monComposant };

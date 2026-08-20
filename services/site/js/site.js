const serverAddress = document.querySelector('#server-address');
const copyButton = document.querySelector('#copy-server');
const copyStatus = document.querySelector('#copy-status');

copyButton.addEventListener('click', async () => {
    try {
        await navigator.clipboard.writeText(serverAddress.value);
        copyStatus.textContent = 'Copied! See you in the mines.';
    } catch (error) {
        serverAddress.select();
        copyStatus.textContent = 'Select the address and copy it manually.';
    }
});

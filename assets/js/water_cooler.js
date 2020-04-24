const $chatForm = document.getElementById('chat-form');
const $userName = document.getElementById('user-name');
const $userMsg = document.getElementById('user-msg');
const $chatBox = document.getElementById('chat-box');

let WaterCooler = {
  init(socket) {
    let channel = socket.channel('water_cooler:lobby', {});
    channel.join();
    this.listenForChats(channel);
  },

  listenForChats(channel) {
    $chatForm.addEventListener('submit', e => {
      e.preventDefault();

      const userName = $userName.value;
      const userMsg = $userMsg.value;

      channel.push('shout', { name: userName, body: userMsg });

      $userName.value = '';
      $userMsg.value = '';
    });

    channel.on('shout', payload => {
      const $msgBlock = document.createElement('p');

      $msgBlock.insertAdjacentHTML('beforeend', `${payload.name}: ${payload.body}`);
      $chatBox.appendChild($msgBlock);
    })
  }
}

export default WaterCooler;

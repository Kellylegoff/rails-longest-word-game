// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

// const form = document.querySelector('#search-form');
// form.addEventListener('submit', (event) => {
//   event.preventDefault();
//   list.innerHTML = '';
//   const input = document.querySelector('#search-input');
//   fetchMovies(input.value);

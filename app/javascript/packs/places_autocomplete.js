import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('search-input');
  console.log(addressInput);
  if (addressInput) {
    places({ container: addressInput });
  }
};

initAutocomplete();

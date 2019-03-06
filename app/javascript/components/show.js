const initUpdateShowOnJoin = () => {
  const join = document.querySelector('#join-button');
  if (join) {
    const title = join.dataset.title;
    const url = join.dataset.url;
      join.addEventListener('click', () => {
        swal(`${title}`, "Booking confirmed! You will receive a notification as soon as the group limit has been reached", "success");
      });
  }
}
export { initUpdateShowOnJoin };


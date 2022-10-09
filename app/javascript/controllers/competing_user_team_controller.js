import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="competing-user-team"
export default class extends Controller {

  response(data) {
  }

  change() {
    event.preventDefault();

    const team_id = event.currentTarget.dataset.id;
    const csrfToken = document.querySelector('meta[name="csrf-token"]').content;

    // TODO: Update the dropdown list without changing the DOM but refreshing the turbo frame
    const selected_team_flag_image = event.currentTarget.firstElementChild.firstElementChild;
    const selected_team_name = event.currentTarget.firstElementChild.lastElementChild;

    const favorite_team_dropdown = document.getElementById("dropdownMenuButton1");
    var favorite_team_flag_image = favorite_team_dropdown.firstElementChild.firstElementChild;
    var favorite_team_name = favorite_team_dropdown.firstElementChild.lastElementChild;

    favorite_team_flag_image.src = selected_team_flag_image.src;
    favorite_team_name.innerHTML = selected_team_name.innerHTML;

    // TODO: It doesn't work if there are more than one active competition
    fetch(`/competing_users/select_favorite_competing_team`, {
      method: 'POST',
      mode: 'cors', // no-cors, *cors, same-origin
      cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
      credentials: 'same-origin', // include, *same-origin, omit
      headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': csrfToken
      },
      body: JSON.stringify({ team: team_id }) // body data type must match "Content-Type" header
    })
    .then(response => response.json())
    .then(data => this.response(data))
    .catch(error => { console.log(error); });
  }
}

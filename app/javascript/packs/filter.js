export function filter() {
  const filter = document.getElementById("first-filter");

  filter.addEventListener("click", (event) => {

  document.querySelectorAll(".flat").forEach((flat) => {
    if (flat.dataset.price > 50) {
      flat.style.display = "none";
    }
  });

});
};


// container.insertAdjacentHTML("beforeend",
//        <% @filtered_flats.each do |flat| %>
//        <div class="flat">
//            <%= render 'shared/carousel', flat_id: flat.id, url1: "https://images.unsplash.com/photo-1567767292278-a4f21aa2d36e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", url2: "https://images.unsplash.com/photo-1560185893-a55cbc8c57e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", url3: "https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60" %>
//            <i class="fas fa-star"></i>
//            <h5><%= flat.title %> - <%= flat.location %></h5>
//            <p><strong>€<%=flat.price%></strong> / night</p>
//            <%= link_to "Check details", flat_path(flat), class: "btn btn-success btn-sm" %>
//        </div>
//       <% end %>
// );

//   const flats = `<div class= "row message unread">
//     <div class="col-xs-3">${message.sender}</div>
//     <div class="col-xs-9">${message.subject}</div>
//   </div>`;






// Other options: hide non targeted flats


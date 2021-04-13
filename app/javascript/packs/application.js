// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";

Rails.start();
Turbolinks.start();
ActiveStorage.start();

let count = 0;
function refresh() {
  let req = new XMLHttpRequest();

  req.onreadystatechange = function () {
    if (this.readyState === 4 && this.status === 200) {
      let orders = JSON.parse(this.responseText);

    //   orders.forEach((order) => {
    //     document.getElementById("orders-table").innerHTML += `
    //     <tr>
    //     <td> ${order.item} </td>`;
    //     if (order.image_url) {
    //         document.getElementById("orders-table").innerHTML += ` <td> <img src='${order.image_url}' alt='${order.image_url}' ></td>`;
    //     }
    //     document.getElementById("orders-table").innerHTML += `
    //     <td> ${order.quantity} </td>
    //     <td> ${order.tprice} </td>
    //     <td>  </td>
    //     <td> order.phone </td>
    //     <td> order.city </td>
    //     <td> order.center </td>
    //     <td> order.address </td>
    //     <td> link_to 'Sold', "/sold/#{order.id}", method: :post </td>
    //     <td> link_to 'Edit', edit_order_path(order) </td>
    //     <td> link_to 'Destroy', order, method: :delete</td>
    //   </tr>
    //   `
    //   });
      if (count !== orders.length) {
        document.getElementById("myAudio").play();
      }
      count = orders.length;
    }
  };
  req.open("GET", "/orders.json", true);

  req.send();
}

setInterval(() => {
  if (document.getElementById("orders-table") != null) {
    refresh();
  }
}, 1000);

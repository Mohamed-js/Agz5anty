// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()









let count = 0
function refresh() {
    let req = new XMLHttpRequest();
    
    req.onreadystatechange = function (params) {
        if (this.readyState === 4 && this.status === 200) {

            let meds = JSON.parse(this.responseText);
            document.getElementById("meds").innerHTML = ""
            meds.forEach(med => {
                document.getElementById("meds").innerHTML += med.name + "<br>"
            });
            if (count !== meds.length) {
                document.getElementById("myAudio").play()
            }
            count = meds.length
            
        }
    }
    req.open('GET', '/medications.json', true);

    req.send();
}



    setInterval(() => {
        if (document.getElementById("meds") != null){
            refresh()
        }
    }, 1000);





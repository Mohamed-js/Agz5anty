document.querySelector("#menu").addEventListener("click", function () {
    if (document.querySelector("#sidebar").classList.contains("slide-out")) {
        document.querySelector("#sidebar").classList.add(" slide-in")
    }else if (document.querySelector("#sidebar").classList.contains("slide-in")){
        document.querySelector("#sidebar").classList.remove(" slide-in")
    }else {
        console.log("hay")
    }
    
})
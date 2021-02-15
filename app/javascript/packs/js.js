document.querySelector(".sidebar-toggle").addEventListener("click", function () {
    if (!document.querySelector("#sidebar").classList.contains("slide-in")) {
        document.querySelector("#sidebar").classList.add("slide-in")
        document.querySelector("#sidebar").classList.remove("slide-out")
        document.querySelector("#sidebar-toggler").innerHTML = "<i class='fa fa-minus'></i>"
    }else if (document.querySelector("#sidebar").classList.contains("slide-in")){
        document.querySelector("#sidebar").classList.remove("slide-in")
        document.querySelector("#sidebar").classList.add("slide-out")
        document.querySelector("#sidebar-toggler").innerHTML = "<i class='fa fa-plus'></i>"
    }else {
        console.log("hay")
    }
})
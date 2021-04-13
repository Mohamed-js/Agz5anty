document.querySelector(".sidebar-toggle").addEventListener("click", function () {
    if (!document.querySelector("#sidebar").classList.contains("slide-in")) {
        document.querySelector("#sidebar").classList.add("slide-in")
        document.querySelector("#sidebar").classList.remove("slide-out")
        document.querySelector("#sidebar-toggler").innerHTML = "<i class='fa fa-minus'></i>"
    }else if (document.querySelector("#sidebar").classList.contains("slide-in")){
        document.querySelector("#sidebar").classList.remove("slide-in")
        document.querySelector("#sidebar").classList.add("slide-out")
        document.querySelector("#sidebar-toggler").innerHTML = "<i class='fa fa-bars'></i>"
    }
})


document.querySelector(".close-mod").addEventListener("click", function () {
    this.parentElement.parentElement.parentElement.parentElement.style.display = "none"
})


document.querySelector(".add-to-cart").addEventListener("click", function () {
    this.parentElement.nextElementSibling.style.display = "block"
})

document.querySelector(".min").addEventListener("click", function () {
    let val = Number(this.nextElementSibling.value)
    val -= 1
    this.nextElementSibling.value = val
})

document.querySelector(".add").addEventListener("click", function () {
    let val = Number(this.previousElementSibling.value)
    val += 1
    this.previousElementSibling.value = val
})



let toggle = document.querySelector(".toggle");//je déclare ma variable toggle
let body = document.querySelector("body");//je déclare ma variable body

toggle.addEventListener("click",function() {//quand je clique sur "toggle" j'engage la fonction : ouvrir une class "open" sur le body
    body.classList.toggle("open");
})

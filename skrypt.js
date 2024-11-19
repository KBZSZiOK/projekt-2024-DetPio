let tekst = document.querySelector("#animacja");
let position = 0;
let direction = 1;

function animacja(){
    position += 2 * direction;
    tekst.style.position = "absolute";
    tekst.style.left = position + 'px';

    if(position >= window.innerWidth - tekst.offsetWidth){
        direction = -1;
    }
    if(position <= 0){
        direction = 1;
    }
    requestAnimationFrame(animacja);
}

animacja();


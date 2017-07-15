function toggleBar(target){
    var ele = document.getElementById(target);
    if(!ele.style.display || ele.style.display=="none")
        ele.style.display = "block";
    else
        ele.style.display = "none";
}
function openBar(target){
    document.getElementById(target).style.display = "block";
}
function closeBar(target){
    document.getElementById(target).style.display = "none";
}
function resize(){
    if(document.body.clientWidth > 720)
    openBar("bar_target");
    else closeBar("bar_target");
}
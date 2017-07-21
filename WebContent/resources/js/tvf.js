function toggleBar(target) {
	document.getElementById("header-nav").classList.toggle("off");
}
function showBar(target) {
	document.getElementById(target).style.display = "flex";
	document.getElementById(target).style.flexDirection = "column";
}
function hideBar(target) {
	document.getElementById(target).style.display = "none";
}
function resize() {
	if (document.body.clientWidth > 720) {
		//showBar("header-nav");

	} else {
		//hideBar("header-nav");
	}
}


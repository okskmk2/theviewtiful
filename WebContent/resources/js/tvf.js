/**
 * 
 */
var $ = function(selector) {
	var nodeList = document.querySelectorAll(selector);
	if(nodeList.length == 0) return false;
	else if(nodeList.length == 1) return nodeList.item(0);
	else return nodeList;
}

$.createElement = function(detail) {
	//var detail = {};
	var _tag = detail.tag;
	var _text = detail.text;
	var tag = document.createElement(_tag);
	var textNode = document.createTextNode(_text);
	tag.appendChild(textNode);
	return tag;
}

$.test = function(hi, dd) {
	alert(hi);
	dd;
}

var dd = function() {
	alert("ya");
}
/**
 * 
 */
var randomScalingFactor = function() {
		return Math.round(Math.random() * 100);
	};

	var config = {
		type : 'pie',
		data : {
			datasets : [ {
				data : [ randomScalingFactor(), randomScalingFactor(), ],
				backgroundColor : [ window.chartColors.red,
						window.chartColors.orange, ],
				label : 'Dataset 1'
			} ],
			labels : [ "판매됨", "판매중", ]
		},
		options : {
			responsive : true
		}
	};

	window.onload = function() {
		var ctx = document.getElementById("item-chart").getContext("2d");
		window.myPie = new Chart(ctx, config);
	};
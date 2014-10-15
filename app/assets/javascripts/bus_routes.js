//load bus routes

var BusRouteController = Paloma.controller('BusRoutes');

BusRouteController.prototype.show = function(){
	//load bus route into map
	/*
 * to access points info
 * data = $.get('http://192.168.234.100:8080/bus_routes/1.json').responseJSON 
 *
 * to access stops
 * $.each(data.responseJSON.routes[0].route[0].stops, function(idx, val){ console.log(val.location); })
 *
 * to access the lines that forms at each stops
 * $.each(data.responseJSON.routes[0].route[0].stops, function(idx, val){ console.log(val.line); })
 */

	console.log('loaded show.page with busroute id: ' + this.params['id'] );

	$.getJSON('/bus_routes/' + this.params['id'], null, function(data){
		console.log(data);
	});
};

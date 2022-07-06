<%@ include file="header.jsp"%>
<%
String email = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<script>
	var country, state, city, pinCode;
	function createCORSRequest(method, url) {
		var xhr = new XMLHttpRequest();
		if ("withCredentials" in xhr) {
			// XHR for Chrome/Firefox/Opera/Safari.
			xhr.open(method, url, true);
		} else if (typeof XDomainRequest != "undefined") {
			// XDomainRequest for IE.
			xhr = new XDomainRequest();
			xhr.open(method, url);
		} else {
			// CORS not supported.
			xhr = null;
		}
		return xhr;
	}

	function getLocationDetails() {
		latitude1 = document.getElementById("latitude").value;
		longitude1 = document.getElementById("longitude").value;
		var url = "http://maps.googleapis.com/maps/api/geocode/json?latlng="
				+ latitude1 + "," + longitude1 + "&sensor=false";
		var xhr = createCORSRequest('POST', url);
		if (!xhr) {
			alert('CORS not supported');
		}
		xhr.onload = function() {
			var data = JSON.parse(xhr.responseText);
			if (data.results.length > 0) {
				var locationDetails = data.results[0].formatted_address;
				var value = locationDetails.split(",");
				count = value.length;
				country = value[count - 1];
				state = value[count - 2];
				city = value[count - 3];
				pin = state.split(" ");
				pinCode = pin[pin.length - 1];
				state = state.replace(pinCode, ' ');
				document.getElementById("city").value = city;
				document.getElementById("state").value = state;
				document.getElementById("zip").value = pinCode;
				document.getElementById("button").style.visibility = "hidden";
				document.getElementById("button2").style.visibility = "visible";
			} else {
				"No location available for provided details.";
			}
		};
		xhr.onerror = function() {
			alert('Woops, there was an error making the request.');
		};
		xhr.send();
		return false;
	}
</script>

<script src="http://maps.google.com/maps/api/js?sensor=true">
</script>
<script>
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(showCurrentLocation);
	} else {
		alert("Geolocation API not supported.");
	}

	function showCurrentLocation(position) {
		var latitude = position.coords.latitude;
		var longitude = position.coords.longitude;
		var coords = new google.maps.LatLng(latitude, longitude);

		var mapOptions = {
			zoom : 15,
			center : coords,
			mapTypeControl : true,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};

		//create the map, and place it in the HTML map div
		map = new google.maps.Map(document.getElementById("mapPlaceholder"),
				mapOptions);

		//place the initial marker
		var marker = new google.maps.Marker({
			position : coords,
			map : map,
			title : "Current location!"
		});
	}
</script>
</head>
<style>
#mapPlaceholder {
	height: 400px;
	width: 700px;
}
</style>
<body>
	<div>
		<h2>Current Location</h2>
		<div id="mapPlaceholder"></div>
	</div>
</body>

<p id="demo">
	<font size="" color="#99cc00">Click the button to get your
		coordinates: </font>
</p>
<br>
<div class="form_settings">
	<input type="button" class="submit" onclick="getLocation()"
		value="Set Location">
</div>
<script>
		var x = document.getElementById("demo");

		function getLocation() {
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(showPosition);
			} else {
				x.innerHTML = "Geolocation is not supported by this browser.";
			}
		}

		function showPosition(position) {
			document.getElementById('latitude').value = position.coords.latitude;
			document.getElementById('longitude').value = position.coords.longitude;
		}
	</script>

<br>
<input class="submit" id="button" type="button"
	onclick="getLocationDetails()" value="getGeoValue" />
<form method="post" action="register2.jsp"
	onsubmit="getLocationDetails()">
	<input type="text" id="latitude" name="latitude" placeholder="latitude"
		required readonly /> <input type="text" id="longitude"
		name="longitude" placeholder="longitude" readonly /> <input
		type="text" name="city" id="city" required placeholder="city" readonly>
	<input type="text" name="state" id="state" placeholder="state" required
		readonly> <input type="text" name="zip" id="zip"
		placeholder="zip" required readonly> <input type="hidden"
		name="email" value="<%=email%>"> <input type="submit"
		value="Save" />
</form>
</html>

<%@ include file="footer.jsp"%>
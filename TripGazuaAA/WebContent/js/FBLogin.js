/**
 * 	페이스북 로그인
 */
 		// This is called with the results from from FB.getLoginStatus().
		function statusChangeCallback(response) {
			console.log('statusChangeCallback');
			console.log(response);
			// The response object is returned with a status field that lets the
			// app know the current login status of the person.
			// Full docs on the response object can be found in the documentation
			// for FB.getLoginStatus().
			if (response.status === 'connected') {
				// Logged into your app and Facebook.
				testAPI();
			} else {
				// The person is not logged into your app or we are unable to tell.
				/*document.getElementById('status').innerHTML = 'Please log ' +
					'into this app.';*/
			}
		}
	
		// This function is called when someone finishes with the Login
		// Button.  See the onlogin handler attached to it in the sample
		// code below.
		function checkLoginState() {
			FB.getLoginStatus(function(response) {
				$.each(statusChangeCallback(response), function(index, item) {
					alert(index + " 번째 요소" + item.accessToken);
				})
			});
		}
	
		window.fbAsyncInit = function() {
			FB.init({
				appId : '857715281076152',
				cookie : true, // enable cookies to allow the server to access 
				// the session
				xfbml : true, // parse social plugins on this page
				version : 'v2.8' // use graph api version 2.8
			});
	
			// Now that we've initialized the JavaScript SDK, we call 
			// FB.getLoginStatus().  This function gets the state of the
			// person visiting this page and can return one of three states to
			// the callback you provide.  They can be:
			//
			// 1. Logged into your app ('connected')
			// 2. Logged into Facebook, but not your app ('not_authorized')
			// 3. Not logged into Facebook and can't tell if they are logged into
			//    your app or not.
			//
			// These three cases are handled in the callback function.
	
			FB.getLoginStatus(function(response) {
	
					statusChangeCallback(response);
			});
	
		};
	
		// Load the SDK asynchronously
		(function(d, s, id) {
			var js,
				fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s);
			js.id = id;
			js.src = "https://connect.facebook.net/UTF-8/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	
		// Here we run a very simple test of the Graph API after login is
		// successful.  See statusChangeCallback() for when this call is made.
		function testAPI() {
			console.log('Welcome!  Fetching your information.... ');
			FB.api('/me', {fields: 'name, email, id, gender, birthday'}, function(response) {
//				console.log('Successful login for: ' + response.name);
//				console.log('Successful login for: ' + response.id);
//				console.log('Successful login for: ' + response.email);
//				console.log('Successful login for: ' + response.gender);
//				console.log(JSON.stringify(response));
				logout();
				location.href = 'FBLogin.do?nickname=' + response.name + '&userID=' + response.id;
//				document.getElementById('status').innerHTML = 'Thanks for logging in, ' + response.name + '!';
			});
		}
	
		function logout() {
			FB.logout(function(response) {});
		}
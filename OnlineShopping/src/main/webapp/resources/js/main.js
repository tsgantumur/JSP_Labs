/**
 * 
 */

function formValidator(){
	$_form = $(this);
	var toReturn = true;
	var firstFocus;
	var height = "100%";
	var passVal = "";
	$.each($_form.find("input"),function(index,value){
		
		var msg = "";
		_val = $(value).val();
		if (_val.length == 0){
			$(this).css("border","1px solid red");
			msg = "Required !"
		}
		
		switch ($(value).attr("id")){
		case "userNameR":
			break;
		case "email":
			 var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			 if (!re.test(_val))
				 msg = "Check the email"
			break;
		case "name":
			break;
		case "password":
			re = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$/;
			if(!re.test(_val))
				 msg = "Your password should be at least 6 letters and have at least one capital letter, one small letter, one number";
			else passVal = _val;
			break;
		case "cpwd":
			if (passVal.length >0 && _val != passVal)
				msg = "Not match password filed"
			break;
		}
		
		if (msg.length > 0){
			if (typeof firstFocus == 'undefined') {
				firstFocus = $(this);
			}
			height = parseInt(height) + 4 + "%";
			toReturn = false;
			$(this).next().text(msg).css("color","red");
			$(this).css("border","1px solid red");
		} else {
			$(this).next().text("");
			$(this).removeAttr("style");
		}
	})
	
	if (!toReturn) {
		firstFocus.focus();
	} 
	$("#signup").css("height", height);
	return toReturn;
}


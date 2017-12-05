function validateLogin() {
	var unBox = document.querySelector("#un");
	var pwBox = document.querySelector("#pw");
	var a = document.getElementById("notice").value;
	var b = document.getElementById("un").value;
	var c = document.getElementById("pw").value;
			
	var count = 0;
				
	// U S E R N A M E
	if (b=="username" || b==null || b== "") {
		unBox.style.backgroundColor = "#B40431";
		unBox.style.color = "white";
		unBox.style.border = "1px solid black";
		document.getElementById("notice").value = "Enter username.";
		return false;
	}
				
	if (b.length >= 6) {
		for(var i=0; i<b.length; i++) {
			if (isNaN(b.charAt(i))== false) {
				count++;
			}
		}
	
		if (count == 0) {
			unBox.style.backgroundColor = "#B40431";
			unBox.style.color = "white";
			unBox.style.border = "1px solid black";
			document.getElementById("notice").value = "Username must contain at least 1 number.";
			return false;
		} else {
			document.getElementById("notice").value = "";
		}
					
	} else {
		unBox.style.backgroundColor = "#B40431";
		unBox.style.color = "white";
		unBox.style.border = "1px solid black";
		document.getElementById("notice").value = "Username must contain at least 6 characters.";
		return false;
	}
			
			
			
	// P A S S W O R D 
	if (c=="password" || c==null || c== "") {
		unBox.style.backgroundColor = "#F7F6F6";
		unBox.style.color = "grey";
		unBox.style.border = "none";
		pwBox.style.backgroundColor = "#B40431";
		pwBox.style.color = "white";
		pwBox.style.border = "1px solid black";
		document.getElementById("notice").value = "Enter password.";
		return false;
	}
				
	count = 0;
				
	if (c.length >= 8) {
		
		for(var i=0; i<c.length; i++) {
			if (isNaN(c.charAt(i))== false) {
				count++;
			}
		}
		
		if (count == 0) {
			pwBox.style.backgroundColor = "#B40431";
			pwBox.style.color = "white";
			pwBox.style.border = "1px solid black";
			document.getElementById("notice").value = "Password must contain at least 1 number.";
			return false;
		} else {
			pwBox.style.backgroundColor = "#F7F6F6";
			pwBox.style.color = "grey";
			pwBox.style.border = "none";
			document.getElementById("notice").value = "";
		}
					
	} else {
		pwBox.style.backgroundColor = "#B40431";
		pwBox.style.color = "white";
		pwBox.style.border = "1px solid black";
		document.getElementById("notice").value = "Password must contain at least 8 characters.";
		return false;
	}
				
		alert("Success");
		return true;
		
}

		
function PopUp() {

	var TheURL = "popup.jsp";
	var PopWidth = "700";
	var PopHeight = "600";
	var PosTop = "150";
	var PosLeft = "200";

	var SettingS = "toolbar=no,menubar=no,scrollbars=no,resizable=yes,width=" + PopWidth + ",height=" + PopHeight + ",top=" + PosTop + ",left=" + PosLeft;
	var PopUp = open(TheURL,"box",SettingS);
}

window.onload=PopUp;

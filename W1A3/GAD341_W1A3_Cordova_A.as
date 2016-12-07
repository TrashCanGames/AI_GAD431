package {
	import flash.display.*;
	import flash.text.*;
	
	public class GAD341_W1A3_Cordova_A extends MovieClip {
		
		public function GAD341_W1A3_Cordova_A(){
			//Find the center coordinates of the stage
var centerStage:Number = 275;
trace(centerStage);

//Create Textfields and sets positions based on center stage
var greeting:TextField = new TextField();
greeting.text = "Hello world! My name is Abinadi Cordova.";
greeting.y = 200;
greeting.autoSize = TextFieldAutoSize.LEFT;
var centerGreeting:Number = greeting.width/2;
greeting.x = centerStage - centerGreeting;

var aboutMe:TextField = new TextField();
aboutMe.text = "I am a regular guy who wants to be a generalist and this image is my logo.";
aboutMe.y = 220;
aboutMe.autoSize = TextFieldAutoSize.LEFT;
var centerAboutMe:Number = aboutMe.width/2;
aboutMe.x = centerStage - centerAboutMe;

var contactMeText:TextField = new TextField();
contactMeText.text = "You can contact me at: ";
contactMeText.y = 240;
contactMeText.autoSize = TextFieldAutoSize.LEFT;

var contactMeLink:TextField = new TextField();
contactMeLink.htmlText = "<a href='mailto:abinadi.cordova1@gmail.com'>abinadi.cordova1@gmail.com</a>";
contactMeLink.y = 240;
contactMeLink.textColor = 0x0000BB;
contactMeLink.autoSize = TextFieldAutoSize.LEFT;

//this is used to set the position of contactMeText and contactMeLink since they will be on the same line
var contactMesWidth:Number = contactMeText.width + contactMeLink.width;
var centerContactMes:Number = contactMesWidth/2;

contactMeText.x = centerStage - centerContactMes;
contactMeLink.x = centerStage - 18;

addChild(greeting);
addChild(aboutMe);
addChild(contactMeText);
addChild(contactMeLink);

//Footer info

var footer:TextField = new TextField();
footer.text = "Created by Abinadi Cordova for GAD431 - Art Institute of Pittsburgh Online Division";
footer.x = 3;
footer.y = 380;
footer.autoSize = TextFieldAutoSize.LEFT;
addChild(footer);
		}
	}
}
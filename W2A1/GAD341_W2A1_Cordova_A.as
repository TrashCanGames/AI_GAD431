package {
	//Imports go here
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.ui.Keyboard;
	import flash.events.KeyboardEvent;
	import flash.display.*;
	import flash.utils.*;
	import flash.events.MouseEvent;
	
	//Classes go here
	public class GAD341_W2A1_Cordova_A extends MovieClip {
		
		//Variables for speeds and interval
		public var fg_movementSpeed:Number = 15;
		public var mg_movementSpeed:Number = 7;
		public var bg_movementSpeed:Number = 0.7;
		public var bd_movementSpeed:Number = 0.3;
		public var mIsPlaying:Boolean = false;
		public var interval:uint;
		
		//Functions go here
		public function GAD341_W2A1_Cordova_A(){
			
			//Set z-indexes
			bdSymbol01.parent.setChildIndex(bdSymbol01, 0);
			bdSymbol02.parent.setChildIndex(bdSymbol02, 1);
			bgSymbol01.parent.setChildIndex(bgSymbol01, 2);
			bgSymbol02.parent.setChildIndex(bgSymbol02, 3);
			mgSymbol01.parent.setChildIndex(mgSymbol01, 4);
			mgSymbol02.parent.setChildIndex(mgSymbol02, 5);
			fgSymbol01.parent.setChildIndex(fgSymbol01, 6);
			fgSymbol02.parent.setChildIndex(fgSymbol02, 7);
			
			//listen for events
			stage.addEventListener('keyDown', keypressed);
			PlayBtn01.addEventListener('click', playMovie);
			StopBtn01.addEventListener('click', stopMovie);
		}
		
		public function keypressed(event:KeyboardEvent):void {
			
			//If its not playing then allow arrows
			if(mIsPlaying != true){
				if(event.keyCode == Keyboard.RIGHT){
				
					moveSceneBack();
				}
			
				if(event.keyCode == Keyboard.LEFT){
				
					moveSceneFwd();
				}
			}
		}
		
		//Functions that actually move the scens
		public function moveSceneBack(){
			
			//Check for edge of road and then move it to the otherside
				if(bdSymbol01.x + bdSymbol01.width < 0){
					bdSymbol01.x = bdSymbol02.x + bdSymbol02.width;
				}
				if(bdSymbol02.x + bdSymbol02.width < 0){
					bdSymbol02.x = bdSymbol01.x + bdSymbol01.width;
				}
				if(bgSymbol01.x + bgSymbol01.width < 0){
					bgSymbol01.x = bgSymbol02.x + bgSymbol02.width;
				}
				if(bgSymbol02.x + bgSymbol02.width < 0){
					bgSymbol02.x = bgSymbol01.x + bgSymbol01.width;
				}
				if(mgSymbol01.x + mgSymbol01.width < 0){
					mgSymbol01.x = mgSymbol02.x + mgSymbol02.width;
				}
				if(mgSymbol02.x + mgSymbol02.width < 0){
					mgSymbol02.x = mgSymbol01.x + mgSymbol01.width;
				}
				if(fgSymbol01.x + fgSymbol01.width < 0){
					fgSymbol01.x = fgSymbol02.x + fgSymbol02.width;
				}
				if(fgSymbol02.x + fgSymbol02.width < 0){
					fgSymbol02.x = fgSymbol01.x + fgSymbol02.width;
				}
				
				//move the scenes
				fgSymbol01.x -= fg_movementSpeed;
				fgSymbol02.x -= fg_movementSpeed;
				mgSymbol01.x -= mg_movementSpeed;
				mgSymbol02.x -= mg_movementSpeed;
				bgSymbol01.x -= bg_movementSpeed;
				bgSymbol02.x -= bg_movementSpeed;
				bdSymbol01.x -= bd_movementSpeed;
				bdSymbol02.x -= bd_movementSpeed;
		}
		
		public function moveSceneFwd(){
			
			//Check for edge of road and move to the other side
				if(bdSymbol01.x > bdSymbol01.width + 20){
					bdSymbol01.x = bdSymbol02.x - bdSymbol02.width;
				}
				if(bdSymbol02.x > bdSymbol02.width + 20){
					bdSymbol02.x = bdSymbol01.x - bdSymbol01.width;
				}
				if(bgSymbol01.x > bgSymbol01.width + 20){
					bgSymbol01.x = bgSymbol02.x - bgSymbol02.width;
				}
				if(bgSymbol02.x > bgSymbol02.width + 20){
					bgSymbol02.x = bgSymbol01.x - bgSymbol01.width;
				}
				if(mgSymbol01.x > mgSymbol01.width + 20){
					mgSymbol01.x = mgSymbol02.x - mgSymbol02.width;
				}
				if(mgSymbol02.x > mgSymbol02.width + 20){
					mgSymbol02.x = mgSymbol01.x - mgSymbol01.width;
				}
				if(fgSymbol01.x > fgSymbol01.width + 20){
					fgSymbol01.x = fgSymbol02.x - fgSymbol02.width;
				}
				if(fgSymbol02.x > fgSymbol02.width + 20){
					fgSymbol02.x = fgSymbol01.x - fgSymbol01.width;
				}
				
				//Move the scenes
				fgSymbol01.x += fg_movementSpeed;
				fgSymbol02.x += fg_movementSpeed;
				mgSymbol01.x += mg_movementSpeed;
				mgSymbol02.x += mg_movementSpeed;
				bgSymbol01.x += bg_movementSpeed;
				bgSymbol02.x += bg_movementSpeed;
				bdSymbol01.x += bd_movementSpeed;
				bdSymbol02.x += bd_movementSpeed;
		}
		
		//What to do when the play button is pressed
		public function playMovie(event:MouseEvent):void {
			mIsPlaying = true;
			interval = setInterval(moveSceneBack, 25);
			PlayBtn01.x = PlayBtn01.x - 99;
			StopBtn01.x = StopBtn01.x + 99;
		}
		
		//What to do when the stop button is pressed
		public function stopMovie(event:MouseEvent):void {
			mIsPlaying = false;
			clearInterval(interval);
			StopBtn01.x = StopBtn01.x - 99;
			PlayBtn01.x = PlayBtn01.x + 99;
		}
	}
}
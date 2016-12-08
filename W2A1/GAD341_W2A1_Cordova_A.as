package {
	//Imports go here
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.ui.Keyboard;
	import flash.events.KeyboardEvent;
	import flash.display.Stage;
	
	//Classes go here
	public class GAD341_W2A1_Cordova_A extends MovieClip {
		
		//Variables for speeds
		public var fg_movementSpeed:Number = 15;
		public var mg_movementSpeed:Number = 10;
		public var bg_movementSpeed:Number = 5;
		public var bd_movementSpeed:Number = 1;
		public var mIsPlaying:Boolean = false;
		
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
			PlayBtn.addEventListener('click', playMovie);
			StopBtn.addEventListener('click', stopMovie);
		}
		
		public function keypressed(event:KeyboardEvent):void {

			if(event.keyCode == Keyboard.RIGHT){
				
				moveSceneBack();
			}
			
			if(event.keyCode == Keyboard.LEFT){
				
				moveSceneFwd();
			}
		}
		
		public function moveSceneBack(){
			//Check for edge of road
				if(bdSymbol01.x + bdSymbol01.width < -20){
					bdSymbol01.x = bdSymbol01.x + (2 * bdSymbol01.width);
				}
				if(bdSymbol02.x + bdSymbol02.width < -20){
					bdSymbol02.x = bdSymbol02.x + (2 * bdSymbol02.width);
				}
				if(bgSymbol01.x + bgSymbol01.width < -20){
					bgSymbol01.x = bgSymbol01.x + (2 * bgSymbol01.width);
				}
				if(bgSymbol02.x + bgSymbol02.width < -20){
					bgSymbol02.x = bgSymbol02.x + (2 * bgSymbol02.width);
				}
				if(mgSymbol01.x + mgSymbol01.width < -20){
					mgSymbol01.x = mgSymbol01.x + (2 * mgSymbol01.width);
				}
				if(mgSymbol02.x + mgSymbol02.width < -20){
					mgSymbol02.x = mgSymbol02.x + (2 * mgSymbol02.width);
				}
				if(fgSymbol01.x + fgSymbol01.width < -20){
					fgSymbol01.x = fgSymbol01.x + (2 * fgSymbol01.width);
				}
				if(fgSymbol02.x + fgSymbol02.width < -20){
					fgSymbol02.x = fgSymbol02.x + (2 * fgSymbol02.width);
				}
				
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
			//Check for edge of road
				if(bdSymbol01.x > bdSymbol01.width + 20){
					bdSymbol01.x = bdSymbol01.x - (2 * bdSymbol01.width);
				}
				if(bdSymbol02.x > bdSymbol02.width + 20){
					bdSymbol02.x = bdSymbol02.x - (2 * bdSymbol02.width);
				}
				if(bgSymbol01.x > bgSymbol01.width + 20){
					bgSymbol01.x = bgSymbol01.x - (2 * bgSymbol01.width);
				}
				if(bgSymbol02.x > bgSymbol02.width + 20){
					bgSymbol02.x = bgSymbol02.x - (2 * bgSymbol02.width);
				}
				if(mgSymbol01.x > mgSymbol01.width + 20){
					mgSymbol01.x = mgSymbol01.x - (2 * mgSymbol01.width);
				}
				if(mgSymbol02.x > mgSymbol02.width + 20){
					mgSymbol02.x = mgSymbol02.x - (2 * mgSymbol02.width);
				}
				if(fgSymbol01.x > fgSymbol01.width + 20){
					fgSymbol01.x = fgSymbol01.x - (2 * fgSymbol01.width);
				}
				if(fgSymbol02.x > fgSymbol02.width + 20){
					fgSymbol02.x = fgSymbol02.x - (2 * fgSymbol02.width);
				}
				
				fgSymbol01.x += fg_movementSpeed;
				fgSymbol02.x += fg_movementSpeed;
				mgSymbol01.x += mg_movementSpeed;
				mgSymbol02.x += mg_movementSpeed;
				bgSymbol01.x += bg_movementSpeed;
				bgSymbol02.x += bg_movementSpeed;
				bdSymbol01.x += bd_movementSpeed;
				bdSymbol02.x += bd_movementSpeed;
		}
		
		public function playMovie(){
			mIsPlaying = true;
		}
		
		public function stopMovie(){
			mIsPlaying = true;
		}
	}
}
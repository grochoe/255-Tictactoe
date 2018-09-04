//DAGD 225 Programming 1
//Prof Nick Patterson
//September 3,2018
//Elizabeth Grocholski

//Tic Tac Toe
	//this current build switches players, detects winners, and detects cat games while providing very simple esthetics and user interface


package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	//import flash.display.FrameLabel;
	
	
	public class Game extends MovieClip {
		
		var isItPlayerOnesTurn:Boolean = true;
		
		public function Game() {
										
			
			b1.buttonMode = true;
			b2.buttonMode = true;
			b3.buttonMode = true;
			b4.buttonMode = true;
			b5.buttonMode = true;
			b6.buttonMode = true;
			b7.buttonMode = true;
			b8.buttonMode = true;
			b9.buttonMode = true;
			
			b1.stop();
			b2.stop();
			b3.stop();
			b4.stop();
			b5.stop();
			b6.stop();
			b7.stop();
			b8.stop();
			b9.stop();
			
			player.stop(); // player userface 
			winner.stop(); // winner grapic
			
			b1.addEventListener(MouseEvent.CLICK, handleClick);
			b2.addEventListener(MouseEvent.CLICK, handleClick);
			b3.addEventListener(MouseEvent.CLICK, handleClick);
			b4.addEventListener(MouseEvent.CLICK, handleClick);
			b5.addEventListener(MouseEvent.CLICK, handleClick);
			b6.addEventListener(MouseEvent.CLICK, handleClick);
			b7.addEventListener(MouseEvent.CLICK, handleClick);
			b8.addEventListener(MouseEvent.CLICK, handleClick);
			b9.addEventListener(MouseEvent.CLICK, handleClick);
			
			
					
		}// End public function game
		
		//handleClick Function
		function handleClick(e:MouseEvent):void 
		{
			if(e.target.currentFrame != 1) return;
			
			if(isItPlayerOnesTurn)
			{
				e.target.gotoAndStop(2);
				player.gotoAndStop(2); //update player interface
				lookForWinner();  //check for winner
				
			} 
			else 
			{
				e.target.gotoAndStop(3);
				player.gotoAndStop(1); //update player interface
				lookForWinner(); //check for winner
				
			}
			
			
			
		isItPlayerOnesTurn = !isItPlayerOnesTurn; //set turns
			
			//lookForWinner Function
			function lookForWinner():void{
			
				trace("looking"); //output check
				if((b1.currentFrame == b2.currentFrame && b2.currentFrame == b3.currentFrame && b3.currentFrame!=1)
				 ||(b1.currentFrame == b5.currentFrame && b5.currentFrame == b9.currentFrame && b9.currentFrame!=1)
				 ||(b1.currentFrame == b4.currentFrame && b4.currentFrame == b7.currentFrame && b7.currentFrame!=1)
				 ||(b2.currentFrame == b5.currentFrame && b5.currentFrame == b8.currentFrame && b8.currentFrame!=1)
				 ||(b3.currentFrame == b6.currentFrame && b6.currentFrame == b9.currentFrame && b9.currentFrame!=1)
				 ||(b3.currentFrame == b5.currentFrame && b5.currentFrame == b7.currentFrame && b7.currentFrame!=1)
				 ||(b4.currentFrame == b5.currentFrame && b5.currentFrame == b6.currentFrame && b6.currentFrame!=1)
				 ||(b7.currentFrame == b8.currentFrame && b8.currentFrame == b9.currentFrame && b9.currentFrame!=1))
				{
					winner.gotoAndStop(2); //display winner grapic
					if(player.currentFrame == 1){
						player.gotoAndStop(2); //displays correct player win
					}
					else{
						player.gotoAndStop(1); //displays correct player win
					}
				}
				else if (b1.currentFrame != 1 && b2.currentFrame != 1 && b3.currentFrame != 1 && b4.currentFrame != 1 && b5.currentFrame != 1 && b6.currentFrame != 1 && b7.currentFrame != 1 && b8.currentFrame != 1 && b9.currentFrame != 1)
				{
					winner.gotoAndStop(3); //detection of cat game
				}
				
			}//endd lookForWinner
			trace("found"); // output
	
		}//End function handle Click
			
	}//End public class game
		
}// End Package
	


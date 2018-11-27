/* File: Challenge-3.k
 ---------------------------
Write a program that teaches Karel to climb a mountain.

The steps involved are to:

1. Move up to the mountain.
2. Climb each of the four stair steps to reach the summit.
3. Plant a flag (represented by a beeper, of course) at the top of the mountain.
4. Climb down each of the four stair steps on the opposite side.
5. Move forward to the east end of the world.

*/
import "turns";

function ClimbOverMountain(){
	move();
	climbMountain();
	placeFlag();
	leaveMountain();
	move();
}

function climbMountain(){
	repeat (4){
		turnLeft();
		move();
		turnRight();
		move();
	}
}

function placeFlag(){
	putBeeper();
}

function leaveMountain(){
	repeat (4){
		move();
		turnRight();
		move();
		turnLeft();
	}
}

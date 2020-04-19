/// @Check in serve zone
// You can write your code in this editor
highEnd = global.serveY - global.serveZoneWidth/2;
lowEnd = global.serveY + global.serveZoneWidth;
if(y > highEnd && y < lowEnd) global.serveReady = false;
/// @description Insert description here
// You can write your code in this editor
if(oplayer.life < 100 and health > oplayer.life)
{
health = health-(100 - oplayer.life);
}
if(health<=0)
game_restart();
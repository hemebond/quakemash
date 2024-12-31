void trigger_gravity_touch() {
	other.gravity = self.gravity;
}

/*QUAKED trigger_gravity (.5 .5 .5) ? X X X X X X X X NOT_ON_EASY NOT_ON_NORMAL NOT_ON_HARD_OR_NIGHTMARE NOT_IN_DEATHMATCH NOT_IN_COOP NOT_IN_SINGLEPLAYER X NOT_ON_HARD_ONLY NOT_ON_NIGHTMARE_ONLY
set the gravity of an entity
*/
void trigger_gravity() {
	InitTrigger();

	self.touch = trigger_gravity_touch;

	if (self.count)
		self.gravity = self.count;
	else if (self.gravity)
		self.gravity = self.gravity / cvar("sv_gravity");
	else
		self.gravity = 1;
}

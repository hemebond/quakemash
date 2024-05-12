//
// Just a stub of the Arcane Dimensions trigger which is used to
// control the level skip teleporters in the starting hub.
//
void trigger_entitystate_on_use() {
	entity t = find(world, targetname, self.target);
	while(t) {
		t.state = ESTATE_ON;
		t = find(t, targetname, self.target);
	}
}



void trigger_entitystate_on() {
	// self.classtype = CT_ESTATE;
	// trigger_bmodel_sounds();			// Precache any sounds
	if (self.target == "") dprint("\b[ENTSTATE]\b Missing target!\n");
	if (self.targetname != "") self.use = trigger_entitystate_on_use;
}

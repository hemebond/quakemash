/*
Set the value of a field/property on other entities when triggered

target
	The entity targetname to change
message
	The new target for this entity
*/

void trigger_settarget_use() {
	dprint("trigger_settarget_use()\n");
	eprint(self);

	entity t = world;
	do {
		dprint("Looking for t\n");
		t = find(t, targetname, self.target);
		eprint(t);
		if (!t) {
			dprint(self.target, " not found\n");
			return;
		}

		dprint("Updating ", targetname, " target to ", self.message, "\n");

		t.target = self.message;
	} while (1);
}

void trigger_settarget() {
	if (self.target == "") {
		objerror("trigger_set target is empty");
	}
	self.use = trigger_settarget_use;
}

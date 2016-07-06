last_pos <- self.GetOrigin();

function Think() {
	local pos = self.GetOrigin();
	
	if (pos.x != last_pos.x || pos.y != last_pos.y || pos.z != last_pos.z) {
		EntFireByHandle(self, "FizzleTouchingPortals", "", 0.0, self, self);
		return 0.4;
	}
	last_pos = pos;
	
	return 0.2;
}
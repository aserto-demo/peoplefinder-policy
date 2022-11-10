package peoplefinder.IMPERSONATE.api.users.__id

default allowed = false
default visible = false
default enabled = false

allowed {
    u = input.user
    u.properties.department == "Operations"
    u.properties.title == "IT Manager"
}

visible {
    u = input.user
    u.properties.department == "Operations"
}

enabled {
	allowed
}

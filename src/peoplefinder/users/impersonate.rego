package peoplefinder.IMPERSONATE.api.users.__id

default allowed = false
default visible = false
default enabled = false

allowed {
    u = input.user
    u.attributes.properties.department == "Operations"
    u.attributes.properties.title == "IT Manager"
}

visible {
    u = input.user
    u.attributes.properties.department == "Operations"
}

enabled {
	allowed
}

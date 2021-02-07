package peoplefinder.IMPERSONATE.api.users.__id

default allowed = false
default visible = false
default enabled = false

allowed {
    u = input.user
    u.attr.department == "Operations"
    u.attr.title == "IT Manager"
}

visible {
    u = input.user
    u.attr.department == "Operations"
}

enabled {
	allowed
}

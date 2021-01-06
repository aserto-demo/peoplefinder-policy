package peoplefinder.users.post

default allowed = false
default visible = false
default enabled = false

allowed {
    u = input.user
    u.attr.department == "Operations"
    u.attr.title == "IT Manager"
}

visible {
	allowed
}

enabled {
	allowed
}

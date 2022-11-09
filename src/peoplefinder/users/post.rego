package peoplefinder.POST.api.users

default allowed = false
default visible = false
default enabled = false

allowed {
    u = input.user
    u.properties.department == "Operations"
    u.properties.title == "IT Manager"
}

visible {
	allowed
}

enabled {
	allowed
}

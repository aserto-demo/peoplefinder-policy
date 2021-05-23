package peoplefinder.POST.api.users

default allowed = false
default visible = false
default enabled = false

allowed {
    u = input.user
    u.attributes.properties.department == "Operations"
    u.attributes.properties.title == "IT Manager"
}

visible {
	allowed
}

enabled {
	allowed
}

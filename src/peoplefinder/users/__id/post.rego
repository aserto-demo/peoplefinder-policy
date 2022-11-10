package peoplefinder.POST.api.users.__id

default allowed = false
default visible = true
default enabled = false

allowed {
    input.user.properties.department == "Operations"
}

enabled {
    allowed
}

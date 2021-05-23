package peoplefinder.POST.api.users.__id

default allowed = false
default visible = true
default enabled = false

allowed {
    input.user.attributes.properties.department == "Operations"
}

enabled {
    allowed
}

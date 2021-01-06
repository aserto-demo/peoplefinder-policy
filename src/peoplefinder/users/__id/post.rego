package peoplefinder.users.__id.post

default allowed = false
default visible = true
default enabled = false

allowed {
    input.user.attr.department == "Operations"
}

enabled {
    allowed
}

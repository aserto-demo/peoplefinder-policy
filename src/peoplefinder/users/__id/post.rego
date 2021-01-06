package peoplefinder.users.__id.post

default allowed = false
default visible = true
default enabled = false

allowed {
    u = input.user
    u.attr.department == "Operations"
}

visible {
    allowed
}

enabled {
    allowed
}
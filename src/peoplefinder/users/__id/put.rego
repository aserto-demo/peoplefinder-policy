package peoplefinder.users.__id.put

default allowed = false
default visible = true
default enabled = true

allowed {
    u = input.user
    u.attr.department == "Operations"
}

allowed {
    u = input.user
    u.id == input.resource
}

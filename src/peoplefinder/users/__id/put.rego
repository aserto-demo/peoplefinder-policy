package peoplefinder.PUT.api.users.__id

default allowed = false
default visible = true
default enabled = true

allowed {
    input.user.attributes.properties.department == "Operations"
}

allowed {
    input.user.id == input.resource.id
}

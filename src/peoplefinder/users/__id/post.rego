package peoplefinder.POST.api.users.__id

default allowed = false
default visible = true
default enabled = true

allowed {
    input.user.attributes.properties.department == "Operations"
}

allowed {
    dir.is_manager_of(input.user.id, input.resource.id)
}

enabled {
    allowed
}

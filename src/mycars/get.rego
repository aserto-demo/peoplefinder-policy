package mycars.get

default allowed = false
default visible = false
default enabled = false

allowed {
    u = input.user
    u.attr.department == "Sales Engagement Management"
}

visible {
	allowed
}

enabled {
	allowed
}

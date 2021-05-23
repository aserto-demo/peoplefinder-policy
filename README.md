# peoplefinder-policy

Policy for PeopleFinder demo

## default 

    default allow = false

## peoplefinder.users.get.rego

    allow {
        input.method == "GET"
        input.user == "kaia@acmecorp.com"
    }

## peoplefinder.users.__id.put.rego

    allow {
        u = input.user
        u.enabled == true
        u.attributes.properties.department == "Sales Engagement Management"
    }

role(actor: String, "admin") if
    actor = "Gray" or
    actor = "Alice";

role(actor: String, "receptionist") if
    actor = "Drake";

allow(actor: String, "GET", _job: Job) if
    role(actor, "admin");

allow(actor: String, "view", _job: Job) if
    role(actor, "receptionist");

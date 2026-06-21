package main

deny[msg] {
    # deny if permissions of wofkflow level are omitted
    not input.permissions
    msg = "Workflow permissions are missing"
}

deny[msg] {
    # deny if set except brank to permissions of workflow level
    input.permissions != {}
    msg = sprintf("Workflow permissions are not empty: %v", [input.permissions])
}
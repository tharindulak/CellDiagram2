import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
# 
@display {
    label: "",
    id: "3c9a843f-35c5-4a09-b30d-dd8cd1b1c055"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}

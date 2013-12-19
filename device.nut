agent.on("button1", function(a) {
    local data = "";
    if (a == "") {                             //Check if any data was sent with the button press
        server.log("Button 1 press recieved."); //Log that the device received the request
                                               // Do something at the device 
        data = "Button 1 pressed.";      // This string will be sent back to Pitchfork and displayed
    }
    agent.send("button1", data)                // Reply to the agent with the response string.
});
agent.on("button2", function(a) {
    local data = "";
    if (a == "") {
        server.log("Button 2 press recieved.");
        data = "Button 2 pressed.";
    }
    agent.send("button2", data)
});
agent.on("button3", function(a) {
    local data = "";
    if (a == "") {
        server.log("Button 3 press recieved.");
        data = "Button 3 pressed.";
    }
    agent.send("button3", data)
});
agent.on("button4", function(a) {
    local data = "";
    if (a == "") {
        server.log("Button 4 press recieved.");
        data = "Button 4 pressed.";
    }
    agent.send("button4", data)
});
agent.on("button5", function(a) {
    local data = "";
    if (a == "") {
        server.log("Button 5 press recieved.");
        data = "Button 5 pressed.";
    }
    agent.send("button5", data)
});
agent.on("button6", function(a) {
    local data = "";
    if (a == "") {
        server.log("Button 6 press recieved.");
        data = "Button 6 pressed.";
    }
    agent.send("button6", data)
});
agent.on("button7", function(a) {
    local data = "";
    if (a == "") {
        server.log("Button 7 press recieved.");
        data = "Button 7 pressed.";
    }
    agent.send("button7", data)
});
agent.on("button8", function(a) {
    local data = "";
    if (a == "") {
        server.log("Button 8 press recieved.");
        data = "Button 8 pressed.";
    }
    agent.send("button8", data)
});
agent.on("button9", function(a) {
    local data = "";
    if (a == "") {
        server.log("Button 9 press recieved.");
        data = "Button 9 pressed.";
    }
    agent.send("button9", data)
});
agent.on("switch1", function(a) {
    local data = "";
    if (a == "1") {                     //Pitchfork switches send 0 or 1
                                        // Do something at the device
        data = "Switch 1: On";    // Response to Pitchfork
    }
    else if (a == "0") {
                                        // Do something at the device
        data = "Switch 1: Off";
    }
    agent.send("switch1", data)
});
agent.on("switch2", function(a) {
    local data = "";
    if (a == "1") {
                                        // Do something at the device
        data = "Switch 2: On";
    }
    else if (a == "0") {
                                        // Do something at the device
        data = "Switch 2: Off";
    }
    agent.send("switch2", data)
});
agent.on("slider1", function(a) {       //Pitchfork Sliders send 0 - 1 in .1 increments
                                        // Do something at the device
    local data = ("Slider 1: " + a);    // Response to Pitchfork
    agent.send("slider1", data)
});
agent.on("slider2", function(a) {
    local data = ("Slider 2: " + a);
    agent.send("slider2", data)
});

// Configure your pins
//hardware.pin1.configure(DIGITAL_OUT);
//hardware.pin2.configure(DIGITAL_OUT);
//hardware.pin5.configure(DIGITAL_OUT);
//hardware.pin7.configure(DIGITAL_OUT);
//hardware.pin8.configure(DIGITAL_OUT);
//hardware.pin9.configure(DIGITAL_OUT);
imp.configure("Pitchfork Control Panel", [], []);

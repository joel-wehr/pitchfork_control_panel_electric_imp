agent.on("button1", function(a) {
    local data = "";
    if (a == "") {
        server.log("button 1");
        // Do something at the device
        data = "Button 1 pressed.";
    }
    agent.send("button1", data)
    });
agent.on("button2", function(a) {
    local data = "";
    if (a == "") {
        // Do something at the device
        data = "Button 2 pressed";
    }
    agent.send("button2", data)
    });
agent.on("button3", function(a) {
    local data = "";
    if (a == "") {
        // Do something at the device
        data = "Button 3 pressed.";
    }
    agent.send("button3", data)
    });
agent.on("button4", function(a) {
    local data = "";
    if (a == "") {
        // Do something at the device
        data = "Button 4 pressed.";
    }
    agent.send("button4", data)
    });
agent.on("switch1", function(a) {
    local data = "";
    if (a == "1") {
        // Do something at the device
        data = "Switch 1: On";
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
agent.on("slider1", function(a) {
    // Do something at the device
    local data = ("Slider 1: " + a);
    agent.send("slider1", data)
    });
agent.on("slider2", function(a) {
    local data = ("Slider 2: " + a);
    agent.send("slider2", data)
    });

hardware.pin1.configure(DIGITAL_OUT);
hardware.pin2.configure(DIGITAL_OUT);
hardware.pin5.configure(DIGITAL_OUT);
hardware.pin7.configure(DIGITAL_OUT);
hardware.pin9.configure(DIGITAL_OUT);
imp.configure("Pitchfork Testing", [], []);

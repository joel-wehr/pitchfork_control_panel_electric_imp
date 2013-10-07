//*************************TWILIO***********************************************
const TWILIO_ACCOUNT_SID = ""   //Your SID
const TWILIO_AUTH_TOKEN = ""    //Your TOKEN
const TWILIO_FROM_NUMBER = "+17175551212" // your phone no goes here
const TWILIO_TO_NUMBER = "+17175551212" // destination phone no

function send_sms(number, message) {
    local twilio_url = format("https://api.twilio.com/2010-04-01/Accounts/%s/SMS/Messages.json", TWILIO_ACCOUNT_SID);
    local auth = "Basic " + http.base64encode(TWILIO_ACCOUNT_SID+":"+TWILIO_AUTH_TOKEN);
    local body = http.urlencode({From=TWILIO_FROM_NUMBER, To=number, Body=message});
    local req = http.post(twilio_url, {Authorization=auth}, body);
    local res = req.sendsync();
    if(res.statuscode != 201) {
        server.log("error sending message: "+res.body);
    }
}
//*****************************END TWILIO***************************************
apiKey <- ""  //Your big, huge, long, secure API Key

http.onrequest(function (req, resp) {
    try {
        local data = http.jsondecode(req.body);
        server.log("Received: " + req.body);
        if ("api-key" in req.headers && req.headers["api-key"] == apiKey) {
            server.log(req.headers["api-key"]);
        
            if ("button1" in data) {
                device.send("button1", data.button1);
                device.on("button1", function(d) {
                    local json = "{ \"status\" : { \"button1\" : \"" + d + "\" }}";
                    resp.send(200,json);
                });
            }
            else if ("button2" in data) {
                device.send("button2", data.button2);
                device.on("button2", function(d) {
                    local json = "{ \"status\" : { \"button2\" : \"" + d + "\" }}";
                    resp.send(200,json);
                });
            }
            else if ("button3" in data) {
                device.send("button3", data.button3);
                device.on("button3", function(d) {
                    local json = "{ \"status\" : { \"button3\" : \"" + d + "\" }}";
                    resp.send(200,json);
                });
            }
            else if ("button4" in data) {
                device.send("button4", data.button4);
                device.on("button4", function(d) {
                    local json = "{ \"status\" : { \"button4\" : \"" + d + "\" }}";
                    resp.send(200,json);
                });
            }
            else if ("switch1" in data) {
                device.send("switch1", data.switch1);
                device.on("switch1", function(d) {
                    local json = "{ \"status\" : { \"switch1\" : \"" + d + "\" }}";
                    resp.send(200,json);
                });
            }
            else if ("switch2" in data) {
                device.send("switch2", data.switch2);
                device.on("switch2", function(d) {
                    local json = "{ \"status\" : { \"switch2\" : \"" + d + "\" }}";
                    resp.send(200,json);
                });
            }
            else if ("slider1" in data) {
                device.send("slider1", data.slider1);
                device.on("slider1", function(d) {
                    local json = "{ \"status\" : { \"slider1\" : \"" + d + "\" }}";
                    resp.send(200,json);
                });
            }
            else if ("slider2" in data) {
                device.send("slider2", data.slider2);
                device.on("slider2", function(d) {
                    local json = "{ \"status\" : { \"slider2\" : \"" + d + "\" }}";
                    resp.send(200,json);
                });
            }
        }
        else {
            local json = "{ \"status\" : { \"auth\" : \"no\" }}";
            resp.send(401, json);
            send_sms(TWILIO_TO_NUMBER, "Unauthorized access to imp attempted.");
        }
     
    }
    catch (ex) {
    resp.send(500, "Internal Server Error: " + ex);
  }
});

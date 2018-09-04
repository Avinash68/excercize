#!/usr/bin/env python
# -*- coding: utf-8 -*-

import urllib  # Python URL functions
import urllib2  # Python URL functions


def SendSMS91(mobiles, mobile_otp):
    authkey = "206967AvoGYE2bEj3g5abf6102"  # Your authentication key.

    mobiles = mobiles  # Multiple mobiles numbers separated by comma.

    message = "Welcome to www.gujratcareermitra.in Your registration OTP is %s , Thank you." % (
        mobile_otp)  # Your message to send.

    sender = "NewUsr"  # Sender ID,While using route4 sender id should be 6 characters long.

    route = "4"  # Define route

    # Prepare you post parameters
    values = {
        'authkey': authkey,
        'mobiles': mobiles,
        'message': message,
        'sender': sender,
        'route': route
    }

    url = "http://api.msg91.com/api/sendhttp.php"  # API URL

    postdata = urllib.urlencode(values)  # URL encoding the data here.

    req = urllib2.Request(url, postdata)

    response = urllib2.urlopen(req)

    output = response.read()  # Get Response

    print output  # Print Response


if __name__ == "__main__":
    demo = SendSMS91(9657145627, 12345)

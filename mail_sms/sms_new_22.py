# -*- coding: utf-8 -*-
# encoding=utf8

import requests
import urllib
import sys
reload(sys)
sys.setdefaultencoding('utf8')



def send_sms_response(sms_shoot_id, sms_details):
    '''

    :param sms_id:
    :param sms_details:
    :return:
    '''
    response_dict = dict(sms_shoot_id=sms_shoot_id,
                         sms_details=sms_details)
    return response_dict



def SendSMS(sms_from, sms_to, sms_body,mobile_otp):
    '''
    :param sms_from:
    :param sms_to:
    :param sms_body:
    :return: dict(sms_id, sms_message)
    '''
    #api_key = "559C0E6F9D8CE8"
    api_key = "559C0E6F9D8CE8"
    contacts = sms_to #contacts = '9423265765'
    mfrom = 'SMSADD'
    sms_body = "नमस्कार महाराष्ट्र विद्या प्राधिकरणाच्या सातत्यपूर्ण व्यावसायिक विकास प्रशिक्षणात आपले स्वागत ! '\ %s आपला OTP %d  आहे " % (contacts,mobile_otp)

    print"asasasas----->>>>",sms_body
    sms_text = urllib.quote_plus(sms_body)
    # sms_text = urllib.urlencode(sms_body)

    #urllib.quote_plus("CPD मध्ये आपले स्वागत आहे ")
    # sms_text = urllib.quote_plus(sms_body)

    utf8_encode = lambda t: unicode(t).encode()

    # utf8_encode = lambda sms_body: unicode(sms_body).encode()
    print "sms mohar\n"
    print utf8_encode(sms_body)
    print "sms mohar\n"
    print sms_body

    print utf8_encode == sms_body

    sms_text = sms_body

    # "नमस्कार महाराष्ट्र विद्या प्राधिकरणाच्या सातत्यपूर्ण व्यावसायिक विकास प्रशिक्षणात आपले स्वागत ! {mobileno}         आपला OTP {otpno}  आहे "

    # "नमस्कार महाराष्ट्र विद्या प्राधिकरणाच्या सातत्यपूर्ण व्यावसायिक विकास प्रशिक्षणात आपले स्वागत ! 9423265765 आपला OTP 985742  आहे. "


    myurl = "http://3way-solutions.in/app/smsapi/index.php?key="+api_key+"&routeid=100024&type=unicode&contacts="+contacts+"&senderid="+mfrom+"&msg="+sms_text;



    print "\n"
    print myurl

    try:
        response = requests.get(myurl)
        r = response
        if r.status_code == '200':
            mystr = r.status_code
            data = mystr.spit("/")
            sms_shoot_id = data[1]

            response_dict = send_sms_response(sms_shoot_id, mystr)
        else:
            sms_shoot_id = "NA"
            mystr = r.status_code
            response_dict = send_sms_response(sms_shoot_id, mystr)

    except:
        sms_id = "NA"
        #response_details = response.json() if response else {}
        mystr = r.status_code
        response_dict = send_sms_response(sms_shoot_id, mystr)

    return response_dict


if __name__ == "__main__":
    response =  SendSMS("",
        "9922986869",
        "Wlcome to test",653428)
    #id = response['data']['0']['id']
    print response
    #response = GetSMSStatusInfini(response['sms_id'])
    #response = GetSMSStatusInfini(id)




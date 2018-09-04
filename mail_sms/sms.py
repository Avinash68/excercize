from cpd_local.settings import TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN, TWILIO_NUMBER
from rest_framework.response import Response
from twilio.rest import Client

def send_mobile_otp_sms(mobile,mobile_otp):

       client = Client(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
       try:
           message = client.messages.create(
               to = mobile,
               from_=TWILIO_NUMBER,
               body=" Your Registration One Time Password is %d "% mobile_otp)
       except KeyError:
           return Response({"Responce": "Enter Valid Number"})
       print(message.sid)
       if message.sid:
           return Response({"Responce": "Success"})
       else:
           return Response({"Responce": "Fail"})
#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import re
import csv
import sendgrid
import smtplib
from django.core.mail import get_connection, EmailMultiAlternatives
from django.template.loader import render_to_string, get_template
from django.conf import settings
from django.core.mail import EmailMultiAlternatives
from django.template.loader import render_to_string
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from sendgrid.helpers.mail import *
from sys import argv

def send_otp_email_aws(email):
    SENDGRID_API_KEY='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'
    sg = sendgrid.SendGridAPIClient(apikey=SENDGRID_API_KEY)
    name = ''
    from_email = Email("aboutdrim@gmail.com")
    # from_email = Email("pramodbakre@gmail.com")
    to_email = Email(email)
    subject = "Election of Deccan Gymkhana Club on 18th March, 2018"
    content = Content("text/html", """<html>
        <head>
    	</head>
        <body>
            <center>
                <img src="https://marketing-image-production.s3.amazonaws.com/uploads/b698755d1042a3cde4dc2ca5d4c670616c1fdbeab5786f5da377bf738796c2fb06738de5485e9ca1bd3148200c969e70ac6dd4fd9c773c0fbe8af8bf4796c41b.jpeg" alt="Pramod Bakre" title="Pramod Bakre" style="display:block"/>       
            </center>
            </body>
    </html>
        """)
    import ipdb;ipdb.set_trace()
    mail = Mail(from_email, subject, to_email, content)
    response = sg.client.mail.send.post(request_body=mail.get())
    print(response.status_code)

def insert_data(f_obj):
    reader = csv.reader(f_obj)
    flag = True
    i=1
    for line in reader:

        if flag:
            flag = False
        else:
	    send_otp_email_aws(line)
	    print i,line
            i+=1
            
            

if __name__ == "__main__":
    print "Starting........."
    demo=send_otp_email_aws("avinashthorat68@gmail.com")
    # i f len(argv) != 2:
    #     print "argument missing "
    #     exit()
    # with open(sys.argv[1], "rb") as f_obj:
    #     r = insert_data(f_obj)









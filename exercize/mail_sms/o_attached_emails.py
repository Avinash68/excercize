#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import re
import csv
import datetime

import sendgrid
from django.core.mail import get_connection, EmailMultiAlternatives
import smtplib
# from email.MIMEMultipart import MIMEMultipart
# from email.MIMEText import MIMEText
# from email.MIMEBase import MIMEBase
from email import encoders
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
import base64

from pytz import timezone
from sendgrid.helpers.mail import *

now_ist = datetime.now(timezone('Asia/Kolkata'))


# Email send with attachment and multiple reciever

def o_attached_emails():
    execute_date = str(now_ist.date())
    fromaddr = "aboutdrim@gmail.com"
    toaddr = ["avinashthorat68@gmail.com", "gawalid21@gmail.com", "ashwinibhalerao03@gmail.com"]
    msg = MIMEMultipart()
    msg['From'] = fromaddr
    # msg['To'] = toaddr
    msg['Subject'] = "AllUSER-MODULE STATUS"
    body = ""
    msg.attach(MIMEText(body, 'plain'))
    filename = "mail.csv"
    attachment = open("mail.csv", "rb")
    part = MIMEBase('application', 'octet-stream')
    part.set_payload((attachment).read())
    encoders.encode_base64(part)
    part.add_header('Content-Disposition', "attachment; filename= %s" % filename)
    msg.attach(part)
    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.starttls()
    server.login(fromaddr, "vijuvijay")
    text = msg.as_string()
    server.sendmail(fromaddr, toaddr, text)
    server.quit()


if __name__ == "__main__":
    print "Starting........."
    demo = o_attached_emails()
    # if len(argv) != 2:
    #     print "argument missing "
    #     exit()
    # with open(sys.argv[1], "rb") as f_obj:
    #     r = insert_data(f_obj)

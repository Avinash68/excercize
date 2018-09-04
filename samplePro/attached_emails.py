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
import base64
from sendgrid.helpers.mail import *


def send_otp_email_aws(email):
    SENDGRID_API_KEY = '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'
    sg = sendgrid.SendGridAPIClient(apikey=SENDGRID_API_KEY)
    from_email = Email("aboutdrim@gmail.com")
    to_email = Email(email)
    subject = "DEMO"
    content = Content("text/html", """<html><head></head><body><p>TeStInG</p></body></html>""")

    with open("mail.csv", 'rb') as f:
        data = f.read()
        # f.close()
    # Encode contents of file as Base 64
    encoded = base64.b64encode(data).decode()

    attachment = Attachment()
    attachment.content = encoded
    attachment.type = "application/csv"
    attachment.filename = "test.csv"
    attachment.disposition = "attachment"
    attachment.content_id = "Document file"

    mail = Mail(from_email, subject, to_email, content)
    mail.add_attachment(attachment)

    response = sg.client.mail.send.post(request_body=mail.get())
    print(response.status_code)



# def perodic_email():
#     SENDGRID_API_KEY = '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'
#     sg = sendgrid.SendGridAPIClient(apikey=SENDGRID_API_KEY)
#     from_email = Email("aboutdrim@gmail.com")
#     to_email = Email("avinashthorat68@gmail.com")
#     # to_email = Email("avinashthorat68@gmail.com"
#     subject = "AllUserStatus"
#     execute_date = str(now_ist.date())
#
#     content = Content("text/html", """<html><head></head><body><p>AllUserStatus | Dated %s </p>
#     </body></html>""" % (execute_date,))
#
#     with open('../gk/cpd_reports/myapp/AllUserStatus' + str(execute_date) + '.csv', 'rb') as f:
#         data = f.read()
#         # f.close()
#     # Encode contents of file as Base 64
#     encoded = base64.b64encode(data).decode()
#
#     attachment = Attachment()
#     attachment.content = encoded
#     attachment.type = "application/csv"
#     attachment.filename = "AllUserStatus" + str(execute_date) + ".csv"
#     attachment.disposition = "attachment"
#     attachment.content_id = "Document file"
#
#     mail = Mail(from_email, subject, to_email, content)
#     mail.add_attachment(attachment)
#
#     response = sg.client.mail.send.post(request_body=mail.get())
#     print(response.status_code)


if __name__ == "__main__":
    print "Starting........."
    demo = send_otp_email_aws("avinashthorat68@gmail.com")
    # if len(argv) != 2:
    #     print "argument missing "
    #     exit()
    # with open(sys.argv[1], "rb") as f_obj:
    #     r = insert_data(f_obj)

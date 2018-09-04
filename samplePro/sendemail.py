# -*- coding: utf-8 -*-
import sendgrid
import os
from sendgrid.helpers.mail import *

sg = sendgrid.SendGridAPIClient(apikey=os.environ.get('SENDGRID_API_KEY'))
name='Avinash'
email_otps='00000'

from_email = Email("mohar@gmail.com")
to_email = Email("avinashthorat68@yahoo.com")
subject = "Sending with SendGrid is Fun"
content = Content("text/html", """<html>
    <head>
	</head>
    <body>
        <center>
            <img src="https://s3-ap-southeast-1.amazonaws.com/maacpd/static/logo_cpd_combine_web.png" alt="सातत्यपूर्ण व्यावसायिक विकास प्रशिक्षण" title="सातत्यपूर्ण व्यावसायिक विकास प्रशिक्षण" style="display:block" height="130" />       
        </center>
        <br><br><br>        

		<div class='contentEditableContainer contentTextEditable'>
			<div class='contentEditable' align='left'>
				<span style="color:#500050">
					<h3>
						नमस्कार  %s,
						<br/>
						'राष्ट्रीय माध्यमिक शिक्षा अभियान' व 'महाराष्ट्र शासन' यांच्या सहकार्याने, 
						<br/>
						महाराष्ट्र विद्या प्राधिकरण आयोजित <br/>
						सातत्यपूर्ण व्यावसायिक विकास प्रशिक्षणात आपले स्वागत ! <br/>
						आपला O.T.P.<u><b> %s </b></u> आहे.
					</h3>
				<span>
			</div>
		</div>      
		<br><br><br>

		<div class='contentEditableContainer contentTextEditable'>
			<div class='contentEditable' style='text-align:center;color:#AAAAAA;'>
				<h4> धन्यवाद !<br/>  <a style='color:#20a8d8;'>सातत्यपूर्ण व्यावसायिक विकास प्रशिक्षण टीम</h4>				
				<h4> <a href="http://maacpd.in" style='color:#20a8d8;'>www.maacpd.in</h4>				
				<h4> <a style='color:#20a8d8;'>हेल्पलाईन नंबर: (०२०)-४९२९४९०९ (स. ८ ते स. ११ आणि सं. ५ ते रा. ८)</h4>
			</div>
		</div>

    </body>
</html>
    """ % (name, email_otps))
mail = Mail(from_email, subject, to_email, content)
response = sg.client.mail.send.post(request_body=mail.get())
import ipdb;ipdb.set_trace()
print(response.status_code)
print(response.body)
print(response.headers)

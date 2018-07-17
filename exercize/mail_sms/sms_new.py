#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import re
import csv
import http.client
import python_http_client


def SendSMS(mobiles):
    # import http.client

    apikey = '206967AvoGYE2bEj3g5abf6102'
    sender = 'NewUsr'

    conn = http.client.HTTPConnection("api.msg91.com")
    # conn.request("GET", "/api/sendhttp.php?sender=MSGIND&route=4&mobiles="+mobiles+"&authkey=&encrypt=&country=0&message=Hello!%20This%20is%20a%20test%20message&flash=&unicode=&schtime=&afterminutes=&response=&campaign=")


    conn.request("GET",
                 "/api/sendhttp.php?sender=" + sender + "&route=4&mobiles=" + mobiles + "&authkey=" + apikey + "&encrypt=&country=0&message=Hello!%20This%20is%20a%20test%20message&flash=&unicode=&schtime=&afterminutes=&response=&campaign=")

    res = conn.getresponse()
    data = res.read()

    print(data.decode("utf-8"))


if __name__ == "__main__":
    demo = SendSMS(9657145627)

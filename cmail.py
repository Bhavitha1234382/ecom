import smtplib
from email.message import EmailMessage
def send_mail(to,body,subject):
    server=smtplib.SMTP_SSL('smtp.gmail.com',465)
    server.login('bhavitha448@gmail.com','quye oeoc wjke rera')
    msg=EmailMessage()
    msg['FROM']='bhavitha448@gmail.com'
    msg['TO']=to
    msg['SUBJECT']=subject
    msg.set_content(body)
    server.send_message(msg)
    server.close()
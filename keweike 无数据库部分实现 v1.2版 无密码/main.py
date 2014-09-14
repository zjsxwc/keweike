#coding:utf-8
from bottle import route, static_file, template, request, response, post, run
import threading, time, socket
import os


  
  
  
  
  
@route('/static/<filename:path>')  
def download_the_file(filename):
  print "-------------   Download file: "+filename
  #print os.getcwd()
  return static_file(filename,root=os.getcwd(),
    #download=filename,
    )
  
 

@route('/')
def keweike(): 
  return template('keweike')




 
 
@route('/signin')
def signin():
  return template('template/signin') 
@post('/signin')
def signin():
  return "数据库查询中"
 
@route('/reg')
def reg():
  return template('template/reg')

@post('/reg')
def post_reg():
  global Verify_Code
  phone_no=request.POST.get("phone","")
  print phone_no
  vc=request.POST.get("VC","")
  print vc
  if not(phone_no in Verify_Code):
    return "验证码超时失效"
  if Verify_Code[phone_no]==vc:
    #setcookies
	#start_sql_thread
    return "注册成功"
  









 
import random
def gen_vc_code():
  s=''
  for i in xrange(6):
    a=random.randint(0, 9)
    s=s+str(a)
  return s


  
@post('/vc_gen')
def post_vc_gen():
  global Verify_Code
  phone_no=request.POST.get("phone","")
  print phone_no
  if phone_no in Verify_Code: return {"done":"false"}
  verify_code=gen_vc_code()#随机数
  Verify_Code[phone_no]=verify_code
  sendmail=vc_thread(verify_code,phone_no)
  sendmail.start()
  print "开始发邮件"
  print "手机号：%s"%phone_no
  return {"done":"true"}
  
  
class vc_thread(threading.Thread):
  def __init__(self,vccode,phoneno):
    threading.Thread.__init__(self)
    global Verify_Code
    self.vccode=vccode
    self.phoneno=phoneno
    print "init threading: "+vccode
    
    
  def run(self):
    global Verify_Code
    c=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
    ipend=("smtp.163.com",25)
    c.connect(ipend)
    msg="HELO localhost\r\n"
    c.send(msg)
    b=c.recv(1024)
    msg="AUTH LOGIN\r\n"
    c.send(msg)
    b=c.recv(1024)
    msg="**************************************************************\r\n" #这里要加入encoded后的163邮箱用户名
    c.send(msg)
    b=c.recv(1024)
    msg="**************************************************************\==\r\n" #这里要加入encoded后的163邮箱密码
    c.send(msg)
    b=c.recv(1024)
    msg="MAIL From:<zjsxwc@163.com>\r\n"
    c.send(msg)
    b=c.recv(1024)
    msg="RCPT To:<%s@139.com>\r\n"%self.phoneno
    #msg="RCPT To:<zjsxwc@qq.com>\r\n"
    c.send(msg)
    b=c.recv(1024)
    msg="DATA\r\n"
    c.send(msg)
    b=c.recv(1024)
    msg="Subject: 验证码:%s\r\n\r\n  \r\n"%self.vccode
    c.send(msg)
    msg=".\r\n"
    c.send(msg)
    b=c.recv(1024)
    msg="QUIT\r\n"
    c.send(msg)
    b=c.recv(1024)
    c.close()
    
    
    
    time.sleep(60)
    del Verify_Code[self.phoneno]   

	
Verify_Code={}











run(host='localhost', port=8080, server='cherrypy',
  debug=True,
  reloader=True,
  )



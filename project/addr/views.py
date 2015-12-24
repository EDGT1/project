# -*- coding: utf-8 -*-
from django.template import RequestContext 
from django.http import HttpResponse
from django.shortcuts import render_to_response
from addr.models import *
from django.db import connection,transaction 
a = 0
def main_page(request):
    output = '''
    <html align='center' >
    <head><title>%s</title></head>
    <body  background="/site_media/02.gif"  >
    <h1>%s</h1><p>%s</p>
    <p>
    <a href='http://127.0.0.1:8000/registe/'>注册</a>
    <a href='http://127.0.0.1:8000/login/'>登录</a></p>

    </body>
    </html>
    ''' % (
    '教师信息管理',
    '欢迎使用教师信息管理软件',
    '欢迎使用',
    )
    return HttpResponse(output)

def logout(request):
    #anquan()
    try:
        del request.session['username']
        return HttpResponse("成功注销")
    except:
        return HttpResponse("用户名登录信息不存在")
def registe(request):
    if request.POST:
        post = request.POST
        if post["Password"] == post["againpassword"]: 
            for user in User.objects.all():
                if user.Username == post["Username"]:
                    return render_to_response("userchunzai.html", context_instance=RequestContext(request))
            new_people = User(
            Username = post["Username"],
            Password = post["Password"],
            Leixing  = post["L"],
            Name = post["name"],
            question = post["question"],
            answer = post["answer"],
            )
            new_people.save()
            user_list = User.objects.all()
            return render_to_response("registe1.html",{'author_list':user_list,},context_instance=RequestContext(request))
        return render_to_response("passwordfalse.html", context_instance=RequestContext(request))
    user_list = User.objects.all()
    return render_to_response("zhuche.html",{'author_list':user_list,},context_instance=RequestContext(request))
def changepassword(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    #n = request.session['username']
    if request.POST:
        post = request.POST
        if post["Password"] == post["againpassword"]: 
            #for user in User.objects.all():
                #if user.Username == n:
            user = User.objects.get(Username = n)
            user.Password = post["Password"]
            user.save()
            return render_to_response("teacher.html",{'user':user,},context_instance=RequestContext(request))
    return render_to_response("changepassword.html",context_instance=RequestContext(request))
def findpassword(request):
    
    if request.POST:
        post = request.POST
        for user in User.objects.all():
            if user.Username == post["Username"] :
                return render_to_response("passwordtwo.html",{'user':user},context_instance=RequestContext(request))

    return render_to_response("passwordone.html", context_instance=RequestContext(request))
def findpassword2(request):
    
    if request.POST:
        post = request.POST
        for user in User.objects.all():
            if user.Username == post["Username"] and user.answer != post["answer"] :
                return render_to_response("passwordtwo.html",{'user':user},context_instance=RequestContext(request))
            elif user.Username == post["Username"] and user.answer == post["answer"] :
                return render_to_response("passwordthree.html",{'user':user},context_instance=RequestContext(request))


   # return render_to_response("passwordthree.html", context_instance=RequestContext(request))
def login(request):
    
    if request.POST:
        post = request.POST
        for user in User.objects.all():
            if user.Username == post["Username"] and user.Password == post["Password"]:
                
                if user.Leixing == "student"  and post["L"] == "student":
                    request.session['username'] = user.Username
                    return render_to_response("student.html",{'user':user}, context_instance=RequestContext(request))
                    
                elif user.Leixing == "teacher" and post["L"] == "teacher":
                    request.session['username'] = user.Username
                    return render_to_response("teacher.html",{'user':user,},context_instance=RequestContext(request))
        return render_to_response("loginfalse.html", context_instance=RequestContext(request))
    return render_to_response("index1.html", context_instance=RequestContext(request))
def teacher(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    if request.POST:
        post = request.POST
        for user in User.objects.all():
           if n == user.Username:
                post = request.POST
                user.Name = post["name"]
                user.Email = post["email"]
                user.Phone  = post["phone"]
                user.college  = post["college"]
                user.Workroom  = post["workroom"]
                user.teachlive  = post["teach"]
                user.Study  = post["study"]
                user.save()
        #newdate = date(
         #   username = n,
        #    )
        #newdate.save()
        if post["time"] != u"" or post["worklife"] != u"":
            newwork = Work(
            username = n,
            time = post["time"],
            worktravel = post["worklife"],
            )
            newwork.save()
        #for work in Work.objects.all():
                #return render_to_response("form.html",{'user_list':user,} ,context_instance=RequestContext(request))
    for user in User.objects.all():
        if n == user.Username:
            work_list = Work.objects.filter(username = n)
            return render_to_response("老师个人信息.html",{'user':user,'work_list':work_list,} ,context_instance=RequestContext(request))
def teacher1(request):
    #anquan()
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    if request.POST:
        post = request.POST
        for user in User.objects.all():
           if n == user.Username:
                post = request.POST
                user.yanjiufield = post["yanjiufield"]
                user.Achievement = post["Achievement"]
                user.keyanfield  = post["keyanfield"]
                user.save()
        #for work in Work.objects.all():
                #return render_to_response("form.html",{'user_list':user,} ,context_instance=RequestContext(request))
    for user in User.objects.all():
        if n == user.Username:
            return render_to_response("科学研究2.html",{'user':user,} ,context_instance=RequestContext(request))
def teacher2(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
   # n = request.session['username']
    if request.POST:
        post = request.POST
        for user in User.objects.all():
           if n == user.Username:
            
                user.patent = post["patent"]
                user.save()
        if post["shu"] != u"" or post["author"] != u"" or post["bookdate"] != u"" or post["publisher"] != u"" :
            newwork = Book(
            username = n,
            shu = post["shu"],
            author = post["author"],
            bookdate = post["bookdate"],
            publisher = post["publisher"],
            )
            newwork.save()
        #for work in Work.objects.all():
                #return render_to_response("form.html",{'user_list':user,} ,context_instance=RequestContext(request))
    for user in User.objects.all():
        if n == user.Username:
            book_list = Book.objects.filter(username = n)
            return render_to_response("论文专著2.html",{'user':user,'book_list':book_list,} ,context_instance=RequestContext(request))
def teacher3(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    post = request.POST

    date_list = dat.objects.filter(username = n)
    for date in date_list:
        if date.weeknumber == post["weeknumber"]:
                date.weeknumber = post["weeknumber"]
                date.weekonefirst = post["weekonefirst"]
                date.weektwofirst = post["weektwofirst"]
                date.weekthreefirst = post["weekthreefirst"]
                date.weekfourfirst = post["weekfourfirst"]
                date.weekfivefirst = post["weekfivefirst"]
                date.weekonesecond = post["weekonesecond"]
                date.weektwosecond = post["weektwosecond"]
                date.weekthreesecond = post["weekthreesecond"]
                date.weekfoursecond = post["weekfoursecond"]
                date.weekfivesecond = post["weekfivesecond"]
                date.weekonethird = post["weekonethird"]
                date.weektwothird = post["weektwothird"]
                date.weekthreethird = post["weekthreethird"]
                date.weekfourthird = post["weekfourthird"]
                date.weekfivethird = post["weekfivethird"]
                date.weekonefourth = post["weekonefourth"]
                date.weektwofourth = post["weektwofourth"]
                date.weekthreefourth = post["weekthreefourth"]
                date.weekfourfourth = post["weekfourfourth"]
                date.weekfivefourth = post["weekfivefourth"]
                date.weekonefifth = post["weekonefifth"]
                date.weektwofifth = post["weektwofifth"]
                date.weekthreefifth = post["weekthreefifth"]
                date.weekfourfifth = post["weekfourfifth"]
                date.weekfivefifth = post["weekfivefifth"]
                date.save()
                return render_to_response("日程安排.html",{'date':date,} ,context_instance=RequestContext(request))

def cha(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    user = User.objects.get(Username = n)
    return render_to_response("查询.html",{'user':user,} ,context_instance=RequestContext(request))

def cha1(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    p = request.POST
    n = request.session['username']
    
    datelist = dat.objects.filter(username = n)
    for date in datelist:
        if date.weeknumber == p["weeknumber"]:
            return render_to_response("日程安排.html",{'date':date,} ,context_instance=RequestContext(request))
    newdate = dat(
        username = n,
        weeknumber = p["weeknumber"],
        )
    newdate.save()   
    return render_to_response("日程安排.html",{'date':newdate,} ,context_instance=RequestContext(request))
def search(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    u = request.GET['id']
    which = request.GET['classid']
    user = User.objects.get(Username = request.session['username'])
    a = user
    user1 = User.objects.get(Username = u)
    #flag = request.GET['a']
    if request.POST:
        post = request.POST
        try:
            if which == "4":
                
                    for d in dat.objects.all():
                        if d.weeknumber == post["weeknumber"]:
                            date = dat.objects.get(username = u,weeknumber = post["weeknumber"])
                            return render_to_response("学生看的日程安排.html",{'date':date,'user':user,'user1':user1,} ,context_instance=RequestContext(request))
                 
                    return render_to_response("学生查看教师行程1.html",{'a':a,} ,context_instance=RequestContext(request))
            for user in User.objects.all():
                if post["search"] == user.Name:                
                    """ 找老师，user为老师的用户"""
                    work_list = Work.objects.filter(username = user.Username)
                        
                    return render_to_response("学生看到的老师信息.html",{'user':user,'work_list':work_list,} ,context_instance=RequestContext(request))   
        except:
            return render_to_response("学生查看教师行程1.html",{'a':a,} ,context_instance=RequestContext(request))
    post = request.POST
    if which == "1":
        user = User.objects.get(Username = u)
        work_list = Work.objects.filter(username = u)
        return render_to_response("学生看到的老师信息.html",{'user':user,'work_list':work_list,} ,context_instance=RequestContext(request))
    if which == "2":
        user = User.objects.get(Username = u)
        work_list = Work.objects.filter(username = u)
        return render_to_response("学生看见的科学研究.html",{'user':user,'work_list':work_list,} ,context_instance=RequestContext(request))
    if which == "3":
        user = User.objects.get(Username = u)
        book_list = Book.objects.filter(username = u)
        return render_to_response("学生看到的论文专著.html",{'user':user,'book_list':book_list,} ,context_instance=RequestContext(request))
    if which == "4" :
        user = User.objects.get(Username = u)
    
        return render_to_response("学生查看教师行程.html",{'user':user,} ,context_instance=RequestContext(request))
 
    
    return render_to_response("check.html", context_instance=RequestContext(request))

def recommend(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    t_list = User.objects.filter(Leixing = "teacher")
    if request.POST:
        post = request.POST
        for user in User.objects.all():
            if user.Study == post["search"] and user.college ==post["yuanxi"] :
                user_list = User.objects.filter(Study = post["search"],college = post["yuanxi"])
                return render_to_response("tuijian.html",{'user_list':user_list,},context_instance=RequestContext(request))
        return render_to_response("nosearch.html",context_instance=RequestContext(request))
    return render_to_response("recommend.html",{'t_list':t_list,} ,context_instance=RequestContext(request))
def order1(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    username = request.GET['id']
    name = request.GET['classid']
    for use in User.objects.all():
        if use.Username == username:
            user1 = use  
    for a in User.objects.all():
        if a.Name == name:
            user = a
    if request.POST:
        post = request.POST
        new_order = order(              
        orderusername = post["orderusername"],
        daoshi = post["daoshi"],
        xingming  = post["xingming"],
        orderdata  = post["orderdata"],
        telephone  = post["telephone"],)
        new_order.save()
        return render_to_response("ordersuccess.html",{'order':new_order,},context_instance=RequestContext(request))
    return render_to_response("order1.html",{'user':user1,'user1':user,},context_instance=RequestContext(request))
def jiancha(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    n = request.session['username']
    user = User.objects.get(Username =  n)
    if request.POST:
        post = request.POST
        o = order.objects.get(daoshi = user.Name,orderusername = post["username"] )
        o.shenghe = post["L"]
        o.save()
        return render_to_response("ordersuccess.html",context_instance=RequestContext(request))
    for neworder in order.objects.all(): 
        if user.Name == neworder.daoshi:
            order_list = order.objects.filter(daoshi = user.Name)
            return render_to_response("伟哥.html",{'orderlist':order_list,},context_instance=RequestContext(request))
    return render_to_response("jianchareturn.html",context_instance=RequestContext(request))

def yuyue(request):
    global a
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    user = User.objects.get(Username = request.session['username'])
    for o in order.objects.all():
        if int(o.count) >= a:
            a = int(o.count) + 1
    post = request.POST
    new_order = order(              
    orderusername = post["student"],
    daoshi = post["daoshi"],
    xingming  = post["name"],
    where = post["where"],
    count = a,
    time  = post["time"],
    day  = post["day"],
    week  = post["week"],
    telephone  = post["phone"],
    shenghe = post["s"],)
    new_order.save()
    return render_to_response("student.html",{'user':user,}, context_instance=RequestContext(request))
def xsck(request):
    try:
        u = request.session['username']
    except:
        return HttpResponse("非法的访问")
    u = request.session['username']
    user = User.objects.get(Username = u)
    post = request.POST
    try:
        if post["search"] == u"搜索":
            
            if post["state"] == u"全部":
                order_list = order.objects.filter(orderusername = u )
                return render_to_response("xsckyy.html",{'orderlist':order_list,'user':user,},context_instance=RequestContext(request))
            if post["state"] == u"未审核":
                order_list = order.objects.filter(orderusername = u,shenghe = post["state"])
                return render_to_response("xsckyy.html",{'orderlist':order_list,'user':user,},context_instance=RequestContext(request))
            if post["state"] == u"同意":
                order_list = order.objects.filter(orderusername = u,shenghe = post["state"])
                return render_to_response("xsckyy.html",{'orderlist':order_list,'user':user,},context_instance=RequestContext(request))
            if post["state"] == u"拒绝":
                order_list = order.objects.filter(orderusername = u,shenghe = post["state"])
                return render_to_response("xsckyy.html",{'orderlist':order_list,'user':user,},context_instance=RequestContext(request))
    except:
        try:
            if post["delete"] == u"选中的删除":
                checkbox = request.REQUEST.getlist("chk")
               # a = len(checkbox)
                for i in checkbox:
                    o = order.objects.get(count = i)
                    cursor=connection.cursor()
                    o.delete()
                    order.objects.all()
                    cursor.close()
                order_list = order.objects.filter(orderusername = u)
                return render_to_response("xsckyy.html",{'orderlist':order_list,},context_instance=RequestContext(request))    
        except:
            pass
    try:
        susername = request.GET['a']
      
        c = request.GET['count']  
        deletebook = order.objects.filter(orderusername = susername,count=c)
        cursor=connection.cursor()
        deletebook.delete()
        order.objects.all()
        cursor.close()
        u = request.session['username']
        user = User.objects.get(Username = u)
        order_list = order.objects.filter(orderusername = u)
        return render_to_response("xsckyy.html",{'orderlist':order_list,'user':user,},context_instance=RequestContext(request))
    except:
        order_list = order.objects.filter(orderusername = u)
        return render_to_response("xsckyy.html",{'orderlist':order_list,'user':user,},context_instance=RequestContext(request))
def studentdelete(request):
    pass
def teachertongyi(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    post = request.POST
    user = User.objects.get(Username = request.session['username'])
    try:
        if post["search"] == u"搜索":
             
             if post["state"] == u"全部":
                if  post["week"] != u"":
                    order_list = order.objects.filter(daoshi = user.Name,week = post["week"])
                    return render_to_response("伟哥.html",{'orderlist':order_list,},context_instance=RequestContext(request))    
                order_list = order.objects.filter(daoshi = user.Name)
                return render_to_response("伟哥.html",{'orderlist':order_list,},context_instance=RequestContext(request))
             if post["state"] == u"未审核":
                if post["week"] == u"":
                    order_list = order.objects.filter(daoshi = user.Name,shenghe = post["state"])
                    return render_to_response("伟哥.html",{'orderlist':order_list,},context_instance=RequestContext(request))    
                order_list = order.objects.filter(daoshi = user.Name,shenghe = post["state"],week = post["week"])
                return render_to_response("伟哥.html",{'orderlist':order_list,},context_instance=RequestContext(request))                    
             if post["state"] == u"同意":
                 if post["week"] == u"":
                    order_list = order.objects.filter(daoshi = user.Name,shenghe = post["state"])
                    return render_to_response("伟哥.html",{'orderlist':order_list,},context_instance=RequestContext(request))      
                 order_list = order.objects.filter(daoshi = user.Name,shenghe = post["state"],week = post["week"])
                 return render_to_response("伟哥.html",{'orderlist':order_list,},context_instance=RequestContext(request))   
             if post["state"] == u"拒绝":
                 if post["week"] == u"":
                    order_list = order.objects.filter(daoshi = user.Name,shenghe = post["state"])
                    return render_to_response("伟哥.html",{'orderlist':order_list,},context_instance=RequestContext(request))      
                 order_list = order.objects.filter(daoshi = user.Name,shenghe = post["state"],week = post["week"])
                 return render_to_response("伟哥.html",{'orderlist':order_list,},context_instance=RequestContext(request))   
    except:
        try:
            if post["borrow"] == u"选中的同意":
                checkbox = request.REQUEST.getlist("chk")
               # a = len(checkbox)
                for i in checkbox:
                    o = order.objects.get(count = i)
                    o.shenghe = u"同意"
                    o.save()
                order_list = order.objects.filter(daoshi = user.Name)
                return render_to_response("伟哥.html",{'orderlist':order_list,},context_instance=RequestContext(request))             
        except:
            if post["dumping"] :
                checkbox = request.REQUEST.getlist("chk")
               # a = len(checkbox)
                for i in checkbox:
                    o = order.objects.get(count = i)
                    o.shenghe = u"拒绝"
                    o.save()                
                order_list = order.objects.filter(daoshi = user.Name)
                return render_to_response("伟哥.html",{'orderlist':order_list,},context_instance=RequestContext(request))             
def teachertyyx(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    #susername = request.GET['a']
    user = User.objects.get(Username = request.session['username'])
    c = request.GET['count']
    o = order.objects.get(count=c)
    o.shenghe = u"同意"
    o.save()
    order_list = order.objects.filter(daoshi = user.Name,shenghe = o.shenghe)
    return render_to_response("伟哥.html",{'orderlist':order_list,},context_instance=RequestContext(request))  
def teacherjjyx(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    user = User.objects.get(Username = request.session['username'])
    #susername = request.GET['a']
    c = request.GET['count']
    o = order.objects.get(count =c )
    o.shenghe = u"拒绝"
    o.save()
    order_list = order.objects.filter(daoshi = user.Name,shenghe = o.shenghe)
    return render_to_response("伟哥.html",{'orderlist':order_list,},context_instance=RequestContext(request))     
def studentcktj(request):
    try:
        n = request.session['username']
    except:
        return HttpResponse("非法的访问")
    user = User.objects.get(Username = request.session['username'])
    daoshi = request.GET['a']
    for user in User.objects.all():
        if daoshi == user.Name:                
            """ 找老师，user为老师的用户"""
            work_list = Work.objects.filter(username = user.Username)
                
            return render_to_response("学生看到的老师信息.html",{'user':user,'work_list':work_list,} ,context_instance=RequestContext(request))    
from django.conf.urls import patterns, include, url
from addr.views import *
from django.conf import settings       
# Uncomment the next two lines to enable the admin:studentcktj
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
   # (r'^site_media/(?P<path>.*)','django.views.static.serve',{'document_root':'./addr/'}),
    (r'^site_media/(?P<path>.*)$','django.views.static.serve',{'document_root':settings.STATIC_PATH}),
    url(r'^$',login),
    url(r'^registe/',registe),
    url(r'^login/',login),

    url(r'^studentchangepassword/',studentchangepassword),
    url(r'^teacher/',teacher),
    url(r'^teacher1/',teacher1),
     url(r'^teacher2/',teacher2),
     url(r'^teacher3/',teacher3),
   url(r'^teachertongyi/',teachertongyi),
   url(r'^order/',order1),
   url(r'^cha/',cha),
   url(r'^logout/',logout),
   url(r'^cha1/',cha1),
   url(r'^yuyue/',yuyue),        
   url(r'^workchange/',workchange), 
   url(r'^studentcktj/',studentcktj),
   url(r'^workdelete/',workdelete),
   url(r'^deletebook/',deletebook),
   url(r'^bookchange/',bookchange),
   url(r'^teachertyyx/',teachertyyx),
   url(r'^teacherjjyx/',teacherjjyx),
   url(r'^xsck/',xsck),
   url(r'^jiancha/',jiancha),
   url(r'^search/',search),
   url(r'^recommend/',recommend),
   url(r'^findpassword/',findpassword),
   url(r'^findpassword2/',findpassword2),
   url(r'^changepassword/',changepassword),
)

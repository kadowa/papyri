# -*- coding: utf-8 -*-
# this file is released under public domain and you can use without limitations

#########################################################################
## Customize your APP title, subtitle and menus here
#########################################################################

if False:
    from gluon import I, URL, IMG
    import response, request

response.logo = ''
response.title = request.application.replace('_',' ').title()
response.subtitle = ''

## your http://google.com/analytics id
response.google_analytics_id = None

#########################################################################
## this is the main application menu add/remove items as required
#########################################################################

response.menu = [
          #(IMG(_src=URL('static', 'images/papyrus_head.jpg')), False, URL('default','index')),
          ('Start', False, URL(c="default", f="index.html")),
          (I(_class="icon list icon-list glyphicon glyphicon-list")+" "+T('Übersicht Papyri'), False, URL(c="default", f="papyri")),
          (I(_class="icon list icon-list glyphicon glyphicon-list")+" "+T('Übersicht Papyrus-Seiten'), False, URL(c="default", f="seiten")),	
]

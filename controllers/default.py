# -*- coding: utf-8 -*-
# this file is released under public domain and you can use without limitations

#########################################################################
## This is a sample controller
## - index is the default action of any application
## - user is required for authentication and authorization
## - download is for downloading files uploaded in the db (does streaming)
#########################################################################

if False:
    from gluon import *
    from db import *
    from menu import *
    import auth

from gluon.globals import current

def index():
    """
    Starting page
    """
    
    headline = "Papyri-Datenbank"

    return locals()

def papyri():
    grid = SQLFORM.grid(
        db.papyri,
        buttons_placement="left",
        showbuttontext=False,
        user_signature=False,
        paginate=10,
    )

    return locals()

def seiten():
    grid = SQLFORM.grid(
        db.seiten,
        buttons_placement="left",
        showbuttontext=False,
        user_signature=False,
        paginate=10,
    )

    return locals()

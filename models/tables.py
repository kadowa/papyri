if False:
    from gluon import *
    from db import *
    import db

from _dbus_bindings import String

db.define_table("papyri",
    Field("Publikation", type="string", length=200, label="Publikation"),
    Field('last_modified', 'datetime',
          default=request.now, update=request.now, writable=False, label="zuletzt geändert am"),
#    Field('created_by', 'reference auth_user',
#          default=auth.user_id, update=auth.user_id, writable=False),
)

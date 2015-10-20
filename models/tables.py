if False:
    from gluon import *
    from db import *
    import db

from _dbus_bindings import String

db.define_table("papyri",
    Field("Publikation", type="string", length=200, label="Publikation"),
    Field("Band", type="integer", length=200, label="Band"),
    Field("Nummer", type="integer", length=200, label="Nummer"),
    Field("created_on", "datetime",
          default=request.now, writable=False, label="eingegeben am"),
    Field("last_modified", "datetime",
          default=request.now, update=request.now, writable=False, label="zuletzt geändert am"),
#    Field('created_by', 'reference auth_user',
#          default=auth.user_id, update=auth.user_id, writable=False),
)

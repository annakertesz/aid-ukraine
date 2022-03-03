from marshmallow import Schema, fields

from model.status import Status, StatusSchema


class Person():
    def __init__(self, id: int = None, name: str = None, phone: str = None, email: str = None, night_call: bool = None,
                 status: Status = None, status_comment: str = None):
        self.id = id
        self.name = name
        self.phone = phone
        self.email = email
        self.night_call = night_call
        self.status = status
        self.status_comment = status_comment

    def __repr__(self):
        return '<Person(name={self.name!r})>'.format(self=self)

class PersonSchema(Schema):
    id = fields.Number()
    name = fields.Str()
    phone = fields.Str()
    email = fields.Str()
    night_call = fields.Bool()
    status = fields.Nested(StatusSchema)
    status_comment = fields.Str()


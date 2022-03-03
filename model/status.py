from marshmallow import Schema, fields

class Status():
    def __init__(self, id: int = None, description: str = None):
        self.id = id
        self.description = description

    def __repr__(self):
        return '<Status(name={self.name!r})>'.format(self=self)

class StatusSchema(Schema):
    id = fields.Number()
    description = fields.Str()
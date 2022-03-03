from datetime import date

from marshmallow import Schema, fields

from model.person import Person, PersonSchema
from model.status import Status, StatusSchema


class Accomodation():
    def __init__(self, id: int = None, person: Person = None, city: str = None, max: int = None, male: bool = None,
                 female: bool = None, kids: bool = None, animals: bool = None, available_from: date = None,
                 transport: bool = None, comment: str = None, status: Status = None,
                 status_comment: str = None):
        self.id = id
        self.person = person
        self.city = city
        self.max = max
        self.male = male
        self.female = female
        self.kids = kids
        self.animals = animals
        self.available_from = available_from
        self.transport = transport
        self.comment = comment
        self.status = status
        self.status_comment = status_comment

    def __repr__(self):
        return '<Accomodation(name={self.name!r})>'.format(self=self)

class AccomodationSchema(Schema):
    id = fields.Number()
    person = fields.Nested(PersonSchema)
    city = fields.Str()
    max = fields.Number()
    male = fields.Bool()
    female = fields.Bool()
    kids = fields.Bool()
    animals = fields.Bool()
    available_from = fields.Date()
    transport = fields.Bool()
    comment = fields.Str()
    status = fields.Nested(StatusSchema)
    status_comment = fields.Str()
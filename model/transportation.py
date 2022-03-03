from datetime import date

from marshmallow import Schema, fields

from model.person import Person, PersonSchema
from model.status import Status, StatusSchema

class Transportation():
    def __init__(self, id: int = None, person: Person = None, departure: str = None, seats: int = None,
                 kids_seat: bool = None, animals: bool = None, available_from: date = None, comment: str = None,
                 status: Status = None, status_comment: str = None):
        self.id = id
        self.person = person
        self.departure = departure
        self.seats = seats
        self.kids_seat = kids_seat
        self.animals = animals
        self.available_from = available_from
        self.comment = comment
        self.status = status
        self.status_comment = status_comment

    def __repr__(self):
        return '<Transportation(name={self.name!r})>'.format(self=self)

class TransportationSchema(Schema):
    id = fields.Number()
    person = fields.Nested(PersonSchema)
    departure = fields.Str()
    seats = fields.Number()
    kids_seat = fields.Bool()
    animals = fields.Bool()
    available_from = fields.Date()
    comment = fields.Str()
    status = fields.Nested(StatusSchema)
    status_comment = fields.Str()

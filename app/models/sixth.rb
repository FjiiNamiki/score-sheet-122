class Sixth < ActiveHash::Base
  self.data = [
    { id: 1, name: '--', value: nil },
    { id: 2, name: 'X', value: 10 },
    { id: 3, name: '10', value: 10 },
    { id: 4, name: '9', value: 9 },
    { id: 5, name: '8', value: 8 },
    { id: 6, name: '7', value: 7 },
    { id: 7, name: '6', value: 6 },
    { id: 8, name: '5', value: 5 },
    { id: 9, name: '4', value: 4 },
    { id: 10, name: '3', value: 3 },
    { id: 11, name: '2', value: 2 },
    { id: 12, name: '1', value: 1 },
    { id: 13, name: 'M', value: 0 }
  ]
  include ActiveHash::Associations
  has_many :scores
end
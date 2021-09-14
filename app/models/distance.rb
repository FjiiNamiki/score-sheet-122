class Distance < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '70m' },
    { id: 3, name: '50m' },
    { id: 4, name: '30m' },
    { id: 5, name: '18m' },
    { id: 6, name: '60m' },
    { id: 7, name: '90m' },
    { id: 8, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :exercises
end
class Event < ApplicationRecord
  belongs_to :organization, trough: :event_list
  #FALTA TABLA NUEVA: belongs_to :user, trough: :tabla
  has_one :date_option
  has_one :event_creator, trough: :user #Se puede referenciar a traves de un atributo de la misma tabla?
  has_many :resources
  has_many :users ,trough: :participation
  has_many :comments
  has_many :comment_reply, trough: :comments
end

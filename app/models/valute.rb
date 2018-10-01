class Valute
  include Mongoid::Document
  include Mongoid::Alize

  field :valuta, type: String
  field :drzava, type: String
  field :sifraValute, type: Integer
  field :jedinica, type: Integer

  # has_many :valute_devize
  has_many :devize, :class_name => 'Devize', :inverse_of => :valute

  # ***
  alize :devize
  # ***
end

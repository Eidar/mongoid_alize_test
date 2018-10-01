class Devize
  include Mongoid::Document
  include Mongoid::Alize

  field :datum, type: DateTime
  field :kupovni, type: String
  field :srednji, type: String
  field :prodajni, type: String


  # belongs_to :devize_valute, :class => 'Valute', :inverse_of => :valute_devize
  belongs_to :valute, :class_name => 'Valute', :inverse_of => :devize
  # ***
  alize :valute
  # ***
end

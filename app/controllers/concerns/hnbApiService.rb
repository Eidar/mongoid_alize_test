require 'net/http'
require 'json'
require 'active_support'
require 'active_support/core_ext'

class HnbApiService
  @@api = 'http://api.hnb.hr/tecajn/v1'

  def update()

    @tecajnaLista = getTecaj() #array objekata

    @tecajnaLista.each do |tecaj|
      @valute = Valute.new({
        valuta: tecaj["Valuta"],
        drzava: tecaj["Država"],
        sifraValute: tecaj["Šifra valute"],
        jedinica: tecaj["Jedinica"]
      })

      @valute.devize(Devize.create!({
        datum: tecaj["Datum primjene"],
        kupovni: tecaj["Kupovni za devize"],
        srednji: tecaj["Srednji za devize"],
        prodajni: tecaj["Prodajni za devize"]
      }))
      pp @valute
      @valute.save

    end
    
    return @valute
  end

  def getTecaj()
    uri = URI(@@api)
    response = Net::HTTP.get(uri)
    response = JSON.parse(response)
    return response
  end

end

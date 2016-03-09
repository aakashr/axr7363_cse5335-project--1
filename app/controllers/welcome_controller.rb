class WelcomeController < ApplicationController
	@@Arr_City = [["Arlington",31.6147928,-97.1626639],
							["New York",40.7058316,-74.2581933],
							["Boston",42.3135421,-71.1972422],
							["Auckland",-36.8621448,174.5852815],
							["Perth",-31.966487,115.37088],
							["Sydney",-33.7960361,150.6422429],
							["Adelaide",-34.9835521,138.1415016],
							["Calgary",51.013214,-114.354339],
							["Vancouver",49.2562176,-123.1939535],
							["Vienna",48.2208286,16.2399756]]
  # GET /welcome
  def index

  end
  def list_cities
    cities = nil.to_a
    10.times do
      index = rand(@@Arr_City.size-1)
      cities << @@Arr_City[index]
    end
		render json: cities
  end

end

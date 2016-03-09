class WelcomeController < ApplicationController
	@@Arr_City = [["Arlington",31.6147928,-97.1626639],
							["New York","40.7127","74.0059"],
							["Boston","42.3601","71.0589"],
							["Auckland","36.8406","174.7400"],
							["Perth","31.9522","115.8589"],
							["Sydney","33.8650","151.2094"],
							["Adelaide","34.9290","138.6010"],
							["Calgary","51.0486","114.0708"],
							["Vancouver","49.2827","123.1207"],
							["Vienna","48.2000","16.3667"]]
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

class WelcomeController < ApplicationController
	@@Arr_City = [["Arlington","32.7050 N","97.1228 W"],
							["New York","40.7127 N","74.0059 W"],
							["Boston","42.3601 N","71.0589 W"],
							["Auckland","36.8406 S","174.7400 E"],
							["Perth","31.9522 S","115.8589 E"],
							["Sydney","33.8650 S","151.2094 E"],
							["Adelaide","34.9290 S","138.6010 E"],
							["Calgary","51.0486 N","114.0708 W"],
							["Vancouver","49.2827 N","123.1207 W"],
							["Vienna","48.2000 N","16.3667 E"]]
  # GET /welcome
  def index

  end
  def list_cities
		index1 = rand(0..9)
		index2 = rand(0..9)
		cities = nil.to_a
		cities << @@Arr_City[index1]
		cities << @@Arr_City[index2]
		render json: cities
  end

end

require "vendasta/ri/version"
require "httparty"

module Vendasta
	module Ri

		include HTTParty

		

		def self.ipsum
			"hi"
  	end

  	def self.lookupAccounts
	    response = HTTParty.get("https://reputation-intelligence-api.vendasta.com/api/v2/account/lookup/", :query => {:apiUser => "IANA", :apiKey => "sYMzAf3ZZm1wPMK0cKYJfXQDSpZJXwA6XaS7F3dz"})

	    if response.success?
	    	response = JSON.parse(response.body)
	    else
	      # this just raises the net/http response that was raised
	      puts "no"
	    end
	  end

  end
end


#module Vendasta
#  module Ri
#    # Your code goes here...
#  end
#end

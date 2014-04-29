require "vendasta/ri/version"
require "httparty"

module Vendasta

	OPTIONS = {
  	:apiUser => 'IANA',
  	:apiKey => 'sYMzAf3ZZm1wPMK0cKYJfXQDSpZJXwA6XaS7F3dz',
  	:endpoint => 'https://reputation-intelligence-api.vendasta.com/api/v2'
	}

	module Ri

		include HTTParty

		def self.ipsum
			puts "hi"
			puts OPTIONS[:endpoint]
			build_response = "#{OPTIONS[:endpoint]}/v2/account/lookup/"
			puts build_response
  	end

  	def self.lookupAccounts
	    response = HTTParty.get("#{OPTIONS[:endpoint]}/account/lookup/", :query => {:apiUser => OPTIONS[:apiUser], :apiKey => OPTIONS[:apiKey]})

	    if response.success?
	    	response = JSON.parse(response.body)
	    else
	      # this just raises the net/http response that was raised
	      response = JSON.parse(response.body)
	    end
	  end

  end
end


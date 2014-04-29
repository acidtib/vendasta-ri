require "vendasta/ri/version"
require "httparty"

module Vendasta

	OPTIONS = {
  	:endpoint => 'https://reputation-intelligence-api.vendasta.com/api/v2'
	}

	module RI

		include HTTParty

		## Accounts
		module Accounts

			def self.ipsum
				puts "hi"
				puts ENV["VENDASTA_RI_APIUSER"]
				puts ENV["VENDASTA_RI_APIKEY"]
  		end

  		def self.lookupAccounts # Lookup Accounts
		    response = HTTParty.get("#{OPTIONS[:endpoint]}/account/lookup/", :query => {:apiUser => ENV["VENDASTA_RI_APIUSER"], :apiKey => ENV["VENDASTA_RI_APIKEY"]})

		    if response.success?
		    	response = JSON.parse(response.body)
		    else
		      response = JSON.parse(response.body)
		    end
		  end

		  def self.getAccount(customerIdentifier) # Get Accounts by ID
		    response = HTTParty.get("#{OPTIONS[:endpoint]}/account/get/", :query => {:apiUser => ENV["VENDASTA_RI_APIUSER"], :apiKey => ENV["VENDASTA_RI_APIKEY"], :customerIdentifier => customerIdentifier})

		    if response.success?
		    	response = JSON.parse(response.body)
		    else
		      response = JSON.parse(response.body)
		    end
		  end

		end

	  ## Visibility
	  module Visibility

	  	def self.lookupListings(customerIdentifier) # Lookup Listings
		  	response = HTTParty.get("#{OPTIONS[:endpoint]}/visibility/lookupListings/", :query => {:apiUser => ENV["VENDASTA_RI_APIUSER"], :apiKey => ENV["VENDASTA_RI_APIKEY"], :customerIdentifier => customerIdentifier})

		  	if response.success?
		    	response = JSON.parse(response.body)
		    else
		      response = JSON.parse(response.body)
		    end
		  end

		  def self.lookupPossibleListings(customerIdentifier) # Lookup Possible Listings
		  	response = HTTParty.get("#{OPTIONS[:endpoint]}/visibility/lookupPossibleListings/", :query => {:apiUser => ENV["VENDASTA_RI_APIUSER"], :apiKey => ENV["VENDASTA_RI_APIKEY"], :customerIdentifier => customerIdentifier})

		  	if response.success?
		    	response = JSON.parse(response.body)
		    else
		      response = JSON.parse(response.body)
		    end
		  end

		  def self.getVisibilityStats(customerIdentifier) # Get Visibility Stats
		  	response = HTTParty.get("#{OPTIONS[:endpoint]}/visibility/getStats/", :query => {:apiUser => ENV["VENDASTA_RI_APIUSER"], :apiKey => ENV["VENDASTA_RI_APIKEY"], :customerIdentifier => customerIdentifier})

		  	if response.success?
		    	response = JSON.parse(response.body)
		    else
		      response = JSON.parse(response.body)
		    end
		  end

	  end

	  ## Reviews
	  module Reviews

		  def self.getVisibilityStats(customerIdentifier, reviewId) # Get Reviews by ID
		  	response = HTTParty.get("#{OPTIONS[:endpoint]}/review/get/", :query => {:apiUser => ENV["VENDASTA_RI_APIUSER"], :apiKey => ENV["VENDASTA_RI_APIKEY"], :customerIdentifier => customerIdentifier, :reviewId => reviewId})

		  	if response.success?
		    	response = JSON.parse(response.body)
		    else
		      response = JSON.parse(response.body)
		    end
		  end

		  def self.searchReviews(customerIdentifier) # Search Reviews
		  	response = HTTParty.get("#{OPTIONS[:endpoint]}/review/search/", :query => {:apiUser => ENV["VENDASTA_RI_APIUSER"], :apiKey => ENV["VENDASTA_RI_APIKEY"], :customerIdentifier => customerIdentifier})

		  	if response.success?
		    	response = JSON.parse(response.body)
		    else
		      response = JSON.parse(response.body)
		    end
		  end

		  def self.searchReviews(customerIdentifier) # Search Reviews
		  	response = HTTParty.get("#{OPTIONS[:endpoint]}/review/search/", :query => {:apiUser => ENV["VENDASTA_RI_APIUSER"], :apiKey => ENV["VENDASTA_RI_APIKEY"], :customerIdentifier => customerIdentifier})

		  	if response.success?
		    	response = JSON.parse(response.body)
		    else
		      response = JSON.parse(response.body)
		    end
		  end

		end

  end
end


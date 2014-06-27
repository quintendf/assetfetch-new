class FetchesMailer < ActionMailer::Base
	def fetch_sent(fetch, user)
		@fetch = fetch
		@user = user
    	mail(:to => fetch.recipient, :subject => "New Fetch", :from => user.email)
  	end
end

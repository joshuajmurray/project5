require 'httparty'

run lambda { |env|
	req = Rack::Request.new(env)
	path = req.path_info
	if '/tvshow'==path
		[200, {'Content-Type'=>'text/plain'}, ['X-Files']]
	elsif '/random_tvshow'==path
		hosts = [
			'evening-medow-91132'
		    'obscure-beyond-97514'
		    'whispering-mesa-29313'
		    'shrouded-reaches-36777'
		    'hidden-waters-81877'
		    'fast-sea-58248'
		    'rocky-scrubland-68340'
		    'fathomless-stream-48840'
		    'stark-citadel-67357'
		    'tranquil-fjord-57959'
		]
		hostname = hosts.sample
		response = HTTParty.get("https://#{hostname}.herokuapp.com/tvshow")
		[200, {'Content-Type'=>'text/plain'}, [response.to_s]]
	else
		[200, {'Content-Type'=>'text/plain'}, ['Hello']]
	end
}
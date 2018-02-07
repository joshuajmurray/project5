run lambda { |env|
	req = Rack::Request.new(env)
	case req.path_info
	when /tvshow/
		[200, {'Content-Type'=>'text/plain'}, ['X-Files']]
	when /random_tvshow/
		[200, {'Content-Type'=>'text/plain'}, ['This should be tvshow_random']]
	else
		[200, {'Content-Type'=>'text/plain'}, ['Hello']]
	end
}
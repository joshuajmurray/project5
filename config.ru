run lambda { |env|
	req = Rack::Request.new(env)
	path = req.path_info
	if /tvshow/==path [then]
		[200, {'Content-Type'=>'text/plain'}, ['X-Files']]
	[elsif /random_tvshow/==path [then]
		[200, {'Content-Type'=>'text/plain'}, ['This should be tvshow_random']]]
	[else
		[200, {'Content-Type'=>'text/plain'}, ['Hello']]]
	end
}
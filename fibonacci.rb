require 'sinatra'

get '/' do
	@graine = 1
	@nbEnCours = false
	@digit = true
	@sum = true
	@max = 240
	erb :index
end

get '/graine/:nb' do |nb|

	@nbEnCours = false
	@digit = true
	@sum = true
	@graine = params['nb'].to_i
	@max = 240
	erb :index
end

get '/custom/:graine/:nb' do 
	@nbEnCours = false
	@digit = true
	@sum = true
	@graine = params['graine'].to_i
	max = params['nb'].to_i
	@max = max
	if max > 2000
		#to avoid hudge calculation
		@max = 2000
	end
	erb :index
end	
require 'sinatra'

get '/' do
  "Invoke a specific utility endpoint."
end

get '/echofile' do
  halt 404 if params[:content].nil? or params[:file].nil?
  content_type "text/x-shellscript"
  <<-eos
    #!/bin/sh
    echo "#{params[:content]}" > #{params[:file]}
  eos
end

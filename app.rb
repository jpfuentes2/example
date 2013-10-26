require 'sinatra'

get '/' do
  rev = `git rev-parse HEAD`
  'Hello, World! I am your app at revision: %s' % rev
end

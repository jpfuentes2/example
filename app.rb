require 'cuba'

Cuba.define do
  on get, root do
    rev = `git rev-parse HEAD`
    res.write 'Hello, World! I am your app at revision: %s' % rev
  end
end

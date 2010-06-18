require 'ftools'

dir = File.dirname(__FILE__)
root = File.join(dir, '../../..')

File.copy( 
  File.join(dir, 'views/apidocs.erb'), 
  File.join(root, 'app/views/apidocs.erb') 
)

File.copy( 
  File.join(dir, 'views/apidocs.css'), 
  File.join(root, 'doc/apidocs.css') 
)

`grep "include Apidocs" #{root}/spec/spec_helper.rb || echo "include Apidocs" >> #{root}/spec/spec_helper.rb`

puts %Q{Apidocs has been installed.
1) Edit app/views/apidocs.erb
2) Run rake spec:doc:api
}

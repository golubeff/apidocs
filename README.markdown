## About ##

Automatically generates docs for your public API from your RSpec.

## Installation ##

    ./script/plugin install git://github.com/golubeff/apidocs.git

## How to use ##

1. Edit app/views/apidocs.erb
2. Mark every spec, you want to be documented by calling
it_should_be_documented:
3. rake spec:doc:api
4. Open doc/apidocs.html in your browser

## Examples ##


    describe PostsController do
      describe "list latest posts" do
        it "returns a list of posts" do
          get :index, :format => "json", :author_id => @author.id

          it_should_be_documented
        end
      end
    end

You can add descriptions to each parameter like this:

    it_should_be_documented( 
      :parameters => { 
        :author_id => "ID of an author (optional)",
        :tag => "Optional tag name",
        :format => "json or xml"
      } 
    )



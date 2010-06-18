require 'apidocs'

module Spec::Runner
  class ExampleGroupRunner
    protected
    def finish
      reporter.end
      reporter.dump
      if ENV['APIDOCS'] == 'yes'
        Apidocs.write_docs
      end
    end
  end
end

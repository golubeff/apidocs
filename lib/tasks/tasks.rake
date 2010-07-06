namespace :spec do
  namespace :doc do
    desc "Generate API documentation"
    task :api do
      ENV['APIDOCS'] = 'yes'
      Rake::Task['spec'].invoke
    end
  end
end

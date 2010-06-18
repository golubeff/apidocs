namespace :spec do
  namespace :doc do
    desc "Generate API documentation"
    task :api do
      ENV['APIDOCS'] = 'yes'
      Rake::Task['spec:controllers'].invoke
    end
  end
end

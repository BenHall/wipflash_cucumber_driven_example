Given /^the application has started$/ do
  host = ApplicationLauncher.new
  @app = host.launch Dir.pwd + '/src/ExampleUIs/bin/Debug/ExampleUIs.exe'
  @main_window = @app.find_window 'petShopWindow'
end

After do |scenario|
  @app.process.kill
end
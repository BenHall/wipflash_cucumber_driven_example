Given /^the application has started$/ do
  host = ApplicationLauncher.new
  @app = host.launch 'D:/SourceControl/wipflash/ExampleUIs/bin/Debug/ExampleUIs.exe'
  @main_window = @app.find_window 'petShopWindow'
end
include WiPFlash::Components
class WiPFlash::Components::Container
  def get_type(name)
  	name.to_s.split('_')[1]
  end

  def get_class(name)
  	Kernel.const_get(name)
  end

  def find_ui_element(class_name, *args)
  	self.method(:find).of(class_name).call(args[0][0].to_sym)
  end

  def method_missing(m, *args, &block)
	ui_type = get_type m
	ui_class = get_class ui_type
	find_ui_element(ui_class, args)
  end
end
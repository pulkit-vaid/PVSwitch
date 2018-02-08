Pod:: Spec.new do |spec|
  spec.platform     = 'ios', '11.0'
  spec.name         = 'PVSwitch'
  spec.version      = '1.0.1'
  spec.summary      = 'A customizable iOS Switch in Swift'
  spec.author = {
    'Pulkit Vaid' => 'pulkitvaid@gmail.com'
  }
  spec.license          = 'MIT'
  spec.homepage         = 'https://github.com/pulkit-vaid/PVSwitch'
  spec.source = {
    :git => 'https://github.com/pulkit-vaid/PVSwitch.git',
    :tag => '1.0.1'
  }
  spec.ios.deployment_target = '11.0'
  spec.source_files = 'PVSwitch/Source/*'
  spec.requires_arc = true
end

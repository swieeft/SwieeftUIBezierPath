Pod::Spec.new do |s|
  s.name             = 'SwieeftUIBezierPath'
  s.version          = '1.0.0'
  s.summary          = 'SwieeftUIBezierPath.'
  s.description      = <<-DESC
SwieeftUIBezierPath can help you connect UIBezierPath with chaining and make it easier to work with.
                       DESC
  s.homepage         = 'https://github.com/swieeft/SwieeftUIBezierPath'
  # s.screenshots    = ''
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'swieeft' => 'swieeft89@gmail.com' }
  s.source           = { :git => 'https://github.com/swieeft/SwieeftUIBezierPath.git', :tag => '1.0.0' }
  s.ios.deployment_target = '11.0'
  s.source_files = 'Classes/*.swift', 'Classes/Controller/*.swift', 'Classes/Model/*.swift'
  s.swift_versions = '5.0'
end

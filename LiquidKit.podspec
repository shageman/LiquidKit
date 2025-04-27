Pod::Spec.new do |spec|
  spec.name = 'LiquidKit'
  spec.version = '1.0'
  spec.homepage = 'https://github.com/brunophilipe/LiquidKit'
  spec.source = {:path => '.'}
  spec.authors = {'Bruno Philipe' => 'git@bruno.ph'}
  spec.summary = 'Liquid template language parser engine in Swift.'
  spec.license = { :type => 'MIT' }

  spec.ios.deployment_target = '10.0'
  spec.ios.frameworks = ['Foundation']

  spec.macos.deployment_target = '10.12'
  spec.macos.frameworks = ['Foundation']

  spec.tvos.deployment_target = '17.0'
  spec.tvos.frameworks = ['Foundation']

  spec.watchos.deployment_target = '8.0'
  spec.watchos.frameworks = ['Foundation']

  spec.source_files = 'Sources/LiquidKit/*.{h,m,swift}'
  spec.module_name = 'LiquidKit'
  
  spec.dependency 'HTMLEntities'

end

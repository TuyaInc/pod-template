Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.0.1'
  s.summary          = '涂鸦模板组件'
  s.homepage         = 'https://docs.tuya.com/cn/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { :git => 'https://your-address-here/${POD_NAME}.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = '${POD_NAME}/Classes/**/*'
  s.resources = ['${POD_NAME}/Assets/*.{png,xib,plist,xcassets,bundle}']

  s.frameworks = 'UIKit', 'Foundation'

  s.dependency 'TYModuleManager'
  s.dependency 'TYModuleManagerExample'
end

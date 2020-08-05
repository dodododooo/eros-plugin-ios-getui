# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "ErosPluginGeTui"
  s.version      = "1.1.0"
  s.summary      = "ErosPluginGeTui Source ."
  s.homepage     = 'https://github.com/LiHuiZai/eros-plugin-ios-getui'
  s.license      = "MIT"
  s.authors      = { "xionghuayu" => "18601949015@163.com" }
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.source = { :git => 'https://github.com/LiHuiZai/eros-plugin-ios-getui.git', :tag => s.version.to_s }
  s.source_files = "Source/*.{h,m,mm}"
  s.requires_arc = true
  s.dependency 'GTSDK', '2.4.4.0'
end

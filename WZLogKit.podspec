Pod::Spec.new do |s|

  s.name             = 'WZLogKit'
  s.version          = '1.0.0'
  s.summary          = '我主良缘日志组件 '

  s.description      = <<-DESC
    我主良缘日志组件
                       DESC

  s.homepage         = 'https://github.com/WZLYiOS/WZLogKit'
  s.license          = 'MIT'
  s.author           = { 'xiaobin liu'=> '327847390@qq.com' }
  s.source           = { :git => 'https://github.com/WZLYiOS/WZLogKit.git', :tag => s.version.to_s }

  s.swift_version         = '5.0'
  s.requires_arc = true
  s.ios.deployment_target = '9.0'
  s.source_files = 'WZLogKit/Core/*.swift'
end



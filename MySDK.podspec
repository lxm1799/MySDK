#
# Be sure to run `pod lib lint MySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MySDK'
  s.version          = '0.1.0'
  s.summary          = '私人SDK封装'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: 私人SDK封装
                       DESC

  s.homepage         = 'https://github.com/lxm1799/MySDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.author           = { 'lxm1799' => 'goodlucky1130@163.com' }
#  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  
  s.source           = { :git => 'https://github.com/lxm1799/MySDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  #支持的平台系统
  s.ios.deployment_target = '9.0'
  
  # 是否是静态库 这个地方很重要 假如不写这句打出来的包 就是动态库 不能使用 一运行会报错 image not found
   s.static_framework  =  true
   # arc和mrc选项
   s.requires_arc = true
   # 链接设置 重要
   # s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    
  #依赖的第三方库
  s.dependency 'TXIMSDK_Plus_iOS'

  # 表示依赖系统的框架(多个)
#  s.frameworks = 'Foundation'
  
  
#  #你的源码位置
#  s.source_files = 'MySDK/Classes/**/*'
#
#  #需要对外开放的头文件
#  s.public_header_files = 'MySDK/Classes'
  

  
  # Foundation
  s.subspec 'IM' do |ss|
      ss.source_files = 'MySDK/Classes/IM/**/*'
      ss.public_header_files = 'MySDK/Classes/IM/IMManager.h'
      ss.frameworks = 'Foundation'
#      ss.dependency = 'TXIMSDK_Plus_iOS'
  end
  
  
  s.subspec 'Other' do |ss|
      ss.source_files = 'MySDK/Classes/Other/**/*'
      ss.public_header_files = 'MySDK/Classes/Other/MyObject.h'
      ss.frameworks = 'Foundation'
  end
  
  
  
  # 资源，比如图片，音频文件等
  # s.resource_bundles = {
  #   'MySDK' => ['MySDK/Assets/*.png']
  # }

   s.public_header_files = 'Pod/Classes/IM/IMManager.h'
end

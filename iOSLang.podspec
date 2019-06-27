
Pod::Spec.new do |spec|


  spec.name         = "iOSLang"
  spec.version      = "1.0.0"
  spec.summary      = "开发基础库"
  spec.description  = <<-DESC
  	包含了基础架构和网络请求
  DESC


  spec.homepage     = "https://github.com/wugemu/iOSLang2.0"

  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


 
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }



  spec.author             = { "wugemu" => "245868553@qq.com" }

  spec.platform     = :ios, "8.0"


  spec.source       = { :git => "https://github.com/wugemu/iOSLang2.0.git", :tag => "#{spec.version}" }

  spec.source_files  = "iOSLangTest/IosLangTest/ioslang/*.{h,m}","iOSLangTest/IosLangTest/ioslang/Protocol/*.{h,m}","iOSLangTest/IosLangTest/ioslang/util/*.{h,m}","iOSLangTest/IosLangTest/ioslang/AFNetworking/*.{h,m}","iOSLangTest/IosLangTest/ioslang/AFNetworking/AF/*.{h,m}","iOSLangTest/IosLangTest/ioslang/AFNetworking/UIKit+AFNet/*.{h,m}","iOSLangTest/IosLangTest/ioslang/SDWebImage/*.{h,m}","iOSLangTest/IosLangTest/ioslang/UIKit/*.{h,m}","iOSLangTest/IosLangTest/ioslang/MBProgressHUD/*.{h,m}","iOSLangTest/IosLangTest/ioslang/YYAnimationIndicator/*.{h,m}"

  # spec.resource  = "icon.png"
  spec.resources = "iOSLangTest/IosLangTest/ioslang/res/*.png"

  spec.prefix_header_file = 'iOSLangTest/IosLangTest/ioslang.pch'

end

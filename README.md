# iOSLang2.0
github作为仓库，将库上传至远程cocoapods的步骤

(操作步骤参考)[https://cloud.tencent.com/developer/article/1120259]

# 绑定自己的 GitHub 帐号

向CocoaPods注册请将下面的内容替换为自己的

    pod trunk register 272338444@qq.com 'wugemu' --verbose
    
查看是否注册成功，终端中执行下列命令

    pod trunk me
    
在项目平级目录中创建 .podspec 文件

    pod spec create iOSLang
    
设置 podspec 文件内容
    
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
    
    # spec.dependency "AFNetworking", "~> 3.0"
     
    spec.prefix_header_file = 'iOSLangTest/IosLangTest/ioslang.pch'
    
    end
    
spec.version（版本号）

spec.platform（iOS项目支持的最低系统）

spec.source_files（代码资源文件路径,路径指向要打包的组件代码）

spec.resources（资源文件路径,路径指向要打包的组件资源）

spec.dependency（本组件所依赖的pod库）

spec.prefix_header_file（.pch预编译文件）

(查看更多podspec文件相关配置)[https://www.jianshu.com/p/75e19c92df50]

验证 podspec 文件 ，--allow-warnings 忽略警告

    pod lib lint iOSLang.podspec --allow-warnings
    
给项目打上 tag 版本号并推送到 GitHub，注：tag版本号与.podspec 文件中的spec.version保持一致
    
    git tag "1.0.0"
    git push --tags
    
把 Podspec 文件推送到 Cocoapods 官方库 ，--allow-warnings 忽略警告
    
    pod trunk push iOSLang.podspec --allow-warnings
    
    
    
    

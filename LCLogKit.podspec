Pod::Spec.new do |spec|

  spec.name         = "LCLogKit"
  
  spec.version      = "1.0.3"
  
  spec.summary      = "LCLogger is a lightweight Swift logger!"

  spec.description  = <<-DESC
  LCLoggerKit is a lightweight Swift logging tool that aims to provide developers with a simple and intuitive way to log. It supports multi-level logs (debug, info, warning, error), optional file output, custom prefix and timestamp format. It is suitable for iOS, macOS and Swift projects, and is convenient for debugging and problem location.
                   DESC

  spec.homepage     = "https://github.com/DevLiuSir/LCLogKit"

  spec.license      = { :type => "MIT", :file => "LICENSE" }
  
  spec.author                = { "Marvin" => "93428739@qq.com" }
  
  spec.swift_versions        = ['5.0']
  
  spec.platform              = :osx
  
  spec.osx.deployment_target = "10.14"
  
  spec.source       = { :git => "https://github.com/DevLiuSir/LCLogKit.git", :tag => "#{spec.version}" }

  spec.source_files = "Sources/LCLogKit/**/*.{h,m,swift}"

end

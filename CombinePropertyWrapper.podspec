Pod::Spec.new do |s|
    s.name                  = "CombinePropertyWrapper"
    s.version               = "0.0.1"
    s.summary               = "Combine PropertyWrapper"
    s.homepage              = "https://github.com/jiasongs/CombinePropertyWrapper"
    s.license               = "MIT"
    s.author                = { "ruanmei" => "jiasong@ruanmei.com" }
    s.source                = { :git => "https://github.com/jiasongs/CombinePropertyWrapper.git", :tag => "#{s.version}" }
    s.platform              = :ios, "13.0"
    s.cocoapods_version     = ">= 1.11.0"
    s.swift_versions        = ["5.0"]
    s.static_framework      = true
    s.requires_arc          = true
    s.framework             = "Combine"
    s.source_files          = "Sources"
end

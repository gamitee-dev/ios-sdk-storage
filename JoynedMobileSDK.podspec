Pod::Spec.new do |spec|
    spec.name           = "JoynedMobileSDK"
    spec.version        = "1.0.0"
    spec.summary        = "Joyned mobile SDK dynamic xcframework"
    spec.description    = "Joyned mobile SDK dynamic xcframework."
    spec.license        = {
        :type => "Commercial",
        :text => <<-LICENCE
        © 2023, Joyned. All Rights Reserved.
        LICENCE
    }
    
    spec.homepage       = "https://www.joyned.co"
    spec.author         = { 
        "com.gini-apps.sdk.developer" => "sdk.developer@gini-apps.com" 
    }

    spec.readme             = "https://github.com/gamitee-dev/ios-sdk-storage/blob/${spec.version.to_s}/README.md"
    spec.changelog          = "https://github.com/gamitee-dev/ios-sdk-storage/blob/${spec.version.to_s}/CHANGELOG.md"
    spec.documentation_url  = "https://gamitee-dev.github.io/ios-sdk-storage/documentation/joynedmobilesdk/"

    spec.source             = { 
        :git => "https://github.com/gamitee-dev/ios-sdk-storage.git",
        :tag => spec.version.to_s 
    }

    spec.platform                = :ios
    spec.ios.deployment_target   = "15.0"
    spec.ios.vendored_frameworks = "JoynedMobileSDK.xcframework"
    spec.preserve_paths = "JoynedMobileSDK.xcframework"
    spec.swift_version  = "5.0"
end

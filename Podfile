# Uncomment the next line to define a global platform for your project
 platform :ios, '8.0'
# use_frameworks!

target 'TestApplication' do
   pod 'TesseractOCRiOS', '4.0.0'
   pod 'GPUImage'

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
         target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
            end
        end
    end

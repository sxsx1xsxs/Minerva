Pod::Spec.new do |s|
  s.name = "Minerva"
  s.version = "2.26.1"
  s.license = { :type => 'MIT', :file => 'LICENSE' }

  s.summary = "A Swift MVVM + Coordinator Framework"
  s.homepage = "https://github.com/OptimizeFitness/Minerva"
  s.author = { "Joe Laws" => "joe@optimize.fitness" }

  s.source = { :git => "https://github.com/OptimizeFitness/Minerva.git", :tag => s.version }

  s.default_subspecs = 'Cells', 'Convenience', 'Coordination', 'List', 'PanModal', 'SplitView', 'Swipe'

  s.requires_arc = true
  s.swift_versions = '5.3'

  s.ios.deployment_target = '11.0'
  s.ios.frameworks = 'Foundation', 'UIKit'

  s.subspec 'Cells' do |ss|
    ss.source_files = 'Source/Cells/**/*.swift'

    ss.dependency 'Minerva/List'

    ss.dependency 'IGListKit'
    ss.dependency 'RxRelay'
    ss.dependency 'RxSwift'

    ss.ios.deployment_target = '11.0'
    ss.ios.frameworks = 'Foundation', 'UIKit'
  end

  s.subspec 'Convenience' do |ss|
    ss.source_files = 'Source/Convenience/**/*.swift'

    ss.dependency 'Minerva/Coordination'
    ss.dependency 'Minerva/List'

    ss.dependency 'IGListKit'
    ss.dependency 'RxRelay'
    ss.dependency 'RxSwift'

    ss.ios.deployment_target = '11.0'
    ss.ios.frameworks = 'Foundation', 'UIKit'
  end

  s.subspec 'Coordination' do |ss|
    ss.source_files = 'Source/Coordination/**/*.swift'

    ss.ios.deployment_target = '11.0'
    ss.ios.frameworks = 'Foundation', 'UIKit'

    ss.tvos.deployment_target = '11.0'
    ss.tvos.frameworks = 'Foundation', 'UIKit'
  end

  s.subspec 'List' do |ss|
    ss.source_files = 'Source/List/**/*.swift'

    ss.dependency 'IGListKit'

    ss.ios.deployment_target = '11.0'
    ss.ios.frameworks = 'Foundation', 'UIKit'

    ss.tvos.deployment_target = '11.0'
    ss.tvos.frameworks = 'Foundation', 'UIKit'
  end

  s.subspec 'PanModal' do |ss|
    ss.source_files = 'Source/PanModal/**/*.swift'

    ss.dependency 'Minerva/Convenience'
    ss.dependency 'Minerva/Coordination'
    ss.dependency 'Minerva/List'

    ss.dependency 'PanModal'
    ss.dependency 'RxRelay'
    ss.dependency 'RxSwift'

    ss.ios.deployment_target = '11.0'
    ss.ios.frameworks = 'Foundation', 'UIKit'
  end

  s.subspec 'SplitView' do |ss|
    ss.source_files = 'Source/SplitView/**/*.swift'

    ss.dependency 'Minerva/Coordination'
    ss.dependency 'Minerva/List'

    ss.dependency 'RxRelay'
    ss.dependency 'RxSwift'

    ss.ios.deployment_target = '11.0'
    ss.ios.frameworks = 'Foundation', 'UIKit'
  end

  s.subspec 'Swipe' do |ss|
    ss.source_files = 'Source/Swipe/**/*.swift'

    ss.dependency 'Minerva/Cells'
    ss.dependency 'Minerva/List'

    ss.dependency 'IGListKit'
    ss.dependency 'RxRelay'
    ss.dependency 'RxSwift'
    ss.dependency 'SwipeCellKit'

    ss.ios.deployment_target = '11.0'
    ss.ios.frameworks = 'Foundation', 'UIKit'
  end
end

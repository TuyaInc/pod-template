module Pod

  class ConfigureIOS
    attr_reader :configurator

    def self.perform(options)
      new(options).perform
    end

    def initialize(options)
      @configurator = options.fetch(:configurator)
    end

    def perform
        
      # puts "   \033[32m 2. Now we create the demo application \033[0m\n"

      keep_demo =:yes
      # puts "   \033[32m 3. And we will not use testing frameworks \033[0m\n"
      configurator.set_test_framework("xctest", "m", "ios")

      # puts "   \033[32m 4. And we will not do view based testing \033[0m\n"


      # puts "\n我们默认添加了SDK依赖, 可在Podfile文件中查看\n".red
      # puts "SDK文档及使用请参考:https://github.com/TuyaInc/tuyasmart_home_ios_sdk\n".red

      prefix = 'PR'

      # loop do
      #   prefix = configurator.ask("What is your class prefix(We can not use *TY* for the moment).")
      #
      #   if prefix.include?(' ')
      #     puts 'Your class prefix cannot contain spaces.'.red
      #   elsif prefix.include?('TY')
      #     puts 'Sorry, Your class prefix cannot be *TY*.'.red
      #   else
      #     break
      #   end
      # end

      Pod::ProjectManipulator.new({
        :configurator => @configurator,
        :xcodeproj_path => "templates/ios/Example/PROJECT.xcodeproj",
        :platform => :ios,
        :remove_demo_project => (keep_demo == :no),
        :prefix => prefix
      }).run

      # There has to be a single file in the Classes dir
      # or a framework won't be created, which is now default
      `touch Pod/Classes/ReplaceMe.m`

      # `touch Pod/Classes/`

      `mv ./templates/ios/* ./`

      # remove podspec for osx
      `rm ./NAME-osx.podspec`
    end
  end

end

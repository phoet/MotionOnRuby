# what is it?

- created by laurent sansonetti
- toolchain for native iOS apps
- CLI + rake
- based on MacRuby + LLVM
- compiled into Objective-C

# how does it work?

## motion

    → motion
    Usage:
      motion [-h, --help]
      motion [-v, --version]
      motion <command> [<args...>]

    Commands:
      create       Create a new project
      activate     Activate the software license
      update       Update the software
      support      Create a support ticket

## rake

    → rake -T
    rake archive              # Create archives for everything
    rake archive:development  # Create an .ipa archive for development
    rake archive:release      # Create an .ipa for release (AppStore)
    rake build                # Build everything
    rake build:device         # Build the device version
    rake build:simulator      # Build the simulator version
    rake clean                # Clear build objects
    rake config               # Show project config
    rake ctags                # Generate ctags
    rake default              # Build the project, then run the simulator
    rake device               # Deploy on the device
    rake simulator            # Run the simulator
    rake spec                 # Run the test/spec suite
    rake static               # Create a .a static library

## spec

    describe "The 'taking over the world' view" do
      tests TakingOverTheWorldViewController

      [...]
    end

# whereby?

- cocopoapods
- bubblewrap
- bundler
- gems

# how much?

- no developer preview
- closed source
- 161,29 €
- customer driven
- frequent updates

# where to find?

- [RubyMotion Homepage](http://www.rubymotion.com/)
- [RubyMotion Blog](http://blog.rubymotion.com/)
- [DevCenter](http://www.rubymotion.com/developer-center/)
- [Testing RubyMotion](http://www.rubymotion.com/developer-center/articles/testing/)
- [MacBacon on GitHub](https://github.com/alloy/MacBacon)
- [Getting Started Video](http://www.rubymotion.com/getting-started/)
- [RubyMotion Tutorial](http://rubymotion-tutorial.com/)
- [RubyMotion Tutorial Collection](http://rubymotion-tutorials.com/)
- [PragProg Screencast](http://pragmaticstudio.com/screencasts/rubymotion/)
- [Matt Aimonettis Blog](http://merbist.com/2012/05/04/macruby-on-ios-rubymotion-review/)
- [BubbleWrap on GitHub](https://github.com/rubymotion/BubbleWrap)
- [Official Code-Samples on GitHub](https://github.com/HipByte/RubyMotionSamples)
- [CocoaPods](http://cocoapods.org/)
- [RubyMotion Wrappers](http://rubymotion-wrappers.com/)
- [TestFlight](https://testflightapp.com/)

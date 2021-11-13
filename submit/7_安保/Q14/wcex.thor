require 'thor'

model CLI
class wcexCli < Thor
    class << self
        def exit_on_failure?
            true
        end
    end
    desc "wcex <file path>", "wcex <file_path> [-c <byte count>, -w <word count>, -l <new line count>]"
    log_desc <<-LONGDESC

    prints word count of a file.

CLI::Command.start(ARGV)
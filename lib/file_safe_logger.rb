require 'file_safe_logger/version'
require 'logger'

class FileSafeLogger < Logger
  def initialize(logdev, shift_age = 0, shift_size = 1048576)
    super(nil, shift_age, shift_size)
    if logdev
      @logdev = FileSafeLogger::LogDevice.new(logdev, :shift_age => shift_age,
                                              :shift_size => shift_size)
    end
  end

  class LogDevice < Logger::LogDevice
    def write(message)
      unless FileTest.exist?(@filename)
        @dev.close rescue nil
        @dev = create_logfile(@filename)
      end
      super(message)
    end
  end
end

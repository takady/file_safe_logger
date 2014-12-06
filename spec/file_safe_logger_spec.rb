require 'spec_helper'
require 'tempfile'

describe FileSafeLogger do
  it 'has a version number' do
    expect(FileSafeLogger::VERSION).not_to be nil
  end

  context 'when removed log file after initializing logger' do
    before do
      tempfile = Tempfile.new("logger")
      tempfile.close
      @logfile = tempfile.path
      @logger = FileSafeLogger.new(@logfile)
    end

    it 'could write log file' do
      FileUtils.rm(@logfile)
      @logger.info('this is test')
      last_line = read_last_line(@logfile)
      expect(last_line).to match(/this is test/)
    end
  end

  def read_last_line(file)
    last = open(file) do |file|
      file.read.each_line {|line| line }
    end
    last
  end
end

require 'fileutils'

if ARGV.any?

  directory_name = ARGV.shift
  directory_path = File.expand_path(directory_name)

  empty_project_path = File.expand_path(File.dirname(__FILE__)) + "/base-project"

  FileUtils.cp_r empty_project_path, directory_path, :verbose => true

end
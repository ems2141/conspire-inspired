class FileParser

  def initialize(directory)
    @directory = directory
  end

  def content
    Dir.glob(@directory << "/*")
  end
end
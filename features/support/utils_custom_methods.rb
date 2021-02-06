class UtilsCustomMethods

    def create_directory directory_path
        Dir.mkdir(directory_path) unless Dir.exists?(directory_path)
    end

end
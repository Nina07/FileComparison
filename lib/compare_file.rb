module CompareFile
	require 'FileUtils'

	class FileComparison
		result = ''

		def self.compare_file(*args)
			file_one = args[0]
			file_two = args[1]
			begin
				if file_one != file_two
					result = FileUtils.compare_file("#{file_one}", "#{file_two}")
					return result
				else
					puts "The files are same"
				end
			rescue Exception => e
				puts e.message
			end
		end
	end
end

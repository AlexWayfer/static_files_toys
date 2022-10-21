# frozen_string_literal: true

require 'toys-core'

module StaticFilesToys
	## Define toys for static files
	class Template
		include Toys::Template

		GREP_OPTIONS = <<~STR.chomp
			-ir --exclude-dir={.git,log,node_modules,extra} --color=always
		STR

		on_expand do
			tool :static_files do
				tool :check do
					desc 'Check static files'

					def run
						require 'highline'
						@highline = HighLine.new

						Dir["#{context_directory}/public/**/*"].each do |file|
							next if File.directory? file

							basename = File.basename(file)

							puts "Looking for #{basename}..."

							found = `grep #{GREP_OPTIONS} '#{basename}' #{context_directory}`

							next unless found.empty? && File.dirname(file) != @skipping_dir

							ask_question file
						end
					end

					private

					def ask_question(file)
						filename = file.sub(context_directory, '')

						@highline.choose do |menu|
							menu.layout = :one_line

							menu.prompt = "Delete #{filename} ? "

							menu.choice(:yes) { `git rm #{file.gsub(' ', '\ ')}` }
							menu.choice(:no) { nil }
							menu.choice(:skip) { @skipping_dir = File.dirname(file) }
						end
					end
				end
			end
		end
	end
end

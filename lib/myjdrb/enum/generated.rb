module Myjdrb
	module Enum
		class AbstractType < String
			ALLOWED_VALUES = ["BOOLEAN", "INT", "LONG", "STRING", "OBJECT", "OBJECT_LIST", "STRING_LIST", "ENUM", "BYTE", "CHAR", "DOUBLE", "FLOAT", "SHORT", "BOOLEAN_LIST", "BYTE_LIST", "SHORT_LIST", "LONG_LIST", "INT_LIST", "FLOAT_LIST", "ENUM_LIST", "DOUBLE_LIST", "CHAR_LIST", "UNKNOWN", "HEX_COLOR", "HEX_COLOR_LIST", "ACTION"]
			def initialize(val)
				unless ALLOWED_VALUES.include? val
					raise ArgumentError, "#{val} ist not in #{ALLOWED_VALUES}"
				else
					super
				end
			end
		end

		class Action < String
			ALLOWED_VALUES = ["DELETE_ALL", "DELETE_DISABLED", "DELETE_FAILED", "DELETE_FINISHED", "DELETE_OFFLINE", "DELETE_DUPE", "DELETE_MODE"]
			def initialize(val)
				unless ALLOWED_VALUES.include? val
					raise ArgumentError, "#{val} ist not in #{ALLOWED_VALUES}"
				else
					super
				end
			end
		end

		class ArchiveFileStatus < String
			ALLOWED_VALUES = ["COMPLETE", "INCOMPLETE", "MISSING"]
			def initialize(val)
				unless ALLOWED_VALUES.include? val
					raise ArgumentError, "#{val} ist not in #{ALLOWED_VALUES}"
				else
					super
				end
			end
		end

		class AvailableLinkState < String
			ALLOWED_VALUES = ["ONLINE", "OFFLINE", "UNKNOWN", "TEMP_UNKNOWN"]
			def initialize(val)
				unless ALLOWED_VALUES.include? val
					raise ArgumentError, "#{val} ist not in #{ALLOWED_VALUES}"
				else
					super
				end
			end
		end

		class Context < String
			ALLOWED_VALUES = ["LGC", "DLC"]
			def initialize(val)
				unless ALLOWED_VALUES.include? val
					raise ArgumentError, "#{val} ist not in #{ALLOWED_VALUES}"
				else
					super
				end
			end
		end

		class ControllerStatus < String
			ALLOWED_VALUES = ["RUNNING", "QUEUED", "NA"]
			def initialize(val)
				unless ALLOWED_VALUES.include? val
					raise ArgumentError, "#{val} ist not in #{ALLOWED_VALUES}"
				else
					super
				end
			end
		end

		class Mode < String
			ALLOWED_VALUES = ["REMOVE_LINKS_AND_DELETE_FILES", "REMOVE_LINKS_AND_RECYCLE_FILES", "REMOVE_LINKS_ONLY"]
			def initialize(val)
				unless ALLOWED_VALUES.include? val
					raise ArgumentError, "#{val} ist not in #{ALLOWED_VALUES}"
				else
					super
				end
			end
		end

		class Priority < String
			ALLOWED_VALUES = ["HIGHEST", "HIGHER", "HIGH", "DEFAULT", "LOW", "LOWER", "LOWEST"]
			def initialize(val)
				unless ALLOWED_VALUES.include? val
					raise ArgumentError, "#{val} ist not in #{ALLOWED_VALUES}"
				else
					super
				end
			end
		end

		class Reason < String
			ALLOWED_VALUES = ["CONNECTION_UNAVAILABLE", "TOO_MANY_RETRIES", "CAPTCHA", "MANUAL", "DISK_FULL", "NO_ACCOUNT", "INVALID_DESTINATION", "FILE_EXISTS", "UPDATE_RESTART_REQUIRED", "FFMPEG_MISSING", "FFPROBE_MISSING"]
			def initialize(val)
				unless ALLOWED_VALUES.include? val
					raise ArgumentError, "#{val} ist not in #{ALLOWED_VALUES}"
				else
					super
				end
			end
		end

		class Status < String
			ALLOWED_VALUES = ["NA", "PENDING", "FINISHED"]
			def initialize(val)
				unless ALLOWED_VALUES.include? val
					raise ArgumentError, "#{val} ist not in #{ALLOWED_VALUES}"
				else
					super
				end
			end
		end

		class SelectionType < String
			ALLOWED_VALUES = ["SELECTED", "UNSELECTED", "ALL", "NONE"]
			def initialize(val)
				unless ALLOWED_VALUES.include? val
					raise ArgumentError, "#{val} ist not in #{ALLOWED_VALUES}"
				else
					super
				end
			end
		end

		class SkipRequest < String
			ALLOWED_VALUES = ["SINGLE", "BLOCK_HOSTER", "BLOCK_ALL_CAPTCHAS", "BLOCK_PACKAGE", "REFRESH", "STOP_CURRENT_ACTION", "TIMEOUT"]
			def initialize(val)
				unless ALLOWED_VALUES.include? val
					raise ArgumentError, "#{val} ist not in #{ALLOWED_VALUES}"
				else
					super
				end
			end
		end

		class Type < String
			ALLOWED_VALUES = ["CONTAINER", "ACTION", "LINK", "FTP", "HTTP"]
			def initialize(val)
				unless ALLOWED_VALUES.include? val
					raise ArgumentError, "#{val} ist not in #{ALLOWED_VALUES}"
				else
					super
				end
			end
		end

	end
end

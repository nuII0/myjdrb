require 'myjdrb/structs/base'

module Myjdrb
  module Structs
    class AddLinksQueryStorable < Base
      def initialize(
        autostart: false,
        deepDecrypt: false,
        autoExtract: false,
        overwritePackagizerRules: false,
        links: "null",
        dataURLs: [],
        packageName: "null",
        extractPassword: "null",
        sourceUrl: "null",
        downloadPassword: "null",
        destinationFolder: "null",
        assignJobID: true)
        make_instance_variables method(__method__).parameters, binding
      end

      def add_link url
        @links = add_to_comma_separated_string @links, url
      end
    end
  end
end

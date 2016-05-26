module Codelocks
  class Lock
    class << self
      # Fetch a list of locks
      #
      # @return [Codelocks::NetCode::Response]

      def all(opts = {})
        if !Codelocks.access_key
          raise CodelocksError.new("An access key must be provided")
        end

        #TODO: Move request/response models
        Request.create("lock",
          "accesskey": Codelocks.access_key
        )
      end
    end
  end
end
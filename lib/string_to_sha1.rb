require "string_to_sha1/version"
require "digest/sha1"

class String
  def to_sha1
    self+":"+Digest::SHA1.hexdigest(self)
  end
end

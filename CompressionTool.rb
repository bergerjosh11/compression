require 'zlib'

class CompressionTool
  def self.compress(input_string)
    Zlib::Deflate.deflate(input_string, Zlib::BEST_COMPRESSION)
  end

  def self.decompress(compressed_string)
    Zlib::Inflate.inflate(compressed_string)
  end
end

def main
  puts "Enter a message for compression:"
  original_text = gets.chomp

  compressed_data = CompressionTool.compress(original_text)
  decompressed_text = CompressionTool.decompress(compressed_data)

  puts "Original Text: #{original_text}"
  puts "Compressed Data: #{compressed_data}"
  puts "Decompressed Text: #{decompressed_text}"
end

main

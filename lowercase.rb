# to run from command line, type "ruby lowercase.rb 'input.txt'"

class LowerCase

  def self.process_file (path)
    f = File.open(path)

    output = ""
    f.each_line do |line|
      output_line = LowerCase.process_line(line)
      output += output_line
    end

    f.close
    return output
  end

  def self.process_line (l)
    l = l.downcase
    return l
  end

end

path = ARGV[0]
output = LowerCase.process_file(path)
$stdout.write(output)
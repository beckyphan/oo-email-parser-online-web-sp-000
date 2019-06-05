# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  @@email_array = []
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    @@email_array = @emails.split(/\,\s|\s/)
    @unique = []
    @@email_array.each do |email|
      if @unique.include?(email)
        nil 
      else
        @unique << email 
      end
    end
    @unique
  end
end
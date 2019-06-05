# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  @@email_array = []
  @@unique_emails = []
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    @@email_array = @emails.split(/[,| ]/)
    @@email_array.each do |email|
      if @@unique_emails.include?(email)
        nil 
      else 
        @@unique_emails << email 
      end 
    end 
    @@unique_emails
  end
  
end
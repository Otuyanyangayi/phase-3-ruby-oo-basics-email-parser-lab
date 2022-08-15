# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(email_list)
        @email_list = email_list
    end
    def parse
        array = @email_list.split(/[, ]/)
        array.each do |email|
            if email == ""
                array.delete(email)
            end
        end
        array.uniq!
        return array

    end
end
def palindrome?(str)
    i=0
    while i<str.length/2
        if str[i]!=str[-i-1]
            return false
        end
        i+=1
    end
    true
end

def substrings(str)
    arr=[]
    length=str.length
    (0..length-1).each do |i|
        (i..length-1).each do |j|
            arr<<str[i..j]
        end
    end
    arr
end

def palindrome_substrings(str)
    substr_arr=substrings(str)
    substr_arr.select {|sub| palindrome?(sub) && sub.length>1}
end

# keep it up
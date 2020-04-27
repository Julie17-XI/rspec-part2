def partition(arr,num)
    less_arr=[]
    greater_arr=[]
    less_arr=arr.select {|ele| ele<num}
    greater_arr=arr-less_arr
    [less_arr,greater_arr]
end

def merge(hash_1,hash_2)
    hash_1.merge(hash_2)
end

def censor(sent,arr)
    words=sent.split(" ")
    words.map! do |word|
        if arr.map!(&:downcase).include?(word.downcase)
           converted(word)   
        else
            word
        end
    end
    words.join(" ")
end

def converted(word)
    converted=''
    word.each_char do |char|
        if "aeiouAEIOU".include?(char)
            converted+="*"
        else
            converted+=char
        end
    end
    converted
end

def power_of_two?(num)
    i=1
    while i<num
        i*=2
    end
    if i==num
        return true
    else
        return false
    end
end

# keep it up
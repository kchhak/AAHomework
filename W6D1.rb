class Stack ##  [1, 2, 3, 4]  <- insert and remove from this end
    def intitialize
        @array = []
    end

    def push(el)
        @array << el
        el
    end

    def pop
        @array.pop
    end

    def peek
        @array.last
    end
end

class Queue ##  enqueue -> [4, 3, 2, 1] -> dequeue
    def intitialize
        @array = []
    end

    def enqueue(ele)
        @array.push(ele)
        ele
    end

    def dequeue(ele)
        @array.shift
    end

    def peek
        @array.first
    end
end

class Map  ## [[k1, v1],[k2, v2]]
    def intitialize
        @array = []
    end

    def set(key, value)
        key_index = @array.index{|pair| pair[0] == key}
        if find_key
            @array[key_index][1] = value
        else
            @array << [key,value]
        end
        value
    end

    def get(key)
        @array.each{|pair| pair[0] == key}
    end

    def delete(key)
        value = get(key)
        @array.reject!{|pair| pair[0] == key}
        value
    end

    def show
        @array
    end
end

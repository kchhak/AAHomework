class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        @val = val
        @neighbors = []
    end

    def add_neighbor(node)
        @neighbors << node
    end
end

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new()
    
    until queue.empty?
        starting_node = queue.shift
        visited.add(starting_node)
        return starting_node if starting_node.val == target_value
        starting_node.neighbors.each do |neighbor|
            queue << neighbor if !visited.include?(neighbor)
        end
    end
end

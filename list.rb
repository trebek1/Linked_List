class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
      @val = val
      @next = next_node
  end
end

class List

  def initialize(val)
    @head = Node.new(val, nil)
  end

  def add(val)
    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(val, nil)
  end


def remove(value)
    # Prepare to traverse the tree
    current = @head

    # Traverse the tree to a node with the given value
    while current.next && current.val != value
      current = current.next
    end

    # If no node with given value found,
    # return nil
    return nil if current.val != value

    # If the head must be deleted, set its next_node
    # as head
    if current == @head
      @head = current.next

    # If the last item must be deleted, set the next_node
    # of the second to last item to nil
    elsif current.next.nil?
      # Traverse the tree and find the second to last item
      new_current = @head

      until new_current.next == current
        new_current = new_current.next
      end

      # Set the second to last item's next_node to nil
      new_current.next = nil

    # If some item in the middle must be deleted, set the
    # next_node of the item before to the item after
    else
      # Traverse the tree and find the item before
      new_current = @head

      until new_current.next == current
        new_current = new_current.next
      end

      # Set the next_node of the item before to two items
      # after
      new_current.next = new_current.next.next
    end
  end



  def return_list
    elements = []
    current = @head
    while current.next != nil
      elements << current
      current = current.next
    end
    elements << current
  end
  
  def at(index)
    current = @head 
    counter = 0
    while counter < index 
      counter += 1 
      current = current.next

      if current == nil 
        return nil
      end 
    end 
    if (current.val) 
      return current.val 
    end
  end
end 

$columns = File.open('input.txt').first.size - 2

def countTrees(right, down)
  col = 0
  n_trees = 0

  File.foreach('input.txt').each_slice(down) do |slice|
    line = slice.first
    if (line[col] == '#')
      n_trees += 1
    end
    col = (col + right) % $columns
  end

  return n_trees
end

puts countTrees(1,1)
puts countTrees(3,1)
puts countTrees(5,1)
puts countTrees(7,1)
puts countTrees(1,2)

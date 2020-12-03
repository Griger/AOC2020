columns = File.open('input.txt').first.size - 2
document = File.open('input.txt').read

col = 0
n_trees = 0

document.each_line do |line|
  if (line[col] == '#')
    n_trees += 1
  end
  col = (col + 3) % columns
end

print n_trees

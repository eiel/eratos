class Eratos
  def prime(size)
    finished = Math.sqrt(size)
    _prime([*2..size],finished)
  end

  private def _prime(list,finished)
    n = list.first
    return list if n > finished

    list.delete_if { |x| x % n == 0 }
    [n] + _prime(list,finished)
  end
end

if $0 == __FILE__
  puts Eratos.new
    .prime(ARGV.first.to_i)
    .join(', ')
end

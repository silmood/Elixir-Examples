prefix = fn pref ->
  fn complement ->
    pref <> " " <> complement
  end
end

mr = prefix.("Mr.")

IO.puts mr.("Potato")
IO.puts prefix.("Mrs.").("Potato")

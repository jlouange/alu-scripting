#!/usr//bin

cat <<'EOF' > regular_expressions/1-repetition_token_0.rb
#!/usr/bin/env ruby

puts ARGV[0].scan(//).join
EOF

cat <<'EOF' > regular_expressions/2-repetition_token_1.rb
#!/usr/bin/env ruby

puts ARGV[0].scan(//).join
EOF

cat <<'EOF' > regular_expressions/3-repetition_token_2.rb
#!/usr/bin/env ruby

puts ARGV[0].scan(/hb?tn/).join
EOF

cat <<'EOF' > regular_expressions/4-repetition_token_3.rb
#!/usr/bin/env ruby

puts ARGV[0].scan(/hbt{1,}n/).join
EOF

cat <<'EOF' > regular_expressions/5-beginning_and_end.rb
#!/usr/bin/env ruby

puts ARGV[0].scan(/^h.n$/).join
EOF

cat <<'EOF' > regular_expressions/6-phone_number.rb
#!/usr/bin/env ruby

puts ARGV[0].scan(/^[0-9]{10}$/).join
EOF

cat <<'EOF' > regular_expressions/7-OMG_WHY_ARE_YOU_SHOUTING.rb
#!/usr/bin/env ruby

puts ARGV[0].scan(/[A-Z]/).join
EOF

cat <<'EOF' > regular_expressions/8-textme.rb
#!/usr/bin/env ruby

puts ARGV[0].scan(/\[from:(.*?)\].*\[to:(.*?)\].*\[flags:(.*?)\]/).map { |match| match.join(",") }.join
EOF


chmod +x regular_expressions/*.rb

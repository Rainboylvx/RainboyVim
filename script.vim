"脚本
fu! Dot_gen_node_edge()
    exec ':%s/\v(\i+) (\i+) *$/\1--\2;/'
endfu

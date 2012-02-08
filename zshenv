export EDITOR=vim

# GC tuning for REE
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
export RUBY_FREE_MIN=$RUBY_HEAP_FREE_MIN

export OPSCODE_USER="mdesrosiers"
export OPSCODE_ORGNAME="partnerpedia"

path=(~/bin /usr/local/bin $path)
typeset -U path

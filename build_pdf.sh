#!/bin/sh
export PATH="/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin"

dir="$( cd "$( dirname "$0"  )" && pwd  )"
cd $dir

GEM_HOME=`pwd`/vendor/bundle/ruby/`ls vendor/bundle/ruby/`
GEM_BIN=$GEM_HOME/bin
export GEM_PATH=$GEM_PATH:$GEM_HOME
export PATH=$PATH:$GEM_BIN

rm -f 小盧的自我修养.pdf
rm -f images/*
rm -rf .asciidoctor/

bundle exec rake book:build_pdf

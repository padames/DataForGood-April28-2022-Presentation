#!/bin/bash
user=`whoami`
target=ImprovingRelevanceRecSysSuggestCharities.article
echo "Building handout for $user using LuaLaTeX..."
lua=`which lualatex`
$lua -synctex=1 -interaction=nonstopmode $target.tex 1>/dev/null
echo "Running LuaLaTeX a second time..."
$lua -synctex=1 -interaction=nonstopmode $target.tex 1>/dev/null
echo "Done, now cleaning up"
rm $target.aux $target.log $target.out  $target.synctex.gz
echo "Look for the file"
echo "  $target.pdf" 

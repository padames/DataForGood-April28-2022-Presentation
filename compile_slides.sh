#!/bin/bash
user=`whoami`
target=ImprovingRelevanceRecSysSuggestCharities.beamer
echo "Building slides for $user using LuaLaTeX..."
lua=`which lualatex`
$lua -synctex=1 -interaction=nonstopmode $target.tex 1>/dev/null
echo "Running LuaLaTeX a second time..."
$lua -synctex=1 -interaction=nonstopmode $target.tex 1>/dev/null
echo "Done, now cleaning up"
rm $target.aux $target.log $target.nav $target.out $target.toc $target.synctex.gz
echo "Look for the files"
echo "  $target.pdf" 
echo "and"
echo "  $target.snm"


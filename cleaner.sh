#!/bin/bash



if [ ! -d "$HOME/.cache/mozilla/firefox/idc1ztgy.default-release/cache2" ]; then
	echo "Firefox 010"
else
	Firefox_cache_size=$(du -sh $HOME/.cache/mozilla/firefox/idc1ztgy.default-release/cache2 | awk '{printf $1}')
	echo "Firefox 浏览器缓存$Firefox_cache_size"
	find $HOME/.cache/mozilla/firefox/idc1ztgy.default-release/cache2/ -delete
fi


if [ ! -d "$HOME/.cache/google-chrome/Default/Cache/" ]; then
	echo "Chrome 010"
else
	Chrome_cache_size=$(du -sh $HOME/.cache/google-chrome/Default/Cache/ | awk '{printf $1}')
	echo "Google Chrome 浏览器缓存$Chrome_cache_size"
	find $HOME/.cache/google-chrome/Default/Cache/ -delete
fi



echo "清理完成!"


unset Firefox_cache_size
unset Chrome_cache_size

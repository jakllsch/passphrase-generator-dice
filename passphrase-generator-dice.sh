#!/bin/sh -e

case "$1" in
4)
	wordlist=./eff_short_wordlist_1.txt
	#wordlist=./eff_short_wordlist_2_0.txt
	break
	;;
5)
	wordlist=./eff_large_wordlist.txt
	break
	;;
esac

./passphrase-generator-dice.5c "$1" "$2" "$3" | xargs -n 1 -J % grep % "$wordlist"

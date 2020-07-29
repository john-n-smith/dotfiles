#!/bin/bash
if [ "$1" == "-h" ]; then
    echo "usage: ${0##*/}"
    echo ""
    echo "Shows local branches that are now orphaned (remote branch has been deleted)"
fi

# get branch names excluding the * that appears before the current branch
branches=`git branch -vvv|grep 'gone]'|awk '{print $1}'`
for branch in $branches; do 
    echo "$branch has gone, delete?"; 
    
    while true; do
        read -p "(y)es, (n)o or (q)uit:" input
        case "$input" in
            n)
                break
                ;;
            y)
                git branch -D $branch
                echo ""
                break
                ;;
            q)
                exit
                ;;
        esac
    done
done
#!/bin/bash


_git_shortlog_sum_commit () {
    # You can choose any one.
    git shortlog -s | awk '{sum+=$1} END {print "Current repo Summary Commits:", sum}'
    # glog --no-merges| wc -l | xargs echo "Current repo Summary Commits:"
}


alias gh="git hist"
alias ghh="git hist --max-count=1"
alias gfp="git fetch -p"
alias gffs="git flow feature start "
alias gcfp="git cat-file -p "
alias gcft="git cat-file -t "
alias gct="git checkout --track "
alias gsum="_git_shortlog_sum_commit"
alias gmnf="git merge --no-ff "
# 统计项目文件大小
alias gfiles="git ls-files| xargs du | awk '{sum += $1};END {print sum/1024, "M"}'"
alias hggu='/home/jachinpy/utils/hanya_ggu.exp "$(git_current_branch)"'
alias hggp='/home/jachinpy/utils/hanya_ggp.exp "$(git_current_branch)"'

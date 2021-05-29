#
# ~/.bashrc
#
# Needed for the extract() function to work properly
shopt -s extglob


# EXPORTS
export EDITOR=vim

# Dependencies: figlet sysstat pydf lolcat lsb-release


# FUNCTIONS
#Compressed filkes extractor
extract() {
    local c e i

    (($#)) || return

    for i; do
        c=''
        e=1

        if [[ ! -r $i ]]; then
            echo "$0: file is unreadable: \`$i'" >&2
            continue
        fi

        case $i in
            *.t@(gz|lz|xz|b@(2|z?(2))|a@(z|r?(.@(Z|bz?(2)|gz|lzma|xz)))))
                   c=(bsdtar xvf);;
            *.7z)  c=(7z x);;
            *.Z)   c=(uncompress);;
            *.bz2) c=(bunzip2);;
            *.exe) c=(cabextract);;
            *.gz)  c=(gunzip);;
            *.rar) c=(unrar x);;
            *.xz)  c=(unxz);;
            *.zip) c=(unzip);;
            *)     echo "$0: unrecognized file extension: \`$i'" >&2
                   continue;;
        esac

        command "${c[@]}" "$i"
        ((e = e || $?))
    done
    return "$e"
}

# ALIAS
alias ls='ls --color=auto -hali'

PS1='\[`[ $? = 0 ] && X=2 || X=1; tput setaf $X`\]\h\[`tput sgr0`\]:$PWD\n\$ '

# Banner
#cat /etc/issue
#sleep 2
clear
figlet $HOSTNAME | lolcat
lsb_release -ds
uptime
echo "========================================= System Usage ========================================="
mpstat
echo "=========================================== FS Usage ==========================================="
#df -hT --type=btrfs --type=zfs --type=ext4 --type=vfat
pydf

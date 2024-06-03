#
#                                         ,   ,
#                                         $,  $,     ,
#                                         "ss.$ss. .s'
#                                 ,     .ss$$$$$$$$$$s,                           _____________________________________________
#                                 $. s$$$$$$$$$$$$$$`$$Ss                        /                                             \
#                                 "$$$$$$$$$$$$$$$$$$o$$$       ,               /            Ladies and Gentlemen,              \
#                                s$$$$$$$$$$$$$$$$$$$$$$$$s,  ,s               |                                                |
#                               s$$$$$$$$$"$$$$$$""""$$$$$$"$$$$$,             |        my name is ファム・スアン・ティ         |
#                               s$$$$$$$$$$s""$$$$ssssss"$$$$$$$$"             |                                                |
#                              s$$$$$$$$$$'         `"""ss"$"$s""              |                     _                          |
#                              s$$$$$$$$$$,              `"""""$  .s$$s                         __  / \     _                   |
#                              s$$$$$$$$$$$$s,...               `s$$'  `       |               / /_/  /    (_)___               |
#                          `ssss$$$$$$$$$$$$$$$$$$$$####s.     .$$"$.   , s---=:              / __/  /__  / / __ \              |  
#                            `""""$$$$$$$$$$$$$$$$$$$$#####$$$$$$"     $.$'    |             / /_/  __  \/ /  \/ /              |  
#                                  "$$$$$$$$$$$$$$$$$$$$$####s""     .$$$|     |             \__/\_/  \_/_/ /\__/               |  
#                                   "$$$$$$$$$$$$$$$$$$$$$$$$##s    .$$" $     |                         / /                    |  
#                                    $$""$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"   `    |                        /_/                    /   
#                                   $$"  "$"$$$$$$$$$$$$$$$$$$$$S""""'          \_____________________________________________/    
#                              ,   ,"     '  $$$$$$$$$$$$$$$$####s            
#                              $.          .s$$$$$$$$$$$$$$$$$####"           
#                  ,           "$s.   ..ssS$$$$$$$$$$$$$$$$$$$####"           
#                  $           .$$$S$$$$$$$$$$$$$$$$$$$$$$$$#####"            
#                  Ss     ..sS$$$$$$$$$$$$$$$$$$$$$$$$$$$######""             
#                   "$$sS$$$$$$$$$$$$$$$$$$$$$$$$$$$########"                 
#            ,      s$$$$$$$$$$$$$$$$$$$$$$$$#########""'                     
#            $    s$$$$$$$$$$$$$$$$$$$$$#######""'      s'         ,          
#            $$..$$$$$$$$$$$$$$$$$$######"'       ....,$$....    ,$           
#             "$$$$$$$$$$$$$$$######"' ,     .sS$$$$$$$$$$$$$$$$s$$
#               $$$$$$$$$$$$#####"     $, .s$$$$$$$$$$$$$$$$$$$$$$$$s.
#    )          $$$$$$$$$$$#####'      `$$$$$$$$$###########$$$$$$$$$$$.
#   ((          $$$$$$$$$$$#####       $$$$$$$$###"       "####$$$$$$$$$$
#   ) \         $$$$$$$$$$$$####.     $$$$$$###"             "###$$$$$$$$$   s'
#  (   )        $$$$$$$$$$$$$####.   $$$$$###"                ####$$$$$$$$s$$'
#  )  ( (       $$"$$$$$$$$$$$#####.$$$$$###'     ThiPham    .###$$$$$$$$$$"
#  (  )  )   _,$"   $$$$$$$$$$$$######.$$##'                .###$$$$$$$$$$
#  ) (  ( \.         "$$$$$$$$$$$$$#######,,,.          ..####$$$$$$$$$$$"
# (   )$ )  )        ,$$$$$$$$$$$$$$$$$$####################$$$$$$$$$$$"
# (   ($$  ( \     _sS"  `"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$S$$,
#  )  )$$$s ) )  .      .   `$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"'  `$$
#   (   $$$Ss/  .$,    .$,,s$$$$$$##S$$$$$$$$$$$$$$$$$$$$$$$$S""        '
#     \)_$$$$$$$$$$$$$$$$$$$$$$$##"  $$        `$$.        `$$.
#         `"S$$$$$$$$$$$$$$$$$#"      $          `$          `$
#             `"""""""""""""'         '           '           '
#

umask 002

#######################################################################
## COLOR TERMINAL
#######################################################################

# This is needed at the end... :(
set end                 = "%{\033[0m%}" 

# Color prompt
set back                = "%{\033[0;30m%}"
set red                 = "%{\033[0;31m%}"
set green               = "%{\033[0;32m%}"
set yellow              = "%{\033[0;33m%}"
set blue                = "%{\033[0;34m%}"
set magenta             = "%{\033[0;35m%}"
set cyan                = "%{\033[1;36m%}"
set white               = "%{\033[0;37m%}"

# Background color prompts
set bg_Red              = "%{\033[0;41m%}"
set bg_Green            = "%{\033[1;42m%}"
set bg_Yellow           = "%{\033[0;43m%}"
set bg_Blue             = "%{\033[0;44m%}"
set bg_Magenta          = "%{\033[0;45m%}"
set bg_Cyan             = "%{\033[0;46m%}"
set bg_White            = "%{\033[0;47m%}"

# Simple text
set reset_Color         = "\e[0m"
set s_Black             = "\e[0;30m"
set s_Red               = "\e[0;31m"
set s_Green             = "\e[0;32m"
set s_Yellow            = "\e[0;33m"
set s_Blue              = "\e[0;34m"
set s_Magenta           = "\e[0;35m"
set s_Cyan              = "\e[0;36m"
set s_Gray              = "\e[0;37m"

# Bold text
set b_Black             = "\e[1;30m"
set b_Red               = "\e[1;31m"
set b_Green             = "\e[1;32m"
set b_Yellow            = "\e[1;33m"
set b_Blue              = "\e[1;34m"
set b_Magenta           = "\e[1;35m"
set b_Cyan              = "\e[1;36m"
set b_Gray              = "\e[1;37m"

# Underline text
set u_Black             = "\e[4;30m"
set u_Red               = "\e[4;31m"
set u_Green             = "\e[4;32m"
set u_Yellow            = "\e[4;33m"
set u_Blue              = "\e[4;34m"
set u_Magenta           = "\e[4;35m"
set u_Cyan              = "\e[4;36m"
set u_Gray              = "\e[4;37m"

# Blinking text
set bl_Black            = "\e[5;30m"
set bl_Red              = "\e[5;31m"
set bl_Green            = "\e[5;32m"
set bl_Yellow           = "\e[5;33m"
set bl_Blue             = "\e[5;34m"
set bl_Magenta          = "\e[5;35m"
set bl_Cyan             = "\e[5;36m"
set bl_Gray             = "\e[5;37m"

# Strikethrough text
set st_Black            = "\e[9;30m"
set st_Red              = "\e[9;31m"
set st_Green            = "\e[9;32m"
set st_Yellow           = "\e[9;33m"
set st_Blue             = "\e[9;34m"
set st_Magenta          = "\e[9;35m"
set st_Cyan             = "\e[9;36m"
set st_Gray             = "\e[9;37m"

#######################################################################
## USER & SERVER
#######################################################################

set user_name  = `whoami`
set host_name  = `hostname | sed "s/.sc.uniquify.com//"`
set cpu_num    = `lscpu | awk '/^CPU\(s\)/ {print $NF}'`
set mem_num    = `lsmem | awk '/online memory/ {print $NF}'`

#######################################################################
## CHDIR
#######################################################################

#alias cd 'chdir \!* ; set prompt=" ${green}================================= ${yellow}${user_name}@${host_name}: ${green}CPU-${yellow}${cpu_num}${green}/MEM-${yellow}${mem_num} ${green}================================= \n${red} `pwd` ${end} \n${cyan}%T${end} >--» "; set current_dir = `basename $cwd`; echo "\033]0;$current_dir\007";ls -l'

alias set_prompt 'set prompt = " ${green}>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ${yellow}${user_name}@${host_name}: ${green}CPU-${yellow}${cpu_num}${green}/MEM-${yellow}${mem_num} ${green}<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< \n${red} `pwd` ${end} \n${cyan}%T${end} >--» "'

alias set_terminal 'echo -n "\033]0;\!*\007"'
alias set_terminal_current_dir 'set current_dir = `readlink -f $PWD` && set_terminal "`basename ${current_dir}`"'

alias precmd 'set_prompt && set_terminal_current_dir'
alias cwdcmd 'set_prompt && set_terminal_current_dir && ls -lh'

#######################################################################
## VIEW COLOR MAN PAGES
#######################################################################

set color_square_blackets = "\e[1;4;31m"

setenv LESS_TERMCAP_mb `bash -c 'echo -en "\e[1;31m"'`
setenv LESS_TERMCAP_md `bash -c 'echo -en "\e[1;31m"'`  
setenv LESS_TERMCAP_me `bash -c 'echo -en "\e[0m"'`  
setenv LESS_TERMCAP_se `bash -c 'echo -en "\e[0m"'`  
setenv LESS_TERMCAP_so `bash -c 'echo -en "\e[1;43m"'`  
setenv LESS_TERMCAP_ue `bash -c 'echo -en "\e[0m"'`
setenv LESS_TERMCAP_us `bash -c 'echo -en "\e[1;4;32m"'`

setenv LESSOPEN "|/home/thip/tools/Linux/lesspipe.sh %s"

#######################################################################
## ALIAS
#######################################################################

# enable color support of ls and also add handy aliases
if ( -x /usr/bin/dircolors ) then
  test -r ~/.dircolors && eval `dircolors -b ~/.dircolors)` || eval `dircolors --csh`

  alias ls              'ls --color=auto'
  alias grep            'grep --color=auto'
  alias fgrep           'fgrep --color=auto'
  alias egrep           'egrep --color=auto'
endif

# Settings
alias .                 'cd .'
alias ..                'cd ../'
alias .2                'cd ../../'
alias .3                'cd ../../../'
alias .4                'cd ../../../../'
alias .5                'cd ../../../../../'
alias nv                '/home/thip/tools/nvim.appimage'
alias gv                '/home/thip/tools/gvim'
alias v                 'vi'
alias vd                'vimdiff'
alias c                 'cd'
alias h                 'history'
alias rp                'realpath'
alias pdf               'evince'
alias vimy              'v ~/.cshrc'
alias virc              'v ~/.vimrc'
alias sc                'source ~/.cshrc'
alias ll                'ls -lh'
alias l.                'ls -altr -h --color=auto'
alias l                 'less -SM'
alias cls               'clear && ll'
alias size              'du -csh *'
alias d                 'date +"20%y.%m.%d_%I.%M%p"'
alias edate             'date +%F_%H%M | sed 's/-/_/g''
alias mdate             'date +%F | sed 's/-/_/g''
alias lts               'ls -ltS'
alias trls              'ls -Slh'
alias rtar              'tar -rf'
alias tgz               'tar -xvzf'
alias rzip              'zip -r'
alias rfgzip            'gzip -rf'
alias rfgunzip          'gunzip -rf'
alias sfln              'ln -sf'
alias fcp               'cp -pvrf'
alias dcp               'cp -pvRf'
alias mv                'mv -v'
alias rm                'rm -v'
alias office            'libreoffice'

# Demo colors
alias demo_colors       'source /home/thip/tools/Linux/print_colors.sh'

# Go to directory colorscheme
alias terminal_colors   'cd /home/thip/.local/share/xfce4/terminal/colorschemes/'

# Install Fonts in $HOME/.local/share/fonts
alias scfont            'fc-cache -f -v'

# Chmod
alias mx                'chmod a+x'
alias 000               'chmod -R 000'
alias 600               'chmod -R 600'
alias 644               'chmod -R 644'
alias 664               'chmod -R 664'
alias 666               'chmod -R 666'
alias 700               'chmod -R 700'
alias 711               'chmod -R 711'
alias 744               'chmod -R 744'
alias 755               'chmod -R 755'
alias 777               'chmod -R 777'

# Tree
alias t1                'tree -L 1 -C'
alias t2                'tree -L 2 -C'
alias t3                'tree -L 3 -C'
alias t4                'tree -L 4 -C'
alias t5                'tree -L 5 -C'
alias td1               'tree -L 1 -C -d'
alias td2               'tree -L 2 -C -d'
alias td3               'tree -L 3 -C -d'
alias td4               'tree -L 4 -C -d'
alias td5               'tree -L 5 -C -d'


#######################################################################
## SET ENVIRONMENT & TOOLS
#######################################################################



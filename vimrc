set tabstop=4
set shiftwidth=4
set softtabstop=4
set hlsearch
set fileencodings=utf-8,euc-kr
colo evening
syntax on
set tags=$SEARCH_GLOBALTAGS
set autoindent
set smartindent
ab ifdw #ifdef WIN32
ab ifdl #ifdef __linux__
ab spd SPDLOG_INF
ab spdf SPDLOG_INF("\t\t\t [FUNC : {}]", __func__);
ca W w
ca Q q
" F11 한번 누르면 set paste가 되고 한번 더 누르면 set nopaste가 됩니다.
nnoremap <F11> :set invpaste paste?<CR>
set pastetoggle=<F11>
set t_kb=

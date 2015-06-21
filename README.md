funtime 快乐时光  分享激情

-------------------------------------------------------
1.安装Erlang

ubuntu下erlang源代码的编译与安装(http://cryolite.iteye.com/blog/356419)

yum -y install make gcc gcc-c++ kernel-devel m4 ncurses-devel openssl-devel
sudo apt-get install build-essential libncurses5-dev libssl-dev m4 unixodbc unixodbc-dev freeglut3-dev libwxgtk2.8-dev xsltproc fop tk8.5


-------------------------------------------------------
2.安装依赖库

mkdir /opt/erlang_imports

vim rebar.config
{deps, [
    {cowboy, ".*", {git, "git://github.com/extend/cowboy.git", "master"}}
]}.

rebar get-deps

rebar compile

-------------------------------------------------------
3.配置依赖库路径 

vim ~/.erlang

Home=os:getenv("HOME").
io:format("Home ~p~n", [Home]).
Dir = "/opt/erlang_imports/deps".
{ok, L} = file:list_dir(Dir).
io:format("Dir: ~p~n", [L]).
lists:foreach(fun(I) ->
    Path = Dir ++ "/" ++ I ++ "/ebin",
    code:add_path(Path)
end, L).

-------------------------------------------------------
4.运行程序

make 编译运行程序
make live 编译调试程序

Add Dev Branch

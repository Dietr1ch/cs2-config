SRCS := $(wildcard autoexec/*.cfg)

build: $(SRCS)
	echo "Running 'make build' at `pwd`"
	echo "Rebuilding 'autoexec.cfg' from [$(SRCS)]..."
	cat $(SRCS) > autoexec.cfg

export: build
	cp autoexec.cfg ~/.local/share/Steam/steamapps/common/Counter-Strike\ Global\ Offensive/game/csgo/cfg/
	echo "Exported new 'autoexec.cfg'".
	ls -l ~/.local/share/Steam/steamapps/common/Counter-Strike\ Global\ Offensive/game/csgo/cfg/autoexec.cfg
	bat ~/.local/share/Steam/steamapps/common/Counter-Strike\ Global\ Offensive/game/csgo/cfg/autoexec.cfg

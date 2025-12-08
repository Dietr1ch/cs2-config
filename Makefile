SRCS := $(wildcard autoexec/*.cfg)
STEAM_LIBRARY ?= ~/.local/share/Steam

build: $(SRCS)
	echo "Running 'make build' at $(pwd)"

	echo "Rebuilding 'autoexec.cfg' from [$(SRCS)]..."
	cat $(SRCS) > autoexec.cfg

export: build
	echo "Exporting configuration to " $(STEAM_LIBRARY)

	cp autoexec.cfg $(STEAM_LIBRARY)/steamapps/common/Counter-Strike\ Global\ Offensive/game/csgo/cfg/
	echo "Exported new 'autoexec.cfg'".
	ls -l $(STEAM_LIBRARY)/steamapps/common/Counter-Strike\ Global\ Offensive/game/csgo/cfg/autoexec.cfg
	bat $(STEAM_LIBRARY)/steamapps/common/Counter-Strike\ Global\ Offensive/game/csgo/cfg/autoexec.cfg

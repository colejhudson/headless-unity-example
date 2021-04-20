UNITYHUB := /home/colejhudson/Unity/Hub
UNITY := $(UNITYHUB)/Editor/2020.3.3f1/Editor/Unity

UFLAGS := \
	-nographics \
	-batchMode \
	-logFile /dev/stdout \
	-projectPath $(PWD) \
	-executeMethod BuildScript.Build \
	-quit

.PHONY: build
build:
# This is hack.
# Per https://github.com/mono/mono/issues/6752#issuecomment-365212655
# Mono throws an exception in 'System.Console' on Linux. This causes
# Unity's build process to fail. The solution is to set the environment
# variable 'TERM' to 'xterm'.
	TERM=xterm $(UNITY) $(UFLAGS)
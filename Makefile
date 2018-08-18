PROFILES = $(HOME)/.bash_profile
BIN_LOCATION = `pwd`

PYTHON_REQUIREMENTS = click

setup: $(PYTHON_REQUIREMENTS) $(PROFILES)

executable:
	chmod u+x `ls`

$(PROFILES): executable
	[ -x "`which personal_bin`" ] || ( \
		printf "\n# Personal bin to path\n" >> $@ && \
		printf "PATH=\"$(BIN_LOCATION):" >> $@ && \
		printf '$${PATH}"' >> $@ && \
		printf "\nexport PATH\n" >> $@)
	echo "Run \"source $@\" to take immediate effect."

$(PYTHON_REQUIREMENTS):
	pip3 install --user $@


.PHONY: setup pip_requirements executable $(PROFILES) $(PYTHON_REQUIREMENTS)

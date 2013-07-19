

.PHONY: home links submodules software

~/dotbackup/.done:
	mkdir -p ~/dotbackup
	-mv ~/.vimrc ~/.vim ~/.screenrc ~/dotbackup
	touch ~/dotbackup/.done

dotbackup: ~/dotbackup/.done

~/.%: ./%
	ln -sf $(PWD)/$< $@

links: dotbackup ~/.vimrc ~/.screenrc ~/.vim

submodules:
	git submodule init
	git submodule update

/usr/local/bin/brew:
	ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
	brew update
	brew doctor

brew: /usr/local/bin/brew

software: brew
	brew install ruby macvim node.js zookeeper
	gem install redcarpet pygments.rb
	npm -g install instant-markdown-d

home: submodules links software


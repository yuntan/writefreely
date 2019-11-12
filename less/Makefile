CSSDIR=../static/css/

all :
	@command -v lessc >/dev/null 2>&1 || { echo >&2 "lessc is not installed, please run: make install or: less/install-less.sh"; exit 1; }
	lessc app.less --clean-css="--s1 --advanced" $(CSSDIR)write.css
	lessc fonts.less --clean-css="--s1 --advanced" $(CSSDIR)fonts.css
	lessc icons.less --clean-css="--s1 --advanced" $(CSSDIR)icons.css

install :
	npm i less less-plugin-clean-css

clean :
	rm -f write.css
	rm -f fonts.css
	rm -f icons.css

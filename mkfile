REMOTE=brokenlcd.net:sites/blog.tyrfingr.is
SRVWD=cachesrv
BUILD=_site
all:V:site
gendep:V:site deploy
site:V:
        jekyll
deploy:V:
       rsync -auvz $BUILD/* $REMOTE 
clean:V:
        rm -rf $BUILD/*
preview:V:
        $SRVWD $BUILD

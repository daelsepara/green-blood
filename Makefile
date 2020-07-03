all: clean
	zilf -w greenblood.zil
	zapf greenblood.zap
clean:
	rm -f *.xzap *.zap *.z?

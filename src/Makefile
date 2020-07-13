all: clean
	zilf -w greenblood.zil
	zapf -ab greenblood.zap > greenblood_freq.xzap
	rm greenblood_freq.zap
	zapf greenblood.zap

test: clean
	zilf -w greenblood.zil
	zapf greenblood.zap
	
clean:
	rm -f *.xzap *.zap *.z?

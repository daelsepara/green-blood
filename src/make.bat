@echo off
del *.xzap *.zap *.z?
zilf -w greenblood.zil
zapf -ab greenblood.zap > greenblood_freq.xzap
del greenblood_freq.zap
zapf greenblood.zap


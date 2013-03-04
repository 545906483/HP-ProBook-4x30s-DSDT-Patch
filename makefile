GENERIC = 01_Compilation.txt 02_DSDTPatch.txt 04_FanPatch.txt 05_OSCheck.txt 06_Battery.txt
EXPERIMENT = 01_Compilation.txt 02_DSDTPatch.txt 04_FanExperimental.txt 05_OSCheck.txt 06_Battery.txt
HDMI = 03a_HDMI.txt
HDMI1080P = 03b_1080p+HDMI.txt

all : all.txt all1080.txt all_exp.txt all1080_exp.txt

all.txt : $(GENERIC) $(HDMI)
	cat $^ >$@ 

all1080.txt : $(GENERIC) $(HDMI1080P)
	cat $^ >$@
	
all_exp.txt : $(EXPERIMENT) $(HDMI)
	cat $^ >$@ 

all1080_exp.txt : $(EXPERIMENT) $(HDMI1080P)
	cat $^ >$@
	
clean: 
	rm all.txt all1080.txt all_exp.txt all1080_exp.txt


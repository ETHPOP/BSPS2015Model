#setwd("C:\\Workspace\\Projections\\Projections\\Rprojection\\Januar2010Projections\\Trend")
#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/4TRENDEFV2")

#DIR<-"E:/ProjectionTestRuns/4TRENDEFV2"
#DIR<-"N:/ProjectionTestRuns/4TRENDEFV2"
MainDIR<-"N:\\Earth&Environment\\Geography\\Research-2\\Projects\\NewETHPOP\\Projections_Pia\\BSPSProjection"
setwd(MainDIR)


#Reading in 2001 population midyear ethnic population estimates
setwd(".\\Population")
population<-read.csv("MYpop2001.csv")[-1]  

 ####################
###### Fertility #####
 ####################

setwd(MainDIR)
setwd(".\\Fertility")

###Sex ratio
bm<-0.513  ##birth proportion men
bf<-0.487  ##birth proportion women

###Possible assumed TFR at
asTFR<-1.84

##Fertility rates
allfert2001<-read.csv("FERT2001.csv")[-1]
allfert2002<-read.csv("FERT2002.csv")[-1]
allfert2003<-read.csv("FERT2003.csv")[-1]
allfert2004<-read.csv("FERT2004.csv")[-1]
allfert2005<-read.csv("FERT2005.csv")[-1]
allfert2006<-read.csv("FERT2006.csv")[-1]
allfert2007<-read.csv("FERT2007.csv")[-1]

##Ethnic mixing matrix
mixingmatrix<-read.csv("Mixingmatrix_dec09.csv")



##Fix fertility rates from 2008 onwards

#######This might be changed to BSPS
Rsfert2007 <-rowSums(allfert2007)
fertfact<-asTFR/mean(Rsfert2007)

allfert2008 <- allfert2007* fertfact



 ####################
###### Mortality #####
 ####################

setwd(MainDIR)
setwd(".\\Rfiles")
source("Mortality.r")


 ####################
###### Migration #####
 ####################
setwd(MainDIR)
setwd(".\\Migration\\IN")

##Internal migration-inmigration

allinm2001<-read.csv("INTI2001.csv")[-1]
allinm2002<-read.csv("INTI2002.csv")[-1]
allinm2003<-read.csv("INTI2003.csv")[-1]
allinm2004<-read.csv("INTI2004.csv")[-1]
allinm2005<-read.csv("INTI2005.csv")[-1]
allinm2006<-read.csv("INTI2006.csv")[-1]
allinm2007<-read.csv("INTI2007.csv")[-1]



##Internal migration - outmigration
setwd(MainDIR)
setwd(".\\Migration\\OUT")

alloutm2001<-read.csv("INOU.csv")[-1]
alloutm2002<-read.csv("INOU.csv")[-1]
alloutm2003<-read.csv("INOU.csv")[-1]
alloutm2004<-read.csv("INOU.csv")[-1]
alloutm2005<-read.csv("INOU.csv")[-1]
alloutm2006<-read.csv("INOU.csv")[-1]
alloutm2007<-read.csv("INOU.csv")[-1]


#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/4TRENDEFV2")
setwd(MainDIR)
setwd(".\\Migration\\IMM")


##International migration-Immigration

allImm2001<-read.csv("IMMI2001.csv")[-1]
allImm2002<-read.csv("IMMI2002.csv")[-1]
allImm2003<-read.csv("IMMI2003.csv")[-1]
allImm2004<-read.csv("IMMI2004.csv")[-1]
allImm2005<-read.csv("IMMI2005.csv")[-1]
allImm2006<-read.csv("IMMI2006.csv")[-1]
allImm2007<-read.csv("IMMI2007.csv")[-1]
allImm2008<-read.csv("IMMI2008.csv")[-1]
allImm2009<-read.csv("IMMI2009.csv")[-1]
allImm2010<-read.csv("IMMI2010.csv")[-1]
allImm2011<-read.csv("IMMI2011.csv")[-1]
allImm2012<-read.csv("IMMI2012.csv")[-1]
allImm2013<-read.csv("IMMI2013.csv")[-1]
allImm2014<-read.csv("IMMI2014.csv")[-1]



##International migration-Emigration
setwd(MainDIR)
setwd(".\\Migration\\EMI")

allEMflow2001<-read.csv("EMIG2001.csv")[-1]
allEMflow2002<-read.csv("EMIG2002.csv")[-1]
allEMflow2003<-read.csv("EMIG2003.csv")[-1]
allEMflow2004<-read.csv("EMIG2004.csv")[-1]
allEMflow2005<-read.csv("EMIG2005.csv")[-1]
allEMflow2006<-read.csv("EMIG2006.csv")[-1]
allEMflow2007<-read.csv("EMIG2007.csv")[-1]
allEMflow2008<-read.csv("EMIG2008.csv")[-1]
allEMflow2009<-read.csv("EMIG2009.csv")[-1]
allEMflow2010<-read.csv("EMIG2010.csv")[-1]
allEMflow2011<-read.csv("EMIG2011.csv")[-1]
allEMflow2012<-read.csv("EMIG2012.csv")[-1]
allEMflow2013<-read.csv("EMIG2013.csv")[-1]
allEMflow2014<-read.csv("EMIG2014.csv")[-1]




#fix(allemrates2001)


setwd(MainDIR)
setwd(".\\AdditionalFiles")

#ethgroups5680<-read.csv("ethgroups5680.csv")
#LA5680<-read.csv("LA5680.csv")

GorLaEth<-cbind.data.frame(
rep(1:327,12),
rep(1:12,each=327))

names(GorLaEth)<-c("X2","X3")



#GORSlist<-read.csv("GORSlist.csv")
#GORSlist2<-GORSlist[1:355,]

#GorLaEth<-cbind(GORSlist2$GorNo,LA5680$LA,ethgroups5680$ethgroup)

#zones<-read.csv("Zones.csv")
#zones_long<-read.csv("Zones_long.csv")


#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/V2InputData/MortalityV2")

#emNo2001_2<-339475
#emNo2002_3<-360166
#emNo2003_4<-353421
#emNo2004_5<-338298
#emNo2005_6<-386859
#emNo2006_7<-406417
#emNo2007_8<-377191
#emNo2008_9<-334490
#emNo2009_10<-370810
#emNo2010_11<-365096
#emNo2011_12<-359643
#emNo2012_13<-350061
#emNo2013_14<-341032
#emNo2014_15<-330866
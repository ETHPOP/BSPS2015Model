#setwd("C:\\Workspace\\Projections\\Projections\\Rprojection\\Januar2010Projections\\Trend")
#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/4TRENDEFV2")

DIR<-"E:/ProjectionTestRuns/4TRENDEFV2"
DIR<-"N:/ProjectionTestRuns/4TRENDEFV2"
setwd(DIR)


#Reading in 2001 population midyear ethnic population estimates

population<-read.csv("MYpop2001.csv")[-1]  


####Reading in fertility rates
#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/V2InputData/FertilityV2")     
DIR<-"E:/ProjectionTestRuns/V2InputData/FertilityV2"
setwd(DIR)

allfert2001<-read.csv("AllfertilityV2_2001.csv")[-1]
allfert2002<-read.csv("AllfertilityV2_2002.csv")[-1]
allfert2003<-read.csv("AllfertilityV2_2003.csv")[-1]
allfert2004<-read.csv("AllfertilityV2_2004.csv")[-1]
allfert2005<-read.csv("AllfertilityV2_2005.csv")[-1]
allfert2006<-read.csv("AllfertilityV2_2006.csv")[-1]
allfert2007<-read.csv("AllfertilityV2_2007.csv")[-1]


##Fix fertility rates from 2008 onwards

#######This might be changed to BSPS
Rsfert2007 <-rowSums(allfert2007)
fertfact<-1.84/mean(Rsfert2007)

allfert2008 <- allfert2007* fertfact



#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/V2InputData/InternalMigrationV2")
DIR<-"E:/ProjectionTestRuns/V2InputData/InternalMigrationV2"
setwd(DIR)


##Internal migration-Inmigration

allinm2001<-read.csv("allinmV2_2001.csv")[-1]
allinm2002<-read.csv("allinmV2_2002.csv")[-1]
allinm2003<-read.csv("allinmV2_2003.csv")[-1]
allinm2004<-read.csv("allinmV2_2004.csv")[-1]
allinm2005<-read.csv("allinmV2_2005.csv")[-1]
allinm2006<-read.csv("allinmV2_2006.csv")[-1]
allinm2007<-read.csv("allinmV2_2007.csv")[-1]



##Internal migration - outmigration

alloutm2001<-read.csv("alloutmV2_2001.csv")[-1]
alloutm2002<-read.csv("alloutmV2_2002.csv")[-1]
alloutm2003<-read.csv("alloutmV2_2003.csv")[-1]
alloutm2004<-read.csv("alloutmV2_2004.csv")[-1]
alloutm2005<-read.csv("alloutmV2_2005.csv")[-1]
alloutm2006<-read.csv("alloutmV2_2006.csv")[-1]
alloutm2007<-read.csv("alloutmV2_2007.csv")[-1]


#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/4TRENDEFV2")
DIR<-"E:/ProjectionTestRuns/4TRENDEFV2"
setwd(DIR)


##International migration-Immigration

allImm2001<-read.csv("Imm2001.csv")[-1]
allImm2002<-read.csv("Imm2002.csv")[-1]
allImm2003<-read.csv("Imm2003.csv")[-1]
allImm2004<-read.csv("Imm2004.csv")[-1]
allImm2005<-read.csv("Imm2005.csv")[-1]
allImm2006<-read.csv("Imm2006.csv")[-1]
allImm2007<-read.csv("TRfIm2007.csv")[-1]
allImm2008<-read.csv("TRfIm2008.csv")[-1]
allImm2009<-read.csv("TRfIm2009.csv")[-1]
allImm2010<-read.csv("TRfIm2010.csv")[-1]
allImm2011<-read.csv("TRfIm2011.csv")[-1]
allImm2012<-read.csv("TRfIm2012.csv")[-1]
allImm2013<-read.csv("TRfIm2013.csv")[-1]
allImm2014<-read.csv("TRfIm2014.csv")[-1]



##International migration-Emigration

allEMflow2001<-read.csv("EM2001.csv")[-1]
allEMflow2002<-read.csv("EM2002.csv")[-1]
allEMflow2003<-read.csv("EM2003.csv")[-1]
allEMflow2004<-read.csv("EM2004.csv")[-1]
allEMflow2005<-read.csv("EM2005.csv")[-1]
allEMflow2006<-read.csv("EM2006.csv")[-1]
allEMflow2007<-read.csv("TRfEM2007.csv")[-1]
allEMflow2008<-read.csv("TRfEM2008.csv")[-1]
allEMflow2009<-read.csv("TRfEM2009.csv")[-1]
allEMflow2010<-read.csv("TRfEM2010.csv")[-1]
allEMflow2011<-read.csv("TRfEM2011.csv")[-1]
allEMflow2012<-read.csv("TRfEM2012.csv")[-1]
allEMflow2013<-read.csv("TRfEM2013.csv")[-1]
allEMflow2014<-read.csv("TRfEM2014.csv")[-1]




    #fix(allemrates2001)

#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/V2InputData")
DIR<-"E:/ProjectionTestRuns/V2InputData"
setwd(DIR)


ethgroups5680<-read.csv("ethgroups5680.csv")
LA5680<-read.csv("LA5680.csv")

GORSlist<-read.csv("GORSlist.csv")
GORSlist2<-GORSlist[1:355,]

GorLaEth<-cbind(GORSlist2$GorNo,LA5680$LA,ethgroups5680$ethgroup)

mixingmatrix<-read.csv("Mixingmatrix_dec09.csv")

bm<-0.513  ##birth proportion men
bf<-0.487  ##birth proportion women

    zones<-read.csv("Zones.csv")
      zones_long<-read.csv("Zones_long.csv")





#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/V2InputData/MortalityV2")
DIR<-"E:/ProjectionTestRuns/V2InputData/MortalityV2"
setwd(DIR)



allsurv2001<-read.csv("V2allsurv2001.csv")
allsurv2002<-read.csv("V2allsurv2002.csv")
allsurv2003<-read.csv("V2allsurv2003.csv")
allsurv2004<-read.csv("V2allsurv2004.csv")
allsurv2005<-read.csv("V2allsurv2005.csv")
allsurv2006<-read.csv("V2allsurv2006.csv")


allsurv2001<-allsurv2001[-1]
allsurv2002<-allsurv2002[-1]
allsurv2003<-allsurv2003[-1]
allsurv2004<-allsurv2004[-1]
allsurv2005<-allsurv2005[-1]
allsurv2006<-allsurv2006[-1]
morttrend<-read.csv("MortalitydeclineONS2008Based.csv")
##sx(t+1) = 1 ? [(1 ? sx(t)) ? [(100 - %decline)/100]

#fix(morttrend)                                       

morttrendb<-(100-morttrend)/100  
#fix(morttrendb)
#fix(allsurv2007 )

#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/4TRENDEFV2")
DIR<-"E:/ProjectionTestRuns/4TRENDEFV2"
setwd(DIR)


##needs working on:::

dieeins<-(matrix(1,nrow=5680,ncol=204))

#allsurv2008<-dieeins-(dieeins-allsurv2007)*((dieeins-(matrix(rep(morttrendb$X2008,5680),nrow=5680, byrow=TRUE) ) /100)   ) 

##sx(t+1) = 1 ? [(1 ? sx(t)) ? [(100 - %decline)/100]
 ##Mortality trend
allsurv2007<-dieeins-(dieeins-allsurv2006)*((dieeins-(matrix(rep(morttrendb$X2008.09,5680),nrow=5680,byrow=TRUE))/100))
allsurv2008<-dieeins-(dieeins-allsurv2007)*((dieeins-(matrix(rep(morttrendb$X2008.09,5680),nrow=5680,byrow=TRUE))/100))
allsurv2009<-dieeins-(dieeins-allsurv2008)*((dieeins-(matrix(rep(morttrendb$X2008.09,5680),nrow=5680,byrow=TRUE))/100))
allsurv2010<-dieeins-(dieeins-allsurv2009)*((dieeins-(matrix(rep(morttrendb$X2008.09,5680),nrow=5680,byrow=TRUE))/100))
allsurv2011<-dieeins-(dieeins-allsurv2010)*((dieeins-(matrix(rep(morttrendb$X2008.09,5680),nrow=5680,byrow=TRUE))/100))
allsurv2012<-dieeins-(dieeins-allsurv2011)*((dieeins-(matrix(rep(morttrendb$X2012.13,5680),nrow=5680,byrow=TRUE))/100))
allsurv2013<-dieeins-(dieeins-allsurv2012)*((dieeins-(matrix(rep(morttrendb$X2012.13,5680),nrow=5680,byrow=TRUE))/100))
allsurv2014<-dieeins-(dieeins-allsurv2013)*((dieeins-(matrix(rep(morttrendb$X2012.13,5680),nrow=5680,byrow=TRUE))/100))
allsurv2015<-dieeins-(dieeins-allsurv2014)*((dieeins-(matrix(rep(morttrendb$X2012.13,5680),nrow=5680,byrow=TRUE))/100))
allsurv2016<-dieeins-(dieeins-allsurv2015)*((dieeins-(matrix(rep(morttrendb$X2012.13,5680),nrow=5680,byrow=TRUE))/100))
allsurv2017<-dieeins-(dieeins-allsurv2016)*((dieeins-(matrix(rep(morttrendb$X2012.13,5680),nrow=5680,byrow=TRUE))/100))
allsurv2018<-dieeins-(dieeins-allsurv2017)*((dieeins-(matrix(rep(morttrendb$X2012.13,5680),nrow=5680,byrow=TRUE))/100))
allsurv2019<-dieeins-(dieeins-allsurv2018)*((dieeins-(matrix(rep(morttrendb$X2012.13,5680),nrow=5680,byrow=TRUE))/100))
allsurv2020<-dieeins-(dieeins-allsurv2019)*((dieeins-(matrix(rep(morttrendb$X2012.13,5680),nrow=5680,byrow=TRUE))/100))
allsurv2021<-dieeins-(dieeins-allsurv2020)*((dieeins-(matrix(rep(morttrendb$X2012.13,5680),nrow=5680,byrow=TRUE))/100))
allsurv2022<-dieeins-(dieeins-allsurv2021)*((dieeins-(matrix(rep(morttrendb$X2022.23,5680),nrow=5680,byrow=TRUE))/100))
allsurv2023<-dieeins-(dieeins-allsurv2022)*((dieeins-(matrix(rep(morttrendb$X2022.23,5680),nrow=5680,byrow=TRUE))/100))
allsurv2024<-dieeins-(dieeins-allsurv2023)*((dieeins-(matrix(rep(morttrendb$X2022.23,5680),nrow=5680,byrow=TRUE))/100))
allsurv2025<-dieeins-(dieeins-allsurv2024)*((dieeins-(matrix(rep(morttrendb$X2022.23,5680),nrow=5680,byrow=TRUE))/100))
allsurv2026<-dieeins-(dieeins-allsurv2025)*((dieeins-(matrix(rep(morttrendb$X2022.23,5680),nrow=5680,byrow=TRUE))/100))
allsurv2027<-dieeins-(dieeins-allsurv2026)*((dieeins-(matrix(rep(morttrendb$X2022.23,5680),nrow=5680,byrow=TRUE))/100))
allsurv2028<-dieeins-(dieeins-allsurv2027)*((dieeins-(matrix(rep(morttrendb$X2022.23,5680),nrow=5680,byrow=TRUE))/100))
allsurv2029<-dieeins-(dieeins-allsurv2028)*((dieeins-(matrix(rep(morttrendb$X2022.23,5680),nrow=5680,byrow=TRUE))/100))
allsurv2030<-dieeins-(dieeins-allsurv2029)*((dieeins-(matrix(rep(morttrendb$X2022.23,5680),nrow=5680,byrow=TRUE))/100))
allsurv2031<-dieeins-(dieeins-allsurv2030)*((dieeins-(matrix(rep(morttrendb$X2022.23,5680),nrow=5680,byrow=TRUE))/100))
allsurv2032<-dieeins-(dieeins-allsurv2031)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2033<-dieeins-(dieeins-allsurv2032)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2034<-dieeins-(dieeins-allsurv2033)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2035<-dieeins-(dieeins-allsurv2034)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2036<-dieeins-(dieeins-allsurv2035)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2037<-dieeins-(dieeins-allsurv2036)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2038<-dieeins-(dieeins-allsurv2037)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2039<-dieeins-(dieeins-allsurv2038)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2040<-dieeins-(dieeins-allsurv2039)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2041<-dieeins-(dieeins-allsurv2040)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2042<-dieeins-(dieeins-allsurv2041)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2043<-dieeins-(dieeins-allsurv2042)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2044<-dieeins-(dieeins-allsurv2043)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2045<-dieeins-(dieeins-allsurv2044)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2046<-dieeins-(dieeins-allsurv2045)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2047<-dieeins-(dieeins-allsurv2046)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2048<-dieeins-(dieeins-allsurv2047)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2049<-dieeins-(dieeins-allsurv2048)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2050<-dieeins-(dieeins-allsurv2049)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))
allsurv2051<-dieeins-(dieeins-allsurv2050)*((dieeins-(matrix(rep(morttrendb$X2032.33,5680),nrow=5680,byrow=TRUE))/100))


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
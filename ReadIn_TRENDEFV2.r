#setwd("C:\\Workspace\\Projections\\Projections\\Rprojection\\Januar2010Projections\\Trend")
#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/4TRENDEFV2")

DIR<-"E:/ProjectionTestRuns/4TRENDEFV2"
setwd(DIR)

#memory.limit(size = 3500)

#Reading in 2001 population.

morttrend<-read.csv("MortalitydeclineONS2008Based.csv")
##sx(t+1) = 1 – [(1 – sx(t)) × [(100 - %decline)/100]

#fix(morttrend)                                       

morttrendb<-(100-morttrend)/100  
#fix(morttrendb)

population_a<-read.csv("MYpop2001.csv")
population<-population_a[-1]  


      ##names(allfert2007)
#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/V2InputData/FertilityV2")     
DIR<-"E:/ProjectionTestRuns/V2InputData/FertilityV2"
setwd(DIR)

allfert2001<-read.csv("AllfertilityV2_2001.csv")
allfert2002<-read.csv("AllfertilityV2_2002.csv")
allfert2003<-read.csv("AllfertilityV2_2003.csv")
allfert2004<-read.csv("AllfertilityV2_2004.csv")
allfert2005<-read.csv("AllfertilityV2_2005.csv")
allfert2006<-read.csv("AllfertilityV2_2006.csv")
allfert2007<-read.csv("AllfertilityV2_2007.csv")

allfert2001<-allfert2001[-1]
allfert2002<-allfert2002[-1]
allfert2003<-allfert2003[-1]
allfert2004<-allfert2004[-1]
allfert2005<-allfert2005[-1]
allfert2006<-allfert2006[-1]
allfert2007<-allfert2007[-1]

#fix(allfert2007)

Rsfert2007 <-rowSums(   allfert2007  )
fertfact<-1.84/mean( Rsfert2007)

allfert2008 <- allfert2007* fertfact

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

#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/V2InputData/InternalMigrationV2")
DIR<-"E:/ProjectionTestRuns/V2InputData/InternalMigrationV2"
setwd(DIR)


allinm2001<-read.csv("allinmV2_2001.csv")
allinm2002<-read.csv("allinmV2_2002.csv")
allinm2003<-read.csv("allinmV2_2003.csv")
allinm2004<-read.csv("allinmV2_2004.csv")
allinm2005<-read.csv("allinmV2_2005.csv")
allinm2006<-read.csv("allinmV2_2006.csv")
allinm2007<-read.csv("allinmV2_2007.csv")

allinm2001<-allinm2001[-1]
allinm2002<-allinm2002[-1]
allinm2003<-allinm2003[-1]
allinm2004<-allinm2004[-1]
allinm2005<-allinm2005[-1]
allinm2006<-allinm2006[-1]
allinm2007<-allinm2007[-1]



alloutm2001<-read.csv("alloutmV2_2001.csv")
alloutm2002<-read.csv("alloutmV2_2002.csv")
alloutm2003<-read.csv("alloutmV2_2003.csv")
alloutm2004<-read.csv("alloutmV2_2004.csv")
alloutm2005<-read.csv("alloutmV2_2005.csv")
alloutm2006<-read.csv("alloutmV2_2006.csv")
alloutm2007<-read.csv("alloutmV2_2007.csv")


alloutm2001<-alloutm2001[-1]
alloutm2002<-alloutm2002[-1] 
alloutm2003<-alloutm2003[-1]
alloutm2004<-alloutm2004[-1]
alloutm2005<-alloutm2005[-1] 
alloutm2006<-alloutm2006[-1]
alloutm2007<-alloutm2007[-1]




     #upintmig<-read.csv  ("UpdatingInternalMig.csv")
     #allinm2001<-read.csv("inmprob2001.csv")
     #allinm2001<-allinm2001[-1]
## names(upintmig)

#allinm2002<-allinm2001*(matrix(rep(upintmig$IN2002,5680),nrow=5680,byrow=TRUE))
#allinm2003<-allinm2001*(matrix(rep(upintmig$IN2003,5680),nrow=5680,byrow=TRUE))
#allinm2004<-allinm2001*(matrix(rep(upintmig$IN2004,5680),nrow=5680,byrow=TRUE))
#allinm2005<-allinm2001*(matrix(rep(upintmig$IN2005,5680),nrow=5680,byrow=TRUE))
#allinm2006<-allinm2001*(matrix(rep(upintmig$IN2006,5680),nrow=5680,byrow=TRUE))
#allinm2007<-allinm2001*(matrix(rep(upintmig$IN2007,5680),nrow=5680,byrow=TRUE))
#allinm2008<-allinm2001*(matrix(rep(upintmig$IN2008,5680),nrow=5680,byrow=TRUE))

#alloutm2001<-read.csv("outmprob2001.csv")
#alloutm2001<-alloutm2001[-1]

#alloutm2002<-alloutm2001*(matrix(rep(upintmig$OUT2002,5680),nrow=5680,byrow=TRUE))
#alloutm2003<-alloutm2001*(matrix(rep(upintmig$OUT2003,5680),nrow=5680,byrow=TRUE))
#alloutm2004<-alloutm2001*(matrix(rep(upintmig$OUT2004,5680),nrow=5680,byrow=TRUE))
#alloutm2005<-alloutm2001*(matrix(rep(upintmig$OUT2005,5680),nrow=5680,byrow=TRUE))
#alloutm2006<-alloutm2001*(matrix(rep(upintmig$OUT2006,5680),nrow=5680,byrow=TRUE))
#alloutm2007<-alloutm2001*(matrix(rep(upintmig$OUT2007,5680),nrow=5680,byrow=TRUE))
#alloutm2008<-alloutm2001*(matrix(rep(upintmig$OUT2008,5680),nrow=5680,byrow=TRUE))

 #for(i in 1:ncol( alloutm2002))  alloutm2002 [,i]<-ifelse(alloutm2002[,i] > 1, 1, alloutm2002[,i])
 #for(i in 1:ncol( alloutm2003))  alloutm2003 [,i]<-ifelse(alloutm2003[,i] > 1, 1, alloutm2003[,i])
 #for(i in 1:ncol( alloutm2004))  alloutm2004 [,i]<-ifelse(alloutm2004[,i] > 1, 1, alloutm2004[,i])
 #for(i in 1:ncol( alloutm2005))  alloutm2005 [,i]<-ifelse(alloutm2005[,i] > 1, 1, alloutm2005[,i])
 #for(i in 1:ncol( alloutm2006))  alloutm2006 [,i]<-ifelse(alloutm2006[,i] > 1, 1, alloutm2006[,i])
 #for(i in 1:ncol( alloutm2007))  alloutm2007 [,i]<-ifelse(alloutm2007[,i] > 1, 1, alloutm2007[,i])
 #for(i in 1:ncol( alloutm2008))  alloutm2008 [,i]<-ifelse(alloutm2008[,i] > 1, 1, alloutm2008[,i])

#max(allinm2002)
#max(allinm2003)
#max(allinm2004)
#max(allinm2005)
#max(allinm2006)
#max(allinm2007)
#max(allinm2008)

#max(alloutm2002)
#max(alloutm2003)
#max(alloutm2004)
#max(alloutm2005)
#max(alloutm2006)
#max(alloutm2007)
#max(alloutm2008)

#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/4TRENDEFV2")
DIR<-"E:/ProjectionTestRuns/4TRENDEFV2"
setwd(DIR)


allImm2001<-read.csv("Imm2001.csv")
allImm2002<-read.csv("Imm2002.csv")
allImm2003<-read.csv("Imm2003.csv")
allImm2004<-read.csv("Imm2004.csv")
allImm2005<-read.csv("Imm2005.csv")
allImm2006<-read.csv("Imm2006.csv")
allImm2007<-read.csv("TRfIm2007.csv")
allImm2008<-read.csv("TRfIm2008.csv")
allImm2009<-read.csv("TRfIm2009.csv")
allImm2010<-read.csv("TRfIm2010.csv")
allImm2011<-read.csv("TRfIm2011.csv")
allImm2012<-read.csv("TRfIm2012.csv")
allImm2013<-read.csv("TRfIm2013.csv")
allImm2014<-read.csv("TRfIm2014.csv")

allImm2001<-allImm2001[-1]
allImm2002<-allImm2002[-1]
allImm2003<-allImm2003[-1]
allImm2004<-allImm2004[-1]
allImm2005<-allImm2005[-1]
allImm2006<-allImm2006[-1]
allImm2007<-allImm2007[-1]
allImm2008<-allImm2008[-1]
allImm2009<-allImm2009[-1]
allImm2010<-allImm2010[-1]
allImm2011<-allImm2011[-1]
allImm2012<-allImm2012[-1]
allImm2013<-allImm2013[-1]
allImm2014<-allImm2014[-1]

#allImm2001<-allImm2001[-102]
#allImm2001<-allImm2001[-203]

#allImm2006<-allImm2006[-102]
#allImm2006<-allImm2006[-203]

#dim(allImm2001)
# dim(allImm2003)
 #dim(allImm2008)

#allImm2007<-allImm2007[-102]
#allImm2007<-allImm2007[-203]

#allImm2008<-allImm2008[-102]
#allImm2008<-allImm2008[-203]

#allImm2009<-allImm2009[-102]
#allImm2009<-allImm2009[-203]

#allImm2010<-allImm2010[-102]
#allImm2010<-allImm2010[-203]

#allImm2011<-allImm2011[-102]
#allImm2011<-allImm2011[-203]

#allImm2012<-allImm2012[-102]
#allImm2012<-allImm2012[-203]

#allImm2013<-allImm2013[-102]
#allImm2013<-allImm2013[-203]

#allImm2014<-allImm2014[-102]
#allImm2014<-allImm2014[-203]



#ncol(allImm2002)

#allImm2002<-c(allImm2002[1:101],allImm2002[101],allImm2002[102:202],allImm2002[202])
#allImm2003<-c(allImm2003[1:101],allImm2003[101],allImm2003[102:202],allImm2003[202])
#allImm2004<-c(allImm2004[1:101],allImm2004[101],allImm2004[102:202],allImm2004[202])
#allImm2005<-c(allImm2005[1:101],allImm2005[101],allImm2005[102:202],allImm2005[202])
#allImm2006<-c(allImm2006[1:101],allImm2006[101],allImm2006[102:202],allImm2006[202])
#allImm2007<-c(allImm2007[1:101],allImm2007[101],allImm2007[102:202],allImm2007[202])
#allImm2008<-c(allImm2008[1:101],allImm2008[101],allImm2008[102:202],allImm2008[202])
#allImm2009<-c(allImm2009[1:101],allImm2009[101],allImm2009[102:202],allImm2009[202])
#allImm2010<-c(allImm2010[1:101],allImm2010[101],allImm2010[102:202],allImm2010[202])
#allImm2011<-c(allImm2011[1:101],allImm2011[101],allImm2011[102:202],allImm2011[202])
#allImm2012<-c(allImm2012[1:101],allImm2012[101],allImm2012[102:202],allImm2012[202])
#allImm2013<-c(allImm2013[1:101],allImm2013[101],allImm2013[102:202],allImm2013[202])
#allImm2014<-c(allImm2014[1:101],allImm2014[101],allImm2014[102:202],allImm2014[202])



ballEMflow2001<-read.csv("EM2001.csv")
ballEMflow2002<-read.csv("EM2002.csv")
ballEMflow2003<-read.csv("EM2003.csv")
ballEMflow2004<-read.csv("EM2004.csv")
ballEMflow2005<-read.csv("EM2005.csv")
ballEMflow2006<-read.csv("EM2006.csv")
ballEMflow2007<-read.csv("TRfEM2007.csv")
ballEMflow2008<-read.csv("TRfEM2008.csv")
ballEMflow2009<-read.csv("TRfEM2009.csv")
ballEMflow2010<-read.csv("TRfEM2010.csv")
ballEMflow2011<-read.csv("TRfEM2011.csv")
ballEMflow2012<-read.csv("TRfEM2012.csv")
ballEMflow2013<-read.csv("TRfEM2013.csv")
ballEMflow2014<-read.csv("TRfEM2014.csv")

allEMflow2001<-ballEMflow2001[-1]
allEMflow2002<-ballEMflow2002[-1]
allEMflow2003<-ballEMflow2003[-1]
allEMflow2004<-ballEMflow2004[-1]
allEMflow2005<-ballEMflow2005[-1]
allEMflow2006<-ballEMflow2006[-1]
allEMflow2007<-ballEMflow2007[-1]
allEMflow2008<-ballEMflow2008[-1]
allEMflow2009<-ballEMflow2009[-1]
allEMflow2010<-ballEMflow2010[-1]
allEMflow2011<-ballEMflow2011[-1]
allEMflow2012<-ballEMflow2012[-1]
allEMflow2013<-ballEMflow2013[-1]
allEMflow2014<-ballEMflow2014[-1]


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


#fix(allsurv2007 )

#setwd("C:/WorkSpace/CSAP/EthnicProjections/Projections/Rprojection/August2011Version2Projections/4TRENDEFV2")
DIR<-"E:/ProjectionTestRuns/4TRENDEFV2"
setwd(DIR)


##needs working on:::

dieeins<-(matrix(1,nrow=5680,ncol=204))

#allsurv2008<-dieeins-(dieeins-allsurv2007)*((dieeins-(matrix(rep(morttrendb$X2008,5680),nrow=5680, byrow=TRUE) ) /100)   ) 

##sx(t+1) = 1 – [(1 – sx(t)) × [(100 - %decline)/100]
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
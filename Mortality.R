####Read in mortality data and model furture mortality

setwd(MainDIR)
setwd(".\\Mortality")


allsurv2001<-read.csv("allsurv2001.csv")[-1]
allsurv2002<-read.csv("allsurv2002.csv")[-1]
allsurv2003<-read.csv("allsurv2003.csv")[-1]
allsurv2004<-read.csv("allsurv2004.csv")[-1]
allsurv2005<-read.csv("allsurv2005.csv")[-1]
allsurv2006<-read.csv("allsurv2006.csv")[-1]
allsurv2007<-read.csv("allsurv2007.csv")[-1]

morttrend<-read.csv("BSPS2015SURVTREND.csv")
morttrendb<-(100-morttrend)/100  


LA.lentgh<-3924

dieeins<-(matrix(1,nrow=LA.lentgh,ncol=204))

#allsurv2008<-dieeins-(dieeins-allsurv2007)*((dieeins-(matrix(rep(morttrendb$X2008,5680),nrow=5680, byrow=TRUE) ) /100)   ) 

##sx(t+1) = 1 ? [(1 ? sx(t)) ? [(100 - %decline)/100]
##Mortality trend

allsurv2007<-dieeins-(dieeins-allsurv2006)*((dieeins-(matrix(rep(morttrendb$Trends10.11,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2008<-dieeins-(dieeins-allsurv2007)*((dieeins-(matrix(rep(morttrendb$Trends10.11,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2009<-dieeins-(dieeins-allsurv2008)*((dieeins-(matrix(rep(morttrendb$Trends10.11,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2010<-dieeins-(dieeins-allsurv2009)*((dieeins-(matrix(rep(morttrendb$Trends10.11,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2011<-dieeins-(dieeins-allsurv2010)*((dieeins-(matrix(rep(morttrendb$Trends12.13,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2012<-dieeins-(dieeins-allsurv2011)*((dieeins-(matrix(rep(morttrendb$Trends12.13,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2013<-dieeins-(dieeins-allsurv2012)*((dieeins-(matrix(rep(morttrendb$Trends12.13,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2014<-dieeins-(dieeins-allsurv2013)*((dieeins-(matrix(rep(morttrendb$Trends16.17,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2015<-dieeins-(dieeins-allsurv2014)*((dieeins-(matrix(rep(morttrendb$Trends16.17,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2016<-dieeins-(dieeins-allsurv2015)*((dieeins-(matrix(rep(morttrendb$Trends16.17,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2017<-dieeins-(dieeins-allsurv2016)*((dieeins-(matrix(rep(morttrendb$Trends16.17,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2018<-dieeins-(dieeins-allsurv2017)*((dieeins-(matrix(rep(morttrendb$Trends26.27,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2019<-dieeins-(dieeins-allsurv2018)*((dieeins-(matrix(rep(morttrendb$Trends26.27,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2020<-dieeins-(dieeins-allsurv2019)*((dieeins-(matrix(rep(morttrendb$Trends26.27,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2021<-dieeins-(dieeins-allsurv2020)*((dieeins-(matrix(rep(morttrendb$Trends26.27,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2022<-dieeins-(dieeins-allsurv2021)*((dieeins-(matrix(rep(morttrendb$Trends26.27,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2023<-dieeins-(dieeins-allsurv2022)*((dieeins-(matrix(rep(morttrendb$Trends26.27,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2024<-dieeins-(dieeins-allsurv2023)*((dieeins-(matrix(rep(morttrendb$Trends26.27,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2025<-dieeins-(dieeins-allsurv2024)*((dieeins-(matrix(rep(morttrendb$Trends26.27,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2026<-dieeins-(dieeins-allsurv2025)*((dieeins-(matrix(rep(morttrendb$Trends26.27,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2027<-dieeins-(dieeins-allsurv2026)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2028<-dieeins-(dieeins-allsurv2027)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2029<-dieeins-(dieeins-allsurv2028)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2030<-dieeins-(dieeins-allsurv2029)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2031<-dieeins-(dieeins-allsurv2030)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2032<-dieeins-(dieeins-allsurv2031)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2033<-dieeins-(dieeins-allsurv2032)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2034<-dieeins-(dieeins-allsurv2033)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2035<-dieeins-(dieeins-allsurv2034)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2036<-dieeins-(dieeins-allsurv2035)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2037<-dieeins-(dieeins-allsurv2036)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2038<-dieeins-(dieeins-allsurv2037)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2039<-dieeins-(dieeins-allsurv2038)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2040<-dieeins-(dieeins-allsurv2039)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2041<-dieeins-(dieeins-allsurv2040)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2042<-dieeins-(dieeins-allsurv2041)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2043<-dieeins-(dieeins-allsurv2042)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2044<-dieeins-(dieeins-allsurv2043)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2045<-dieeins-(dieeins-allsurv2044)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2046<-dieeins-(dieeins-allsurv2045)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2047<-dieeins-(dieeins-allsurv2046)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2048<-dieeins-(dieeins-allsurv2047)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2049<-dieeins-(dieeins-allsurv2048)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2050<-dieeins-(dieeins-allsurv2049)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))
allsurv2051<-dieeins-(dieeins-allsurv2050)*((dieeins-(matrix(rep(morttrendb$Trends36.37,LA.lentgh),nrow=LA.lentgh,byrow=TRUE))/100))

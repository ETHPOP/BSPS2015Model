
#####Define inputs for first run

#ONSem<-emNo2001_2
Groups<-12          #######Number of ethnic groups
Areas<-327          #######Number of Areas
GrAr<-Groups*Areas  #######No of areas mulitplied by number of groups (Number of rows)

initialpop<-data.frame(population)
fertility<-allfert2001
surv.prob<-allsurv2001
em.flow<-allEMflow2001
outm.prob<-alloutm2001
inm.prob<-allinm2001
imm.flow<-allImm2001
   #dim(imm.flow)



##############Fertility section#############

#totBirths<-initialpop*Newf

fertility[113:151]<-0.5*(fertility[113:151]+fertility[114:152])

totBirths<-initialpop*fertility#####
####What is the age time setting of the fertility data?
#dim(initialpop)
#dim(fertility)

###Sum up all birth to a single column
Births<-rowSums(totBirths)
Births<-data.frame(Births)




#####Apply ethnic mixing
####Some babies born to mothers from an ethnic groups will have
####a different ethnicity to their mothers'


#BirthsWBR<-Births*mixingmatrix$WBR
BirthsWBI<-Births*mixingmatrix$WBI
#BirthsWIR<-Births*mixingmatrix$WIR
BirthsWHO<-Births*mixingmatrix$WHO
#BirthsWBC<-Births*mixingmatrix$WBC
#BirthsWBA<-Births*mixingmatrix$WBA
#BirthsWAS<-Births*mixingmatrix$WAS
#BirthsOMI<-Births*mixingmatrix$OMI
BirthsMIX<-Births*mixingmatrix$MIX
BirthsIND<-Births*mixingmatrix$IND
BirthsPAK<-Births*mixingmatrix$PAK
BirthsBAN<-Births*mixingmatrix$BAN
BirthsCHI<-Births*mixingmatrix$CHI
BirthsOAS<-Births*mixingmatrix$OAS
BirthsBLA<-Births*mixingmatrix$BLA
BirthsBLC<-Births*mixingmatrix$BLC
BirthsOBL<-Births*mixingmatrix$OBL
BirthsOTH<-Births*mixingmatrix$OTH





#BirthsWBRs<-data.frame(rowSums(data.frame(matrix(BirthsWBR[1:GrAr,],nrow=Areas,ncol=Groups)))  )
BirthsWBIs<-data.frame(rowSums(data.frame(matrix(BirthsWBI[1:GrAr,],nrow=Areas,ncol=Groups)))  )
#BirthsWIRs<-data.frame(rowSums(data.frame(matrix(BirthsWIR[1:GrAr,],nrow=Areas,ncol=Groups)))  )
BirthsWHOs<-data.frame(rowSums(data.frame(matrix(BirthsWHO[1:GrAr,],nrow=Areas,ncol=Groups)))  )
#BirthsWBCs<-data.frame(rowSums(data.frame(matrix(BirthsWBC[1:GrAr,],nrow=Areas,ncol=Groups)))  )
#BirthsWBAs<-data.frame(rowSums(data.frame(matrix(BirthsWBA[1:GrAr,],nrow=Areas,ncol=Groups)))  )
#BirthsWASs<-data.frame(rowSums(data.frame(matrix(BirthsWAS[1:GrAr,],nrow=Areas,ncol=Groups)))  )
#BirthsOMIs<-data.frame(rowSums(data.frame(matrix(BirthsOMI[1:GrAr,],nrow=Areas,ncol=Groups)))  )
BirthsMIXs<-data.frame(rowSums(data.frame(matrix(BirthsMIX[1:GrAr,],nrow=Areas,ncol=Groups)))  )
BirthsINDs<-data.frame(rowSums(data.frame(matrix(BirthsIND[1:GrAr,],nrow=Areas,ncol=Groups)))  )
BirthsPAKs<-data.frame(rowSums(data.frame(matrix(BirthsPAK[1:GrAr,],nrow=Areas,ncol=Groups)))  )
BirthsBANs<-data.frame(rowSums(data.frame(matrix(BirthsBAN[1:GrAr,],nrow=Areas,ncol=Groups)))  )
BirthsCHIs<-data.frame(rowSums(data.frame(matrix(BirthsCHI[1:GrAr,],nrow=Areas,ncol=Groups)))  )
BirthsOASs<-data.frame(rowSums(data.frame(matrix(BirthsOAS[1:GrAr,],nrow=Areas,ncol=Groups)))  )
BirthsBLAs<-data.frame(rowSums(data.frame(matrix(BirthsBLA[1:GrAr,],nrow=Areas,ncol=Groups)))  )
BirthsBLCs<-data.frame(rowSums(data.frame(matrix(BirthsBLC[1:GrAr,],nrow=Areas,ncol=Groups)))  )
BirthsOBLs<-data.frame(rowSums(data.frame(matrix(BirthsOBL[1:GrAr,],nrow=Areas,ncol=Groups)))  )
BirthsOTHs<-data.frame(rowSums(data.frame(matrix(BirthsOTH[1:GrAr,],nrow=Areas,ncol=Groups)))  )

colnames(BirthsWBIs)<-"Births"
#colnames(BirthsWBRs)<-"Births"
#colnames(BirthsWIRs)<-"Births"
colnames(BirthsWHOs)<-"Births"
#colnames(BirthsWBCs)<-"Births"
#colnames(BirthsWBAs)<-"Births"
#colnames(BirthsWASs)<-"Births"
#colnames(BirthsOMIs)<-"Births"
colnames(BirthsMIXs)<-"Births"
colnames(BirthsINDs)<-"Births"
colnames(BirthsPAKs)<-"Births"
colnames(BirthsBANs)<-"Births"
colnames(BirthsCHIs)<-"Births"
colnames(BirthsOASs)<-"Births"
colnames(BirthsBLAs)<-"Births"
colnames(BirthsBLCs)<-"Births"
colnames(BirthsOBLs)<-"Births"
colnames(BirthsOTHs)<-"Births"

BirthsAll<-rbind( 
BirthsWBIs,
#BirthsWBRs,
#BirthsWIRs,
BirthsWHOs,
#BirthsWBCs,
#BirthsWBAs,
#BirthsWASs,
#BirthsOMIs,
BirthsMIXs,
BirthsINDs,
BirthsPAKs,
BirthsBANs,
BirthsCHIs,
BirthsOASs,
BirthsBLAs,
BirthsBLCs,
BirthsOBLs,
BirthsOTHs)

#####Boys and Girls

MBirths<-BirthsAll*bm
FBirths<-BirthsAll*bf

#min(BirthsAll)


#######Birth are added to the the population#######
###
start.pop<-cbind(MBirths,initialpop[,1:101],FBirths,initialpop[,102:202])

#min(start.pop)


##########Mortality section

#Population surviving

total.survivors<-surv.prob*start.pop

#min(total.survivors)

##Number of deaths
tot.deaths<-start.pop-total.survivors

#set emrate, here simple half of birth to one is 

#em.rate[1]<-0.5*em.rate[2]
#em.rate[103]<-0.5*em.rate[104]


##This step scales the emigration to allign the emigration number to the actual number
##at least for the first 6 years, not in the benchmark projections, but the TrONS, UPTAP

#######International migration section PART 1

###Emigration
#The newborns get half the flow of age 0

em.flow<-c((0.5*em.flow[1]),em.flow[1:101],(0.5*em.flow[102]),em.flow[102:202])
em.flow<-data.frame(em.flow)
#dim(em.flow)
#sum(surv.em)
surv.em<-(surv.prob^0.5)*em.flow

#for(i in 1:ncol(surv.em))surv.em [,i]<-ifelse(surv.em[,i]>total.survivors[,i],0,surv.em[,i])
#fix(em.flow)
# sum(surv.em)
#dim(surv.prob)

#fix(em.rate)

#min(surv.em)


###Emgrants are diducted from the populations

surv.pop<-(total.survivors-surv.em)
#for(i in 1:ncol(surv.pop))surv.pop[,i]<-ifelse(surv.pop[,i]<0,0,surv.pop[,i])

#min(surv.pop)

####Internal migration
out.migrants<-outm.prob*surv.pop

uksurvWBI<-colSums(surv.pop[1:327,])
uksurvWHO<-colSums(surv.pop[328:654,])
uksurvMIX<-colSums(surv.pop[655:981,])
uksurvIND<-colSums(surv.pop[982:1308,])
uksurvPAK<-colSums(surv.pop[1309:1635,])
uksurvBAN<-colSums(surv.pop[1636:1962,])
uksurvCHI<-colSums(surv.pop[1963:2289,])
uksurvOAS<-colSums(surv.pop[2290:2616,])
uksurvBLA<-colSums(surv.pop[2617:2943,])
uksurvBLC<-colSums(surv.pop[2944:3270,])
uksurvOBL<-colSums(surv.pop[3271:3597,])
uksurvOTH<-colSums(surv.pop[3598:3924,])



#uksurvWBR<- colSums(surv.pop[1:355,])
#uksurvWIR<- colSums(surv.pop[356:710,])
#uksurvWHO<- colSums(surv.pop[711:1065,])
#uksurvWBC<- colSums(surv.pop[1066:1420,])
#uksurvWBA<- colSums(surv.pop[1421:1775,])
#uksurvWAS<- colSums(surv.pop[1776:2130,])
#uksurvOMI<- colSums(surv.pop[2131:2485,])
#uksurvIND<- colSums(surv.pop[2486:2840,])
#uksurvPAK<- colSums(surv.pop[2841:3195,])
#uksurvBAN<- colSums(surv.pop[3196:3550,])
#uksurvOAS<- colSums(surv.pop[3551:3905,])
#uksurvBLC<- colSums(surv.pop[3906:4260,])
#uksurvBLA<- colSums(surv.pop[4261:4615,])
#uksurvOBL<- colSums(surv.pop[4616:4970,])
#uksurvCHI<- colSums(surv.pop[4971:5325,])
#uksurvOTH<- colSums(surv.pop[5326:5680,])


ukWBI<-matrix(NA,nrow=Areas,ncol=204)
for(i in 1:Areas)ukWBI[i,]<- uksurvWBI
uk_sWBI<-data.frame(ukWBI)
#fix(uk_sWIR)


#ukWBR<-matrix(NA,nrow=Areas,ncol=204)
#for(i in 1:Areas)ukWBR[i,]<- uksurvWBR
#uk_sWBR<-data.frame(ukWBR)
#fix(uk_sWIR)

#WIR
#ukWIR<-matrix(NA,nrow=Areas,ncol=204)
#for(i in 1:Areas)ukWIR[i,]<- uksurvWIR
#uk_sWIR<-data.frame(ukWIR)

#"WHO",
ukWHO<-matrix(NA,nrow=Areas,ncol=204)
for (i in 1:Areas)ukWHO[i,]<- uksurvWHO
uk_sWHO<-data.frame(ukWHO)

#"WBC",
#ukWBC<-matrix(NA,nrow=Areas,ncol=204)
#for (i in 1:Areas)ukWBC[i,]<- uksurvWBC
#uk_sWBC<-data.frame(ukWBC)

#"WBA",
#ukWBA<-matrix(NA,nrow=Areas,ncol=204)
#for (i in 1:Areas)ukWBA[i,]<-uksurvWBA
#uk_sWBA<-data.frame(ukWBA)

#"WAS",
#ukWAS<-matrix(NA,nrow=Areas,ncol=204)
#for (i in 1:Areas)ukWAS[i,]<-uksurvWAS
#uk_sWAS<-data.frame(ukWAS)

#"OMI",
#ukOMI<-matrix(NA,nrow=Areas,ncol=204)
#for (i in 1:Areas)ukOMI[i,]<-uksurvOMI
#uk_sOMI<-data.frame(ukOMI)

#"OMI",
ukMIX<-matrix(NA,nrow=Areas,ncol=204)
for (i in 1:Areas)ukMIX[i,]<-uksurvMIX
uk_sMIX<-data.frame(ukMIX)


#"IND",
ukIND<-matrix(NA,nrow=Areas,ncol=204)
for (i in 1:Areas)ukIND[i,]<- uksurvIND
uk_sIND<-data.frame(ukIND)

#"PAK",
ukPAK<-matrix(NA,nrow=Areas,ncol=204)
for (i in 1:Areas)ukPAK[i,]<-uksurvPAK
uk_sPAK<-data.frame(ukPAK)

#"BAN",
ukBAN<-matrix(NA,nrow=Areas,ncol=204)
for (i in 1:Areas)ukBAN[i,]<-uksurvBAN
uk_sBAN<-data.frame(ukBAN)

#"CHI",
ukCHI<-matrix(NA,nrow=Areas,ncol=204)
for (i in 1:Areas)ukCHI[i,]<-uksurvCHI
uk_sCHI<-data.frame(ukCHI)

#"OAS",
ukOAS<-matrix(NA,nrow=Areas,ncol=204)
for (i in 1:Areas)ukOAS[i,]<-uksurvOAS
uk_sOAS<-data.frame(ukOAS)

#"BLA",
ukBLA<-matrix(NA,nrow=Areas,ncol=204)
for (i in 1:Areas)ukBLA[i,]<-uksurvBLA
uk_sBLA<-data.frame(ukBLA)

#"BLC",
ukBLC<-matrix(NA,nrow=Areas,ncol=204)
for (i in 1:Areas)ukBLC[i,]  <- uksurvBLC
uk_sBLC<-data.frame(ukBLC)


#"OBL",
ukOBL<-matrix(NA,nrow=Areas,ncol=204)
for (i in 1:Areas)ukOBL[i,]<-uksurvOBL
uk_sOBL<-data.frame(ukOBL)


#"OTH")
ukOTH<-matrix(NA,nrow=Areas,ncol=204)
for (i in 1:Areas)ukOTH[i,]<-uksurvOTH
uk_sOTH<-data.frame(ukOTH)

#uk.survall<-rbind(uk_sWBR,
#uk_sWIR,
#uk_sWHO,
#uk_sWBC,
#uk_sWBA,
#uk_sWAS,
#uk_sOMI,
#uk_sIND,
#uk_sPAK,
#uk_sBAN,
#uk_sOAS,
#uk_sBLC,
#uk_sBLA,
#uk_sOBL,
#uk_sCHI,
#uk_sOTH)

uk.survall<-rbind(uk_sWBI,
                  uk_sWHO,
                  uk_sMIX,
                  uk_sIND,
                  uk_sPAK,
                  uk_sBAN,
                  uk_sCHI,
                  uk_sOAS,
                  uk_sBLA,
                  uk_sBLC,
                  uk_sOBL,
                  uk_sOTH)


uk.surv_df<-data.frame(uk.survall)

outerregionpop<-uk.surv_df-surv.pop

priminmig<-inm.prob*outerregionpop


####
priminWBI<-sum(priminmig[1:327,])
priminWHO<-sum(priminmig[328:654,])
priminMIX<-sum(priminmig[655:981,])
priminIND<-sum(priminmig[982:1308,])
priminPAK<-sum(priminmig[1309:1635,])
priminBAN<-sum(priminmig[1636:1962,])
priminCHI<-sum(priminmig[1963:2289,])
priminOAS<-sum(priminmig[2290:2616,])
priminBLA<-sum(priminmig[2617:2943,])
priminBLC<-sum(priminmig[2944:3270,])
priminOBL<-sum(priminmig[3271:3597,])
priminOTH<-sum(priminmig[3598:3924,])



#priminWBR<- sum(priminmig[1:355,])
#priminWIR<- sum(priminmig[356:710,])
#priminWHO<- sum(priminmig[711:1065,])
#priminWBC<- sum(priminmig[1066:1420,])
#priminWBA<- sum(priminmig[1421:1775,])
#priminWAS<- sum(priminmig[1776:2130,])
#priminOMI<- sum(priminmig[2131:2485,])
#priminIND<- sum(priminmig[2486:2840,])
#priminPAK<- sum(priminmig[2841:3195,])
#priminBAN<- sum(priminmig[3196:3550,])
#priminOAS<- sum(priminmig[3551:3905,])
#priminBLC<- sum(priminmig[3906:4260,])
#priminBLA<- sum(priminmig[4261:4615,])
#priminOBL<- sum(priminmig[4616:4970,])
#priminCHI<- sum(priminmig[4971:5325,])
#priminOTH<- sum(priminmig[5326:5680,])


out.mWBI<-sum(out.migrants[1:327,])
out.mWHO<-sum(out.migrants[328:654,])
out.mMIX<-sum(out.migrants[655:981,])
out.mIND<-sum(out.migrants[982:1308,])
out.mPAK<-sum(out.migrants[1309:1635,])
out.mBAN<-sum(out.migrants[1636:1962,])
out.mCHI<-sum(out.migrants[1963:2289,])
out.mOAS<-sum(out.migrants[2290:2616,])
out.mBLA<-sum(out.migrants[2617:2943,])
out.mBLC<-sum(out.migrants[2944:3270,])
out.mOBL<-sum(out.migrants[3271:3597,])
out.mOTH<-sum(out.migrants[3598:3924,])



#out.mWBR<- sum(out.migrants[1:355,])
#out.mWIR<- sum(out.migrants[356:710,])
#ut.mWHO<- sum(out.migrants[711:1065,])
#out.mWBC<- sum(out.migrants[1066:1420,])
#out.mWBA<- sum(out.migrants[1421:1775,])
#out.mWAS<- sum(out.migrants[1776:2130,])
#out.mOMI<- sum(out.migrants[2131:2485,])
#out.mIND<- sum(out.migrants[2486:2840,])
#out.mPAK<- sum(out.migrants[2841:3195,])
#out.mBAN<- sum(out.migrants[3196:3550,])
#out.mOAS<- sum(out.migrants[3551:3905,])
#out.mBLC<- sum(out.migrants[3906:4260,])
#out.mBLA<- sum(out.migrants[4261:4615,])
#out.mOBL<- sum(out.migrants[4616:4970,])
#out.mCHI<- sum(out.migrants[4971:5325,])
#out.mOTH<- sum(out.migrants[5326:5680,])

outprimcorrWBI<-out.mWBI/priminWBI
#outprimcorrWBR<-out.mWBR/priminWBR
#outprimcorrWIR<-out.mWIR/priminWIR
outprimcorrWHO<-out.mWHO/priminWHO
#outprimcorrWBC<-out.mWBC/priminWBC
#outprimcorrWBA<-out.mWBA/priminWBA
#outprimcorrWAS<-out.mWAS/priminWAS
#outprimcorrOMI<-out.mOMI/priminOMI
outprimcorrMIX<-out.mMIX/priminMIX
outprimcorrIND<-out.mIND/priminIND
outprimcorrPAK<-out.mPAK/priminPAK
outprimcorrBAN<-out.mBAN/priminBAN
outprimcorrCHI<-out.mCHI/priminCHI
outprimcorrOAS<-out.mOAS/priminOAS
outprimcorrBLA<-out.mBLA/priminBLA
outprimcorrBLC<-out.mBLC/priminBLC
outprimcorrOBL<-out.mOBL/priminOBL
outprimcorrOTH<-out.mOTH/priminOTH

fininWBI<-priminmig[1:327,]*outprimcorrWBR
fininWHO<-priminmig[328:654,]*outprimcorrWBR
fininMIX<-priminmig[655:981,]*outprimcorrWBR
fininIND<-priminmig[982:1308,]*outprimcorrWBR
fininPAK<-priminmig[1309:1635,]*outprimcorrWBR
fininBAN<-priminmig[1636:1962,]*outprimcorrWBR
fininCHI<-priminmig[1963:2289,]*outprimcorrWBR
fininOAS<-priminmig[2290:2616,]*outprimcorrWBR
fininBLA<-priminmig[2617:2943,]*outprimcorrWBR
fininBLC<-priminmig[2944:3270,]*outprimcorrWBR
fininOBL<-priminmig[3271:3597,]*outprimcorrWBR
fininOTH<-priminmig[3598:3924,]*outprimcorrWBR




#fininWBR<-priminmig[1:355,]*outprimcorrWBR
#fininWIR<-priminmig[356:710,]*outprimcorrWIR
#fininWHO<-priminmig[711:1065,]*outprimcorrWHO
#fininWBC<-priminmig[1066:1420,]*outprimcorrWBC
#fininWBA<-priminmig[1421:1775,]*outprimcorrWBA
#fininWAS<-priminmig[1776:2130,]*outprimcorrWAS
#fininOMI<-priminmig[2131:2485,]*outprimcorrOMI
#fininIND<-priminmig[2486:2840,]*outprimcorrIND
#fininPAK<-priminmig[2841:3195,]*outprimcorrPAK
#fininBAN<-priminmig[3196:3550,]*outprimcorrBAN
#fininOAS<-priminmig[3551:3905,]*outprimcorrOAS
#fininBLC<-priminmig[3906:4260,]*outprimcorrBLC
#fininBLA<-priminmig[4261:4615,]*outprimcorrBLA
#fininOBL<-priminmig[4616:4970,]*outprimcorrOBL
#fininCHI<-priminmig[4971:5325,]*outprimcorrCHI
#fininOTH<-priminmig[5326:5680,]*outprimcorrOTH


fininmig<-rbind(fininWBI,
                fininWHO,
                fininMIX,
                fininIND,
                fininPAK,
                fininBAN,
                fininCHI,
                fininOAS,
                fininBLA,
                fininBLC,
                fininOBL,
                fininOTH)


#fininmig<-rbind(fininWBR,
#fininWIR,
#fininWHO,
#fininWBC,
#fininWBA,
#fininWAS,
#fininOMI,
#fininIND,
#fininPAK,
#fininBAN,
#fininOAS,
#fininBLC,
#fininBLA,
#fininOBL,
#fininCHI,
#fininOTH)
    

#fininmig<-   priminmig *    (sum(out.migrants)/sum(priminmig))  ##corrcted!falsch muss auch zwischen gruppen unterscheiden

surv.stayers<-surv.pop-out.migrants

#######International migration section PART 2

##Immigration

##Immigrants are added to the population

imm.flow<-c((0.5*imm.flow[1]),imm.flow[1:101],(0.5*imm.flow[102]),imm.flow[102:202])

imm.flow<-data.frame(imm.flow)

#dim(imm.flow)


#
#IMM(x,x+1)[PC]=0.5*(IMM(+,x)[PA])+0.5*(IMM(+,x+1))

Finalpopulation<-surv.stayers+imm.flow+fininmig

fpop<-Finalpopulation

for(i in 1:ncol(fpop))  fpop [,i]<-ifelse(fpop[,i] < 0, 0, fpop[,i])


##min(fpop)

######Population ages, 

Newstartpop<- c(fpop[1:100],(fpop[101]+ fpop[102]),fpop[103:202],(fpop[203]+fpop[204]))

Newpop<-data.frame(Newstartpop)

#####Components of this run


tot.deaths<-data.frame(tot.deaths)###Number of deaths
BirthsAll<-data.frame(BirthsAll)###Number of births
imm.flow<-data.frame(imm.flow)###Number of immigranst
surv.em<-data.frame(surv.em)###Number of emigrants
out.migrants<-data.frame(out.migrants)###Number of internal out migrants
fininmig<-data.frame(fininmig)###Number of internal in migrants
initialpop<-data.frame(initialpop)###Start population
fpop<-data.frame(fpop)###End population (and new start population)


 #fix( initialpop)
GorLaEth<-data.frame(GorLaEth)###  NEEDS UPDATING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
##this computes sums of ethnic groups subsests X3 in GorLAEth is the ethnic group number
##maybe write function components
components<-c(
        E01WBIdth<-sum(subset(tot.deaths,GorLaEth$X3==1)),
        E02WHOdth<-sum(subset(tot.deaths,GorLaEth$X3==2)),
        E03MIXdth<-sum(subset(tot.deaths,GorLaEth$X3==3)),
        E04INDdth<-sum(subset(tot.deaths,GorLaEth$X3==4)),
        E05PAKdth<-sum(subset(tot.deaths,GorLaEth$X3==5)),
        E06BANdth<-sum(subset(tot.deaths,GorLaEth$X3==6)),
        E07CHIdth<-sum(subset(tot.deaths,GorLaEth$X3==7)),
        E08OASdth<-sum(subset(tot.deaths,GorLaEth$X3==8)),
        E09BLAdth<-sum(subset(tot.deaths,GorLaEth$X3==9)),
        E10BLCdth<-sum(subset(tot.deaths,GorLaEth$X3==10)),
        E11OBLdth<-sum(subset(tot.deaths,GorLaEth$X3==11)),
        E12OTHdth<-sum(subset(tot.deaths,GorLaEth$X3==12)),
        E01WBIBth<-sum(subset(BirthsAll,GorLaEth$X3==1)),
        E02WHOBth<-sum(subset(BirthsAll,GorLaEth$X3==2)),
        E03MIXBth<-sum(subset(BirthsAll,GorLaEth$X3==3)),
        E04INDBth<-sum(subset(BirthsAll,GorLaEth$X3==4)),
        E05PAKBth<-sum(subset(BirthsAll,GorLaEth$X3==5)),
        E06BANBth<-sum(subset(BirthsAll,GorLaEth$X3==6)),
        E07CHIBth<-sum(subset(BirthsAll,GorLaEth$X3==7)),
        E08OASBth<-sum(subset(BirthsAll,GorLaEth$X3==8)),
        E09BLABth<-sum(subset(BirthsAll,GorLaEth$X3==9)),
        E10BLCBth<-sum(subset(BirthsAll,GorLaEth$X3==10)),
        E11OBLBth<-sum(subset(BirthsAll,GorLaEth$X3==11)),
        E12OTHBth<-sum(subset(BirthsAll,GorLaEth$X3==12)),
        E01WBIImm<-sum(subset(imm.flow,GorLaEth$X3==1)),
        E02WHOImm<-sum(subset(imm.flow,GorLaEth$X3==2)),
        E03MIXImm<-sum(subset(imm.flow,GorLaEth$X3==3)),
        E04INDImm<-sum(subset(imm.flow,GorLaEth$X3==4)),
        E05PAKImm<-sum(subset(imm.flow,GorLaEth$X3==5)),
        E06BANImm<-sum(subset(imm.flow,GorLaEth$X3==6)),
        E07CHIImm<-sum(subset(imm.flow,GorLaEth$X3==7)),
        E08OASImm<-sum(subset(imm.flow,GorLaEth$X3==8)),
        E09BLAImm<-sum(subset(imm.flow,GorLaEth$X3==9)),
        E10BLCImm<-sum(subset(imm.flow,GorLaEth$X3==10)),
        E11OBLImm<-sum(subset(imm.flow,GorLaEth$X3==11)),
        E12OTHImm<-sum(subset(imm.flow,GorLaEth$X3==12)),
        E01WBIEmi<-sum(subset(surv.em,GorLaEth$X3==1)),
        E02WHOEmi<-sum(subset(surv.em,GorLaEth$X3==2)),
        E03MIXEmi<-sum(subset(surv.em,GorLaEth$X3==3)),
        E04INDEmi<-sum(subset(surv.em,GorLaEth$X3==4)),
        E05PAKEmi<-sum(subset(surv.em,GorLaEth$X3==5)),
        E06BANEmi<-sum(subset(surv.em,GorLaEth$X3==6)),
        E07CHIEmi<-sum(subset(surv.em,GorLaEth$X3==7)),
        E08OASEmi<-sum(subset(surv.em,GorLaEth$X3==8)),
        E09BLAEmi<-sum(subset(surv.em,GorLaEth$X3==9)),
        E10BLCEmi<-sum(subset(surv.em,GorLaEth$X3==10)),
        E11OBLEmi<-sum(subset(surv.em,GorLaEth$X3==11)),
        E12OTHEmi<-sum(subset(surv.em,GorLaEth$X3==12)),
        E01WBIOut<-sum(subset(out.migrants,GorLaEth$X3==1)),
        E02WHOOut<-sum(subset(out.migrants,GorLaEth$X3==2)),
        E03MIXOut<-sum(subset(out.migrants,GorLaEth$X3==3)),
        E04INDOut<-sum(subset(out.migrants,GorLaEth$X3==4)),
        E05PAKOut<-sum(subset(out.migrants,GorLaEth$X3==5)),
        E06BANOut<-sum(subset(out.migrants,GorLaEth$X3==6)),
        E07CHIOut<-sum(subset(out.migrants,GorLaEth$X3==7)),
        E08OASOut<-sum(subset(out.migrants,GorLaEth$X3==8)),
        E09BLAOut<-sum(subset(out.migrants,GorLaEth$X3==9)),
        E10BLCOut<-sum(subset(out.migrants,GorLaEth$X3==10)),
        E11OBLOut<-sum(subset(out.migrants,GorLaEth$X3==11)),
        E12OTHOut<-sum(subset(out.migrants,GorLaEth$X3==12)),
        E01WBIRuk<-sum(subset(fininmig,GorLaEth$X3==1)),
        E02WHORuk<-sum(subset(fininmig,GorLaEth$X3==2)),
        E03MIXRuk<-sum(subset(fininmig,GorLaEth$X3==3)),
        E04INDRuk<-sum(subset(fininmig,GorLaEth$X3==4)),
        E05PAKRuk<-sum(subset(fininmig,GorLaEth$X3==5)),
        E06BANRuk<-sum(subset(fininmig,GorLaEth$X3==6)),
        E07CHIRuk<-sum(subset(fininmig,GorLaEth$X3==7)),
        E08OASRuk<-sum(subset(fininmig,GorLaEth$X3==8)),
        E09BLARuk<-sum(subset(fininmig,GorLaEth$X3==9)),
        E10BLCRuk<-sum(subset(fininmig,GorLaEth$X3==10)),
        E11OBLRuk<-sum(subset(fininmig,GorLaEth$X3==11)),
        E12OTHRuk<-sum(subset(fininmig,GorLaEth$X3==12)),
        E01WBISpo<-sum(subset(initialpop,GorLaEth$X3==1)),
        E02WHOSpo<-sum(subset(initialpop,GorLaEth$X3==2)),
        E03MIXSpo<-sum(subset(initialpop,GorLaEth$X3==3)),
        E04INDSpo<-sum(subset(initialpop,GorLaEth$X3==4)),
        E05PAKSpo<-sum(subset(initialpop,GorLaEth$X3==5)),
        E06BANSpo<-sum(subset(initialpop,GorLaEth$X3==6)),
        E07CHISpo<-sum(subset(initialpop,GorLaEth$X3==7)),
        E08OASSpo<-sum(subset(initialpop,GorLaEth$X3==8)),
        E09BLASpo<-sum(subset(initialpop,GorLaEth$X3==9)),
        E10BLCSpo<-sum(subset(initialpop,GorLaEth$X3==10)),
        E11OBLSpo<-sum(subset(initialpop,GorLaEth$X3==11)),
        E12OTHSpo<-sum(subset(initialpop,GorLaEth$X3==12)),
        E01WBIFpo<-sum(subset(fpop,GorLaEth$X3==1)),
        E02WHOFpo<-sum(subset(fpop,GorLaEth$X3==2)),
        E03MIXFpo<-sum(subset(fpop,GorLaEth$X3==3)),
        E04INDFpo<-sum(subset(fpop,GorLaEth$X3==4)),
        E05PAKFpo<-sum(subset(fpop,GorLaEth$X3==5)),
        E06BANFpo<-sum(subset(fpop,GorLaEth$X3==6)),
        E07CHIFpo<-sum(subset(fpop,GorLaEth$X3==7)),
        E08OASFpo<-sum(subset(fpop,GorLaEth$X3==8)),
        E09BLAFpo<-sum(subset(fpop,GorLaEth$X3==9)),
        E10BLCFpo<-sum(subset(fpop,GorLaEth$X3==10)),
        E11OBLFpo<-sum(subset(fpop,GorLaEth$X3==11)),
        E12OTHFpo<-sum(subset(fpop,GorLaEth$X3==12)))


components<-data.frame(matrix(round(components,0),nrow=Groups))


LAEDetGrouptot.deaths<-round(data.frame(matrix(rowSums(tot.deaths),ncol=Groups)),2)
LAEDetGroupBirthsAll<-round(data.frame(matrix(rowSums(BirthsAll),ncol=Groups)),2)
LAEDetGroupimm.flow<-round(data.frame(matrix(rowSums(imm.flow),ncol=Groups)),2)
LAEDetGroupsurv.em<-round(data.frame(matrix(rowSums(surv.em),ncol=Groups)),2)
LAEDetGroupout.migrants<-round(data.frame(matrix(rowSums(out.migrants),ncol=Groups)),2)
LAEDetGroupfininmig<-round(data.frame(matrix(rowSums(fininmig),ncol=Groups)),2)
LAEDetGroupinitialpop<-round(data.frame(matrix(rowSums(initialpop),ncol=Groups)),2)
LAEDetGroupfpop<-round(data.frame(matrix(rowSums(fpop),ncol=Groups)),2)
LAEDetGroupbirthstW<-round(data.frame(matrix(rowSums(totBirths),ncol=Groups)),2)



#BirthsbyW  <-    matrix(rowSums   (totBirths),ncol=16)
#BirthsbyW <-data.frame(BirthsbyW) 
#BirthsbyWeth<-colSums(BirthsbyW )



####Components by local areas
LAstot.deaths<-rowSums(LAEDetGrouptot.deaths)
LAsBirthsAll<-rowSums(LAEDetGroupBirthsAll)
LAsimm.flow<-rowSums(LAEDetGroupimm.flow)
LAssurv.em<-rowSums(LAEDetGroupsurv.em)
LAsout.migrants<-rowSums(LAEDetGroupout.migrants)
LAsfininmig<-rowSums(LAEDetGroupfininmig)
LAsinitialpop<-rowSums(LAEDetGroupinitialpop)
LAsfpop<-rowSums(LAEDetGroupfpop)
LAsbirthstW<-rowSums(LAEDetGroupbirthstW)

#sum(LAssurv.em)

###One data frame for the 
LAsComp<-cbind.data.frame(rowSums(LAEDetGrouptot.deaths),##or data,frame.cbind
rowSums(LAEDetGroupBirthsAll),
rowSums(LAEDetGroupimm.flow),
rowSums(LAEDetGroupsurv.em),
rowSums(LAEDetGroupout.migrants),
rowSums(LAEDetGroupfininmig),
rowSums(LAEDetGroupinitialpop),
rowSums(LAEDetGroupfpop),
rowSums(LAEDetGroupbirthstW))

#LAsComp<-data.frame(LAsComp)      
      #dim(LAsComp)

colnames(LAsComp)<-c("tot.deaths",
                        "BirthsAll",
                        "imm.flow",
                        "surv.em",
                        "out.migrants",
                        "fininmig",
                        "initialpop",
                        "fpop",
                        "birthsTo")

colnames(components)<-c("tot.deaths",
                        "BirthsAll",
                        "imm.flow",
                        "surv.em",
                        "out.migrants",
                        "fininmig",
                        "initialpop",
                        "fpop")
          
          #"birthsTo")

     
     ##compose test! and colsums as total.
     
#sum(Newpop)
#sum(population)


#initialpop       <-  data.frame  (population)


#emigrantsa<-allem2*initialpop
#allemrates2001<-em.rate
#dim(allem2)

#allem1<-allemrates2001[-1]
#allem2<-allem1[-102]

#sum(emigrantsa)
#sum (em.rate*start.pop)
#sum(start.pop) 
#sum(initialpop)
#sum(allem2)
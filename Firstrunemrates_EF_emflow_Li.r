

#ONSem<-emNo2001_2
initialpop<-data.frame(population)
fertility<-allfert2001
surv.prob<-allsurv2001
em.flow<-allEMflow2001
outm.prob<-alloutm2001
inm.prob<-allinm2001
imm.flow<-allImm2001
   #dim(imm.flow)

#totBirths<-initialpop*Newf


totBirths<-initialpop*fertility
#dim(initialpop)
#dim(fertility)
Births<-rowSums(totBirths)
Births<-data.frame(Births)


BirthsWBR<-Births*mixingmatrix$WBR
BirthsWIR<-Births*mixingmatrix$WIR
BirthsWHO<-Births*mixingmatrix$WHO
BirthsWBC<-Births*mixingmatrix$WBC
BirthsWBA<-Births*mixingmatrix$WBA
BirthsWAS<-Births*mixingmatrix$WAS
BirthsOMI<-Births*mixingmatrix$OMI
BirthsIND<-Births*mixingmatrix$IND
BirthsPAK<-Births*mixingmatrix$PAK
BirthsBAN<-Births*mixingmatrix$BAN
BirthsOAS<-Births*mixingmatrix$OAS
BirthsBLC<-Births*mixingmatrix$BLC
BirthsBLA<-Births*mixingmatrix$BLA
BirthsOBL<-Births*mixingmatrix$OBL
BirthsCHI<-Births*mixingmatrix$CHI
BirthsOTH<-Births*mixingmatrix$OTH

BirthsWBRs<-data.frame(rowSums(data.frame(matrix(BirthsWBR[1:5680,],nrow=355,ncol=16)))  )
BirthsWIRs<-data.frame(rowSums(data.frame(matrix(BirthsWIR[1:5680,],nrow=355,ncol=16)))  )
BirthsWHOs<-data.frame(rowSums(data.frame(matrix(BirthsWHO[1:5680,],nrow=355,ncol=16)))  )
BirthsWBCs<-data.frame(rowSums(data.frame(matrix(BirthsWBC[1:5680,],nrow=355,ncol=16)))  )
BirthsWBAs<-data.frame(rowSums(data.frame(matrix(BirthsWBA[1:5680,],nrow=355,ncol=16)))  )
BirthsWASs<-data.frame(rowSums(data.frame(matrix(BirthsWAS[1:5680,],nrow=355,ncol=16)))  )
BirthsOMIs<-data.frame(rowSums(data.frame(matrix(BirthsOMI[1:5680,],nrow=355,ncol=16)))  )
BirthsINDs<-data.frame(rowSums(data.frame(matrix(BirthsIND[1:5680,],nrow=355,ncol=16)))  )
BirthsPAKs<-data.frame(rowSums(data.frame(matrix(BirthsPAK[1:5680,],nrow=355,ncol=16)))  )
BirthsBANs<-data.frame(rowSums(data.frame(matrix(BirthsBAN[1:5680,],nrow=355,ncol=16)))  )
BirthsOASs<-data.frame(rowSums(data.frame(matrix(BirthsOAS[1:5680,],nrow=355,ncol=16)))  )
BirthsBLCs<-data.frame(rowSums(data.frame(matrix(BirthsBLC[1:5680,],nrow=355,ncol=16)))  )
BirthsBLAs<-data.frame(rowSums(data.frame(matrix(BirthsBLA[1:5680,],nrow=355,ncol=16)))  )
BirthsOBLs<-data.frame(rowSums(data.frame(matrix(BirthsOBL[1:5680,],nrow=355,ncol=16)))  )
BirthsCHIs<-data.frame(rowSums(data.frame(matrix(BirthsCHI[1:5680,],nrow=355,ncol=16)))  )
BirthsOTHs<-data.frame(rowSums(data.frame(matrix(BirthsOTH[1:5680,],nrow=355,ncol=16)))  )

colnames(BirthsWBRs)<-"Births"
colnames(BirthsWIRs)<-"Births"
colnames(BirthsWHOs)<-"Births"
colnames(BirthsWBCs)<-"Births"
colnames(BirthsWBAs)<-"Births"
colnames(BirthsWASs)<-"Births"
colnames(BirthsOMIs)<-"Births"
colnames(BirthsINDs)<-"Births"
colnames(BirthsPAKs)<-"Births"
colnames(BirthsBANs)<-"Births"
colnames(BirthsOASs)<-"Births"
colnames(BirthsBLCs)<-"Births"
colnames(BirthsBLAs)<-"Births"
colnames(BirthsOBLs)<-"Births"
colnames(BirthsCHIs)<-"Births"
colnames(BirthsOTHs)<-"Births"

BirthsAll<-rbind( BirthsWBRs,
BirthsWIRs,
BirthsWHOs,
BirthsWBCs,
BirthsWBAs,
BirthsWASs,
BirthsOMIs,
BirthsINDs,
BirthsPAKs,
BirthsBANs,
BirthsOASs,
BirthsBLCs,
BirthsBLAs,
BirthsOBLs,
BirthsCHIs,
BirthsOTHs)

MBirths<-BirthsAll*bm
FBirths<-BirthsAll*bf

#min(BirthsAll)

start.pop<-cbind(MBirths,initialpop[,1:101],FBirths,initialpop[,102:202])

#min(start.pop)


total.survivors<-surv.prob*start.pop

#min(total.survivors)

tot.deaths<-start.pop-total.survivors

#set emrate, here simple half of birth to one is 

#em.rate[1]<-0.5*em.rate[2]
#em.rate[103]<-0.5*em.rate[104]

##This step scales the emigration to allign the emigration number to the actual number
##at least for the first 6 years, not in the benchmark projections, but the TrONS, UPTAP



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

surv.pop<-(total.survivors-surv.em)
#for(i in 1:ncol(surv.pop))surv.pop[,i]<-ifelse(surv.pop[,i]<0,0,surv.pop[,i])

#min(surv.pop)

out.migrants<-outm.prob*surv.pop

uksurvWBR<- colSums(surv.pop[1:355,])
uksurvWIR<- colSums(surv.pop[356:710,])
uksurvWHO<- colSums(surv.pop[711:1065,])
uksurvWBC<- colSums(surv.pop[1066:1420,])
uksurvWBA<- colSums(surv.pop[1421:1775,])
uksurvWAS<- colSums(surv.pop[1776:2130,])
uksurvOMI<- colSums(surv.pop[2131:2485,])
uksurvIND<- colSums(surv.pop[2486:2840,])
uksurvPAK<- colSums(surv.pop[2841:3195,])
uksurvBAN<- colSums(surv.pop[3196:3550,])
uksurvOAS<- colSums(surv.pop[3551:3905,])
uksurvBLC<- colSums(surv.pop[3906:4260,])
uksurvBLA<- colSums(surv.pop[4261:4615,])
uksurvOBL<- colSums(surv.pop[4616:4970,])
uksurvCHI<- colSums(surv.pop[4971:5325,])
uksurvOTH<- colSums(surv.pop[5326:5680,])

ukWBR<-matrix(NA,nrow=355,ncol=204)
for(i in 1:355)ukWBR[i,]<- uksurvWBR
uk_sWBR<-data.frame(ukWBR)
#fix(uk_sWIR)

#WIR
ukWIR<-matrix(NA,nrow=355,ncol=204)
for(i in 1:355)ukWIR[i,]<- uksurvWIR
uk_sWIR<-data.frame(ukWIR)

#"WHO",
ukWHO<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukWHO[i,]<- uksurvWHO
uk_sWHO<-data.frame(ukWHO)

#"WBC",
ukWBC<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukWBC[i,]<- uksurvWBC
uk_sWBC<-data.frame(ukWBC)

#"WBA",
ukWBA<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukWBA[i,]<-uksurvWBA
uk_sWBA<-data.frame(ukWBA)

#"WAS",
ukWAS<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukWAS[i,]<-uksurvWAS
uk_sWAS<-data.frame(ukWAS)

#"OMI",
ukOMI<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukOMI[i,]<-uksurvOMI
uk_sOMI<-data.frame(ukOMI)

#"IND",
ukIND<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukIND[i,]<- uksurvIND
uk_sIND<-data.frame(ukIND)

#"PAK",
ukPAK<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukPAK[i,]<-uksurvPAK
uk_sPAK<-data.frame(ukPAK)

#"BAN",
ukBAN<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukBAN[i,]<-uksurvBAN
uk_sBAN<-data.frame(ukBAN)

#"OAS",
ukOAS<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukOAS[i,]<-uksurvOAS
uk_sOAS<-data.frame(ukOAS)

#"BLC",
ukBLC<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukBLC[i,]  <- uksurvBLC
uk_sBLC<-data.frame(ukBLC)

#"BLA",
 ukBLA<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukBLA[i,]<-uksurvBLA
uk_sBLA<-data.frame(ukBLA)

#"OBL",
ukOBL<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukOBL[i,]<-uksurvOBL
uk_sOBL<-data.frame(ukOBL)

#"CHI",
ukCHI<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukCHI[i,]<-uksurvCHI
uk_sCHI<-data.frame(ukCHI)

#"OTH")
ukOTH<-matrix(NA,nrow=355,ncol=204)
for (i in 1:355)ukOTH[i,]<-uksurvOTH
uk_sOTH<-data.frame(ukOTH)

uk.survall<-rbind(uk_sWBR,
uk_sWIR,
uk_sWHO,
uk_sWBC,
uk_sWBA,
uk_sWAS,
uk_sOMI,
uk_sIND,
uk_sPAK,
uk_sBAN,
uk_sOAS,
uk_sBLC,
uk_sBLA,
uk_sOBL,
uk_sCHI,
uk_sOTH)

uk.surv_df<-data.frame(uk.survall)

outerregionpop<-uk.surv_df-surv.pop

priminmig<-inm.prob*outerregionpop

priminWBR<- sum(priminmig[1:355,])
priminWIR<- sum(priminmig[356:710,])
priminWHO<- sum(priminmig[711:1065,])
priminWBC<- sum(priminmig[1066:1420,])
priminWBA<- sum(priminmig[1421:1775,])
priminWAS<- sum(priminmig[1776:2130,])
priminOMI<- sum(priminmig[2131:2485,])
priminIND<- sum(priminmig[2486:2840,])
priminPAK<- sum(priminmig[2841:3195,])
priminBAN<- sum(priminmig[3196:3550,])
priminOAS<- sum(priminmig[3551:3905,])
priminBLC<- sum(priminmig[3906:4260,])
priminBLA<- sum(priminmig[4261:4615,])
priminOBL<- sum(priminmig[4616:4970,])
priminCHI<- sum(priminmig[4971:5325,])
priminOTH<- sum(priminmig[5326:5680,])

out.mWBR<- sum(out.migrants[1:355,])
out.mWIR<- sum(out.migrants[356:710,])
out.mWHO<- sum(out.migrants[711:1065,])
out.mWBC<- sum(out.migrants[1066:1420,])
out.mWBA<- sum(out.migrants[1421:1775,])
out.mWAS<- sum(out.migrants[1776:2130,])
out.mOMI<- sum(out.migrants[2131:2485,])
out.mIND<- sum(out.migrants[2486:2840,])
out.mPAK<- sum(out.migrants[2841:3195,])
out.mBAN<- sum(out.migrants[3196:3550,])
out.mOAS<- sum(out.migrants[3551:3905,])
out.mBLC<- sum(out.migrants[3906:4260,])
out.mBLA<- sum(out.migrants[4261:4615,])
out.mOBL<- sum(out.migrants[4616:4970,])
out.mCHI<- sum(out.migrants[4971:5325,])
out.mOTH<- sum(out.migrants[5326:5680,])

outprimcorrWBR<-out.mWBR/priminWBR
outprimcorrWIR<-out.mWIR/priminWIR
outprimcorrWHO<-out.mWHO/priminWHO
outprimcorrWBC<-out.mWBC/priminWBC
outprimcorrWBA<-out.mWBA/priminWBA
outprimcorrWAS<-out.mWAS/priminWAS
outprimcorrOMI<-out.mOMI/priminOMI
outprimcorrIND<-out.mIND/priminIND
outprimcorrPAK<-out.mPAK/priminPAK
outprimcorrBAN<-out.mBAN/priminBAN
outprimcorrOAS<-out.mOAS/priminOAS
outprimcorrBLC<-out.mBLC/priminBLC
outprimcorrBLA<-out.mBLA/priminBLA
outprimcorrOBL<-out.mOBL/priminOBL
outprimcorrCHI<-out.mCHI/priminCHI
outprimcorrOTH<-out.mOTH/priminOTH

fininWBR<-priminmig[1:355,]*outprimcorrWBR
fininWIR<-priminmig[356:710,]*outprimcorrWIR
fininWHO<-priminmig[711:1065,]*outprimcorrWHO
fininWBC<-priminmig[1066:1420,]*outprimcorrWBC
fininWBA<-priminmig[1421:1775,]*outprimcorrWBA
fininWAS<-priminmig[1776:2130,]*outprimcorrWAS
fininOMI<-priminmig[2131:2485,]*outprimcorrOMI
fininIND<-priminmig[2486:2840,]*outprimcorrIND
fininPAK<-priminmig[2841:3195,]*outprimcorrPAK
fininBAN<-priminmig[3196:3550,]*outprimcorrBAN
fininOAS<-priminmig[3551:3905,]*outprimcorrOAS
fininBLC<-priminmig[3906:4260,]*outprimcorrBLC
fininBLA<-priminmig[4261:4615,]*outprimcorrBLA
fininOBL<-priminmig[4616:4970,]*outprimcorrOBL
fininCHI<-priminmig[4971:5325,]*outprimcorrCHI
fininOTH<-priminmig[5326:5680,]*outprimcorrOTH


fininmig<-rbind(fininWBR,
fininWIR,
fininWHO,
fininWBC,
fininWBA,
fininWAS,
fininOMI,
fininIND,
fininPAK,
fininBAN,
fininOAS,
fininBLC,
fininBLA,
fininOBL,
fininCHI,
fininOTH)
    

#fininmig<-   priminmig *    (sum(out.migrants)/sum(priminmig))  ##corrcted!falsch muss auch zwischen gruppen unterscheiden

surv.stayers<-surv.pop-out.migrants

imm.flow<-c((0.5*imm.flow[1]),imm.flow[1:101],(0.5*imm.flow[102]),imm.flow[102:202])

imm.flow<-data.frame(imm.flow)

#dim(imm.flow)


#
#IMM(x,x+1)[PC]=0.5*(IMM(+,x)[PA])+0.5*(IMM(+,x+1))

Finalpopulation<-surv.stayers+imm.flow+fininmig

fpop<-Finalpopulation

for(i in 1:ncol(fpop))  fpop [,i]<-ifelse(fpop[,i] < 0, 0, fpop[,i])


##min(fpop)

Newstartpop<- c(fpop[1:100],(fpop[101]+ fpop[102]),fpop[103:202],(fpop[203]+fpop[204]))

Newpop<-data.frame(Newstartpop)

tot.deaths<-data.frame(tot.deaths)
BirthsAll<-data.frame(BirthsAll)
imm.flow<-data.frame(imm.flow)
surv.em<-data.frame(surv.em)
out.migrants<-data.frame(out.migrants)
fininmig<-data.frame(fininmig)
GorLaEth<-data.frame(GorLaEth)
initialpop<-data.frame(initialpop)
fpop<-data.frame(fpop)


 #fix( initialpop)

##this computes sums of ethnic groups subsests X3 in GorLAEth is the ethnic group number
##maybe write function components
components<-c(E01WBRdth<-sum(subset(tot.deaths,GorLaEth$X3==1)),
E02WIRdth<-sum(subset(tot.deaths,GorLaEth$X3==2)),
E03WHOdth<-sum(subset(tot.deaths,GorLaEth$X3==3)),
E04WBCdth<-sum(subset(tot.deaths,GorLaEth$X3==4)),
E05WBAdth<-sum(subset(tot.deaths,GorLaEth$X3==5)),
E06WASdth<-sum(subset(tot.deaths,GorLaEth$X3==6)),
E07OMIdth<-sum(subset(tot.deaths,GorLaEth$X3==7)),
E08INDdth<-sum(subset(tot.deaths,GorLaEth$X3==8)),
E09PAKdth<-sum(subset(tot.deaths,GorLaEth$X3==9)),
E10BANdth<-sum(subset(tot.deaths,GorLaEth$X3==10)),
E11OASdth<-sum(subset(tot.deaths,GorLaEth$X3==11)),
E12BLCdth<-sum(subset(tot.deaths,GorLaEth$X3==12)),
E13BLAdth<-sum(subset(tot.deaths,GorLaEth$X3==13)),
E14OBLdth<-sum(subset(tot.deaths,GorLaEth$X3==14)),
E15CHIdth<-sum(subset(tot.deaths,GorLaEth$X3==15)),
E16OTHdth<-sum(subset(tot.deaths,GorLaEth$X3==16)),
E01WBRBth<-sum(subset(BirthsAll,GorLaEth$X3==1)),
E02WIRBth<-sum(subset(BirthsAll,GorLaEth$X3==2)),
E03WHOBth<-sum(subset(BirthsAll,GorLaEth$X3==3)),
E04WBCBth<-sum(subset(BirthsAll,GorLaEth$X3==4)),
E05WBABth<-sum(subset(BirthsAll,GorLaEth$X3==5)),
E06WASBth<-sum(subset(BirthsAll,GorLaEth$X3==6)),
E07OMIBth<-sum(subset(BirthsAll,GorLaEth$X3==7)),
E08INDBth<-sum(subset(BirthsAll,GorLaEth$X3==8)),
E09PAKBth<-sum(subset(BirthsAll,GorLaEth$X3==9)),
E10BANBth<-sum(subset(BirthsAll,GorLaEth$X3==10)),
E11OASBth<-sum(subset(BirthsAll,GorLaEth$X3==11)),
E12BLCBth<-sum(subset(BirthsAll,GorLaEth$X3==12)),
E13BLABth<-sum(subset(BirthsAll,GorLaEth$X3==13)),
E14OBLBth<-sum(subset(BirthsAll,GorLaEth$X3==14)),
E15CHIBth<-sum(subset(BirthsAll,GorLaEth$X3==15)),
E16OTHBth<-sum(subset(BirthsAll,GorLaEth$X3==16)),
E01WBRImm<-sum(subset(imm.flow,GorLaEth$X3==1)),
E02WIRImm<-sum(subset(imm.flow,GorLaEth$X3==2)),
E03WHOImm<-sum(subset(imm.flow,GorLaEth$X3==3)),
E04WBCImm<-sum(subset(imm.flow,GorLaEth$X3==4)),
E05WBAImm<-sum(subset(imm.flow,GorLaEth$X3==5)),
E06WASImm<-sum(subset(imm.flow,GorLaEth$X3==6)),
E07OMIImm<-sum(subset(imm.flow,GorLaEth$X3==7)),
E08INDImm<-sum(subset(imm.flow,GorLaEth$X3==8)),
E09PAKImm<-sum(subset(imm.flow,GorLaEth$X3==9)),
E10BANImm<-sum(subset(imm.flow,GorLaEth$X3==10)),
E11OASImm<-sum(subset(imm.flow,GorLaEth$X3==11)),
E12BLCImm<-sum(subset(imm.flow,GorLaEth$X3==12)),
E13BLAImm<-sum(subset(imm.flow,GorLaEth$X3==13)),
E14OBLImm<-sum(subset(imm.flow,GorLaEth$X3==14)),
E15CHIImm<-sum(subset(imm.flow,GorLaEth$X3==15)),
E16OTHImm<-sum(subset(imm.flow,GorLaEth$X3==16)),
E01WBREmi<-sum(subset(surv.em,GorLaEth$X3==1)),
E02WIREmi<-sum(subset(surv.em,GorLaEth$X3==2)),
E03WHOEmi<-sum(subset(surv.em,GorLaEth$X3==3)),
E04WBCEmi<-sum(subset(surv.em,GorLaEth$X3==4)),
E05WBAEmi<-sum(subset(surv.em,GorLaEth$X3==5)),
E06WASEmi<-sum(subset(surv.em,GorLaEth$X3==6)),
E07OMIEmi<-sum(subset(surv.em,GorLaEth$X3==7)),
E08INDEmi<-sum(subset(surv.em,GorLaEth$X3==8)),
E09PAKEmi<-sum(subset(surv.em,GorLaEth$X3==9)),
E10BANEmi<-sum(subset(surv.em,GorLaEth$X3==10)),
E11OASEmi<-sum(subset(surv.em,GorLaEth$X3==11)),
E12BLCEmi<-sum(subset(surv.em,GorLaEth$X3==12)),
E13BLAEmi<-sum(subset(surv.em,GorLaEth$X3==13)),
E14OBLEmi<-sum(subset(surv.em,GorLaEth$X3==14)),
E15CHIEmi<-sum(subset(surv.em,GorLaEth$X3==15)),
E16OTHEmi<-sum(subset(surv.em,GorLaEth$X3==16)),
E01WBROut<-sum(subset(out.migrants,GorLaEth$X3==1)),
E02WIROut<-sum(subset(out.migrants,GorLaEth$X3==2)),
E03WHOOut<-sum(subset(out.migrants,GorLaEth$X3==3)),
E04WBCOut<-sum(subset(out.migrants,GorLaEth$X3==4)),
E05WBAOut<-sum(subset(out.migrants,GorLaEth$X3==5)),
E06WASOut<-sum(subset(out.migrants,GorLaEth$X3==6)),
E07OMIOut<-sum(subset(out.migrants,GorLaEth$X3==7)),
E08INDOut<-sum(subset(out.migrants,GorLaEth$X3==8)),
E09PAKOut<-sum(subset(out.migrants,GorLaEth$X3==9)),
E10BANOut<-sum(subset(out.migrants,GorLaEth$X3==10)),
E11OASOut<-sum(subset(out.migrants,GorLaEth$X3==11)),
E12BLCOut<-sum(subset(out.migrants,GorLaEth$X3==12)),
E13BLAOut<-sum(subset(out.migrants,GorLaEth$X3==13)),
E14OBLOut<-sum(subset(out.migrants,GorLaEth$X3==14)),
E15CHIOut<-sum(subset(out.migrants,GorLaEth$X3==15)),
E16OTHOut<-sum(subset(out.migrants,GorLaEth$X3==16)),
E01WBRRuk<-sum(subset(fininmig,GorLaEth$X3==1)),
E02WIRRuk<-sum(subset(fininmig,GorLaEth$X3==2)),
E03WHORuk<-sum(subset(fininmig,GorLaEth$X3==3)),
E04WBCRuk<-sum(subset(fininmig,GorLaEth$X3==4)),
E05WBARuk<-sum(subset(fininmig,GorLaEth$X3==5)),
E06WASRuk<-sum(subset(fininmig,GorLaEth$X3==6)),
E07OMIRuk<-sum(subset(fininmig,GorLaEth$X3==7)),
E08INDRuk<-sum(subset(fininmig,GorLaEth$X3==8)),
E09PAKRuk<-sum(subset(fininmig,GorLaEth$X3==9)),
E10BANRuk<-sum(subset(fininmig,GorLaEth$X3==10)),
E11OASRuk<-sum(subset(fininmig,GorLaEth$X3==11)),
E12BLCRuk<-sum(subset(fininmig,GorLaEth$X3==12)),
E13BLARuk<-sum(subset(fininmig,GorLaEth$X3==13)),
E14OBLRuk<-sum(subset(fininmig,GorLaEth$X3==14)),
E15CHIRuk<-sum(subset(fininmig,GorLaEth$X3==15)),
E16OTHRuk<-sum(subset(fininmig,GorLaEth$X3==16)),
E01WBRSpo<-sum(subset(initialpop,GorLaEth$X3==1)),
E02WIRSpo<-sum(subset(initialpop,GorLaEth$X3==2)),
E03WHOSpo<-sum(subset(initialpop,GorLaEth$X3==3)),
E04WBCSpo<-sum(subset(initialpop,GorLaEth$X3==4)),
E05WBASpo<-sum(subset(initialpop,GorLaEth$X3==5)),
E06WASSpo<-sum(subset(initialpop,GorLaEth$X3==6)),
E07OMISpo<-sum(subset(initialpop,GorLaEth$X3==7)),
E08INDSpo<-sum(subset(initialpop,GorLaEth$X3==8)),
E09PAKSpo<-sum(subset(initialpop,GorLaEth$X3==9)),
E10BANSpo<-sum(subset(initialpop,GorLaEth$X3==10)),
E11OASSpo<-sum(subset(initialpop,GorLaEth$X3==11)),
E12BLCSpo<-sum(subset(initialpop,GorLaEth$X3==12)),
E13BLASpo<-sum(subset(initialpop,GorLaEth$X3==13)),
E14OBLSpo<-sum(subset(initialpop,GorLaEth$X3==14)),
E15CHISpo<-sum(subset(initialpop,GorLaEth$X3==15)),
E16OTHSpo<-sum(subset(initialpop,GorLaEth$X3==16)),
E01WBRFpo<-sum(subset(fpop,GorLaEth$X3==1)),
E02WIRFpo<-sum(subset(fpop,GorLaEth$X3==2)),
E03WHOFpo<-sum(subset(fpop,GorLaEth$X3==3)),
E04WBCFpo<-sum(subset(fpop,GorLaEth$X3==4)),
E05WBAFpo<-sum(subset(fpop,GorLaEth$X3==5)),
E06WASFpo<-sum(subset(fpop,GorLaEth$X3==6)),
E07OMIFpo<-sum(subset(fpop,GorLaEth$X3==7)),
E08INDFpo<-sum(subset(fpop,GorLaEth$X3==8)),
E09PAKFpo<-sum(subset(fpop,GorLaEth$X3==9)),
E10BANFpo<-sum(subset(fpop,GorLaEth$X3==10)),
E11OASFpo<-sum(subset(fpop,GorLaEth$X3==11)),
E12BLCFpo<-sum(subset(fpop,GorLaEth$X3==12)),
E13BLAFpo<-sum(subset(fpop,GorLaEth$X3==13)),
E14OBLFpo<-sum(subset(fpop,GorLaEth$X3==14)),
E15CHIFpo<-sum(subset(fpop,GorLaEth$X3==15)),
E16OTHFpo<-sum(subset(fpop,GorLaEth$X3==16)))

components<-data.frame(matrix(round(components,0),nrow=16))


LAE16tot.deaths<-round(data.frame(matrix(rowSums(tot.deaths),ncol=16)),2)
LAE16BirthsAll<-round(data.frame(matrix(rowSums(BirthsAll),ncol=16)),2)
LAE16imm.flow<-round(data.frame(matrix(rowSums(imm.flow),ncol=16)),2)
LAE16surv.em<-round(data.frame(matrix(rowSums(surv.em),ncol=16)),2)
LAE16out.migrants<-round(data.frame(matrix(rowSums(out.migrants),ncol=16)),2)
LAE16fininmig<-round(data.frame(matrix(rowSums(fininmig),ncol=16)),2)
LAE16initialpop<-round(data.frame(matrix(rowSums(initialpop),ncol=16)),2)
LAE16fpop<-round(data.frame(matrix(rowSums(fpop),ncol=16)),2)
LAE16birthstW<-round(data.frame(matrix(rowSums(totBirths),ncol=16)),2)



#BirthsbyW  <-    matrix(rowSums   (totBirths),ncol=16)
#BirthsbyW <-data.frame(BirthsbyW) 
#BirthsbyWeth<-colSums(BirthsbyW )


LAstot.deaths<-rowSums(LAE16tot.deaths)
LAsBirthsAll<-rowSums(LAE16BirthsAll)
LAsimm.flow<-rowSums(LAE16imm.flow)
LAssurv.em<-rowSums(LAE16surv.em)
LAsout.migrants<-rowSums(LAE16out.migrants)
LAsfininmig<-rowSums(LAE16fininmig)
LAsinitialpop<-rowSums(LAE16initialpop)
LAsfpop<-rowSums(LAE16fpop)
LAsbirthstW<-rowSums(LAE16birthstW)

#sum(LAssurv.em)


LAsComp<-cbind(rowSums(LAE16tot.deaths),
rowSums(LAE16BirthsAll),
rowSums(LAE16imm.flow),
rowSums(LAE16surv.em),
rowSums(LAE16out.migrants),
rowSums(LAE16fininmig),
rowSums(LAE16initialpop),
rowSums(LAE16fpop),
rowSums(LAE16birthstW))

LAsComp<-data.frame(LAsComp)      
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
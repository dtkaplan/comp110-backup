
library(DataComputing)
library(mosaicData)

scatterGraphHelper(CPS85)


ggplot(data=CPS85,aes(x=educ,y=wage)) +
  geom_point() +
  aes(colour=sex)+
  scale_y_log10()+
  facet_wrap(~union,ncol=4) + 
  stat_smooth(method=lm) 
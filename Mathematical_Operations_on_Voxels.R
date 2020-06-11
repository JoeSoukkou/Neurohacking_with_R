library("oro.nifti")

setwd("C:/Users/Joey S. MD/Desktop/Neurohacking_R/kirby21/visit_1/113")
fname = "113-01-MPRAGE"

T1_VISIT1 = readNIfTI(fname=fname, reorient=FALSE)


setwd("C:/Users/Joey S. MD/Desktop/Neurohacking_R/kirby21/visit_2/113")
fname = "113-02-MPRAGE"
T1_VISIT2 = readNIfTI(fname=fname, reorient=FALSE)

#Subtract_V1_V2 <- T1_VISIT2 * T1_VISIT1
#Subtract_V1_V2 <- T1_VISIT2 + T1_VISIT1
#All Possible mathematical operations are available on the Voxles
Subtract_V1_V2 <- T1_VISIT2 - T1_VISIT1

orthographic(Subtract_V1_V2)
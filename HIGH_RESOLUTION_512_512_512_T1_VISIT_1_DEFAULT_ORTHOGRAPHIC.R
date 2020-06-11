library("oro.nifti")

setwd("C:/Users/Joey S. MD/Desktop/Neurohacking_R/kirby21/visit_1/113")
fname = "113-01-MPRAGE"

T1_VISIT1 = readNIfTI(fname=fname, reorient=FALSE)
orthographic(T1_VISIT1)

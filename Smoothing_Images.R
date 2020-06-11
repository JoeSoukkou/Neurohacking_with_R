library("oro.nifti")
#Dependent on the AnalyzeFMRI Package
setwd("C:/Users/Joey S. MD/Desktop/Neurohacking_R/kirby21/visit_1/113")
fname = "113-01-MPRAGE"

T1_VISIT1 = readNIfTI(fname=fname, reorient=FALSE)

T1_VISIT1_SMOOTH <- GaussSmoothArray(T1_VISIT1, voxdim=c(1,1,1), ksize=11, sigma=diag(3,3), mask=NULL, var.norm=FALSE)
orthographic(T1_VISIT1_SMOOTH)
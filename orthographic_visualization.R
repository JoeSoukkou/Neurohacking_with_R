library("oro.nifti")
outfname = "OUTPUT_NIfTI_Converted"
setwd("C:/Users/Joey S. MD/Desktop/Neurohacking_R/BRAINIX/DICOM")
nii_T1 = readNIfTI(fname=outfname)
orthographic(nii_T1,xyz=c(200,220,11))
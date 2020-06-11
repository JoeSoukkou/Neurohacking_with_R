library("oro.nifti")
library("oro.dicom")
# The Output NIfTI file name
outfname = "OUTPUT_NIfTI_Converted"
# Changing the working directory
setwd("C:/Users/Joey S. MD/Desktop/Neurohacking_R/BRAINIX/DICOM")
nii_T1 = readNIfTI(fname=outfname)
is_btw_300_400 <- ((nii_T1 > 300) & (nii_T1 < 400))
nii_T1_mask <- nii_T1
#IF NOT BETWEEN 300-400 SET VOXEL VALUE TO NA
nii_T1_mask[!is_btw_300_400] = NA

#Overlaying the mask on the Image
<<<<<<< HEAD
#Noverlay(nii_T1,nii_T1_mask, z=17, plot.type="single")
orthographic(nii_T1,nii_T1_mask, xyz=c(200,220,17),text="White matter mask overlay in 3 plans",text.cex=1.2)
=======
#overlay(nii_T1,nii_T1_mask, z=7, plot.type="single")
orthographic(nii_T1,nii_T1_mask, xyz=c(200,220,17),text="White matter mask overlay in 3 plans",text.cex=1.2)
>>>>>>> 96fe70aeeed373c0c5f569fea53ac4990011f02f

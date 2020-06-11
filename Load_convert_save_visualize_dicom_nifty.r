library("oro.nifti")
library("oro.dicom")
# The Output NIfTI file name
outfname = "OUTPUT_NIfTI_Converted"
# Changing the working directory
setwd("C:/Users/Joey S. MD/Desktop/Neurohacking_R/BRAINIX/DICOM")
# Reading the DICOM T1 Images 
ALL_T1 = readDICOM('T1/')
# Converting the Loaded T1 Images to the NIfTI file type using the dicom2nifti function
NIFTY_Converted = dicom2nifti(ALL_T1)
# Saving the Converted Slices to a compressed NIfTI File type (nii.gz)
writeNIfTI(nim=NIFTY_Converted, filename=outfname)
# Printing relevant metadata of the newley created NIfTI file
print({nii_T1 = readNIfTI(fname=outfname)})
#Getting the dim of the NIfTY file
d = dim(nii_T1)
# Visualization of the NIfTI Image (Slice 7)
image(1:d[1], 1:d[2], nii_T1[,,2],xlab="",ylab="")
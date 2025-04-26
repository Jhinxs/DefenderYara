
rule TrojanDownloader_O97M_Powdow_HPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.HPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {53 74 72 52 65 76 65 72 73 65 28 22 6e 65 70 4f 22 29 2c 20 53 74 72 52 65 76 65 72 73 65 28 22 65 78 65 2e 6c 6c 65 68 73 72 65 77 6f 70 22 29 2c 20 53 74 72 52 65 76 65 72 73 65 28 22 20 73 62 76 2e 61 72 69 65 78 69 4c 20 65 78 65 2e 72 65 72 6f 6c 70 78 65 3b 73 62 76 2e 61 72 69 65 78 69 4c 20 6f 2d 20 4c 37 69 68 33 44 33 2f 79 6c 2e 74 69 62 20 74 65 67 77 20 6e 65 64 64 69 48 20 65 6c 79 74 53 77 6f 64 6e 69 57 2d 20 22 29 29 } //1 StrReverse("nepO"), StrReverse("exe.llehsrewop"), StrReverse(" sbv.ariexiL exe.rerolpxe;sbv.ariexiL o- L7ih3D3/yl.tib tegw neddiH elytSwodniW- "))
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
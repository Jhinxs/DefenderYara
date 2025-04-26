
rule Virus_Linux_Qakoga_A{
	meta:
		description = "Virus:Linux/Qakoga.A,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {2b 20 22 74 65 63 74 65 64 56 69 65 77 22 2c 20 22 44 69 73 61 62 6c 65 41 74 74 22 20 2b 20 22 61 63 68 65 6d 65 6e 74 73 49 6e 50 56 22 29 } //1 + "tectedView", "DisableAtt" + "achementsInPV")
		$a_01_1 = {2b 20 22 6b 63 6f 6e 74 65 6e 74 65 78 65 63 22 20 2b 20 22 75 74 69 6f 6e 66 72 6f 22 20 2b 20 22 6d 69 6e 74 65 22 20 2b 20 22 72 6e 65 74 22 29 } //1 + "kcontentexec" + "utionfro" + "minte" + "rnet")
		$a_01_2 = {49 6e 66 65 63 74 65 64 41 44 20 3d 20 28 41 44 2e 4e 61 6d 65 20 3d 20 22 71 6b 47 22 29 } //1 InfectedAD = (AD.Name = "qkG")
		$a_01_3 = {41 44 2e 43 6f 64 65 4d 6f 64 75 6c 65 2e 41 64 64 46 72 6f 6d 53 74 72 69 6e 67 20 28 22 50 72 69 76 61 74 65 20 53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 22 29 } //1 AD.CodeModule.AddFromString ("Private Sub Document_Open()")
		$a_01_4 = {4e 54 2e 43 6f 64 65 4d 6f 64 75 6c 65 2e 41 64 64 46 72 6f 6d 53 74 72 69 6e 67 20 28 22 50 72 69 76 61 74 65 20 53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 43 6c 6f 73 65 28 29 22 29 } //1 NT.CodeModule.AddFromString ("Private Sub Document_Close()")
		$a_01_5 = {43 72 79 70 74 6f 20 3d 20 62 79 4f 75 74 } //1 Crypto = byOut
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
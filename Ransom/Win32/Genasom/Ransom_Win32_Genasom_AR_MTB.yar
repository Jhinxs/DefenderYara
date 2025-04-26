
rule Ransom_Win32_Genasom_AR_MTB{
	meta:
		description = "Ransom:Win32/Genasom.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 06 00 00 "
		
	strings :
		$a_80_0 = {5c 47 4f 4d 45 52 2d 52 45 41 44 4d 45 2e 74 78 74 } //\GOMER-README.txt  10
		$a_80_1 = {5c 65 6e 63 72 79 70 74 46 69 6c 65 73 2e 70 64 62 } //\encryptFiles.pdb  10
		$a_80_2 = {67 6f 6d 65 72 2e 69 6e 69 } //gomer.ini  10
		$a_80_3 = {25 73 79 73 74 65 6d 64 72 69 76 65 25 } //%systemdrive%  1
		$a_80_4 = {73 79 73 74 65 6d 20 76 6f 6c 75 6d 65 20 69 6e 66 6f 72 6d 61 74 69 6f 6e } //system volume information  1
		$a_80_5 = {2e 67 6f 6d 65 72 } //.gomer  1
	condition:
		((#a_80_0  & 1)*10+(#a_80_1  & 1)*10+(#a_80_2  & 1)*10+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1) >=31
 
}
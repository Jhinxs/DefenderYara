
rule HackTool_Win32_Orditti_A{
	meta:
		description = "HackTool:Win32/Orditti.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {4c 00 6f 00 72 00 64 00 73 00 20 00 56 00 69 00 72 00 75 00 73 00 20 00 47 00 65 00 6e 00 20 00 } //1 Lords Virus Gen 
		$a_01_1 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 69 00 6d 00 20 00 4d 00 63 00 53 00 41 00 43 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 20 00 2f 00 46 00 } //1 taskkill /im McSACore.exe /F
		$a_01_2 = {4d 00 61 00 64 00 65 00 20 00 42 00 79 00 20 00 4c 00 6f 00 72 00 64 00 54 00 69 00 74 00 74 00 69 00 53 00 33 00 30 00 30 00 30 00 } //1 Made By LordTittiS3000
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
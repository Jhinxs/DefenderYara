
rule Worm_BAT_Mattim_A{
	meta:
		description = "Worm:BAT/Mattim.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 52 00 65 00 6d 00 6f 00 74 00 6f 00 56 00 69 00 74 00 74 00 69 00 6d 00 61 00 3a 00 } //1 KeyloggerRemotoVittima:
		$a_01_1 = {45 00 6d 00 61 00 69 00 6c 00 20 00 4e 00 3a 00 } //1 Email N:
		$a_01_2 = {3d 00 55 00 70 00 64 00 61 00 74 00 65 00 41 00 64 00 6f 00 62 00 65 00 2e 00 45 00 58 00 45 00 } //1 =UpdateAdobe.EXE
		$a_01_3 = {2f 00 43 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 62 00 61 00 74 00 } //1 /Config.bat
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}
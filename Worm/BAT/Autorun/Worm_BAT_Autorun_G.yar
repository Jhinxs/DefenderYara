
rule Worm_BAT_Autorun_G{
	meta:
		description = "Worm:BAT/Autorun.G,SIGNATURE_TYPE_PEHSTR_EXT,08 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {70 69 64 67 69 6e 73 74 65 61 6c 65 72 } //2 pidginstealer
		$a_00_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 49 00 4d 00 56 00 55 00 5c 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //1 Software\IMVU\Password
		$a_00_2 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 6d 00 6f 00 7a 00 5f 00 6c 00 6f 00 67 00 69 00 6e 00 73 00 3b 00 } //1 SELECT * FROM moz_logins;
		$a_01_3 = {4c 65 74 68 61 6c 49 6e 6a 65 63 74 69 6f 6e 53 74 75 62 2e 52 65 73 6f 75 72 63 65 73 } //3 LethalInjectionStub.Resources
		$a_00_4 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //1 [autorun]
	condition:
		((#a_01_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*3+(#a_00_4  & 1)*1) >=4
 
}
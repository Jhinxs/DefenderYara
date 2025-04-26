
rule Backdoor_Win32_Briewots_A{
	meta:
		description = "Backdoor:Win32/Briewots.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {42 72 6f 77 73 65 49 74 00 } //1
		$a_01_1 = {49 47 4e 4f 52 45 36 3d 6a 61 76 61 73 63 72 69 70 74 3a 68 69 73 74 6f 72 79 2e 62 61 63 6b 28 31 29 } //1 IGNORE6=javascript:history.back(1)
		$a_01_2 = {52 65 73 74 61 72 74 41 6c 6c 50 72 6f 6a 65 63 74 5f 4f 4e 4c 59 69 66 69 70 41 44 44 52 45 53 53 5f 6f 72 5f 4c 75 63 6b 79 55 52 4c 32 76 69 73 69 74 5f 46 6f 75 6e 64 3d 79 65 73 } //1 RestartAllProject_ONLYifipADDRESS_or_LuckyURL2visit_Found=yes
		$a_01_3 = {41 6c 6c 6f 77 65 64 43 6f 75 6e 74 72 69 65 73 3d 52 55 2c 20 55 53 2c 20 47 42 2c 20 43 41 2c } //1 AllowedCountries=RU, US, GB, CA,
		$a_01_4 = {45 00 78 00 65 00 63 00 75 00 74 00 65 00 46 00 69 00 6c 00 65 00 73 00 2e 00 20 00 46 00 69 00 6c 00 65 00 3a 00 } //1 ExecuteFiles. File:
		$a_01_5 = {2f 00 67 00 65 00 6f 00 2f 00 63 00 6f 00 75 00 6e 00 74 00 72 00 79 00 62 00 79 00 69 00 70 00 2e 00 70 00 68 00 70 00 } //1 /geo/countrybyip.php
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}
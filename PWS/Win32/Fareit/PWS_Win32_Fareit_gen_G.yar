
rule PWS_Win32_Fareit_gen_G{
	meta:
		description = "PWS:Win32/Fareit.gen!G,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {50 6a 00 6a 02 ff 75 f8 6a 00 ff 73 04 ff 15 ?? ?? ?? ?? 0b c0 74 ?? ff 75 f8 e8 ?? ?? ?? ?? eb ?? ff 75 f8 e8 ?? ?? ?? ?? bf ?? ?? ?? ?? c7 45 fc 00 00 00 00 8d 45 fc 50 6a 00 6a 02 57 6a 00 ff 73 04 ff 15 ?? ?? ?? ?? 0b c0 0f 84 } //1
		$a_01_1 = {50 4b 44 46 49 4c 45 30 59 55 49 43 52 59 50 54 45 44 30 59 55 49 31 2e 30 } //1 PKDFILE0YUICRYPTED0YUI1.0
		$a_01_2 = {50 57 44 46 49 4c 45 30 59 55 49 } //1 PWDFILE0YUI
		$a_00_3 = {00 43 6c 69 65 6e 74 20 48 61 73 68 00 53 54 41 54 55 53 2d 49 4d 50 4f 52 54 2d 4f 4b 00 } //1 䌀楬湥⁴慈桳匀䅔啔ⵓ䵉佐呒伭K
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}
rule PWS_Win32_Fareit_gen_G_2{
	meta:
		description = "PWS:Win32/Fareit.gen!G!!Fareit.gen!G,SIGNATURE_TYPE_ARHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {50 6a 00 6a 02 ff 75 f8 6a 00 ff 73 04 ff 15 ?? ?? ?? ?? 0b c0 74 ?? ff 75 f8 e8 ?? ?? ?? ?? eb ?? ff 75 f8 e8 ?? ?? ?? ?? bf ?? ?? ?? ?? c7 45 fc 00 00 00 00 8d 45 fc 50 6a 00 6a 02 57 6a 00 ff 73 04 ff 15 ?? ?? ?? ?? 0b c0 0f 84 } //1
		$a_01_1 = {50 4b 44 46 49 4c 45 30 59 55 49 43 52 59 50 54 45 44 30 59 55 49 31 2e 30 } //1 PKDFILE0YUICRYPTED0YUI1.0
		$a_01_2 = {50 57 44 46 49 4c 45 30 59 55 49 } //1 PWDFILE0YUI
		$a_00_3 = {00 43 6c 69 65 6e 74 20 48 61 73 68 00 53 54 41 54 55 53 2d 49 4d 50 4f 52 54 2d 4f 4b 00 } //1 䌀楬湥⁴慈桳匀䅔啔ⵓ䵉佐呒伭K
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}
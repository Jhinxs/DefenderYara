
rule Adware_Win32_OxyPump{
	meta:
		description = "Adware:Win32/OxyPump,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 3e 00 6f 00 6e 00 6d 00 6d 00 6e 00 6f 00 3e 00 2f 00 43 00 64 00 6d 00 61 00 61 00 6d 00 64 00 43 00 3c 00 } //1 <>onmmno>/CdmaamdC<
		$a_01_1 = {53 00 6e 00 46 00 52 00 57 00 6e 00 52 00 69 00 5c 00 72 00 69 00 56 00 72 00 6e 00 73 00 72 00 66 00 75 00 5c 00 5c 00 69 00 77 00 64 00 4f 00 75 00 54 00 5c 00 41 00 6f 00 45 00 73 00 4d 00 65 00 63 00 74 00 6f 00 65 00 6f 00 72 00 74 00 43 00 57 00 73 00 6e 00 6f 00 } //1 SnFRWnRi\riVrnsrfu\\iwdOuT\AoEsMectoeortCWsno
		$a_01_2 = {3c 00 3e 00 73 00 49 00 72 00 65 00 64 00 55 00 3c 00 55 00 64 00 65 00 72 00 49 00 73 00 3e 00 2f 00 } //1 <>sIredU<UderIs>/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
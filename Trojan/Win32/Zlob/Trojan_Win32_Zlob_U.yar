
rule Trojan_Win32_Zlob_U{
	meta:
		description = "Trojan:Win32/Zlob.U,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {8b 55 08 03 55 fc 0f be 02 35 ?? 00 00 00 8b 4d 0c 03 4d fc 88 01 eb } //2
		$a_01_1 = {99 b9 64 00 00 00 f7 f9 83 c2 01 83 fa 46 0f 8d } //2
		$a_01_2 = {99 b9 64 00 00 00 f7 f9 83 c2 01 83 fa 32 7d 05 } //2
		$a_01_3 = {2f 61 64 76 61 6e 63 65 64 5f 73 65 61 72 63 68 } //1 /advanced_search
		$a_00_4 = {74 6f 6f 6c 69 65 2e 44 4c 4c 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}

rule Trojan_Win32_Zlob_gen_F{
	meta:
		description = "Trojan:Win32/Zlob.gen!F,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 05 00 00 "
		
	strings :
		$a_03_0 = {83 e9 57 66 89 4d f0 8b 55 f4 8b 45 08 0f b7 0c 50 83 f9 ?? 7c 20 8b 55 f4 8b 45 08 0f b7 0c 50 83 f9 ?? 7f 11 8b 55 f4 8b 45 08 0f b7 0c 50 83 e9 ?? 66 89 4d f0 } //1
		$a_03_1 = {83 e8 57 66 89 45 f4 8b 4d 08 03 4d f8 0f be 11 83 fa ?? 7c 1e 8b 45 08 03 45 f8 0f be 08 83 f9 ?? 7f 10 8b 55 08 03 55 f8 0f be 02 83 e8 ?? 66 89 45 f4 } //1
		$a_03_2 = {83 e8 57 66 89 45 f0 8b 4d fc 03 4d f4 0f be 11 83 fa ?? 7c 1e 8b 45 fc 03 45 f4 0f be 08 83 f9 ?? 7f 10 8b 55 fc 03 55 f4 0f be 02 83 e8 ?? 66 89 45 f0 } //1
		$a_03_3 = {83 e8 57 66 89 45 f0 8b 45 f4 8b 4d 08 0f b7 04 41 83 f8 ?? 7c 20 8b 45 f4 8b 4d 08 0f b7 04 41 83 f8 ?? 7f 11 8b 45 f4 8b 4d 08 0f b7 04 41 83 e8 ?? 66 89 45 f0 } //1
		$a_00_4 = {53 6b 79 6e 61 78 } //-10 Skynax
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_00_4  & 1)*-10) >=1
 
}
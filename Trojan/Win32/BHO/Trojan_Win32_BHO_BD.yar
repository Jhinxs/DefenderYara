
rule Trojan_Win32_BHO_BD{
	meta:
		description = "Trojan:Win32/BHO.BD,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {2f 62 61 69 64 75 3f 77 6f 72 64 3d } //1 /baidu?word=
		$a_00_1 = {45 78 70 6c 6f 72 65 57 43 6c 61 73 73 00 00 00 43 61 62 69 6e 65 74 57 43 6c 61 73 73 } //1
		$a_03_2 = {6a 32 ff 15 ?? ?? 00 10 8b 45 f4 85 c0 75 05 a1 ?? ?? 00 10 50 ff 75 f8 6a 0c ff 35 ?? ?? 00 10 ff d6 4f 75 db } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
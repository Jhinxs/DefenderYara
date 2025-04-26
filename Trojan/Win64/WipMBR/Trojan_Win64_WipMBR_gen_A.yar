
rule Trojan_Win64_WipMBR_gen_A{
	meta:
		description = "Trojan:Win64/WipMBR.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {0f b6 06 3c 45 0f 84 ?? ?? ?? ?? 3c 54 0f 85 ?? ?? ?? ?? 4c 8d 0d } //2
		$a_01_1 = {2f 00 61 00 6a 00 61 00 78 00 5f 00 6d 00 6f 00 64 00 61 00 6c 00 2f 00 6d 00 6f 00 64 00 61 00 6c 00 2f 00 64 00 61 00 74 00 61 00 2e 00 61 00 73 00 70 00 } //1 /ajax_modal/modal/data.asp
		$a_03_2 = {83 e0 03 41 b8 01 00 00 00 48 8b cd 42 0f b6 04 28 4c 89 74 24 20 32 06 88 84 24 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? ff c3 48 ff c6 } //2
		$a_01_3 = {15 af 52 f0 a0 ff ca 10 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_03_2  & 1)*2+(#a_01_3  & 1)*1) >=3
 
}
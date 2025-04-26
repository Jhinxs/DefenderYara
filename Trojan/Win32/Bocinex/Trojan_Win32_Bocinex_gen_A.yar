
rule Trojan_Win32_Bocinex_gen_A{
	meta:
		description = "Trojan:Win32/Bocinex.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {c7 45 c4 3c 00 00 00 50 c7 45 c8 40 04 00 00 89 75 cc 89 75 d0 c7 45 d4 ?? ?? ?? ?? c7 45 d8 ?? ?? ?? ?? 89 75 dc 89 75 e0 89 75 e4 ff 15 } //1
		$a_01_1 = {64 6c 6f 61 64 2e 61 73 69 61 3a 38 33 33 32 2f 20 2d 75 } //1 dload.asia:8332/ -u
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
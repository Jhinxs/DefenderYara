
rule Trojan_Win32_Simda_gen_C{
	meta:
		description = "Trojan:Win32/Simda.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {0f b6 02 35 a0 00 00 00 8b 8d ?? ?? ?? ?? 03 8d ?? ?? ?? ?? 88 01 eb } //2
		$a_01_1 = {0f be 02 83 f8 21 74 05 } //1
		$a_01_2 = {2f 6b 6e 6f 63 6b 2e 70 68 70 3f } //1 /knock.php?
		$a_01_3 = {21 63 6f 6e 66 69 67 } //1 !config
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}
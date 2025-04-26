
rule Trojan_Win32_Ertfor_B{
	meta:
		description = "Trojan:Win32/Ertfor.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b 07 3d 23 23 23 23 90 09 06 00 8d bd } //1
		$a_03_1 = {eb 11 8a 07 32 85 ?? ?? ?? ?? 88 07 47 ff 8d } //1
		$a_01_2 = {3f 69 64 3d 25 73 26 76 65 72 3d } //1 ?id=%s&ver=
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}
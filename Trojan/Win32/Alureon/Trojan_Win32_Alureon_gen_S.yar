
rule Trojan_Win32_Alureon_gen_S{
	meta:
		description = "Trojan:Win32/Alureon.gen!S,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 4b 43 52 50 68 32 4c 44 54 ff 15 } //1
		$a_01_1 = {68 4c 43 52 50 bb 32 4c 44 54 } //1
		$a_01_2 = {6a 04 8d 85 fc fe ff ff 50 c6 04 37 7c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}
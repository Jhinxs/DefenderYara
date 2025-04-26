
rule Trojan_Win32_EyeStye_gen_C{
	meta:
		description = "Trojan:Win32/EyeStye.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_0a_0 = {77 69 6e 6d 6d 2e 64 6c 6c [0-04] 6f 76 67 70 71 34 6b 74 75 } //1
		$a_00_1 = {0f be c9 c1 c0 07 33 c1 42 8a 0a 84 c9 } //1
	condition:
		((#a_0a_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}
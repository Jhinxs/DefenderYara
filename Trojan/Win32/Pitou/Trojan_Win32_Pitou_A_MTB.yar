
rule Trojan_Win32_Pitou_A_MTB{
	meta:
		description = "Trojan:Win32/Pitou.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {c7 84 24 30 01 00 00 ea 13 30 0a c7 84 24 04 02 00 00 0a 4b 19 39 c7 84 24 7c 02 00 00 3e 5c d5 18 c7 84 24 d8 02 00 00 e9 d6 86 0e c7 84 24 a8 01 00 00 5a 43 d6 66 c7 84 24 ec 02 00 00 67 3a d3 21 c7 84 24 e4 02 00 00 ab 3e 26 49 c7 84 24 5c 01 00 00 f9 61 56 14 c7 84 24 58 01 00 00 5c a8 86 08 c7 84 24 74 02 00 00 fb 0e 18 4d } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}
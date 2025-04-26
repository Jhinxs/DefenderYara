
rule Backdoor_Win32_Farfli_BN_MTB{
	meta:
		description = "Backdoor:Win32/Farfli.BN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {8a 14 01 80 f2 91 80 ea 67 88 14 01 41 3b 4c 24 08 7c } //2
		$a_01_1 = {25 73 2e 65 78 65 } //1 %s.exe
		$a_01_2 = {66 75 63 6b 79 6f 75 } //1 fuckyou
		$a_01_3 = {5b 50 72 69 6e 74 20 53 63 72 65 65 6e 5d } //1 [Print Screen]
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}
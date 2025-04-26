
rule Trojan_Win64_IcedID_MAB_MTB{
	meta:
		description = "Trojan:Win64/IcedID.MAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {74 5a 74 73 4a 2e 64 6c 6c } //1 tZtsJ.dll
		$a_01_1 = {47 59 75 73 64 6b 6e 73 61 } //1 GYusdknsa
		$a_01_2 = {48 45 67 42 30 74 53 4f } //1 HEgB0tSO
		$a_01_3 = {48 67 48 65 43 37 37 6d 7a } //1 HgHeC77mz
		$a_01_4 = {75 6c 75 37 62 4c 45 4b 59 47 } //1 ulu7bLEKYG
		$a_01_5 = {72 6b 32 78 5a 43 74 70 6e } //1 rk2xZCtpn
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
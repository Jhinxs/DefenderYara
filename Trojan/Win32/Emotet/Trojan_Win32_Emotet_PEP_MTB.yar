
rule Trojan_Win32_Emotet_PEP_MTB{
	meta:
		description = "Trojan:Win32/Emotet.PEP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {8a 0c 02 8b 54 24 ?? 32 4c 14 ?? 40 83 6c 24 ?? 01 88 48 ff 89 44 24 90 09 08 00 8b 44 24 ?? 8b 54 24 } //1
		$a_81_1 = {45 75 2a 6c 41 35 5a 7c 70 23 45 7a 5a 56 43 50 43 7e 71 74 4c 6e 2a 76 52 62 52 50 62 4d 7e 4c 23 39 64 67 53 7a 52 7d 65 44 78 24 45 39 48 32 7a 6f 6e 62 46 74 63 23 6a 38 37 72 7d 6b 57 53 4c 67 47 7b } //1 Eu*lA5Z|p#EzZVCPC~qtLn*vRbRPbM~L#9dgSzR}eDx$E9H2zonbFtc#j87r}kWSLgG{
	condition:
		((#a_02_0  & 1)*1+(#a_81_1  & 1)*1) >=1
 
}
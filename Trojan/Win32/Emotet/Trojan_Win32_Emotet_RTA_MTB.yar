
rule Trojan_Win32_Emotet_RTA_MTB{
	meta:
		description = "Trojan:Win32/Emotet.RTA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {6b c9 03 0f af d7 03 d3 03 d0 8b 44 24 ?? 8a 0c 11 30 08 ff 44 24 ?? 8b 44 24 ?? 3b 44 24 ?? 0f 82 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Emotet_RTA_MTB_2{
	meta:
		description = "Trojan:Win32/Emotet.RTA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {62 61 68 6b 67 6b 78 6b 64 72 6f 6b 6c 6a } //1 bahkgkxkdroklj
		$a_01_1 = {62 6b 61 7a 7a 73 64 70 63 74 70 6d 79 72 61 } //1 bkazzsdpctpmyra
		$a_01_2 = {65 77 6f 79 70 77 73 62 64 61 70 6d } //1 ewoypwsbdapm
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Trojan_Win32_Emotet_RTA_MTB_3{
	meta:
		description = "Trojan:Win32/Emotet.RTA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {0b c1 50 56 6a 00 6a ff ff 15 ?? ?? ?? ?? e9 } //1
		$a_03_1 = {03 c5 03 44 24 ?? 8b 6c 24 ?? 03 44 24 ?? 83 c5 01 03 44 24 ?? 89 6c 24 ?? 0f b6 14 10 8b 44 24 ?? 30 54 28 ?? 3b ac 24 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule Trojan_Win32_Emotet_RTA_MTB_4{
	meta:
		description = "Trojan:Win32/Emotet.RTA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {03 c2 0b c8 51 8b 45 ?? 50 6a 00 6a ff ff 15 ?? ?? ?? ?? 89 45 ?? e9 } //1
		$a_80_1 = {4f 51 5a 58 4d 4a 64 42 7a 31 47 2b 6f 40 64 2b 63 23 7a 38 4f 41 48 58 24 28 31 2a 53 37 30 6f 33 37 56 49 44 75 76 6f 24 3e 50 54 31 29 76 70 65 29 74 68 6c 40 6e 72 41 47 5a 78 47 74 4c 41 73 65 42 59 6d 68 37 } //OQZXMJdBz1G+o@d+c#z8OAHX$(1*S70o37VIDuvo$>PT1)vpe)thl@nrAGZxGtLAseBYmh7  1
	condition:
		((#a_03_0  & 1)*1+(#a_80_1  & 1)*1) >=2
 
}
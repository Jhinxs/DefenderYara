
rule Trojan_Win32_Ekstak_RI_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.RI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {55 8b ec 83 ec 08 56 e8 c4 6d fb ff e9 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Ekstak_RI_MTB_2{
	meta:
		description = "Trojan:Win32/Ekstak.RI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {55 8b ec 83 ec 10 53 56 57 6a 00 e8 70 0b f6 ff 89 45 fc e9 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Ekstak_RI_MTB_3{
	meta:
		description = "Trojan:Win32/Ekstak.RI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_01_0 = {55 8b ec 56 e8 27 6a fb ff e9 } //5
		$a_00_1 = {40 00 00 40 2e 73 63 61 72 64 } //1 @䀀献慣摲
	condition:
		((#a_01_0  & 1)*5+(#a_00_1  & 1)*1) >=6
 
}
rule Trojan_Win32_Ekstak_RI_MTB_4{
	meta:
		description = "Trojan:Win32/Ekstak.RI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {55 8b ec 56 8b 75 14 56 ff 15 ?? e0 46 00 6a 00 e8 ?? 3b 04 00 e9 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Ekstak_RI_MTB_5{
	meta:
		description = "Trojan:Win32/Ekstak.RI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {8d 4d f8 51 50 ff 15 90 31 65 00 85 c0 74 0e 8b 45 14 8d 55 fc 52 50 ff 15 c4 30 65 00 e9 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
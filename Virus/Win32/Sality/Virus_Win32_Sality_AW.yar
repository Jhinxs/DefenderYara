
rule Virus_Win32_Sality_AW{
	meta:
		description = "Virus:Win32/Sality.AW,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_07_0 = {81 ed 05 10 40 00 8a 9d a7 26 40 00 84 db 74 13 81 c4 ?? ?? ?? ?? 2d ?? ?? ?? ?? 89 85 ?? 12 40 00 eb 19 c7 85 ?? 14 40 00 22 22 22 22 c7 85 ?? 14 40 00 33 33 33 33 e9 ?? ?? 00 00 } //1
	condition:
		((#a_07_0  & 1)*1) >=1
 
}
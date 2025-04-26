
rule Virus_Win32_Vampiro_A{
	meta:
		description = "Virus:Win32/Vampiro.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b8 ff 00 00 00 aa b8 04 24 00 00 66 ab b8 ff 25 00 00 66 ab 8b 85 ?? ?? ?? ?? ab c3 90 09 19 00 8d bd ?? ?? ?? ?? 8b 85 ?? ?? ?? ?? ab 8b f8 8b 9d ?? ?? ?? ?? 0b db 74 0d } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
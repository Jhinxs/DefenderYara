
rule Virus_Win32_Spradle_A{
	meta:
		description = "Virus:Win32/Spradle.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {73 70 72 65 61 64 6c 6c 2e 64 6c 6c 00 00 00 00 50 61 79 4c 6f 61 64 00 90 09 38 00 28 ?? ?? ?? 00 00 00 00 00 00 00 00 38 ?? ?? ?? 30 ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 ?? ?? ?? 00 00 00 00 ?? ?? ?? ?? 00 00 00 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}

rule Virus_Win32_Clapzok_A{
	meta:
		description = "Virus:Win32/Clapzok.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {b0 2e ab e8 7c 01 00 00 ff 55 bd 72 32 e8 61 00 00 00 e8 1c 01 00 00 8d 7d a5 ff 55 d9 8b 45 b5 85 c0 75 1b 39 45 a5 74 16 8b 5d a9 e8 39 00 00 00 8b 5d ad e8 31 00 00 00 8b 5d a5 ff 55 dd } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
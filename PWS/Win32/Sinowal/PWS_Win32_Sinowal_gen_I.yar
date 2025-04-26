
rule PWS_Win32_Sinowal_gen_I{
	meta:
		description = "PWS:Win32/Sinowal.gen!I,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {68 e7 be ad de ff 15 ?? ?? 40 00 85 c0 74 05 } //1
		$a_01_1 = {e8 00 00 00 00 58 64 8b 1d 30 00 00 00 83 c3 06 8b 5b 06 8b 5b 0c 8b cb 39 43 18 7f 0a } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
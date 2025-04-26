
rule Trojan_Win32_DiskWriter_NEAA_MTB{
	meta:
		description = "Trojan:Win32/DiskWriter.NEAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 55 a8 81 c2 ?? ?? ?? ?? 2b 55 9c 2b d0 8b 45 d4 31 10 83 45 ec 04 83 45 d4 04 8b 45 ec 3b 45 d0 72 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}
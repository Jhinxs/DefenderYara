
rule Trojan_WinNT_Kangkio_A{
	meta:
		description = "Trojan:WinNT/Kangkio.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {55 8b c7 45 ?? ec 56 64 a1 c7 45 ?? 24 01 00 00 c7 45 ?? 8b 75 08 3b 83 3d ?? ?? 01 00 05 75 12 83 3d ?? ?? 01 00 01 75 } //2
		$a_01_1 = {4e 74 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e 20 66 61 69 6c 64 21 } //1 NtQuerySystemInformation faild!
		$a_01_2 = {4e 65 76 65 72 20 62 65 20 68 65 72 65 20 3f } //1 Never be here ?
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}
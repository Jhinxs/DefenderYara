
rule Trojan_Win32_Kangkio_A{
	meta:
		description = "Trojan:Win32/Kangkio.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {25 73 5c 64 72 69 76 65 72 73 5c 4b 50 44 72 76 2e 73 79 73 } //1 %s\drivers\KPDrv.sys
		$a_01_1 = {4d 63 73 68 69 65 6c 64 } //1 Mcshield
		$a_01_2 = {46 75 41 6c 6c 31 } //1 FuAll1
		$a_02_3 = {68 7a 29 40 00 64 a1 00 00 00 00 50 64 89 25 00 00 00 00 51 56 57 8b f9 6a 00 e8 ?? ?? 00 00 83 c4 04 8b cf e8 ?? ?? 00 00 68 ?? ?? 40 00 6a 00 6a 00 ff 15 ?? ?? 40 00 8b f0 85 f6 74 2f ff 15 ?? ?? 40 00 3d b7 00 00 00 75 22 56 ff 15 48 30 40 00 6a 00 ff 15 34 30 40 00 } //3
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_02_3  & 1)*3) >=5
 
}

rule Trojan_Win32_Yoddos_A{
	meta:
		description = "Trojan:Win32/Yoddos.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {5b 52 65 70 61 69 72 53 53 44 54 5d 20 49 52 50 5f 4d 4a 5f 43 52 45 41 54 45 } //1 [RepairSSDT] IRP_MJ_CREATE
		$a_01_1 = {26 4b 69 53 65 72 76 69 63 65 54 61 62 6c 65 3d 3d 25 30 38 58 } //1 &KiServiceTable==%08X
		$a_01_2 = {5c 64 72 69 76 65 72 73 5c 50 43 49 44 75 6d 70 2e 73 79 73 00 } //1
		$a_01_3 = {52 53 44 53 76 } //1 RSDSv
		$a_01_4 = {23 25 64 3c 3c 3c 3c 3c 49 40 43 3c 3c 3c 3c 3c 25 73 21 } //1 #%d<<<<<I@C<<<<<%s!
		$a_01_5 = {6b 6d 6f 6e 2e 64 6c 6c 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
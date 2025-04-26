
rule TrojanSpy_Win32_Cefamon_A{
	meta:
		description = "TrojanSpy:Win32/Cefamon.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {2f 64 61 74 61 76 65 72 2e 70 68 70 3f 76 3d } //1 /dataver.php?v=
		$a_03_1 = {63 66 74 6d 6f 6e ?? 2e 65 78 65 00 [0-10] 66 75 6c 6c 00 } //1
		$a_01_2 = {41 70 70 45 76 65 6e 74 73 5c 53 63 68 65 6d 65 73 5c 41 70 70 73 5c 45 78 70 6c 6f 72 65 72 5c 4e 61 76 69 67 61 74 69 6e 67 5c 2e 43 75 72 72 65 6e 74 00 } //1 灁䕰敶瑮屳捓敨敭屳灁獰䕜灸潬敲屲慎楶慧楴杮⹜畃牲湥t
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
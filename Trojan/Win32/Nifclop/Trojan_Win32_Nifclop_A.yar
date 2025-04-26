
rule Trojan_Win32_Nifclop_A{
	meta:
		description = "Trojan:Win32/Nifclop.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {66 2d 07 00 8d 4d 98 0f 80 ?? ?? 00 00 0f bf c0 50 51 } //2
		$a_03_1 = {6a 79 8d 8d ?? ?? ff ff 51 ff 15 ?? ?? ?? ?? 8d 95 ?? ?? ff ff 6a 70 52 ff 15 ?? ?? ?? ?? 8d 85 ?? ?? ff ff 6a 6e 50 ff 15 ?? ?? ?? ?? 8d 8d ?? ?? ff ff 6a 6f 51 ff 15 ?? ?? ?? ?? 8d 95 ?? ?? ff ff 6a 7b } //2
		$a_00_2 = {3c 00 21 00 2d 00 2d 00 49 00 6e 00 69 00 63 00 69 00 6f 00 70 00 2d 00 2d 00 3e 00 } //1 <!--Iniciop-->
		$a_00_3 = {3c 00 21 00 2d 00 2d 00 46 00 69 00 6e 00 70 00 2d 00 2d 00 3e 00 } //1 <!--Finp-->
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}
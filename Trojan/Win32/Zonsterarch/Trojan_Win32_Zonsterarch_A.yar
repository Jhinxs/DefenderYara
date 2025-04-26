
rule Trojan_Win32_Zonsterarch_A{
	meta:
		description = "Trojan:Win32/Zonsterarch.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {2d 44 5a 00 01 0f 84 ?? ?? 00 00 2d 00 00 00 0b 0f 85 ?? ?? 00 00 83 ?? 08 71 } //2
		$a_02_1 = {3c 73 74 72 20 69 64 3d 22 ?? ?? 22 3e 59 6f 75 20 6e 65 65 64 20 74 6f 20 73 65 6e 64 20 25 64 20 53 4d 53 } //1
		$a_00_2 = {63 72 65 64 69 74 2f 3f 70 61 79 3d } //1 credit/?pay=
		$a_00_3 = {5b 40 63 69 64 3d 22 25 73 22 5d 2f 62 61 73 65 5b 40 63 6f 73 74 3d 22 25 64 22 5d 2f 70 72 69 63 65 } //1 [@cid="%s"]/base[@cost="%d"]/price
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}
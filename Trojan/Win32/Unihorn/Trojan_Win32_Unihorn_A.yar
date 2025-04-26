
rule Trojan_Win32_Unihorn_A{
	meta:
		description = "Trojan:Win32/Unihorn.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 06 00 00 "
		
	strings :
		$a_03_0 = {83 7d f8 ff 74 2a 6a 00 8d 95 ?? ?? ff ff 52 68 ac 01 00 00 68 ?? ?? ?? ?? 8b 45 f8 50 ff 15 } //2
		$a_01_1 = {c7 85 10 fd ff ff 00 00 00 00 68 c8 02 00 00 6a 00 8d 85 14 fd ff ff 50 e8 } //2
		$a_01_2 = {61 3d 6c 6f 61 64 26 69 64 3d 25 73 26 64 72 3d 25 64 26 72 72 3d 25 64 } //1 a=load&id=%s&dr=%d&rr=%d
		$a_01_3 = {3c 2f 62 6f 74 5f 65 6e 64 63 6d 64 3e } //1 </bot_endcmd>
		$a_01_4 = {75 6e 69 6b 6f 72 6e 2d 76 } //1 unikorn-v
		$a_01_5 = {6f 69 64 3d 25 64 26 73 3d 25 64 26 75 3d 25 73 26 63 69 64 3d 25 73 2d 25 30 38 58 26 72 75 3d 25 64 26 72 74 3d 25 64 26 74 3d 25 64 26 62 69 64 3d 25 73 } //1 oid=%d&s=%d&u=%s&cid=%s-%08X&ru=%d&rt=%d&t=%d&bid=%s
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=3
 
}
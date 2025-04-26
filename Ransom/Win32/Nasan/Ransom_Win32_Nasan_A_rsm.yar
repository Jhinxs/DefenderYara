
rule Ransom_Win32_Nasan_A_rsm{
	meta:
		description = "Ransom:Win32/Nasan.A!rsm,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 03 00 00 "
		
	strings :
		$a_03_0 = {b8 ff 00 00 00 66 33 cf 66 23 c8 0f b6 04 f5 ?? ?? ?? ?? 66 33 c8 47 66 89 0c 53 66 3b 3c f5 ?? ?? ?? ?? 72 } //1
		$a_03_1 = {d1 e8 35 20 83 b8 ed eb 02 d1 e8 4a 75 ?? 89 01 47 83 c1 04 81 ff 00 01 00 00 } //1
		$a_03_2 = {83 c9 ff 85 db 74 ?? 0f b6 04 2e 33 c1 c1 e9 08 25 ff 00 00 00 33 0c 85 ?? ?? ?? ?? 46 3b f3 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=10
 
}
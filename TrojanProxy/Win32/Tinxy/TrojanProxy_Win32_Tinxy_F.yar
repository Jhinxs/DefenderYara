
rule TrojanProxy_Win32_Tinxy_F{
	meta:
		description = "TrojanProxy:Win32/Tinxy.F,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {6a 1e 51 68 98 01 22 00 50 ff 15 } //3
		$a_01_1 = {83 f8 01 89 45 f8 7d 0b 8b c7 47 83 f8 64 7d 03 53 eb dd } //1
		$a_03_2 = {83 c0 ac 56 50 53 ff 15 ?? ?? ?? ?? 8b 3d ?? ?? ?? ?? 8d 45 fc 56 50 6a 50 } //1
		$a_01_3 = {50 4e 50 5f 54 44 49 00 } //1 乐彐䑔I
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
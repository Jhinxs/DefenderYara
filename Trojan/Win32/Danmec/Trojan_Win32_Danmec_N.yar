
rule Trojan_Win32_Danmec_N{
	meta:
		description = "Trojan:Win32/Danmec.N,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {00 6d 61 69 6c 71 5f 69 6e 69 74 00 } //1 洀楡煬楟楮t
		$a_03_1 = {0f b7 46 06 ff 45 fc 83 45 f8 28 39 45 fc 7c ?? 8b 46 28 03 45 08 89 85 ?? ?? ff ff 8d 85 ?? ?? ff ff 50 ff 75 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
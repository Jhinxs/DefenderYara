
rule Trojan_Win32_LummaC_ASGI_MTB{
	meta:
		description = "Trojan:Win32/LummaC.ASGI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {01 d0 0f b6 10 0f b6 45 ?? 0f b6 84 05 ?? ?? ?? ?? 31 d0 88 45 ?? 8b 55 f0 8b 45 0c 01 c2 0f b6 45 ?? 88 02 83 45 f0 01 8b 45 f0 3b 45 10 0f 8c } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}
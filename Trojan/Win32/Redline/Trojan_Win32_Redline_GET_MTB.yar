
rule Trojan_Win32_Redline_GET_MTB{
	meta:
		description = "Trojan:Win32/Redline.GET!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {89 f3 8d 55 ?? 29 c1 c0 c1 ?? 29 cb 89 d9 89 fb 31 c1 f7 d9 c0 c9 ?? 29 cb 89 d9 31 c1 29 c1 31 c1 83 c1 ?? c0 c9 ?? 83 e9 ?? 88 4c 05 ?? 40 83 f8 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
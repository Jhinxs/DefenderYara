
rule Trojan_Win32_IcedId_DEE_MTB{
	meta:
		description = "Trojan:Win32/IcedId.DEE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {83 c4 10 53 6a 01 53 53 8d 44 24 28 50 ff 15 ?? ?? ?? ?? 85 c0 75 ?? 6a 08 6a 01 53 53 8d 4c 24 28 51 ff 15 90 1b 00 85 c0 } //1
		$a_81_1 = {68 66 52 75 50 68 7a 59 4f 69 71 55 48 77 35 39 77 39 67 36 38 74 41 4e 31 6c 56 47 50 42 6c 6d 59 6a 4e 4b 76 36 48 41 72 4e 4b 59 6a } //1 hfRuPhzYOiqUHw59w9g68tAN1lVGPBlmYjNKv6HArNKYj
	condition:
		((#a_02_0  & 1)*1+(#a_81_1  & 1)*1) >=1
 
}
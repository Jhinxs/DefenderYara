
rule Trojan_Win32_OffLoader_SPDI_MTB{
	meta:
		description = "Trojan:Win32/OffLoader.SPDI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_01_0 = {64 00 65 00 74 00 61 00 69 00 6c 00 71 00 75 00 69 00 63 00 6b 00 73 00 61 00 6e 00 64 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 72 00 65 00 61 00 70 00 2e 00 70 00 68 00 70 00 } //2 detailquicksand.website/reap.php
		$a_01_1 = {70 00 6c 00 61 00 6e 00 65 00 67 00 72 00 61 00 69 00 6e 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 74 00 72 00 61 00 63 00 6b 00 65 00 72 00 2f 00 74 00 68 00 61 00 6e 00 6b 00 5f 00 79 00 6f 00 75 00 2e 00 70 00 68 00 70 00 } //2 planegrain.website/tracker/thank_you.php
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}
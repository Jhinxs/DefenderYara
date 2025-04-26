
rule Trojan_BAT_ArkeiStealer_ABZX_MTB{
	meta:
		description = "Trojan:BAT/ArkeiStealer.ABZX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_01_0 = {41 00 75 00 74 00 6f 00 49 00 74 00 4f 00 53 00 44 00 42 00 61 00 63 00 6b 00 67 00 72 00 6f 00 75 00 6e 00 64 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 } //2
		$a_01_1 = {34 64 64 61 30 35 62 36 2d 63 31 32 35 2d 34 62 36 66 2d 39 62 33 38 2d 35 63 61 36 36 36 62 35 31 37 63 38 } //1 4dda05b6-c125-4b6f-9b38-5ca666b517c8
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}
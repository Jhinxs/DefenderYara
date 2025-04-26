
rule Trojan_BAT_Redline_GFV_MTB{
	meta:
		description = "Trojan:BAT/Redline.GFV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_03_0 = {7e 02 00 00 04 72 59 00 00 70 28 ?? ?? ?? 0a 28 ?? ?? ?? 06 0a 06 28 ?? ?? ?? 06 00 02 02 73 1c 00 00 06 7d 01 00 00 04 02 7b 01 00 00 04 6f } //10
		$a_80_1 = {73 75 69 58 44 68 44 78 55 42 49 39 34 57 2f 58 55 6b 6a 6b 34 6e 36 59 4a 65 2b 6e 35 47 44 62 34 44 72 5a 65 75 58 50 7a 55 67 3d } //suiXDhDxUBI94W/XUkjk4n6YJe+n5GDb4DrZeuXPzUg=  1
	condition:
		((#a_03_0  & 1)*10+(#a_80_1  & 1)*1) >=11
 
}
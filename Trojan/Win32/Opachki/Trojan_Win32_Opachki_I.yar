
rule Trojan_Win32_Opachki_I{
	meta:
		description = "Trojan:Win32/Opachki.I,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {26 66 5b 5d 3d 6c 6f 61 64 65 72 } //1 &f[]=loader
		$a_03_1 = {83 c0 e0 75 12 80 ea 61 80 fa 19 77 0a 41 8a 14 0e 8a 01 84 d2 75 ?? 80 39 00 74 ?? ff 45 08 8b 45 08 8a 10 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
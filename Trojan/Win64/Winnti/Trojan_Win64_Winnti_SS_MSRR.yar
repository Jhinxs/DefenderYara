
rule Trojan_Win64_Winnti_SS_MSRR{
	meta:
		description = "Trojan:Win64/Winnti.SS!MSRR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {32 34 31 42 39 34 2d 30 32 38 41 2d 34 34 31 44 2d 42 39 45 42 2d 42 39 41 44 33 46 44 46 30 33 30 38 } //1 241B94-028A-441D-B9EB-B9AD3FDF0308
		$a_01_1 = {5b 53 74 6f 6e 65 5d 20 50 6f 73 69 74 69 76 65 20 4c 6f 67 69 6e 20 76 69 61 20 32 4b 33 20 54 43 50 2c 20 52 65 73 3d } //1 [Stone] Positive Login via 2K3 TCP, Res=
		$a_01_2 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 43 6c 61 73 73 5c 7b 34 44 33 36 45 39 37 32 2d 45 33 32 35 2d 31 31 43 45 2d 42 46 43 31 2d 30 38 30 30 32 42 45 31 30 33 31 38 7d } //1 SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
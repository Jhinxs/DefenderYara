
rule Trojan_Win32_TrojanisedLolMiner_A{
	meta:
		description = "Trojan:Win32/TrojanisedLolMiner.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_00_0 = {62 00 6f 00 74 00 35 00 30 00 38 00 30 00 39 00 34 00 37 00 35 00 35 00 33 00 3a 00 41 00 41 00 46 00 59 00 37 00 6f 00 36 00 55 00 37 00 65 00 59 00 6e 00 70 00 32 00 63 00 53 00 56 00 5a 00 67 00 49 00 35 00 7a 00 72 00 72 00 42 00 74 00 68 00 54 00 4c 00 43 00 31 00 44 00 45 00 51 00 6f 00 } //1 bot5080947553:AAFY7o6U7eYnp2cSVZgI5zrrBthTLC1DEQo
	condition:
		((#a_00_0  & 1)*1) >=1
 
}
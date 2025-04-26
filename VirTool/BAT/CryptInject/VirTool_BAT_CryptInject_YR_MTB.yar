
rule VirTool_BAT_CryptInject_YR_MTB{
	meta:
		description = "VirTool:BAT/CryptInject.YR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {fe 09 00 00 28 ?? 00 00 0a fe 0e 00 00 28 ?? 00 00 0a fe 0c 00 00 6f ?? 00 00 0a fe 0e 01 00 38 00 00 00 00 fe 0c 01 00 2a } //1
		$a_01_1 = {52 00 48 00 56 00 77 00 62 00 47 00 6c 00 6a 00 59 00 58 00 52 00 6c 00 5a 00 43 00 42 00 68 00 63 00 33 00 4e 00 6c 00 62 00 57 00 4a 00 73 00 65 00 53 00 42 00 70 00 5a 00 43 00 41 00 6e 00 65 00 7a 00 41 00 36 00 54 00 6e 00 30 00 6e 00 4c 00 43 00 42 00 70 00 5a 00 32 00 35 00 76 00 63 00 6d 00 6c 00 75 00 5a 00 79 00 34 00 3d 00 } //1 RHVwbGljYXRlZCBhc3NlbWJseSBpZCAnezA6Tn0nLCBpZ25vcmluZy4=
	condition:
		((#a_02_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
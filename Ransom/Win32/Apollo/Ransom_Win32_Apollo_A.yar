
rule Ransom_Win32_Apollo_A{
	meta:
		description = "Ransom:Win32/Apollo.A,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_01_0 = {5c 55 73 65 72 73 5c 73 61 62 72 69 5c 64 6f 63 75 6d 65 6e 74 73 5c 76 69 73 75 61 6c 20 73 74 75 64 69 6f 20 32 30 31 30 5c 50 72 6f 6a 65 63 74 73 5c 63 72 69 70 74 6f 5c 44 65 62 75 67 5c 53 74 75 62 2e 70 64 62 } //10 \Users\sabri\documents\visual studio 2010\Projects\cripto\Debug\Stub.pdb
		$a_01_1 = {5c 55 73 65 72 73 5c 73 61 62 72 69 5c 64 6f 63 75 6d 65 6e 74 73 5c 76 69 73 75 61 6c 20 73 74 75 64 69 6f 20 32 30 31 30 5c 50 72 6f 6a 65 63 74 73 5c 63 72 69 70 74 6f 5c 52 65 6c 65 61 73 65 5c 53 74 75 62 2e 70 64 62 } //10 \Users\sabri\documents\visual studio 2010\Projects\cripto\Release\Stub.pdb
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10) >=10
 
}
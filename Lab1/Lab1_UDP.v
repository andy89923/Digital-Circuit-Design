primitive Lab1_UDP(K, a, b, c, d);
	output K;
	input a, b, c, d;

	table
	// a b c d : K
	   0 0 0 0 : 0;
	   0 0 0 1 : 0;
	   0 0 1 0 : 0;
	   0 0 1 1 : 1;
	   0 1 0 0 : 0;
	   0 1 0 1 : 0;
	   0 1 1 0 : 0;
	   0 1 1 1 : 1;
	   1 0 0 0 : 0;
	   1 0 0 1 : 0;
	   1 0 1 0 : 0;
	   1 0 1 1 : 1;
	   1 1 0 0 : 1;
	   1 1 0 1 : 1;
	   1 1 1 0 : 1;
	   1 1 1 1 : 1;
	endtable

endprimitive
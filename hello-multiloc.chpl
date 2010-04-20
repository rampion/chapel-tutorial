config const printLocaleName = true;
             
coforall loc in Locales do 
	on loc do 
		writeln("Hello, world! (from locale " + here.id + " of " + numLocales + 
						(if (printLocaleName) then " named " + loc.name else "") + ")");

changequote({{,}})dnl
module Data.Char.Properties.NamesData (getCharacterName) where
{
	import Data.Array;
	import Prelude;

	getCharacterName :: Char -> String;
	getCharacterName = getFromArray where
--	getCharacterName c = handleOmittedRange (getFromArray c) getFromArray c where
	{
		theArray :: Array Char String;
		theArray = accumArray (\_ a -> a) "<undefined>" ('\0','\x10FFFF') theList;
	
		getFromArray :: Char -> String;
		getFromArray c' = if (inRange ('\0','\x10FFFF') c')
		 then theArray ! c'
		 else "<undefined>";
	};

	theList :: [(Char,String)];
	theList =
	[
define({{uchar}},{{		('\x$1',"$2"),
}})dnl
include(DATAFILE)dnl
		('\x10FFFF',"<undefined>")
	];
}

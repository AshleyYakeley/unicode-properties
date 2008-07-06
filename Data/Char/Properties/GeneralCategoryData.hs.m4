changequote({{,}})dnl
module Data.Char.Properties.GeneralCategoryData (getGeneralCategory) where
{
	import Data.Char.Properties.GeneralCategoryTypes;
	import Data.Char.Properties.PrivateData;
	import Data.Array;
	import Prelude;

	theList :: [(Char,GeneralCategory)];
	theList =
	[
define({{uchar}},{{		('\x$1',Gc$3),
}})dnl
include(DATAFILE)dnl
		('\x10FFFF',GcCn)
	];

	theArray :: Array Char GeneralCategory;
	theArray = accumArray (\_ a -> a) GcCn ('\0','\x10FFFF') theList;

	getFromArray :: Char -> GeneralCategory;
	getFromArray c = if (inRange ('\0','\x10FFFF') c)
	 then theArray ! c
	 else GcCn;

	getGeneralCategory :: Char -> GeneralCategory;
	getGeneralCategory c = handleOmittedRange (getFromArray c) getFromArray c;
}

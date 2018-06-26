module Data.Char.Properties.GeneralCategory
	(
	module Data.Char.Properties.GeneralCategoryTypes,
	module Data.Char.Properties.GeneralCategoryData,
	module Data.Char.Properties.GeneralCategory
	) where
	{
	import Data.Char.Properties.GeneralCategoryData;
	import Data.Char.Properties.GeneralCategoryTypes;
	import Prelude;
	
	data GCMajorClass =
	 ClLetter | ClMark | ClNumber | ClSeparator | ClPunctuation | ClSymbol | ClOther
	 deriving Eq;

	instance Show GCMajorClass where
	{
		show ClLetter		= "Letter";
		show ClMark			= "Mark";
		show ClNumber		= "Number";
		show ClSeparator	= "Separator";
		show ClPunctuation	= "Punctuation";
		show ClSymbol		= "Symbol";
		show ClOther		= "Other";
	};
	 
	gcMajorClass :: GeneralCategory -> GCMajorClass;
	gcMajorClass GcLu = ClLetter		;
	gcMajorClass GcLl = ClLetter		;
	gcMajorClass GcLt = ClLetter		;
	gcMajorClass GcLm = ClLetter		;
	gcMajorClass GcLo = ClLetter		;
	gcMajorClass GcMn = ClMark			;
	gcMajorClass GcMc = ClMark			;
	gcMajorClass GcMe = ClMark			;
	gcMajorClass GcNd = ClNumber		;
	gcMajorClass GcNl = ClNumber		;
	gcMajorClass GcNo = ClNumber		;
	gcMajorClass GcZs = ClSeparator		;
	gcMajorClass GcZl = ClSeparator		;
	gcMajorClass GcZp = ClSeparator		;
	gcMajorClass GcPc = ClPunctuation	;
	gcMajorClass GcPd = ClPunctuation	;
	gcMajorClass GcPs = ClPunctuation	;
	gcMajorClass GcPe = ClPunctuation	;
	gcMajorClass GcPi = ClPunctuation	;
	gcMajorClass GcPf = ClPunctuation	;
	gcMajorClass GcPo = ClPunctuation	;
	gcMajorClass GcSm = ClSymbol		;
	gcMajorClass GcSc = ClSymbol		;
	gcMajorClass GcSk = ClSymbol		;
	gcMajorClass GcSo = ClSymbol		;
	gcMajorClass GcCc = ClOther			;
	gcMajorClass GcCf = ClOther			;
	gcMajorClass GcCs = ClOther			;
	gcMajorClass GcCo = ClOther			;
	gcMajorClass GcCn = ClOther			;
}

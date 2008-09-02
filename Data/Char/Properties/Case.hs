module Data.Char.Properties.Case
(
	module Data.Char.Properties.CaseData,
	module Data.Char.Properties.Case
) where
{
	import Data.Char.Properties.CaseData;
	import Data.Char.Properties.GeneralCategory;
	import Prelude;

	-- | Returns true if the general category is Lt.
	;
	isTitlecase :: Char -> Bool;
	isTitlecase c = getGeneralCategory c == GcLt;
}

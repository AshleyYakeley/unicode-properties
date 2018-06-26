module Data.Char.Properties.Version where
{
	import Prelude;

	-- | This is Unicode version 3.2.0 or later.
	;
	data Version_Unicode_AtLeast_3_2_0;

	-- | This is Unicode version 5.1.0 or later.
	;
	data Version_Unicode_AtLeast_5_1_0;

	-- | This is Unicode version 5.1.0.
	;
	data Version_Unicode_Exactly_5_1_0;

	-- | This is the Unicode version. ([5,1,0])
	;
	version_Unicode :: [Int];
	version_Unicode = [5,1,0];
}

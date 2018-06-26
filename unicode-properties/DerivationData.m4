property(
{{Math}},
{{}},
{{Sm + Other_Math}})dnl
property(
{{Alphabetic}},
{{Characters with the Alphabetic property.}},
{{Lu+Ll+Lt+Lm+Lo+Nl + Other_Alphabetic}})dnl
property(
{{Lowercase}},
{{Characters with the Lowercase property.}},
{{Ll + Other_Lowercase}})dnl
property(
{{Uppercase}},
{{Characters with the Uppercase property.}},
{{Lu + Other_Uppercase}})dnl
property(
{{ID_Start}},
{{Characters that can start an identifier.}},
{{Lu + Ll + Lt + Lm + Lo + Nl + Other_ID_Start - Pattern_Syntax - Pattern_White_Space}})dnl
property(
{{ID_Continue}},
{{Characters that can continue an identifier.}},
{{ID_Start + Mn + Mc + Nd + Pc + Other_ID_Continue - Pattern_Syntax - Pattern_White_Space}})dnl
property(
{{Default_Ignorable_Code_Point}},
{{For programmatic determination of default-ignorable code points. New characters that should be ignored in processing (unless explicitly supported) will be assigned in these ranges, permitting programs to correctly handle the default behavior of such characters when not otherwise supported. For more information, see UTR #29: Text Boundaries (in proposed draft status at release time for Unicode 3.2).}},
{{Other_Default_Ignorable_Code_Point + Cf + Variation_Selector - White_Space}})dnl  - FFF9..FFFB - 0600..0603, 06DD, 070F
property(
{{Grapheme_Extend}},
{{For programmatic determination of grapheme cluster boundaries.}},
{{Me + Mn + Other_Grapheme_Extend}})dnl
property(
{{Grapheme_Base}},
{{For programmatic determination of grapheme cluster boundaries.}},
{{[0..10FFFF] - Cc - Cf - Cs - Co - Cn - Zl - Zp - Grapheme_Extend}})dnl

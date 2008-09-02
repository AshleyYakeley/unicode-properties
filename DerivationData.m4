property(
{{Math}},
{{Characters with the Math property. For more information, see Chapter 4, Character Properties.}},
{{Sm + Other_Math}})dnl
property(
{{Alphabetic}},
{{Characters with the Alphabetic property. For more information, see Chapter 4, Character Properties.}},
{{Lu+Ll+Lt+Lm+Lo+ Other_Alphabetic}})dnl
property(
{{Lowercase}},
{{Characters with the Lowercase property. For more information, see Chapter 4, Character Properties and UAX #21: Case Mappings.}},
{{Ll + Other_Lowercase}})dnl
property(
{{Uppercase}},
{{Characters with the Uppercase property. For more information, see Chapter 4, Character Properties and UAX #21: Case Mappings.}},
{{Lu + Other_Uppercase}})dnl
property(
{{ID_Start}},
{{Characters that can start an identifier.}},
{{Lu+Ll+Lt+Lm+Lo+Nl}})dnl
property(
{{ID_Continue}},
{{Characters that can continue an identifier. See Cf Note.}},
{{ID_Start + Mn+Mc+Nd+Pc}})dnl
property(
{{Default_Ignorable_Code_Point}},
{{For programmatic determination of default-ignorable code points. New characters that should be ignored in processing (unless explicitly supported) will be assigned in these ranges, permitting programs to correctly handle the default behavior of such characters when not otherwise supported. For more information, see UTR #29: Text Boundaries (in proposed draft status at release time for Unicode 3.2).}},
{{Other_Default_Ignorable_Code_Point + Cf + Cc + Cs - White_Space}})dnl
property(
{{Grapheme_Base}},
{{For programmatic determination of grapheme cluster boundaries. For more information, see UTR #29: Text Boundaries (in proposed draft status at publication of Unicode 3.2).}},
{{[0..10FFFF] - Cc - Cf - Cs - Co - Cn - Zl - Zp - Grapheme_Extend - Grapheme_Link - CGJ}})dnl
property(
{{Grapheme_Extend}},
{{For programmatic determination of grapheme cluster boundaries. For more information, see UTR #29: Text Boundaries (in proposed draft status at publication of Unicode 3.2).}},
{{Me + Mn + Mc + Other_Grapheme_Extend - Grapheme_Link - CGJ}})dnl

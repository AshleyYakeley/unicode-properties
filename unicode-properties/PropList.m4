PROPERTY(
{{White_Space}},
{{Space characters and those format control characters (such as TAB, CR and LF) which should be treated by programming languages as "white space" for the purpose of parsing elements.

Note: ZERO WIDTH SPACE and ZERO WIDTH NO-BREAK SPACE are not included, since their functions are restricted to line-break control. Their names are unfortunately misleading in this respect.

Note: There are other senses of "whitespace" that encompass a different set of characters.}})dnl
PROPERTY(
{{Bidi_Control}},
{{Those format control characters which have specific functions in the Bidirectional Algorithm.}})dnl
PROPERTY(
{{Join_Control}},
{{Those format control characters which have specific functions for control of cursive joining and ligation.}})dnl
PROPERTY(
{{ASCII_Hex_Digit}},
{{ASCII characters commonly used for the representation of hexadecimal numbers.}})dnl
PROPERTY(
{{Dash}},
{{Those punctuation characters explicitly called out as dashes in the Unicode Standard, plus compatibility equivalents to those. Most of these have the Pd General Category, but some have the Sm General Category because of their use in mathematics.}})dnl
PROPERTY(
{{Hyphen}},
{{Those dashes used to mark connections between pieces of words, plus the Katakana middle dot. The Katakana middle dot functions like a hyphen, but is shaped like a dot rather than a dash.}})dnl
PROPERTY(
{{Quotation_Mark}},
{{Those punctuation characters that function as quotation marks.}})dnl
PROPERTY(
{{Terminal_Punctuation}},
{{Those punctuation characters that generally mark the end of textual units.}})dnl
PROPERTY(
{{Other_Math}},
{{Used in deriving the Math property.}})dnl
PROPERTY(
{{Hex_Digit}},
{{Characters commonly used for the representation of hexadecimal numbers, plus their compatibility equivalents.}})dnl
PROPERTY(
{{Other_Alphabetic}},
{{Used in deriving the Alphabetic property.}})dnl
PROPERTY(
{{Ideographic}},
{{Characters considered to be CJKV (Chinese, Japanese, Korean, and Vietnamese) ideographs.}})dnl
PROPERTY(
{{Diacritic}},
{{Characters that linguistically modify the meaning of another character to which they apply. Some diacritics are not combining characters, and some combining characters are not diacritics.}})dnl
PROPERTY(
{{Extender}},
{{Characters whose principal function is to extend the value or shape of a preceding alphabetic character. Typical of these are length and iteration marks.}})dnl
PROPERTY(
{{Other_Lowercase}},
{{Used in deriving the Lowercase property.}})dnl
PROPERTY(
{{Other_Uppercase}},
{{Used in deriving the Uppercase property.}})dnl
PROPERTY(
{{Noncharacter_Code_Point}},
{{Code points that are explicitly defined as illegal for the encoding of characters. See Unicode 3.1 for more information.}})dnl
PROPERTY(
{{Other_Grapheme_Extend}},
{{Used in deriving  the Grapheme_Extend property.}})dnl
PROPERTY(
{{Grapheme_Link}},
{{Used in determining default grapheme cluster boundaries.

For more information, see UTR #29: Text Boundaries (in proposed draft status at publication of Unicode 3.2).}})dnl
PROPERTY(
{{IDS_Binary_Operator}},
{{For a machine-readable list of Ideographic Description Sequences.

For more information, see Unicode 3.2.}})dnl
PROPERTY(
{{IDS_Trinary_Operator}},
{{For a machine-readable list of Ideographic Description Sequences.

For more information, see Unicode 3.2.}})dnl
PROPERTY(
{{Radical}},
{{For a machine-readable list of Ideographic Description Sequences.

For more information, see Unicode 3.2.}})dnl
PROPERTY(
{{Unified_Ideograph}},
{{For a machine-readable list of Ideographic Description Sequences.

For more information, see Unicode 3.2.}})dnl
PROPERTY(
{{Other_Default_Ignorable_Code_Point}},
{{Used in deriving the Default_Ignorable_Code_Point property.}})dnl
PROPERTY(
{{Deprecated}},
{{For a machine-readable list of deprecated characters. No characters will ever be removed from the standard, but the usage of deprecated characters is strongly discouraged.

For more information, see Unicode 3.2.}})dnl
PROPERTY(
{{Soft_Dotted}},
{{Characters with a "soft dot", like i or j. An accent placed on these characters causes the dot to disappear. An explicit dot above can be added where required, such as in Lithuanian.

For more information, see Unicode 3.0, Chapter 7, Diacritics on i and j}})dnl
PROPERTY(
{{Logical_Order_Exception}},
{{There are a small number of characters that do not use logical order. These characters require special handling in most processing.

For more information, see Unicode 3.2.}})dnl

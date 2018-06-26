module Data.Char.Properties.GeneralCategoryTypes where
{
	import Prelude;

	data GeneralCategory =
	 GcLu | GcLl | GcLt | GcLm | GcLo |
	 GcMn | GcMc | GcMe |
	 GcNd | GcNl | GcNo |
	 GcZs | GcZl | GcZp |
	 GcPc | GcPd | GcPs | GcPe | GcPi | GcPf | GcPo |
	 GcSm | GcSc | GcSk | GcSo |
	 GcCc | GcCf | GcCs | GcCo | GcCn
	 deriving Eq;

	instance Show GeneralCategory where
	{
		show GcLu = "Lu";
		show GcLl = "Ll";
		show GcLt = "Lt";
		show GcLm = "Lm";
		show GcLo = "Lo";

		show GcMn = "Mn";
		show GcMc = "Mc";
		show GcMe = "Me";

		show GcNd = "Nd";
		show GcNl = "Nl";
		show GcNo = "No";

		show GcZs = "Zs";
		show GcZl = "Zl";
		show GcZp = "Zp";

		show GcPc = "Pc";
		show GcPd = "Pd";
		show GcPs = "Ps";
		show GcPe = "Pe";
		show GcPi = "Pi";
		show GcPf = "Pf";
		show GcPo = "Po";

		show GcSm = "Sm";
		show GcSc = "Sc";
		show GcSk = "Sk";
		show GcSo = "So";

		show GcCc = "Cc";
		show GcCf = "Cf";
		show GcCs = "Cs";
		show GcCo = "Co";
		show GcCn = "Cn";
	};
}

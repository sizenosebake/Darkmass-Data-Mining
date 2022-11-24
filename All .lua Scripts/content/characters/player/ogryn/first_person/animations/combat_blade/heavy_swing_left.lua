local spline_matrices = {
	[0] = {
		0.80025,
		-0.284365,
		-0.527955,
		0,
		0.596866,
		0.292726,
		0.747036,
		0,
		-0.057885,
		-0.912934,
		0.403981,
		0,
		1.084482,
		0.641584,
		0.514795,
		1
	},
	{
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[0.0166666666667] = {
		0.855357,
		-0.252594,
		-0.452283,
		0,
		0.512616,
		0.286712,
		0.809334,
		0,
		-0.074758,
		-0.924117,
		0.374725,
		0,
		1.053669,
		0.613539,
		0.523981,
		1
	},
	[0.0333333333333] = {
		0.911306,
		-0.218803,
		-0.348778,
		0,
		0.400101,
		0.270719,
		0.875574,
		0,
		-0.097158,
		-0.937463,
		0.334251,
		0,
		0.998561,
		0.547456,
		0.541582,
		1
	},
	[0.05] = {
		0.953899,
		-0.186694,
		-0.234992,
		0,
		0.27744,
		0.249897,
		0.927674,
		0,
		-0.114467,
		-0.950104,
		0.290173,
		0,
		0.933287,
		0.46259,
		0.561268,
		1
	},
	[0.0666666666667] = {
		0.978453,
		-0.157432,
		-0.133588,
		0,
		0.168111,
		0.231813,
		0.958124,
		0,
		-0.119872,
		-0.959937,
		0.253284,
		0,
		0.871756,
		0.378338,
		0.578959,
		1
	},
	[0.0833333333333] = {
		0.989201,
		-0.129487,
		-0.068666,
		0,
		0.096813,
		0.225509,
		0.969419,
		0,
		-0.110042,
		-0.965598,
		0.235609,
		0,
		0.827206,
		0.314103,
		0.592072,
		1
	},
	[0.116666666667] = {
		0.980275,
		-0.134471,
		-0.144839,
		0,
		0.17548,
		0.255029,
		0.950877,
		0,
		-0.090927,
		-0.957537,
		0.273596,
		0,
		0.878077,
		0.326471,
		0.59137,
		1
	},
	[0.133333333333] = {
		0.931836,
		-0.210621,
		-0.295499,
		0,
		0.345042,
		0.262108,
		0.901247,
		0,
		-0.112369,
		-0.941774,
		0.316915,
		0,
		1.012084,
		0.418923,
		0.564236,
		1
	},
	[0.15] = {
		0.825756,
		-0.248644,
		-0.506264,
		0,
		0.563478,
		0.324045,
		0.759926,
		0,
		-0.024899,
		-0.912782,
		0.407688,
		0,
		1.118966,
		0.552196,
		0.537507,
		1
	},
	[0.166666666667] = {
		0.693688,
		-0.168922,
		-0.700187,
		0,
		0.651408,
		0.561944,
		0.509791,
		0,
		0.307351,
		-0.809744,
		0.499851,
		0,
		1.115404,
		0.720612,
		0.484337,
		1
	},
	[0.183333333333] = {
		0.368904,
		0.109778,
		-0.922962,
		0,
		0.064493,
		0.987584,
		0.143241,
		0,
		0.927228,
		-0.112366,
		0.357244,
		0,
		0.810302,
		1.12502,
		0.371737,
		1
	},
	[0.1] = {
		0.992882,
		-0.100825,
		-0.063402,
		0,
		0.086211,
		0.241091,
		0.966666,
		0,
		-0.082178,
		-0.965251,
		0.248067,
		0,
		0.812308,
		0.28943,
		0.598325,
		1
	},
	[0.216666666667] = {
		0.336992,
		0.166918,
		-0.926593,
		0,
		-0.485295,
		0.874143,
		-0.019027,
		0,
		0.806799,
		0.456083,
		0.375584,
		0,
		0.428118,
		1.326545,
		0.153059,
		1
	},
	[0.233333333333] = {
		0.333531,
		0.130745,
		-0.933629,
		0,
		-0.656185,
		0.74326,
		-0.13033,
		0,
		0.676889,
		0.656102,
		0.333693,
		0,
		0.242834,
		1.341621,
		0.038419,
		1
	},
	[0.25] = {
		0.378897,
		0.114053,
		-0.918384,
		0,
		-0.862815,
		0.402387,
		-0.305999,
		0,
		0.334645,
		0.908337,
		0.25087,
		0,
		-0.011731,
		1.285911,
		-0.089747,
		1
	},
	[0.266666666667] = {
		0.40703,
		0.139851,
		-0.902645,
		0,
		-0.908056,
		-0.044938,
		-0.416432,
		0,
		-0.098801,
		0.989152,
		0.108702,
		0,
		-0.259374,
		1.184886,
		-0.215331,
		1
	},
	[0.283333333333] = {
		0.284872,
		0.108829,
		-0.952368,
		0,
		-0.860202,
		-0.409373,
		-0.304083,
		0,
		-0.422966,
		0.905853,
		-0.023003,
		0,
		-0.471043,
		0.976918,
		-0.304437,
		1
	},
	[0.2] = {
		0.360353,
		0.171416,
		-0.916931,
		0,
		-0.291857,
		0.954338,
		0.06371,
		0,
		0.885983,
		0.244655,
		0.393928,
		0,
		0.59431,
		1.25166,
		0.266126,
		1
	},
	[0.316666666667] = {
		0.098569,
		0.230564,
		-0.968052,
		0,
		-0.661521,
		-0.711549,
		-0.236829,
		0,
		-0.743421,
		0.66373,
		0.082386,
		0,
		-0.871725,
		0.599731,
		-0.522866,
		1
	},
	[0.333333333333] = {
		0.207261,
		0.495282,
		-0.843646,
		0,
		-0.429788,
		-0.728593,
		-0.533325,
		0,
		-0.878821,
		0.473126,
		0.061858,
		0,
		-0.961049,
		0.254944,
		-0.678005,
		1
	},
	[0.35] = {
		0.207315,
		0.582305,
		-0.786093,
		0,
		-0.367075,
		-0.698534,
		-0.614253,
		0,
		-0.906794,
		0.415899,
		0.068933,
		0,
		-0.974005,
		0.225535,
		-0.747736,
		1
	},
	[0.366666666667] = {
		0.21496,
		0.635035,
		-0.741972,
		0,
		-0.315093,
		-0.674009,
		-0.668153,
		0,
		-0.924396,
		0.377416,
		0.05521,
		0,
		-0.975777,
		0.201724,
		-0.819392,
		1
	},
	[0.383333333333] = {
		0.227305,
		0.663035,
		-0.713244,
		0,
		-0.277314,
		-0.65802,
		-0.700077,
		0,
		-0.933504,
		0.356923,
		0.034298,
		0,
		-0.960739,
		0.179525,
		-0.893877,
		1
	},
	[0.3] = {
		0.198022,
		0.16971,
		-0.965394,
		0,
		-0.750915,
		-0.606767,
		-0.260693,
		0,
		-0.630012,
		0.776551,
		0.007285,
		0,
		-0.673755,
		0.796179,
		-0.409926,
		1
	},
	[0.416666666667] = {
		0.21499,
		0.653259,
		-0.72597,
		0,
		-0.264777,
		-0.676523,
		-0.687175,
		0,
		-0.940038,
		0.339956,
		0.027522,
		0,
		-0.820248,
		0.129266,
		-1.035309,
		1
	},
	[0.433333333333] = {
		0.194636,
		0.621801,
		-0.758604,
		0,
		-0.282307,
		-0.705159,
		-0.650426,
		0,
		-0.939372,
		0.340756,
		0.038289,
		0,
		-0.689361,
		0.102035,
		-1.089612,
		1
	},
	[0.45] = {
		0.165645,
		0.575223,
		-0.80105,
		0,
		-0.309857,
		-0.740779,
		-0.596016,
		0,
		-0.936243,
		0.346938,
		0.055531,
		0,
		-0.545624,
		0.076679,
		-1.138952,
		1
	},
	[0.466666666667] = {
		0.128597,
		0.515807,
		-0.846999,
		0,
		-0.342736,
		-0.778345,
		-0.526034,
		0,
		-0.930588,
		0.357943,
		0.076693,
		0,
		-0.396151,
		0.054331,
		-1.183071,
		1
	},
	[0.483333333333] = {
		0.0849,
		0.446969,
		-0.890511,
		0,
		-0.376305,
		-0.813165,
		-0.444023,
		0,
		-0.922598,
		0.372801,
		0.099159,
		0,
		-0.248138,
		0.035949,
		-1.221901,
		1
	},
	[0.4] = {
		0.226279,
		0.66778,
		-0.709132,
		0,
		-0.261735,
		-0.659557,
		-0.704613,
		0,
		-0.938239,
		0.345043,
		0.025538,
		0,
		-0.922235,
		0.156442,
		-0.972508,
		1
	},
	[0.516666666667] = {
		-0.011112,
		0.300964,
		-0.953571,
		0,
		-0.430149,
		-0.862324,
		-0.267152,
		0,
		-0.90269,
		0.407209,
		0.139041,
		0,
		0.013694,
		0.013142,
		-1.284134,
		1
	},
	[0.533333333333] = {
		-0.055484,
		0.235617,
		-0.970261,
		0,
		-0.445693,
		-0.875415,
		-0.187098,
		0,
		-0.893465,
		0.422058,
		0.153584,
		0,
		0.111944,
		0.008677,
		-1.307731,
		1
	},
	[0.55] = {
		-0.091587,
		0.182928,
		-0.978851,
		0,
		-0.452659,
		-0.883201,
		-0.122699,
		0,
		-0.886968,
		0.431848,
		0.163694,
		0,
		0.177655,
		0.007757,
		-1.326176,
		1
	},
	[0.566666666667] = {
		-0.115321,
		0.147856,
		-0.982263,
		0,
		-0.451312,
		-0.888702,
		-0.080787,
		0,
		-0.884883,
		0.433991,
		0.169215,
		0,
		0.202629,
		0.009068,
		-1.339124,
		1
	},
	[0.583333333333] = {
		-0.115653,
		0.147575,
		-0.982266,
		0,
		-0.449146,
		-0.889797,
		-0.080799,
		0,
		-0.885941,
		0.431836,
		0.169191,
		0,
		0.202644,
		0.009561,
		-1.339118,
		1
	},
	[0.5] = {
		0.037116,
		0.373444,
		-0.92691,
		0,
		-0.406458,
		-0.841716,
		-0.355396,
		0,
		-0.912915,
		0.389941,
		0.120548,
		0,
		-0.108973,
		0.022155,
		-1.255539,
		1
	},
	[0.616666666667] = {
		-0.116144,
		0.147158,
		-0.98227,
		0,
		-0.44594,
		-0.891407,
		-0.080817,
		0,
		-0.887496,
		0.428647,
		0.169155,
		0,
		0.202662,
		0.01029,
		-1.33911,
		1
	},
	[0.633333333333] = {
		-0.116313,
		0.147014,
		-0.982272,
		0,
		-0.444837,
		-0.891957,
		-0.080823,
		0,
		-0.888027,
		0.42755,
		0.169144,
		0,
		0.202665,
		0.01054,
		-1.339108,
		1
	},
	[0.65] = {
		-0.116439,
		0.146909,
		-0.982273,
		0,
		-0.444026,
		-0.892361,
		-0.080826,
		0,
		-0.888416,
		0.426744,
		0.169137,
		0,
		0.202666,
		0.010724,
		-1.339106,
		1
	},
	[0.666666666667] = {
		-0.116526,
		0.146837,
		-0.982273,
		0,
		-0.443476,
		-0.892634,
		-0.080828,
		0,
		-0.888679,
		0.426196,
		0.169134,
		0,
		0.202664,
		0.010849,
		-1.339105,
		1
	},
	[0.683333333333] = {
		-0.116578,
		0.146795,
		-0.982273,
		0,
		-0.443154,
		-0.892794,
		-0.080828,
		0,
		-0.888833,
		0.425875,
		0.169133,
		0,
		0.202661,
		0.010922,
		-1.339105,
		1
	},
	[0.6] = {
		-0.115926,
		0.147343,
		-0.982268,
		0,
		-0.447366,
		-0.890693,
		-0.080809,
		0,
		-0.886806,
		0.430065,
		0.16917,
		0,
		0.202654,
		0.009966,
		-1.339114,
		1
	},
	[0.716666666667] = {
		-0.116597,
		0.146783,
		-0.982273,
		0,
		-0.443066,
		-0.892838,
		-0.080826,
		0,
		-0.888874,
		0.425788,
		0.169137,
		0,
		0.202655,
		0.010942,
		-1.339106,
		1
	},
	[0.733333333333] = {
		-0.116572,
		0.146805,
		-0.982272,
		0,
		-0.443237,
		-0.892753,
		-0.080825,
		0,
		-0.888792,
		0.425958,
		0.16914,
		0,
		0.202652,
		0.010903,
		-1.339107,
		1
	},
	[0.75] = {
		-0.116531,
		0.146841,
		-0.982272,
		0,
		-0.443508,
		-0.892619,
		-0.080823,
		0,
		-0.888663,
		0.426227,
		0.169143,
		0,
		0.202651,
		0.010842,
		-1.339108,
		1
	},
	[0.766666666667] = {
		-0.116479,
		0.146885,
		-0.982272,
		0,
		-0.443846,
		-0.892451,
		-0.080822,
		0,
		-0.888501,
		0.426563,
		0.169146,
		0,
		0.202651,
		0.010765,
		-1.339108,
		1
	},
	[0.783333333333] = {
		-0.116419,
		0.146934,
		-0.982271,
		0,
		-0.44422,
		-0.892265,
		-0.080821,
		0,
		-0.888321,
		0.426936,
		0.169148,
		0,
		0.202652,
		0.01068,
		-1.339109,
		1
	},
	[0.7] = {
		-0.116601,
		0.146778,
		-0.982273,
		0,
		-0.443028,
		-0.892857,
		-0.080827,
		0,
		-0.888893,
		0.42575,
		0.169134,
		0,
		0.202658,
		0.010951,
		-1.339106,
		1
	},
	[0.816666666667] = {
		-0.116302,
		0.147029,
		-0.982271,
		0,
		-0.444948,
		-0.891902,
		-0.08082,
		0,
		-0.887973,
		0.42766,
		0.16915,
		0,
		0.202658,
		0.010515,
		-1.339109,
		1
	},
	[0.833333333333] = {
		-0.116255,
		0.147066,
		-0.982271,
		0,
		-0.445237,
		-0.891758,
		-0.080819,
		0,
		-0.887834,
		0.427948,
		0.16915,
		0,
		0.20266,
		0.010449,
		-1.339109,
		1
	},
	[0.85] = {
		-0.116222,
		0.147092,
		-0.982271,
		0,
		-0.445434,
		-0.89166,
		-0.080819,
		0,
		-0.887739,
		0.428144,
		0.169151,
		0,
		0.202663,
		0.010405,
		-1.339109,
		1
	},
	[0.866666666667] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[0.883333333333] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[0.8] = {
		-0.116359,
		0.146983,
		-0.982271,
		0,
		-0.444598,
		-0.892077,
		-0.08082,
		0,
		-0.88814,
		0.427312,
		0.169149,
		0,
		0.202655,
		0.010595,
		-1.339109,
		1
	},
	[0.916666666667] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[0.933333333333] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[0.95] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[0.966666666667] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[0.983333333333] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[0.9] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[1.01666666667] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[1.03333333333] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[1.05] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[1.06666666667] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[1.08333333333] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[1.11666666667] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[1.13333333333] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[1.15] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[1.16666666667] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	},
	[1.1] = {
		-0.11621,
		0.147101,
		-0.982271,
		0,
		-0.445507,
		-0.891623,
		-0.080819,
		0,
		-0.887704,
		0.428216,
		0.169151,
		0,
		0.202663,
		0.010388,
		-1.339109,
		1
	}
}

return spline_matrices
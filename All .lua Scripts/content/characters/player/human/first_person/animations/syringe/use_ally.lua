local spline_matrices = {
	[0] = {
		-0.849557,
		-0.318486,
		0.420499,
		0,
		0.398138,
		-0.910077,
		0.115089,
		0,
		0.346032,
		0.265191,
		0.899964,
		0,
		0.247093,
		0.398104,
		-0.08379,
		1
	},
	{
		0.10915,
		-0.986826,
		-0.119415,
		0,
		-0.896552,
		-0.045853,
		-0.440558,
		0,
		0.429279,
		0.155149,
		-0.889746,
		0,
		-0.09066,
		0.528868,
		-0.184629,
		1
	},
	[0.0166666666667] = {
		-0.897287,
		-0.055851,
		0.437901,
		0,
		0.266925,
		-0.858728,
		0.43742,
		0,
		0.351608,
		0.509378,
		0.785434,
		0,
		0.24822,
		0.434346,
		-0.110264,
		1
	},
	[0.0333333333333] = {
		-0.927324,
		0.189974,
		0.322458,
		0,
		0.082702,
		-0.736276,
		0.671609,
		0,
		0.365007,
		0.649467,
		0.667055,
		0,
		0.249525,
		0.452306,
		-0.138177,
		1
	},
	[0.05] = {
		-0.889948,
		0.30921,
		0.335234,
		0,
		0.060959,
		-0.647816,
		0.759354,
		0,
		0.45197,
		0.696221,
		0.557673,
		0,
		0.225462,
		0.438153,
		-0.10994,
		1
	},
	[0.0666666666667] = {
		-0.799793,
		0.361886,
		0.478925,
		0,
		0.139212,
		-0.664269,
		0.734416,
		0,
		0.58391,
		0.654053,
		0.480899,
		0,
		0.19184,
		0.405141,
		-0.05777,
		1
	},
	[0.0833333333333] = {
		-0.664044,
		0.354024,
		0.658568,
		0,
		0.257577,
		-0.718569,
		0.645997,
		0,
		0.701925,
		0.598603,
		0.385973,
		0,
		0.172843,
		0.378902,
		-0.029403,
		1
	},
	[0.116666666667] = {
		-0.180848,
		0.235247,
		0.954962,
		0,
		0.120986,
		-0.958277,
		0.258976,
		0,
		0.976041,
		0.162372,
		0.14484,
		0,
		0.154721,
		0.376164,
		-0.005255,
		1
	},
	[0.133333333333] = {
		0.127248,
		0.114714,
		0.985215,
		0,
		-0.151714,
		-0.97935,
		0.133627,
		0,
		0.980199,
		-0.166474,
		-0.107217,
		0,
		0.145131,
		0.387511,
		0.007388,
		1
	},
	[0.15] = {
		0.395793,
		0.002168,
		0.918337,
		0,
		-0.372797,
		-0.913515,
		0.162828,
		0,
		0.839268,
		-0.406799,
		-0.360755,
		0,
		0.134591,
		0.403874,
		0.015655,
		1
	},
	[0.166666666667] = {
		0.596867,
		-0.042758,
		0.8012,
		0,
		-0.438746,
		-0.853446,
		0.281304,
		0,
		0.671753,
		-0.519425,
		-0.528154,
		0,
		0.123063,
		0.418856,
		0.016115,
		1
	},
	[0.183333333333] = {
		0.76457,
		0.012648,
		0.644417,
		0,
		-0.355619,
		-0.825578,
		0.438129,
		0,
		0.537557,
		-0.564147,
		-0.626714,
		0,
		0.110053,
		0.428321,
		0.006904,
		1
	},
	[0.1] = {
		-0.464739,
		0.31477,
		0.827609,
		0,
		0.280738,
		-0.834074,
		0.474876,
		0,
		0.839764,
		0.453035,
		0.299259,
		0,
		0.163605,
		0.373116,
		-0.018411,
		1
	},
	[0.216666666667] = {
		0.941341,
		0.259529,
		0.215687,
		0,
		0.014454,
		-0.669579,
		0.7426,
		0,
		0.337146,
		-0.695923,
		-0.634054,
		0,
		0.083911,
		0.434706,
		-0.030771,
		1
	},
	[0.233333333333] = {
		0.946243,
		0.316303,
		0.067648,
		0,
		0.127304,
		-0.556443,
		0.821075,
		0,
		0.297351,
		-0.768325,
		-0.566797,
		0,
		0.073446,
		0.434641,
		-0.051649,
		1
	},
	[0.25] = {
		0.946797,
		0.314077,
		0.070217,
		0,
		0.101559,
		-0.49861,
		0.860856,
		0,
		0.305386,
		-0.807925,
		-0.50398,
		0,
		0.064612,
		0.436552,
		-0.069873,
		1
	},
	[0.266666666667] = {
		0.948815,
		0.159409,
		0.27265,
		0,
		-0.155535,
		-0.515501,
		0.842655,
		0,
		0.274878,
		-0.841931,
		-0.464322,
		0,
		0.057431,
		0.441824,
		-0.086863,
		1
	},
	[0.283333333333] = {
		0.871045,
		-0.016336,
		0.490932,
		0,
		-0.427075,
		-0.51894,
		0.740479,
		0,
		0.242668,
		-0.854655,
		-0.458996,
		0,
		0.052046,
		0.44611,
		-0.105791,
		1
	},
	[0.2] = {
		0.890119,
		0.139975,
		0.433699,
		0,
		-0.175733,
		-0.772638,
		0.610039,
		0,
		0.420482,
		-0.619223,
		-0.663142,
		0,
		0.096412,
		0.43336,
		-0.010017,
		1
	},
	[0.316666666667] = {
		0.773612,
		-0.187224,
		0.605369,
		0,
		-0.583697,
		-0.58238,
		0.565802,
		0,
		0.246623,
		-0.791063,
		-0.559818,
		0,
		0.045846,
		0.439032,
		-0.142835,
		1
	},
	[0.333333333333] = {
		0.703258,
		-0.222648,
		0.675172,
		0,
		-0.644503,
		-0.600514,
		0.473285,
		0,
		0.300074,
		-0.767992,
		-0.565813,
		0,
		0.03882,
		0.428696,
		-0.137952,
		1
	},
	[0.35] = {
		0.665807,
		-0.210026,
		0.715954,
		0,
		-0.675442,
		-0.577324,
		0.458775,
		0,
		0.316983,
		-0.789041,
		-0.526247,
		0,
		0.030162,
		0.422493,
		-0.115604,
		1
	},
	[0.366666666667] = {
		0.834428,
		-0.109008,
		0.540228,
		0,
		-0.5158,
		-0.499728,
		0.695861,
		0,
		0.194113,
		-0.859296,
		-0.473213,
		0,
		0.021102,
		0.508277,
		-0.09096,
		1
	},
	[0.383333333333] = {
		0.964741,
		-0.03333,
		0.261082,
		0,
		-0.254734,
		-0.367815,
		0.894328,
		0,
		0.066222,
		-0.929302,
		-0.363336,
		0,
		0.016539,
		0.618744,
		-0.064246,
		1
	},
	[0.3] = {
		0.810132,
		-0.117397,
		0.574373,
		0,
		-0.535509,
		-0.546894,
		0.643535,
		0,
		0.238572,
		-0.82893,
		-0.505923,
		0,
		0.048725,
		0.444975,
		-0.12595,
		1
	},
	[0.416666666667] = {
		0.991396,
		-0.052715,
		0.119814,
		0,
		-0.125179,
		-0.11421,
		0.985539,
		0,
		-0.038269,
		-0.992057,
		-0.119826,
		0,
		0.001706,
		0.642239,
		-0.01745,
		1
	},
	[0.433333333333] = {
		0.998558,
		-0.044544,
		0.029967,
		0,
		-0.033915,
		-0.090687,
		0.995302,
		0,
		-0.041617,
		-0.994883,
		-0.092067,
		0,
		0.001404,
		0.641622,
		-0.015784,
		1
	},
	[0.45] = {
		0.997417,
		-0.038819,
		-0.060443,
		0,
		0.057884,
		-0.063954,
		0.996273,
		0,
		-0.04254,
		-0.997198,
		-0.061541,
		0,
		0.001475,
		0.64183,
		-0.016171,
		1
	},
	[0.466666666667] = {
		0.987987,
		-0.036134,
		-0.150252,
		0,
		0.148991,
		-0.035386,
		0.988205,
		0,
		-0.041025,
		-0.99872,
		-0.029577,
		0,
		0.001914,
		0.642522,
		-0.017906,
		1
	},
	[0.483333333333] = {
		0.985501,
		-0.033269,
		-0.166377,
		0,
		0.165903,
		-0.016541,
		0.986003,
		0,
		-0.035555,
		-0.99931,
		-0.010782,
		0,
		0.00259,
		0.643874,
		-0.021317,
		1
	},
	[0.4] = {
		0.985302,
		-0.037134,
		0.166736,
		0,
		-0.170803,
		-0.228183,
		0.958519,
		0,
		0.002452,
		-0.97291,
		-0.231172,
		0,
		0.008836,
		0.639377,
		-0.03794,
		1
	},
	[0.516666666667] = {
		0.97963,
		-0.028274,
		-0.198809,
		0,
		0.199376,
		0.018839,
		0.979742,
		0,
		-0.023956,
		-0.999423,
		0.024092,
		0,
		0.003951,
		0.646001,
		-0.026192,
		1
	},
	[0.533333333333] = {
		0.97625,
		-0.025648,
		-0.215124,
		0,
		0.215912,
		0.033437,
		0.97584,
		0,
		-0.017835,
		-0.999112,
		0.038181,
		0,
		0.004636,
		0.646367,
		-0.026047,
		1
	},
	[0.55] = {
		0.972576,
		-0.022768,
		-0.231468,
		0,
		0.2323,
		0.04586,
		0.971562,
		0,
		-0.011505,
		-0.998688,
		0.049891,
		0,
		0.005325,
		0.646224,
		-0.024056,
		1
	},
	[0.566666666667] = {
		0.974299,
		-0.018781,
		-0.224473,
		0,
		0.224997,
		0.033278,
		0.973791,
		0,
		-0.010819,
		-0.99927,
		0.036649,
		0,
		0.005438,
		0.645751,
		-0.023715,
		1
	},
	[0.583333333333] = {
		0.975967,
		-0.014694,
		-0.217423,
		0,
		0.217687,
		0.019737,
		0.975819,
		0,
		-0.010047,
		-0.999697,
		0.022461,
		0,
		0.005548,
		0.64505,
		-0.022612,
		1
	},
	[0.5] = {
		0.982715,
		-0.030721,
		-0.18256,
		0,
		0.182702,
		0.001859,
		0.983167,
		0,
		-0.029864,
		-0.999526,
		0.00744,
		0,
		0.003269,
		0.645103,
		-0.024346,
		1
	},
	[0.616666666667] = {
		0.979132,
		-0.006534,
		-0.203118,
		0,
		0.203055,
		-0.009116,
		0.979125,
		0,
		-0.008249,
		-0.999937,
		-0.007599,
		0,
		0.005763,
		0.643252,
		-0.019076,
		1
	},
	[0.633333333333] = {
		0.98063,
		-0.002601,
		-0.195854,
		0,
		0.195738,
		-0.023863,
		0.980366,
		0,
		-0.007224,
		-0.999712,
		-0.022892,
		0,
		0.005868,
		0.642305,
		-0.017118,
		1
	},
	[0.65] = {
		0.982069,
		0.001156,
		-0.188517,
		0,
		0.188421,
		-0.038445,
		0.981335,
		0,
		-0.006113,
		-0.99926,
		-0.037973,
		0,
		0.005971,
		0.641429,
		-0.015346,
		1
	},
	[0.666666666667] = {
		0.983451,
		0.004687,
		-0.181115,
		0,
		0.181109,
		-0.052576,
		0.982057,
		0,
		-0.00492,
		-0.998606,
		-0.052555,
		0,
		0.006072,
		0.640705,
		-0.01399,
		1
	},
	[0.683333333333] = {
		0.984774,
		0.007953,
		-0.173658,
		0,
		0.173801,
		-0.065971,
		0.982569,
		0,
		-0.003642,
		-0.99779,
		-0.066349,
		0,
		0.006171,
		0.640217,
		-0.013281,
		1
	},
	[0.6] = {
		0.977578,
		-0.010587,
		-0.210307,
		0,
		0.210372,
		0.005512,
		0.977606,
		0,
		-0.009191,
		-0.999929,
		0.007615,
		0,
		0.005657,
		0.644192,
		-0.020986,
		1
	},
	[0.716666666667] = {
		0.988554,
		0.0794,
		-0.12828,
		0,
		0.142297,
		-0.208256,
		0.967668,
		0,
		0.050118,
		-0.974846,
		-0.217171,
		0,
		0.010623,
		0.613043,
		-0.024295,
		1
	},
	[0.733333333333] = {
		0.988773,
		0.109792,
		-0.101357,
		0,
		0.128509,
		-0.278726,
		0.951734,
		0,
		0.076242,
		-0.954074,
		-0.289706,
		0,
		0.016787,
		0.595169,
		-0.035623,
		1
	},
	[0.75] = {
		0.987815,
		0.137991,
		-0.07197,
		0,
		0.116363,
		-0.347778,
		0.930328,
		0,
		0.103347,
		-0.927367,
		-0.359598,
		0,
		0.022684,
		0.574699,
		-0.048101,
		1
	},
	[0.766666666667] = {
		0.985366,
		0.165591,
		-0.040428,
		0,
		0.10676,
		-0.414652,
		0.903696,
		0,
		0.13288,
		-0.894787,
		-0.426262,
		0,
		0.02594,
		0.550409,
		-0.059766,
		1
	},
	[0.783333333333] = {
		0.981221,
		0.192758,
		-0.007076,
		0,
		0.10035,
		-0.478808,
		0.872165,
		0,
		0.164729,
		-0.856497,
		-0.48916,
		0,
		0.025223,
		0.527132,
		-0.068656,
		1
	},
	[0.7] = {
		0.987273,
		0.045255,
		-0.15246,
		0,
		0.157313,
		-0.137253,
		0.977964,
		0,
		0.023332,
		-0.989502,
		-0.142626,
		0,
		0.006695,
		0.629606,
		-0.016082,
		1
	},
	[0.816666666667] = {
		0.976059,
		0.189893,
		0.106065,
		0,
		0.017902,
		-0.556122,
		0.830908,
		0,
		0.216768,
		-0.809116,
		-0.546208,
		0,
		0.018432,
		0.495213,
		-0.085629,
		1
	},
	[0.833333333333] = {
		0.969993,
		0.155517,
		0.186892,
		0,
		-0.066044,
		-0.571241,
		0.818121,
		0,
		0.233992,
		-0.805915,
		-0.543829,
		0,
		0.01484,
		0.484004,
		-0.095723,
		1
	},
	[0.85] = {
		0.955107,
		0.106334,
		0.27652,
		0,
		-0.166678,
		-0.578774,
		0.798272,
		0,
		0.244926,
		-0.808525,
		-0.535068,
		0,
		0.011847,
		0.475614,
		-0.10633,
		1
	},
	[0.866666666667] = {
		0.928389,
		0.047152,
		0.368605,
		0,
		-0.273491,
		-0.584849,
		0.763645,
		0,
		0.251586,
		-0.80977,
		-0.530072,
		0,
		0.009342,
		0.469868,
		-0.11699,
		1
	},
	[0.883333333333] = {
		0.889851,
		-0.018651,
		0.455871,
		0,
		-0.375633,
		-0.597078,
		0.7088,
		0,
		0.258971,
		-0.801966,
		-0.538316,
		0,
		0.006645,
		0.46669,
		-0.127192,
		1
	},
	[0.8] = {
		0.978121,
		0.204253,
		0.039498,
		0,
		0.076046,
		-0.527763,
		0.845981,
		0,
		0.19364,
		-0.824468,
		-0.531749,
		0,
		0.022081,
		0.509516,
		-0.076447,
		1
	},
	[0.916666666667] = {
		0.786293,
		-0.18978,
		0.587986,
		0,
		-0.542077,
		-0.668542,
		0.50912,
		0,
		0.296472,
		-0.719051,
		-0.628545,
		0,
		-0.00571,
		0.468612,
		-0.144416,
		1
	},
	[0.933333333333] = {
		0.71479,
		-0.322909,
		0.620326,
		0,
		-0.617051,
		-0.708659,
		0.342126,
		0,
		0.329124,
		-0.627322,
		-0.705794,
		0,
		-0.020876,
		0.473841,
		-0.151168,
		1
	},
	[0.95] = {
		0.632254,
		-0.461562,
		0.622266,
		0,
		-0.6762,
		-0.720779,
		0.152419,
		0,
		0.378165,
		-0.517144,
		-0.767824,
		0,
		-0.039313,
		0.479433,
		-0.157669,
		1
	},
	[0.966666666667] = {
		0.546642,
		-0.577308,
		0.606546,
		0,
		-0.711753,
		-0.701925,
		-0.026631,
		0,
		0.441124,
		-0.417154,
		-0.794602,
		0,
		-0.057568,
		0.483704,
		-0.165114,
		1
	},
	[0.983333333333] = {
		0.464258,
		-0.650389,
		0.601214,
		0,
		-0.724326,
		-0.669452,
		-0.164883,
		0,
		0.509722,
		-0.358926,
		-0.781892,
		0,
		-0.0718,
		0.48545,
		-0.174684,
		1
	},
	[0.9] = {
		0.842856,
		-0.090416,
		0.530489,
		0,
		-0.463184,
		-0.623739,
		0.629611,
		0,
		0.27396,
		-0.776385,
		-0.567602,
		0,
		0.002999,
		0.465997,
		-0.136488,
		1
	},
	[1.01666666667] = {
		-0.660546,
		-0.5038,
		-0.556655,
		0,
		-0.589433,
		0.807217,
		-0.03113,
		0,
		0.465025,
		0.307548,
		-0.830161,
		0,
		-0.096739,
		0.536153,
		-0.198272,
		1
	},
	[1.03333333333] = {
		-0.814265,
		0.077901,
		-0.575243,
		0,
		-0.10251,
		0.956084,
		0.27458,
		0,
		0.571371,
		0.282549,
		-0.77052,
		0,
		-0.096334,
		0.532083,
		-0.216503,
		1
	},
	[1.05] = {
		-0.814272,
		0.077806,
		-0.575246,
		0,
		-0.102598,
		0.956084,
		0.274548,
		0,
		0.571345,
		0.282576,
		-0.77053,
		0,
		-0.105267,
		0.5246,
		-0.235132,
		1
	},
	[1.06666666667] = {
		-0.749911,
		0.058491,
		-0.658948,
		0,
		-0.082454,
		0.980052,
		0.180831,
		0,
		0.65638,
		0.18994,
		-0.730129,
		0,
		-0.161127,
		0.524477,
		-0.256071,
		1
	},
	[1.08333333333] = {
		-0.565393,
		0.016056,
		-0.824665,
		0,
		0.033139,
		0.999445,
		-0.003261,
		0,
		0.824155,
		-0.029173,
		-0.565612,
		0,
		-0.191882,
		0.523856,
		-0.30499,
		1
	},
	[1.11666666667] = {
		-0.086624,
		-0.0456,
		-0.995197,
		0,
		0.42156,
		0.903432,
		-0.078088,
		0,
		0.902654,
		-0.426299,
		-0.059035,
		0,
		-0.221275,
		0.521945,
		-0.403642,
		1
	},
	[1.13333333333] = {
		0.079198,
		-0.028419,
		-0.996454,
		0,
		0.50445,
		0.863302,
		0.015472,
		0,
		0.859801,
		-0.503886,
		0.082707,
		0,
		-0.234724,
		0.521051,
		-0.433034,
		1
	},
	[1.15] = {
		0.248585,
		0.015785,
		-0.968481,
		0,
		0.544361,
		0.824749,
		0.153167,
		0,
		0.801172,
		-0.565278,
		0.196428,
		0,
		-0.245613,
		0.520324,
		-0.462468,
		1
	},
	[1.16666666667] = {
		0.404365,
		0.076117,
		-0.911425,
		0,
		0.535311,
		0.788309,
		0.303332,
		0,
		0.741573,
		-0.610553,
		0.278018,
		0,
		-0.254121,
		0.519781,
		-0.490283,
		1
	},
	[1.18333333333] = {
		0.531568,
		0.141501,
		-0.835113,
		0,
		0.487637,
		0.755037,
		0.438325,
		0,
		0.692565,
		-0.640231,
		0.332352,
		0,
		-0.260427,
		0.519439,
		-0.514815,
		1
	},
	[1.1] = {
		-0.307111,
		-0.02637,
		-0.951308,
		0,
		0.249329,
		0.962471,
		-0.10717,
		0,
		0.918432,
		-0.270102,
		-0.28901,
		0,
		-0.208332,
		0.522943,
		-0.361108,
		1
	},
	[1.21666666667] = {
		0.674048,
		0.243982,
		-0.697232,
		0,
		0.367573,
		0.707944,
		0.603081,
		0,
		0.640742,
		-0.662788,
		0.387507,
		0,
		-0.267146,
		0.519373,
		-0.547378,
		1
	},
	[1.23333333333] = {
		0.691231,
		0.260515,
		-0.674041,
		0,
		0.344765,
		0.700866,
		0.62444,
		0,
		0.635088,
		-0.664018,
		0.394644,
		0,
		-0.267911,
		0.519558,
		-0.552084,
		1
	},
	[1.25] = {
		0.691238,
		0.260474,
		-0.67405,
		0,
		0.344784,
		0.700876,
		0.624417,
		0,
		0.63507,
		-0.664023,
		0.394665,
		0,
		-0.267898,
		0.519856,
		-0.552101,
		1
	},
	[1.26666666667] = {
		0.691248,
		0.260426,
		-0.674058,
		0,
		0.34481,
		0.700884,
		0.624394,
		0,
		0.635045,
		-0.664033,
		0.394687,
		0,
		-0.26788,
		0.520251,
		-0.552118,
		1
	},
	[1.28333333333] = {
		0.691259,
		0.260373,
		-0.674067,
		0,
		0.344841,
		0.70089,
		0.62437,
		0,
		0.635016,
		-0.664048,
		0.394709,
		0,
		-0.267858,
		0.520728,
		-0.552136,
		1
	},
	[1.2] = {
		0.621759,
		0.200963,
		-0.756987,
		0,
		0.423099,
		0.727171,
		0.540564,
		0,
		0.659093,
		-0.656381,
		0.367098,
		0,
		-0.26471,
		0.519314,
		-0.534401,
		1
	},
	[1.31666666667] = {
		0.691287,
		0.260256,
		-0.674084,
		0,
		0.344915,
		0.700895,
		0.624324,
		0,
		0.634946,
		-0.664088,
		0.394753,
		0,
		-0.267806,
		0.521861,
		-0.55217,
		1
	},
	[1.33333333333] = {
		0.691301,
		0.260195,
		-0.674093,
		0,
		0.344955,
		0.700895,
		0.624301,
		0,
		0.634908,
		-0.664112,
		0.394774,
		0,
		-0.267777,
		0.522485,
		-0.552187,
		1
	},
	[1.35] = {
		0.691317,
		0.260133,
		-0.674101,
		0,
		0.344996,
		0.700894,
		0.62428,
		0,
		0.634869,
		-0.664137,
		0.394795,
		0,
		-0.267747,
		0.523126,
		-0.552203,
		1
	},
	[1.36666666667] = {
		0.691332,
		0.260073,
		-0.674108,
		0,
		0.345037,
		0.700892,
		0.624259,
		0,
		0.63483,
		-0.664163,
		0.394814,
		0,
		-0.267717,
		0.523768,
		-0.552218,
		1
	},
	[1.38333333333] = {
		0.691347,
		0.260015,
		-0.674116,
		0,
		0.345077,
		0.70089,
		0.62424,
		0,
		0.634792,
		-0.664188,
		0.394833,
		0,
		-0.267687,
		0.524395,
		-0.552233,
		1
	},
	[1.3] = {
		0.691272,
		0.260316,
		-0.674076,
		0,
		0.344876,
		0.700893,
		0.624347,
		0,
		0.634983,
		-0.664067,
		0.394731,
		0,
		-0.267833,
		0.521269,
		-0.552153,
		1
	},
	[1.41666666667] = {
		0.691374,
		0.259911,
		-0.674128,
		0,
		0.34515,
		0.700883,
		0.624207,
		0,
		0.634723,
		-0.664236,
		0.394864,
		0,
		-0.267633,
		0.525538,
		-0.552257,
		1
	},
	[1.43333333333] = {
		0.691385,
		0.259868,
		-0.674133,
		0,
		0.345181,
		0.70088,
		0.624194,
		0,
		0.634694,
		-0.664256,
		0.394877,
		0,
		-0.26761,
		0.526023,
		-0.552267,
		1
	},
	[1.45] = {
		0.691395,
		0.259832,
		-0.674137,
		0,
		0.345207,
		0.700877,
		0.624183,
		0,
		0.634669,
		-0.664274,
		0.394887,
		0,
		-0.267591,
		0.526428,
		-0.552276,
		1
	},
	[1.46666666667] = {
		0.691402,
		0.259804,
		-0.67414,
		0,
		0.345227,
		0.700874,
		0.624175,
		0,
		0.63465,
		-0.664287,
		0.394895,
		0,
		-0.267576,
		0.526737,
		-0.552282,
		1
	},
	[1.48333333333] = {
		0.691407,
		0.259787,
		-0.674142,
		0,
		0.34524,
		0.700872,
		0.62417,
		0,
		0.634638,
		-0.664296,
		0.394899,
		0,
		-0.267567,
		0.526934,
		-0.552286,
		1
	},
	[1.4] = {
		0.691361,
		0.25996,
		-0.674122,
		0,
		0.345115,
		0.700886,
		0.624222,
		0,
		0.634756,
		-0.664213,
		0.394849,
		0,
		-0.267659,
		0.52499,
		-0.552246,
		1
	},
	[1.5] = {
		0.691409,
		0.259781,
		-0.674142,
		0,
		0.345244,
		0.700872,
		0.624168,
		0,
		0.634634,
		-0.664299,
		0.394901,
		0,
		-0.267563,
		0.527003,
		-0.552287,
		1
	}
}

return spline_matrices
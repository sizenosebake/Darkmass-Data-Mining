local spline_matrices = {
	[0] = {
		-0.378154,
		-0.537298,
		0.753864,
		0,
		-0.757652,
		-0.288299,
		-0.585532,
		0,
		0.531943,
		-0.792587,
		-0.298063,
		0,
		0.952627,
		-0.49435,
		-0.427588,
		1
	},
	[0.0166666666667] = {
		-0.39934,
		-0.528625,
		0.749055,
		0,
		-0.774098,
		-0.243347,
		-0.584426,
		0,
		0.491223,
		-0.813227,
		-0.31203,
		0,
		0.918122,
		-0.516153,
		-0.438257,
		1
	},
	[0.0333333333333] = {
		-0.423156,
		-0.517497,
		0.743731,
		0,
		-0.791396,
		-0.188577,
		-0.58149,
		0,
		0.441169,
		-0.834647,
		-0.329747,
		0,
		0.872467,
		-0.54169,
		-0.450487,
		1
	},
	[0.05] = {
		-0.447807,
		-0.504145,
		0.738449,
		0,
		-0.80674,
		-0.128299,
		-0.576811,
		0,
		0.385538,
		-0.854036,
		-0.349261,
		0,
		0.819552,
		-0.567636,
		-0.463004,
		1
	},
	[0.0666666666667] = {
		-0.471592,
		-0.489254,
		0.733643,
		0,
		-0.818281,
		-0.067283,
		-0.570867,
		0,
		0.328661,
		-0.869542,
		-0.368617,
		0,
		0.76381,
		-0.591427,
		-0.474507,
		1
	},
	[0.0833333333333] = {
		-0.49302,
		-0.473949,
		0.729591,
		0,
		-0.825319,
		-0.010562,
		-0.564569,
		0,
		0.275283,
		-0.880489,
		-0.385952,
		0,
		0.710108,
		-0.611443,
		-0.483735,
		1
	},
	[0.116666666667] = {
		-0.524222,
		-0.448204,
		0.724089,
		0,
		-0.828114,
		0.070068,
		-0.556163,
		0,
		0.19854,
		-0.891181,
		-0.407895,
		0,
		0.629083,
		-0.637959,
		-0.490855,
		1
	},
	[0.133333333333] = {
		-0.532227,
		-0.441134,
		0.722589,
		0,
		-0.826215,
		0.084467,
		-0.556987,
		0,
		0.184671,
		-0.893457,
		-0.409427,
		0,
		0.611764,
		-0.644452,
		-0.486675,
		1
	},
	[0.15] = {
		-0.533983,
		-0.440049,
		0.721955,
		0,
		-0.82311,
		0.075377,
		-0.562857,
		0,
		0.193267,
		-0.894804,
		-0.402459,
		0,
		0.616357,
		-0.645964,
		-0.475847,
		1
	},
	[0.166666666667] = {
		-0.533464,
		-0.441182,
		0.721647,
		0,
		-0.819365,
		0.057825,
		-0.570348,
		0,
		0.209898,
		-0.895553,
		-0.392337,
		0,
		0.630232,
		-0.637076,
		-0.462283,
		1
	},
	[0.183333333333] = {
		-0.53224,
		-0.442937,
		0.721476,
		0,
		-0.81527,
		0.038495,
		-0.577799,
		0,
		0.228155,
		-0.895726,
		-0.381602,
		0,
		0.646208,
		-0.613373,
		-0.44759,
		1
	},
	[0.1] = {
		-0.51088,
		-0.459709,
		0.726408,
		0,
		-0.828229,
		0.036837,
		-0.559178,
		0,
		0.2303,
		-0.887305,
		-0.399563,
		0,
		0.663511,
		-0.626977,
		-0.489534,
		1
	},
	[0.216666666667] = {
		-0.508605,
		-0.463931,
		0.72532,
		0,
		-0.793727,
		-0.073804,
		-0.60378,
		0,
		0.333644,
		-0.882792,
		-0.330698,
		0,
		0.733532,
		-0.515366,
		-0.393467,
		1
	},
	[0.233333333333] = {
		-0.4729,
		-0.488235,
		0.733479,
		0,
		-0.754626,
		-0.205321,
		-0.623204,
		0,
		0.454869,
		-0.848215,
		-0.271339,
		0,
		0.829849,
		-0.424727,
		-0.339291,
		1
	},
	[0.25] = {
		-0.403084,
		-0.518762,
		0.753929,
		0,
		-0.64752,
		-0.420499,
		-0.63553,
		0,
		0.646715,
		-0.744356,
		-0.166413,
		0,
		0.977176,
		-0.265012,
		-0.249758,
		1
	},
	[0.266666666667] = {
		-0.232206,
		-0.511249,
		0.827469,
		0,
		-0.291661,
		-0.774977,
		-0.560664,
		0,
		0.927909,
		-0.37153,
		0.030843,
		0,
		1.133253,
		0.174695,
		-0.100306,
		1
	},
	[0.283333333333] = {
		-0.056708,
		-0.349547,
		0.935201,
		0,
		0.380688,
		-0.873511,
		-0.303406,
		0,
		0.922963,
		0.338814,
		0.182603,
		0,
		0.971327,
		0.909068,
		-0.00788,
		1
	},
	[0.2] = {
		-0.525675,
		-0.449433,
		0.722271,
		0,
		-0.808646,
		0.000392,
		-0.588296,
		0,
		0.264116,
		-0.893314,
		-0.363638,
		0,
		0.676664,
		-0.574045,
		-0.426641,
		1
	},
	[0.316666666667] = {
		-0.114466,
		-0.163399,
		0.979897,
		0,
		0.99226,
		0.028997,
		0.120746,
		0,
		-0.048144,
		0.986134,
		0.158816,
		0,
		-0.141496,
		1.421432,
		-0.071186,
		1
	},
	[0.333333333333] = {
		-0.265158,
		-0.286098,
		0.920782,
		0,
		0.864258,
		0.352872,
		0.358523,
		0,
		-0.427491,
		0.890859,
		0.153696,
		0,
		-0.558,
		1.288205,
		-0.097713,
		1
	},
	[0.35] = {
		-0.385514,
		-0.477028,
		0.789825,
		0,
		0.611168,
		0.509276,
		0.605897,
		0,
		-0.691269,
		0.716297,
		0.095211,
		0,
		-0.859798,
		1.105826,
		-0.170655,
		1
	},
	[0.366666666667] = {
		-0.417264,
		-0.603039,
		0.679879,
		0,
		0.387645,
		0.55854,
		0.733324,
		0,
		-0.821962,
		0.569542,
		0.000706,
		0,
		-1.005051,
		0.954211,
		-0.263797,
		1
	},
	[0.383333333333] = {
		-0.404464,
		-0.639371,
		0.653921,
		0,
		0.273675,
		0.597636,
		0.753613,
		0,
		-0.872646,
		0.483772,
		-0.066742,
		0,
		-1.056498,
		0.845437,
		-0.335479,
		1
	},
	[0.3] = {
		-0.047503,
		-0.17455,
		0.983502,
		0,
		0.854358,
		-0.517222,
		-0.05053,
		0,
		0.517509,
		0.837863,
		0.173697,
		0,
		0.482647,
		1.364514,
		-0.044436,
		1
	},
	[0.416666666667] = {
		-0.366185,
		-0.612908,
		0.70018,
		0,
		0.225036,
		0.671781,
		0.70574,
		0,
		-0.902921,
		0.415998,
		-0.10807,
		0,
		-1.105247,
		0.69691,
		-0.441835,
		1
	},
	[0.433333333333] = {
		-0.34943,
		-0.564004,
		0.748197,
		0,
		0.262598,
		0.70758,
		0.656028,
		0,
		-0.899411,
		0.425711,
		-0.099144,
		0,
		-1.111574,
		0.656713,
		-0.481366,
		1
	},
	[0.45] = {
		-0.332116,
		-0.501554,
		0.798839,
		0,
		0.320739,
		0.736394,
		0.595694,
		0,
		-0.887032,
		0.454058,
		-0.0837,
		0,
		-1.108357,
		0.633666,
		-0.515557,
		1
	},
	[0.466666666667] = {
		-0.315094,
		-0.435055,
		0.843471,
		0,
		0.383957,
		0.754328,
		0.53251,
		0,
		-0.867925,
		0.491647,
		-0.070641,
		0,
		-1.096996,
		0.622427,
		-0.546392,
		1
	},
	[0.483333333333] = {
		-0.303053,
		-0.37577,
		0.87576,
		0,
		0.437077,
		0.761813,
		0.478126,
		0,
		-0.846831,
		0.527672,
		-0.066629,
		0,
		-1.080869,
		0.616484,
		-0.574123,
		1
	},
	[0.4] = {
		-0.384105,
		-0.640543,
		0.664957,
		0,
		0.223421,
		0.634317,
		0.740084,
		0,
		-0.89585,
		0.432835,
		-0.100534,
		0,
		-1.088292,
		0.758444,
		-0.394153,
		1
	},
	[0.516666666667] = {
		-0.316337,
		-0.309973,
		0.896575,
		0,
		0.478113,
		0.764203,
		0.4329,
		0,
		-0.819353,
		0.565607,
		-0.093544,
		0,
		-1.043607,
		0.599201,
		-0.614942,
		1
	},
	[0.533333333333] = {
		-0.333848,
		-0.284891,
		0.898545,
		0,
		0.491364,
		0.760887,
		0.423808,
		0,
		-0.80443,
		0.583,
		-0.114036,
		0,
		-1.017246,
		0.592086,
		-0.637117,
		1
	},
	[0.55] = {
		-0.35596,
		-0.260463,
		0.89747,
		0,
		0.50522,
		0.754285,
		0.419292,
		0,
		-0.786158,
		0.602671,
		-0.136904,
		0,
		-0.982733,
		0.586616,
		-0.660668,
		1
	},
	[0.566666666667] = {
		-0.38228,
		-0.236577,
		0.893249,
		0,
		0.519271,
		0.744601,
		0.419437,
		0,
		-0.764343,
		0.624181,
		-0.161799,
		0,
		-0.938297,
		0.58215,
		-0.683542,
		1
	},
	[0.583333333333] = {
		-0.412366,
		-0.213099,
		0.885744,
		0,
		0.533024,
		0.732037,
		0.424273,
		0,
		-0.73881,
		0.647078,
		-0.188281,
		0,
		-0.886338,
		0.578771,
		-0.70647,
		1
	},
	[0.5] = {
		-0.303779,
		-0.335797,
		0.891604,
		0,
		0.465786,
		0.764022,
		0.446446,
		0,
		-0.831121,
		0.550917,
		-0.075684,
		0,
		-1.063824,
		0.608777,
		-0.596051,
		1
	},
	[0.616666666667] = {
		-0.4818,
		-0.166805,
		0.860258,
		0,
		0.557385,
		0.699177,
		0.447743,
		0,
		-0.676158,
		0.695218,
		-0.243889,
		0,
		-0.762694,
		0.574369,
		-0.75064,
		1
	},
	[0.633333333333] = {
		-0.519993,
		-0.143715,
		0.841993,
		0,
		0.566798,
		0.679398,
		0.466002,
		0,
		-0.63902,
		0.719559,
		-0.271825,
		0,
		-0.692552,
		0.572929,
		-0.770943,
		1
	},
	[0.65] = {
		-0.559654,
		-0.120496,
		0.81992,
		0,
		0.573581,
		0.657789,
		0.488179,
		0,
		-0.598157,
		0.743502,
		-0.29902,
		0,
		-0.618012,
		0.571748,
		-0.789488,
		1
	},
	[0.666666666667] = {
		-0.600101,
		-0.097045,
		0.794016,
		0,
		0.577201,
		0.634696,
		0.51381,
		0,
		-0.553821,
		0.766644,
		-0.324868,
		0,
		-0.540017,
		0.570674,
		-0.805921,
		1
	},
	[0.683333333333] = {
		-0.640642,
		-0.073279,
		0.764335,
		0,
		0.577208,
		0.6105,
		0.542328,
		0,
		-0.506368,
		0.788619,
		-0.348815,
		0,
		-0.459563,
		0.569577,
		-0.819976,
		1
	},
	[0.6] = {
		-0.445724,
		-0.189889,
		0.874799,
		0,
		0.545926,
		0.716815,
		0.433753,
		0,
		-0.709433,
		0.670909,
		-0.215836,
		0,
		-0.827559,
		0.57625,
		-0.728995,
		1
	},
	[0.716666666667] = {
		-0.719286,
		-0.024576,
		0.69428,
		0,
		0.56517,
		0.560461,
		0.605365,
		0,
		-0.403994,
		0.827816,
		-0.389242,
		0,
		-0.295379,
		0.566956,
		-0.840398,
		1
	},
	[0.733333333333] = {
		-0.756126,
		0.000426,
		0.654426,
		0,
		0.552863,
		0.53549,
		0.63843,
		0,
		-0.350167,
		0.844542,
		-0.405133,
		0,
		-0.213688,
		0.565321,
		-0.846772,
		1
	},
	[0.75] = {
		-0.790573,
		0.02588,
		0.611821,
		0,
		0.536437,
		0.511142,
		0.671542,
		0,
		-0.295349,
		0.859106,
		-0.417978,
		0,
		-0.133561,
		0.563435,
		-0.850777,
		1
	},
	[0.766666666667] = {
		-0.822172,
		0.051787,
		0.566878,
		0,
		0.516127,
		0.487854,
		0.703997,
		0,
		-0.240096,
		0.871388,
		-0.427829,
		0,
		-0.055887,
		0.561296,
		-0.852677,
		1
	},
	[0.783333333333] = {
		-0.850559,
		0.078147,
		0.52004,
		0,
		0.492297,
		0.466045,
		0.73515,
		0,
		-0.184912,
		0.881303,
		-0.43487,
		0,
		0.018534,
		0.558906,
		-0.852815,
		1
	},
	[0.7] = {
		-0.680589,
		-0.049136,
		0.731016,
		0,
		0.573266,
		0.585612,
		0.573084,
		0,
		-0.45625,
		0.809101,
		-0.370393,
		0,
		-0.377673,
		0.568361,
		-0.831486,
		1
	},
	[0.816666666667] = {
		-0.896681,
		0.132244,
		0.422463,
		0,
		0.436047,
		0.428418,
		0.791404,
		0,
		-0.076332,
		0.893851,
		-0.441819,
		0,
		0.154923,
		0.553392,
		-0.849441,
		1
	},
	[0.833333333333] = {
		-0.914106,
		0.160008,
		0.372569,
		0,
		0.404795,
		0.413309,
		0.815669,
		0,
		-0.023473,
		0.896422,
		-0.442579,
		0,
		0.215801,
		0.550243,
		-0.846809,
		1
	},
	[0.85] = {
		-0.927675,
		0.188285,
		0.32244,
		0,
		0.372317,
		0.401091,
		0.836962,
		0,
		0.028259,
		0.896479,
		-0.442184,
		0,
		0.271237,
		0.546782,
		-0.844138,
		1
	},
	[0.866666666667] = {
		-0.937372,
		0.217114,
		0.272388,
		0,
		0.339284,
		0.392041,
		0.855096,
		0,
		0.078866,
		0.89396,
		-0.441152,
		0,
		0.320914,
		0.542936,
		-0.841855,
		1
	},
	[0.883333333333] = {
		-0.943204,
		0.246544,
		0.22267,
		0,
		0.30638,
		0.386407,
		0.869955,
		0,
		0.128441,
		0.888766,
		-0.439997,
		0,
		0.364595,
		0.538614,
		-0.840404,
		1
	},
	[0.8] = {
		-0.87546,
		0.104964,
		0.471756,
		0,
		0.465418,
		0.44611,
		0.764442,
		0,
		-0.130216,
		0.888802,
		-0.439403,
		0,
		0.089002,
		0.556273,
		-0.851592,
		1
	},
	[0.916666666667] = {
		-0.943334,
		0.307419,
		0.124956,
		0,
		0.243705,
		0.386217,
		0.889632,
		0,
		0.225229,
		0.869673,
		-0.439251,
		0,
		0.433006,
		0.527685,
		-0.840892,
		1
	},
	[0.9] = {
		-0.945189,
		0.276628,
		0.17348,
		0,
		0.27429,
		0.384404,
		0.881475,
		0,
		0.177154,
		0.880744,
		-0.439211,
		0,
		0.402127,
		0.533716,
		-0.840262,
		1
	}
}

return spline_matrices

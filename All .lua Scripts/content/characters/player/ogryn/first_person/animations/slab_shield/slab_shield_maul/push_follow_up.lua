local spline_matrices = {
	[0] = {
		0.894123,
		-0.34287,
		0.288072,
		0,
		0.444192,
		0.760771,
		-0.473204,
		0,
		-0.056909,
		0.551061,
		0.832522,
		0,
		0.915825,
		0.07928,
		-0.37871,
		1
	},
	[0.0166666666667] = {
		0.909025,
		-0.340957,
		0.23963,
		0,
		0.413576,
		0.808808,
		-0.418072,
		0,
		-0.05127,
		0.479143,
		0.876238,
		0,
		0.879156,
		0.097032,
		-0.273455,
		1
	},
	[0.0333333333333] = {
		0.926249,
		-0.355358,
		0.12563,
		0,
		0.376661,
		0.884849,
		-0.274169,
		0,
		-0.013736,
		0.301269,
		0.95344,
		0,
		0.829791,
		0.180343,
		-0.076059,
		1
	},
	[0.05] = {
		0.933103,
		-0.353888,
		-0.063895,
		0,
		0.352222,
		0.935222,
		-0.036058,
		0,
		0.072516,
		0.01114,
		0.997305,
		0,
		0.774469,
		0.296556,
		0.185264,
		1
	},
	[0.0666666666667] = {
		0.907081,
		-0.291795,
		-0.303413,
		0,
		0.370376,
		0.89577,
		0.245801,
		0,
		0.200065,
		-0.335338,
		0.92061,
		0,
		0.721212,
		0.414275,
		0.469311,
		1
	},
	[0.0833333333333] = {
		0.838654,
		-0.167002,
		-0.51843,
		0,
		0.438376,
		0.771849,
		0.460517,
		0,
		0.323243,
		-0.613481,
		0.720524,
		0,
		0.670885,
		0.521335,
		0.72645,
		1
	},
	[0.116666666667] = {
		0.706286,
		-0.092406,
		-0.70187,
		0,
		0.588614,
		0.627483,
		0.509705,
		0,
		0.393311,
		-0.773128,
		0.497574,
		0,
		0.560147,
		0.774479,
		0.994378,
		1
	},
	[0.133333333333] = {
		0.717864,
		-0.306457,
		-0.625104,
		0,
		0.620383,
		0.689033,
		0.374644,
		0,
		0.315905,
		-0.656748,
		0.684753,
		0,
		0.519943,
		0.967093,
		0.893492,
		1
	},
	[0.15] = {
		0.841793,
		-0.417434,
		-0.342247,
		0,
		0.507896,
		0.827236,
		0.240254,
		0,
		0.182829,
		-0.37607,
		0.908375,
		0,
		0.299537,
		1.102534,
		0.652963,
		1
	},
	[0.166666666667] = {
		0.942562,
		-0.334025,
		-0.002206,
		0,
		0.333063,
		0.94031,
		-0.0699,
		0,
		0.025422,
		0.06515,
		0.997552,
		0,
		0.051433,
		1.20585,
		0.300318,
		1
	},
	[0.183333333333] = {
		0.999853,
		0.010023,
		0.013891,
		0,
		0.000932,
		0.777886,
		-0.628405,
		0,
		-0.017104,
		0.628325,
		0.777763,
		0,
		0.010079,
		1.223043,
		-0.148907,
		1
	},
	[0.1] = {
		0.752247,
		-0.044123,
		-0.657402,
		0,
		0.518574,
		0.655149,
		0.549419,
		0,
		0.406454,
		-0.75421,
		0.515715,
		0,
		0.614689,
		0.621708,
		0.924789,
		1
	},
	[0.216666666667] = {
		0.998062,
		-0.012258,
		-0.061012,
		0,
		-0.06206,
		-0.123321,
		-0.990424,
		0,
		0.004617,
		0.992291,
		-0.123843,
		0,
		0.006331,
		1.094709,
		-0.865909,
		1
	},
	[0.233333333333] = {
		0.997113,
		0.005729,
		-0.075709,
		0,
		-0.066437,
		-0.416856,
		-0.906542,
		0,
		-0.036754,
		0.908955,
		-0.415272,
		0,
		-0.053386,
		0.777327,
		-1.265016,
		1
	},
	[0.25] = {
		0.921604,
		0.114396,
		-0.370891,
		0,
		-0.270012,
		-0.497486,
		-0.824379,
		0,
		-0.278818,
		0.859896,
		-0.427597,
		0,
		-0.212494,
		0.437182,
		-1.330708,
		1
	},
	[0.266666666667] = {
		0.90729,
		0.264722,
		-0.326723,
		0,
		-0.065295,
		-0.678862,
		-0.731357,
		0,
		-0.415406,
		0.684886,
		-0.598639,
		0,
		-0.317144,
		0.206639,
		-1.317563,
		1
	},
	[0.283333333333] = {
		0.849382,
		0.377699,
		-0.368638,
		0,
		0.095618,
		-0.797037,
		-0.596313,
		0,
		-0.519045,
		0.471249,
		-0.713104,
		0,
		-0.261095,
		0.025294,
		-1.332571,
		1
	},
	[0.2] = {
		0.999913,
		-0.012281,
		-0.004781,
		0,
		-0.000271,
		0.343579,
		-0.939124,
		0,
		0.013176,
		0.939043,
		0.343546,
		0,
		0.002468,
		1.265127,
		-0.456446,
		1
	},
	[0.316666666667] = {
		0.619205,
		0.487293,
		-0.615736,
		0,
		0.411586,
		-0.869211,
		-0.273988,
		0,
		-0.668717,
		-0.083773,
		-0.738783,
		0,
		-0.040397,
		-0.242272,
		-1.30414,
		1
	},
	[0.333333333333] = {
		0.500606,
		0.453264,
		-0.737526,
		0,
		0.541405,
		-0.828715,
		-0.14182,
		0,
		-0.675481,
		-0.328304,
		-0.660259,
		0,
		0.059849,
		-0.304594,
		-1.290379,
		1
	},
	[0.35] = {
		0.424228,
		0.392856,
		-0.815901,
		0,
		0.628745,
		-0.7762,
		-0.046824,
		0,
		-0.651698,
		-0.49313,
		-0.576293,
		0,
		0.141217,
		-0.330338,
		-1.27142,
		1
	},
	[0.366666666667] = {
		0.413589,
		0.347776,
		-0.841425,
		0,
		0.66316,
		-0.748292,
		0.016684,
		0,
		-0.623829,
		-0.5649,
		-0.540117,
		0,
		0.194562,
		-0.336685,
		-1.264392,
		1
	},
	[0.383333333333] = {
		0.467468,
		0.332995,
		-0.818894,
		0,
		0.640433,
		-0.766109,
		0.054063,
		0,
		-0.60936,
		-0.549719,
		-0.571392,
		0,
		0.231383,
		-0.338465,
		-1.272743,
		1
	},
	[0.3] = {
		0.746625,
		0.46239,
		-0.478275,
		0,
		0.256739,
		-0.863527,
		-0.434057,
		0,
		-0.613707,
		0.201286,
		-0.763444,
		0,
		-0.156174,
		-0.133548,
		-1.326182,
		1
	},
	[0.416666666667] = {
		0.68403,
		0.320482,
		-0.655282,
		0,
		0.44921,
		-0.892844,
		0.032248,
		0,
		-0.574729,
		-0.316418,
		-0.754696,
		0,
		0.294696,
		-0.33668,
		-1.32445,
		1
	},
	[0.433333333333] = {
		0.808908,
		0.280136,
		-0.516905,
		0,
		0.301801,
		-0.952362,
		-0.04384,
		0,
		-0.504562,
		-0.12054,
		-0.854919,
		0,
		0.323028,
		-0.322127,
		-1.363432,
		1
	},
	[0.45] = {
		0.912332,
		0.198595,
		-0.358064,
		0,
		0.149365,
		-0.975659,
		-0.160559,
		0,
		-0.381234,
		0.093001,
		-0.919789,
		0,
		0.352235,
		-0.294459,
		-1.405281,
		1
	},
	[0.466666666667] = {
		0.975854,
		0.082288,
		-0.202331,
		0,
		0.018325,
		-0.953899,
		-0.299567,
		0,
		-0.217655,
		0.288626,
		-0.932374,
		0,
		0.38344,
		-0.262173,
		-1.441759,
		1
	},
	[0.483333333333] = {
		0.996409,
		-0.049338,
		-0.068813,
		0,
		-0.074569,
		-0.896313,
		-0.437108,
		0,
		-0.040112,
		0.440669,
		-0.896773,
		0,
		0.414183,
		-0.236668,
		-1.470669,
		1
	},
	[0.4] = {
		0.562931,
		0.330886,
		-0.757379,
		0,
		0.566871,
		-0.821435,
		0.062463,
		0,
		-0.60147,
		-0.464499,
		-0.649981,
		0,
		0.264738,
		-0.340289,
		-1.293324,
		1
	},
	[0.516666666667] = {
		0.983299,
		-0.176818,
		0.043109,
		0,
		-0.1205,
		-0.810023,
		-0.573883,
		0,
		0.136392,
		0.559104,
		-0.817802,
		0,
		0.442555,
		-0.246383,
		-1.485762,
		1
	},
	[0.533333333333] = {
		0.982795,
		-0.177922,
		0.049582,
		0,
		-0.113904,
		-0.79516,
		-0.595607,
		0,
		0.145397,
		0.579711,
		-0.801745,
		0,
		0.448123,
		-0.27537,
		-1.479616,
		1
	},
	[0.55] = {
		0.982297,
		-0.179095,
		0.054925,
		0,
		-0.107396,
		-0.778637,
		-0.618216,
		0,
		0.153486,
		0.601373,
		-0.784087,
		0,
		0.453004,
		-0.307961,
		-1.471841,
		1
	},
	[0.566666666667] = {
		0.981874,
		-0.180182,
		0.058812,
		0,
		-0.101177,
		-0.76065,
		-0.641229,
		0,
		0.160273,
		0.623655,
		-0.765093,
		0,
		0.456834,
		-0.34244,
		-1.462833,
		1
	},
	[0.583333333333] = {
		0.981602,
		-0.180945,
		0.060956,
		0,
		-0.09543,
		-0.741447,
		-0.664191,
		0,
		0.165378,
		0.646154,
		-0.745074,
		0,
		0.459459,
		-0.37699,
		-1.453107,
		1
	},
	[0.5] = {
		0.983731,
		-0.176048,
		0.035788,
		0,
		-0.127107,
		-0.82285,
		-0.553861,
		0,
		0.126954,
		0.540301,
		-0.83184,
		0,
		0.436817,
		-0.222138,
		-1.490096,
		1
	},
	[0.616666666667] = {
		0.981854,
		-0.180205,
		0.059069,
		0,
		-0.085977,
		-0.700629,
		-0.708327,
		0,
		0.169029,
		0.690395,
		-0.703409,
		0,
		0.461408,
		-0.438444,
		-1.434031,
		1
	},
	[0.633333333333] = {
		0.982528,
		-0.177903,
		0.054682,
		0,
		-0.08252,
		-0.67975,
		-0.728787,
		0,
		0.166824,
		0.711541,
		-0.682554,
		0,
		0.461183,
		-0.461145,
		-1.426112,
		1
	},
	[0.65] = {
		0.983634,
		-0.17371,
		0.047835,
		0,
		-0.080035,
		-0.659113,
		-0.747773,
		0,
		0.161424,
		0.731707,
		-0.662229,
		0,
		0.46052,
		-0.475562,
		-1.420289,
		1
	},
	[0.666666666667] = {
		0.985183,
		-0.167144,
		0.038445,
		0,
		-0.078586,
		-0.639171,
		-0.765039,
		0,
		0.152445,
		0.750682,
		-0.642835,
		0,
		0.45964,
		-0.479483,
		-1.417321,
		1
	},
	[0.683333333333] = {
		0.985183,
		-0.167144,
		0.038445,
		0,
		-0.078586,
		-0.639171,
		-0.765039,
		0,
		0.152445,
		0.750682,
		-0.642835,
		0,
		0.45964,
		-0.479483,
		-1.417321,
		1
	},
	[0.6] = {
		0.981569,
		-0.181077,
		0.061108,
		0,
		-0.090318,
		-0.721324,
		-0.686683,
		0,
		0.168422,
		0.668508,
		-0.724384,
		0,
		0.460921,
		-0.409674,
		-1.443276,
		1
	},
	[0.716666666667] = {
		0.985183,
		-0.167144,
		0.038445,
		0,
		-0.078586,
		-0.639171,
		-0.765039,
		0,
		0.152445,
		0.750682,
		-0.642835,
		0,
		0.45964,
		-0.479483,
		-1.417321,
		1
	},
	[0.733333333333] = {
		0.985183,
		-0.167144,
		0.038445,
		0,
		-0.078586,
		-0.639171,
		-0.765039,
		0,
		0.152445,
		0.750682,
		-0.642835,
		0,
		0.45964,
		-0.479483,
		-1.417321,
		1
	},
	[0.75] = {
		0.985183,
		-0.167144,
		0.038445,
		0,
		-0.078586,
		-0.639171,
		-0.765039,
		0,
		0.152445,
		0.750682,
		-0.642835,
		0,
		0.45964,
		-0.479483,
		-1.417321,
		1
	},
	[0.766666666667] = {
		0.985183,
		-0.167144,
		0.038445,
		0,
		-0.078586,
		-0.639171,
		-0.765039,
		0,
		0.152445,
		0.750682,
		-0.642835,
		0,
		0.45964,
		-0.479483,
		-1.417321,
		1
	},
	[0.783333333333] = {
		0.985183,
		-0.167144,
		0.038445,
		0,
		-0.078586,
		-0.639171,
		-0.765039,
		0,
		0.152445,
		0.750682,
		-0.642835,
		0,
		0.45964,
		-0.479483,
		-1.417321,
		1
	},
	[0.7] = {
		0.985183,
		-0.167144,
		0.038445,
		0,
		-0.078586,
		-0.639171,
		-0.765039,
		0,
		0.152445,
		0.750682,
		-0.642835,
		0,
		0.45964,
		-0.479483,
		-1.417321,
		1
	},
	[0.816666666667] = {
		0.985183,
		-0.167144,
		0.038445,
		0,
		-0.078586,
		-0.639171,
		-0.765039,
		0,
		0.152445,
		0.750682,
		-0.642835,
		0,
		0.45964,
		-0.479483,
		-1.417321,
		1
	},
	[0.833333333333] = {
		0.985183,
		-0.167144,
		0.038445,
		0,
		-0.078586,
		-0.639171,
		-0.765039,
		0,
		0.152445,
		0.750682,
		-0.642835,
		0,
		0.45964,
		-0.479483,
		-1.417321,
		1
	},
	[0.8] = {
		0.985183,
		-0.167144,
		0.038445,
		0,
		-0.078586,
		-0.639171,
		-0.765039,
		0,
		0.152445,
		0.750682,
		-0.642835,
		0,
		0.45964,
		-0.479483,
		-1.417321,
		1
	}
}

return spline_matrices
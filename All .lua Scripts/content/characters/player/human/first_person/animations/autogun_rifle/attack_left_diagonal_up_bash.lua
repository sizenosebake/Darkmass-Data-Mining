local spline_matrices = {
	[0] = {
		0.7961,
		0.190493,
		0.574402,
		0,
		-0.355773,
		0.915139,
		0.189593,
		0,
		-0.489541,
		-0.355292,
		0.796315,
		0,
		0.122001,
		0.312591,
		-0.205013,
		1
	},
	{
		0.986514,
		0.068134,
		0.148822,
		0,
		-0.053373,
		0.993451,
		-0.101023,
		0,
		-0.154731,
		0.091718,
		0.98369,
		0,
		0.103072,
		0.307307,
		-0.195213,
		1
	},
	[0.0333333333333] = {
		0.106105,
		0.377604,
		0.919868,
		0,
		-0.822182,
		0.553608,
		-0.132419,
		0,
		-0.559248,
		-0.742248,
		0.3692,
		0,
		0.127615,
		0.356583,
		-0.219821,
		1
	},
	[0.0666666666667] = {
		-0.090079,
		-0.1796,
		0.979607,
		0,
		-0.994262,
		0.073202,
		-0.078006,
		0,
		-0.0577,
		-0.981012,
		-0.185163,
		0,
		0.08427,
		0.396628,
		-0.173308,
		1
	},
	[0.133333333333] = {
		-0.115902,
		-0.354048,
		0.928017,
		0,
		-0.699273,
		-0.634449,
		-0.329382,
		0,
		0.705397,
		-0.687113,
		-0.174043,
		0,
		-0.127586,
		0.386262,
		-0.145737,
		1
	},
	[0.166666666667] = {
		-0.042722,
		-0.433487,
		0.900147,
		0,
		-0.466272,
		-0.788181,
		-0.401697,
		0,
		0.883609,
		-0.436875,
		-0.168451,
		0,
		-0.184718,
		0.392274,
		-0.126098,
		1
	},
	[0.1] = {
		0.021927,
		-0.310537,
		0.950308,
		0,
		-0.902512,
		-0.415079,
		-0.114813,
		0,
		0.430106,
		-0.855147,
		-0.289365,
		0,
		-0.041396,
		0.366128,
		-0.174646,
		1
	},
	[0.233333333333] = {
		0.004698,
		-0.412151,
		0.911103,
		0,
		-0.51069,
		-0.784329,
		-0.35217,
		0,
		0.859752,
		-0.463637,
		-0.214167,
		0,
		-0.149269,
		0.374237,
		-0.138279,
		1
	},
	[0.266666666667] = {
		0.10855,
		-0.429262,
		0.896633,
		0,
		-0.469031,
		-0.817372,
		-0.334533,
		0,
		0.876486,
		-0.384235,
		-0.290063,
		0,
		-0.151964,
		0.383395,
		-0.137787,
		1
	},
	[0.2] = {
		-0.110238,
		-0.388931,
		0.914648,
		0,
		-0.580329,
		-0.721908,
		-0.376918,
		0,
		0.806887,
		-0.572347,
		-0.146127,
		0,
		-0.136159,
		0.373893,
		-0.136183,
		1
	},
	[0.333333333333] = {
		0.174835,
		-0.428757,
		0.886341,
		0,
		-0.451525,
		-0.834882,
		-0.314799,
		0,
		0.874962,
		-0.345167,
		-0.339561,
		0,
		-0.160709,
		0.38608,
		-0.134995,
		1
	},
	[0.366666666667] = {
		0.208437,
		-0.420308,
		0.883117,
		0,
		-0.446826,
		-0.844131,
		-0.296291,
		0,
		0.87,
		-0.332842,
		-0.363753,
		0,
		-0.167981,
		0.386533,
		-0.136591,
		1
	},
	[0.3] = {
		0.1401,
		-0.434496,
		0.889711,
		0,
		-0.45788,
		-0.82515,
		-0.330867,
		0,
		0.877906,
		-0.361026,
		-0.31455,
		0,
		-0.155129,
		0.385602,
		-0.134148,
		1
	},
	[0.433333333333] = {
		0.259129,
		-0.3949,
		0.881423,
		0,
		-0.443853,
		-0.859212,
		-0.254461,
		0,
		0.857815,
		-0.325284,
		-0.397924,
		0,
		-0.181193,
		0.390641,
		-0.148275,
		1
	},
	[0.466666666667] = {
		0.271358,
		-0.376924,
		0.885603,
		0,
		-0.443385,
		-0.865634,
		-0.232566,
		0,
		0.854268,
		-0.329555,
		-0.402019,
		0,
		-0.185515,
		0.39517,
		-0.158165,
		1
	},
	[0.4] = {
		0.237343,
		-0.409176,
		0.881046,
		0,
		-0.444664,
		-0.852127,
		-0.275959,
		0,
		0.863679,
		-0.326273,
		-0.384193,
		0,
		-0.175092,
		0.387897,
		-0.140649,
		1
	},
	[0.533333333333] = {
		0.246671,
		-0.297541,
		0.922292,
		0,
		-0.521375,
		-0.842977,
		-0.132509,
		0,
		0.816898,
		-0.448174,
		-0.363068,
		0,
		-0.174141,
		0.41592,
		-0.182826,
		1
	},
	[0.566666666667] = {
		0.223979,
		-0.190702,
		0.955754,
		0,
		-0.691421,
		-0.722229,
		0.017927,
		0,
		0.686855,
		-0.664844,
		-0.29362,
		0,
		-0.142997,
		0.4374,
		-0.200089,
		1
	},
	[0.5] = {
		0.266723,
		-0.353166,
		0.896735,
		0,
		-0.44504,
		-0.870434,
		-0.210436,
		0,
		0.854867,
		-0.342955,
		-0.389338,
		0,
		-0.186866,
		0.401741,
		-0.1691,
		1
	},
	[0.633333333333] = {
		0.204432,
		0.0762,
		0.97591,
		0,
		-0.965541,
		-0.148329,
		0.213842,
		0,
		0.16105,
		-0.985998,
		0.043251,
		0,
		-0.062952,
		0.472926,
		-0.227235,
		1
	},
	[0.666666666667] = {
		0.206863,
		0.165506,
		0.964269,
		0,
		-0.970912,
		0.156191,
		0.181479,
		0,
		-0.120574,
		-0.973762,
		0.193002,
		0,
		-0.031198,
		0.485201,
		-0.23121,
		1
	},
	[0.6] = {
		0.208332,
		-0.053048,
		0.976618,
		0,
		-0.865246,
		-0.475552,
		0.158743,
		0,
		0.456012,
		-0.878087,
		-0.144972,
		0,
		-0.102743,
		0.457647,
		-0.216439,
		1
	},
	[0.733333333333] = {
		0.422186,
		0.24985,
		0.871398,
		0,
		-0.729948,
		0.663694,
		0.163359,
		0,
		-0.537526,
		-0.705043,
		0.46258,
		0,
		0.01305,
		0.491906,
		-0.238193,
		1
	},
	[0.766666666667] = {
		0.589899,
		0.267817,
		0.76177,
		0,
		-0.541542,
		0.830994,
		0.127206,
		0,
		-0.598958,
		-0.487569,
		0.635236,
		0,
		0.028784,
		0.482688,
		-0.239643,
		1
	},
	[0.7] = {
		0.273552,
		0.217692,
		0.936899,
		0,
		-0.891123,
		0.423984,
		0.161672,
		0,
		-0.362035,
		-0.879118,
		0.309972,
		0,
		-0.006718,
		0.492829,
		-0.234055,
		1
	},
	[0.833333333333] = {
		0.846649,
		0.259901,
		0.464367,
		0,
		-0.290126,
		0.956965,
		-0.006637,
		0,
		-0.446108,
		-0.129106,
		0.885618,
		0,
		0.057944,
		0.453189,
		-0.230938,
		1
	},
	[0.866666666667] = {
		0.923378,
		0.213634,
		0.318957,
		0,
		-0.203828,
		0.976897,
		-0.064234,
		0,
		-0.325311,
		-0.0057,
		0.94559,
		0,
		0.070538,
		0.434838,
		-0.223141,
		1
	},
	[0.8] = {
		0.724705,
		0.275875,
		0.631423,
		0,
		-0.394093,
		0.917633,
		0.051391,
		0,
		-0.565237,
		-0.286083,
		0.773734,
		0,
		0.043979,
		0.468767,
		-0.23605,
		1
	},
	[0.933333333333] = {
		0.970655,
		0.116064,
		0.210612,
		0,
		-0.089981,
		0.98749,
		-0.129486,
		0,
		-0.223006,
		0.106735,
		0.968956,
		0,
		0.091837,
		0.39298,
		-0.205838,
		1
	},
	[0.966666666667] = {
		0.980204,
		0.091661,
		0.175496,
		0,
		-0.071358,
		0.990362,
		-0.118708,
		0,
		-0.184685,
		0.103835,
		0.977297,
		0,
		0.098666,
		0.355518,
		-0.200055,
		1
	},
	[0.9] = {
		0.9534,
		0.156774,
		0.257779,
		0,
		-0.130794,
		0.984703,
		-0.115125,
		0,
		-0.271884,
		0.076045,
		0.959321,
		0,
		0.082456,
		0.414492,
		-0.213628,
		1
	},
	[1.03333333333] = {
		0.990891,
		0.046397,
		0.126418,
		0,
		-0.036489,
		0.996159,
		-0.079597,
		0,
		-0.129625,
		0.074259,
		0.988778,
		0,
		0.10543,
		0.262579,
		-0.191093,
		1
	},
	[1.06666666667] = {
		0.994065,
		0.031992,
		0.103976,
		0,
		-0.026049,
		0.997975,
		-0.058026,
		0,
		-0.105621,
		0.054973,
		0.992886,
		0,
		0.104968,
		0.26604,
		-0.187025,
		1
	},
	[1.13333333333] = {
		0.996666,
		-0.005099,
		0.08143,
		0,
		0.007778,
		0.999438,
		-0.032609,
		0,
		-0.081218,
		0.033133,
		0.996145,
		0,
		0.107247,
		0.282591,
		-0.181527,
		1
	},
	[1.16666666667] = {
		0.999284,
		-0.00819,
		0.036951,
		0,
		0.009159,
		0.999617,
		-0.026121,
		0,
		-0.036723,
		0.026441,
		0.998976,
		0,
		0.103434,
		0.290166,
		-0.178066,
		1
	},
	[1.1] = {
		0.992616,
		0.002437,
		0.121276,
		0,
		0.002869,
		0.999047,
		-0.043558,
		0,
		-0.121267,
		0.043584,
		0.991663,
		0,
		0.110818,
		0.273511,
		-0.184829,
		1
	},
	[1.23333333333] = {
		0.999878,
		-0.014847,
		-0.004791,
		0,
		0.014773,
		0.999777,
		-0.015121,
		0,
		0.005014,
		0.015048,
		0.999874,
		0,
		0.102682,
		0.292807,
		-0.172728,
		1
	},
	[1.26666666667] = {
		0.999813,
		-0.013973,
		-0.013361,
		0,
		0.013837,
		0.999852,
		-0.010244,
		0,
		0.013502,
		0.010057,
		0.999858,
		0,
		0.101928,
		0.292304,
		-0.170873,
		1
	},
	[1.2] = {
		0.99985,
		-0.013229,
		0.011138,
		0,
		0.013454,
		0.999701,
		-0.020403,
		0,
		-0.010865,
		0.02055,
		0.99973,
		0,
		0.102906,
		0.293174,
		-0.175129,
		1
	},
	[1.33333333333] = {
		0.999863,
		-0.008818,
		-0.014013,
		0,
		0.008798,
		0.99996,
		-0.001507,
		0,
		0.014025,
		0.001384,
		0.999901,
		0,
		0.099895,
		0.290959,
		-0.16798,
		1
	},
	[1.36666666667] = {
		0.999953,
		-0.005873,
		-0.007769,
		0,
		0.00589,
		0.99998,
		0.002261,
		0,
		0.007755,
		-0.002307,
		0.999967,
		0,
		0.099003,
		0.290181,
		-0.166767,
		1
	},
	[1.3] = {
		0.999802,
		-0.011738,
		-0.016061,
		0,
		0.011648,
		0.999916,
		-0.005694,
		0,
		0.016126,
		0.005505,
		0.999855,
		0,
		0.100937,
		0.291678,
		-0.169351,
		1
	},
	[1.43333333333] = {
		0.999945,
		-0.001857,
		0.010313,
		0,
		0.001771,
		0.999964,
		0.008291,
		0,
		-0.010328,
		-0.008273,
		0.999912,
		0,
		0.098127,
		0.288594,
		-0.164839,
		1
	},
	[1.46666666667] = {
		0.999785,
		-0.000633,
		0.020738,
		0,
		0.000416,
		0.999945,
		0.01045,
		0,
		-0.020744,
		-0.010439,
		0.99973,
		0,
		0.09801,
		0.287861,
		-0.164151,
		1
	},
	[1.4] = {
		0.999993,
		-0.003536,
		0.00074,
		0,
		0.003532,
		0.999978,
		0.005545,
		0,
		-0.000759,
		-0.005543,
		0.999984,
		0,
		0.098425,
		0.28938,
		-0.165716,
		1
	},
	[1.53333333333] = {
		0.999304,
		0.00042,
		0.037299,
		0,
		-0.000901,
		0.999917,
		0.012877,
		0,
		-0.03729,
		-0.012901,
		0.999221,
		0,
		0.09812,
		0.286804,
		-0.163371,
		1
	},
	[1.56666666667] = {
		0.999199,
		0.000327,
		0.04001,
		0,
		-0.000852,
		0.999914,
		0.013097,
		0,
		-0.040002,
		-0.01312,
		0.999113,
		0,
		0.098218,
		0.286611,
		-0.163296,
		1
	},
	[1.5] = {
		0.999541,
		9.1e-05,
		0.030305,
		0,
		-0.000455,
		0.999928,
		0.011987,
		0,
		-0.030301,
		-0.011996,
		0.999469,
		0,
		0.098035,
		0.28724,
		-0.163659,
		1
	},
	[1.63333333333] = {
		0.999199,
		-0.000283,
		0.04001,
		0,
		-0.000235,
		0.999916,
		0.012953,
		0,
		-0.04001,
		-0.012952,
		0.999115,
		0,
		0.098395,
		0.286526,
		-0.163338,
		1
	},
	[1.66666666667] = {
		0.999199,
		-0.000498,
		0.04001,
		0,
		-1.9e-05,
		0.999916,
		0.012935,
		0,
		-0.040013,
		-0.012926,
		0.999116,
		0,
		0.098457,
		0.286502,
		-0.163343,
		1
	},
	[1.6] = {
		0.999199,
		1e-05,
		0.04001,
		0,
		-0.00053,
		0.999915,
		0.013002,
		0,
		-0.040006,
		-0.013013,
		0.999115,
		0,
		0.09831,
		0.286563,
		-0.163324,
		1
	},
	[1.7] = {
		0.999199,
		-0.000582,
		0.04001,
		0,
		6.5e-05,
		0.999916,
		0.012933,
		0,
		-0.040014,
		-0.01292,
		0.999116,
		0,
		0.098481,
		0.286494,
		-0.163343,
		1
	}
}

return spline_matrices

local spline_matrices = {
	[0] = {
		0.891967,
		-0.224126,
		0.392635,
		0,
		-0.45165,
		-0.402997,
		0.795993,
		0,
		-0.020172,
		-0.887334,
		-0.460686,
		0,
		-0.281497,
		-0.030415,
		0.120931,
		1
	},
	[0.0166666666667] = {
		0.908604,
		-0.184402,
		0.374746,
		0,
		-0.415362,
		-0.304995,
		0.857002,
		0,
		-0.043737,
		-0.934331,
		-0.353714,
		0,
		-0.264912,
		-0.008613,
		0.140323,
		1
	},
	[0.0333333333333] = {
		0.927325,
		-0.139835,
		0.347153,
		0,
		-0.369928,
		-0.201794,
		0.90688,
		0,
		-0.05676,
		-0.969394,
		-0.238857,
		0,
		-0.24744,
		0.012881,
		0.161063,
		1
	},
	[0.05] = {
		0.945883,
		-0.094744,
		0.310369,
		0,
		-0.318808,
		-0.092834,
		0.943262,
		0,
		-0.060556,
		-0.991164,
		-0.118015,
		0,
		-0.229219,
		0.034794,
		0.182247,
		1
	},
	[0.0666666666667] = {
		0.9625,
		-0.053254,
		0.266004,
		0,
		-0.265203,
		0.021723,
		0.963948,
		0,
		-0.057113,
		-0.998345,
		0.006786,
		0,
		-0.210423,
		0.057783,
		0.202978,
		1
	},
	[0.0833333333333] = {
		0.976043,
		-0.019095,
		0.216738,
		0,
		-0.211983,
		0.140976,
		0.967052,
		0,
		-0.049021,
		-0.989829,
		0.133551,
		0,
		-0.191264,
		0.082413,
		0.222379,
		1
	},
	[0.116666666667] = {
		0.992788,
		0.01559,
		0.118865,
		0,
		-0.115613,
		0.386782,
		0.914895,
		0,
		-0.031712,
		-0.922039,
		0.385795,
		0,
		-0.152796,
		0.138403,
		0.253829,
		1
	},
	[0.133333333333] = {
		0.996733,
		0.012539,
		0.079792,
		0,
		-0.07506,
		0.508673,
		0.857682,
		0,
		-0.029834,
		-0.860868,
		0.507952,
		0,
		-0.133955,
		0.170474,
		0.264294,
		1
	},
	[0.15] = {
		0.998498,
		-0.004635,
		0.054591,
		0,
		-0.039675,
		0.62599,
		0.778821,
		0,
		-0.037783,
		-0.779818,
		0.624866,
		0,
		-0.115645,
		0.205647,
		0.270257,
		1
	},
	[0.166666666667] = {
		0.998189,
		-0.034546,
		0.049248,
		0,
		-0.007945,
		0.735793,
		0.67716,
		0,
		-0.05963,
		-0.676325,
		0.734186,
		0,
		-0.097988,
		0.244465,
		0.270746,
		1
	},
	[0.183333333333] = {
		0.991691,
		-0.088859,
		0.093018,
		0,
		0.022235,
		0.830609,
		0.556413,
		0,
		-0.126704,
		-0.549721,
		0.825683,
		0,
		-0.08265,
		0.302851,
		0.254454,
		1
	},
	[0.1] = {
		0.98608,
		0.004616,
		0.16621,
		0,
		-0.161543,
		0.263363,
		0.951075,
		0,
		-0.039383,
		-0.964686,
		0.260443,
		0,
		-0.171975,
		0.109157,
		0.2396,
		1
	},
	[0.216666666667] = {
		0.951725,
		-0.170524,
		0.255227,
		0,
		0.12782,
		0.976137,
		0.175551,
		0,
		-0.279073,
		-0.134453,
		0.950811,
		0,
		-0.046479,
		0.460063,
		0.162451,
		1
	},
	[0.233333333333] = {
		0.944953,
		-0.130632,
		0.299999,
		0,
		0.211204,
		0.943781,
		-0.254302,
		0,
		-0.249914,
		0.303664,
		0.919419,
		0,
		-0.020505,
		0.544959,
		0.086212,
		1
	},
	[0.25] = {
		0.951724,
		-0.051761,
		0.30256,
		0,
		0.267222,
		0.624733,
		-0.73369,
		0,
		-0.151043,
		0.779121,
		0.608405,
		0,
		0.00853,
		0.61635,
		-0.023631,
		1
	},
	[0.266666666667] = {
		0.954358,
		-0.005984,
		0.298606,
		0,
		0.29335,
		0.206574,
		-0.93342,
		0,
		-0.056099,
		0.978413,
		0.198901,
		0,
		0.045068,
		0.63387,
		-0.141784,
		1
	},
	[0.283333333333] = {
		0.940165,
		0.003796,
		0.340699,
		0,
		0.339906,
		-0.079554,
		-0.937089,
		0,
		0.023547,
		0.996823,
		-0.076084,
		0,
		0.111428,
		0.61948,
		-0.296509,
		1
	},
	[0.2] = {
		0.973051,
		-0.146408,
		0.178145,
		0,
		0.063594,
		0.912995,
		0.402984,
		0,
		-0.221646,
		-0.380795,
		0.897702,
		0,
		-0.067215,
		0.382202,
		0.215152,
		1
	},
	[0.316666666667] = {
		0.91638,
		0.023168,
		0.399638,
		0,
		0.391609,
		-0.258885,
		-0.882962,
		0,
		0.083004,
		0.96563,
		-0.24631,
		0,
		0.213289,
		0.532806,
		-0.517897,
		1
	},
	[0.333333333333] = {
		0.91629,
		0.029013,
		0.399464,
		0,
		0.397849,
		-0.180843,
		-0.899451,
		0,
		0.046144,
		0.983084,
		-0.177247,
		0,
		0.237583,
		0.460719,
		-0.572599,
		1
	},
	[0.35] = {
		0.915904,
		0.034196,
		0.399939,
		0,
		0.401281,
		-0.102044,
		-0.910253,
		0,
		0.009684,
		0.994192,
		-0.107184,
		0,
		0.24641,
		0.377545,
		-0.593321,
		1
	},
	[0.366666666667] = {
		0.911946,
		0.035857,
		0.40874,
		0,
		0.410216,
		-0.100893,
		-0.90639,
		0,
		0.008739,
		0.994251,
		-0.106718,
		0,
		0.24771,
		0.290126,
		-0.596294,
		1
	},
	[0.383333333333] = {
		0.90789,
		0.037599,
		0.417519,
		0,
		0.419133,
		-0.100338,
		-0.902364,
		0,
		0.007965,
		0.994243,
		-0.106855,
		0,
		0.248998,
		0.214411,
		-0.599263,
		1
	},
	[0.3] = {
		0.92143,
		0.011887,
		0.388362,
		0,
		0.379157,
		-0.245888,
		-0.892064,
		0,
		0.084889,
		0.969225,
		-0.231076,
		0,
		0.177022,
		0.589844,
		-0.437404,
		1
	},
	[0.416666666667] = {
		0.899474,
		0.041489,
		0.435001,
		0,
		0.436921,
		-0.100958,
		-0.893816,
		0,
		0.006833,
		0.994025,
		-0.108936,
		0,
		0.25086,
		0.141121,
		-0.602633,
		1
	},
	[0.433333333333] = {
		0.895111,
		0.043651,
		0.443702,
		0,
		0.445798,
		-0.101973,
		-0.889306,
		0,
		0.006426,
		0.993829,
		-0.110736,
		0,
		0.251402,
		0.141191,
		-0.60289,
		1
	},
	[0.45] = {
		0.890643,
		0.045899,
		0.452381,
		0,
		0.454662,
		-0.103257,
		-0.884658,
		0,
		0.006107,
		0.993595,
		-0.112834,
		0,
		0.251955,
		0.141092,
		-0.603195,
		1
	},
	[0.466666666667] = {
		0.886072,
		0.048227,
		0.461031,
		0,
		0.46351,
		-0.10479,
		-0.879874,
		0,
		0.005877,
		0.993324,
		-0.115205,
		0,
		0.252519,
		0.140838,
		-0.603545,
		1
	},
	[0.483333333333] = {
		0.881398,
		0.050638,
		0.469651,
		0,
		0.472339,
		-0.106544,
		-0.874954,
		0,
		0.005733,
		0.993018,
		-0.117826,
		0,
		0.253092,
		0.140442,
		-0.603936,
		1
	},
	[0.4] = {
		0.903733,
		0.039463,
		0.426274,
		0,
		0.428034,
		-0.100364,
		-0.898173,
		0,
		0.007338,
		0.994168,
		-0.107594,
		0,
		0.250102,
		0.161157,
		-0.601582,
		1
	},
	[0.516666666667] = {
		0.871739,
		0.055709,
		0.486794,
		0,
		0.489938,
		-0.11062,
		-0.86471,
		0,
		0.005677,
		0.9923,
		-0.123725,
		0,
		0.254264,
		0.139285,
		-0.604826,
		1
	},
	[0.533333333333] = {
		0.866752,
		0.058368,
		0.495312,
		0,
		0.498706,
		-0.11289,
		-0.859388,
		0,
		0.005755,
		0.991892,
		-0.126956,
		0,
		0.254862,
		0.138553,
		-0.605317,
		1
	},
	[0.55] = {
		0.861661,
		0.061108,
		0.503793,
		0,
		0.507451,
		-0.115282,
		-0.853934,
		0,
		0.005897,
		0.991451,
		-0.130343,
		0,
		0.255467,
		0.13774,
		-0.605834,
		1
	},
	[0.566666666667] = {
		0.856463,
		0.063925,
		0.512235,
		0,
		0.516172,
		-0.117772,
		-0.848349,
		0,
		0.006096,
		0.990981,
		-0.133863,
		0,
		0.256079,
		0.136859,
		-0.606374,
		1
	},
	[0.583333333333] = {
		0.85116,
		0.066816,
		0.520637,
		0,
		0.524868,
		-0.120333,
		-0.842635,
		0,
		0.006348,
		0.990482,
		-0.137492,
		0,
		0.256696,
		0.135925,
		-0.606931,
		1
	},
	[0.5] = {
		0.876621,
		0.053132,
		0.47824,
		0,
		0.481148,
		-0.108496,
		-0.869899,
		0,
		0.005668,
		0.992676,
		-0.120674,
		0,
		0.253674,
		0.139919,
		-0.604364,
		1
	},
	[0.616666666667] = {
		0.840233,
		0.0728,
		0.537316,
		0,
		0.54218,
		-0.125576,
		-0.830826,
		0,
		0.00699,
		0.989409,
		-0.144984,
		0,
		0.257943,
		0.133962,
		-0.608087,
		1
	},
	[0.633333333333] = {
		0.834608,
		0.075881,
		0.545592,
		0,
		0.550794,
		-0.12821,
		-0.824735,
		0,
		0.007368,
		0.98884,
		-0.1488,
		0,
		0.258573,
		0.132962,
		-0.608677,
		1
	},
	[0.65] = {
		0.828876,
		0.079012,
		0.553825,
		0,
		0.559379,
		-0.130821,
		-0.818524,
		0,
		0.007778,
		0.988252,
		-0.152632,
		0,
		0.259205,
		0.131969,
		-0.609273,
		1
	},
	[0.666666666667] = {
		0.823034,
		0.082185,
		0.562014,
		0,
		0.567932,
		-0.133385,
		-0.812195,
		0,
		0.008214,
		0.987651,
		-0.156456,
		0,
		0.259839,
		0.131001,
		-0.609869,
		1
	},
	[0.683333333333] = {
		0.817084,
		0.08539,
		0.57016,
		0,
		0.576454,
		-0.135881,
		-0.805753,
		0,
		0.008671,
		0.987039,
		-0.160249,
		0,
		0.260475,
		0.13007,
		-0.610463,
		1
	},
	[0.6] = {
		0.84575,
		0.069776,
		0.528997,
		0,
		0.533538,
		-0.122943,
		-0.836793,
		0,
		0.006648,
		0.989958,
		-0.141207,
		0,
		0.257317,
		0.134955,
		-0.607503,
		1
	},
	[0.716666666667] = {
		0.804853,
		0.091854,
		0.586323,
		0,
		0.593396,
		-0.140577,
		-0.79254,
		0,
		0.009625,
		0.9858,
		-0.16765,
		0,
		0.261748,
		0.128388,
		-0.611632,
		1
	},
	[0.733333333333] = {
		0.798572,
		0.095092,
		0.594341,
		0,
		0.601815,
		-0.142735,
		-0.785777,
		0,
		0.010112,
		0.985182,
		-0.171212,
		0,
		0.262383,
		0.127666,
		-0.612202,
		1
	},
	[0.75] = {
		0.792179,
		0.098315,
		0.602318,
		0,
		0.610197,
		-0.144738,
		-0.778916,
		0,
		0.010599,
		0.984574,
		-0.17465,
		0,
		0.263017,
		0.127045,
		-0.612757,
		1
	},
	[0.766666666667] = {
		0.785674,
		0.101511,
		0.610255,
		0,
		0.618541,
		-0.146565,
		-0.771962,
		0,
		0.011079,
		0.983979,
		-0.177942,
		0,
		0.263648,
		0.126541,
		-0.613296,
		1
	},
	[0.783333333333] = {
		0.779057,
		0.104746,
		0.618141,
		0,
		0.626847,
		-0.148298,
		-0.764899,
		0,
		0.011549,
		0.98338,
		-0.181192,
		0,
		0.264276,
		0.126089,
		-0.613832,
		1
	},
	[0.7] = {
		0.811024,
		0.088616,
		0.578263,
		0,
		0.584942,
		-0.138285,
		-0.7992,
		0,
		0.009143,
		0.98642,
		-0.163988,
		0,
		0.261111,
		0.129194,
		-0.611052,
		1
	},
	[0.816666666667] = {
		0.765483,
		0.111464,
		0.633729,
		0,
		0.643336,
		-0.151608,
		-0.750422,
		0,
		0.012433,
		0.982136,
		-0.187762,
		0,
		0.265519,
		0.125225,
		-0.614918,
		1
	},
	[0.833333333333] = {
		0.758524,
		0.114883,
		0.641438,
		0,
		0.651518,
		-0.153091,
		-0.743026,
		0,
		0.012837,
		0.981512,
		-0.190971,
		0,
		0.266133,
		0.124885,
		-0.615454,
		1
	},
	[0.85] = {
		0.751451,
		0.118294,
		0.649098,
		0,
		0.659657,
		-0.154397,
		-0.735537,
		0,
		0.013209,
		0.980902,
		-0.194055,
		0,
		0.26674,
		0.124655,
		-0.615976,
		1
	},
	[0.866666666667] = {
		0.744262,
		0.121661,
		0.656714,
		0,
		0.667751,
		-0.155483,
		-0.727965,
		0,
		0.013543,
		0.980318,
		-0.19696,
		0,
		0.267339,
		0.124569,
		-0.616477,
		1
	},
	[0.883333333333] = {
		0.736956,
		0.124944,
		0.664293,
		0,
		0.675799,
		-0.156308,
		-0.720322,
		0,
		0.013834,
		0.979774,
		-0.199629,
		0,
		0.26793,
		0.124665,
		-0.616949,
		1
	},
	[0.8] = {
		0.772327,
		0.108074,
		0.625964,
		0,
		0.635112,
		-0.149995,
		-0.757716,
		0,
		0.012002,
		0.982762,
		-0.184484,
		0,
		0.2649,
		0.125638,
		-0.614375,
		1
	},
	[0.916666666667] = {
		0.721993,
		0.131092,
		0.679368,
		0,
		0.691753,
		-0.15701,
		-0.704859,
		0,
		0.014267,
		0.978858,
		-0.204043,
		0,
		0.269084,
		0.125548,
		-0.617782,
		1
	},
	[0.9] = {
		0.729534,
		0.128102,
		0.671841,
		0,
		0.6838,
		-0.15683,
		-0.712616,
		0,
		0.014077,
		0.979283,
		-0.202009,
		0,
		0.268512,
		0.12498,
		-0.617387,
		1
	}
}

return spline_matrices
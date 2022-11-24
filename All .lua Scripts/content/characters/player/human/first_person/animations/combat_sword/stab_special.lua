local spline_matrices = {
	[0] = {
		0.280357,
		0.213836,
		0.935775,
		0,
		0.448502,
		0.832731,
		-0.32466,
		0,
		-0.848673,
		0.510718,
		0.137556,
		0,
		0.072681,
		0.335054,
		-0.390321,
		1
	},
	{
		0.827223,
		-0.360672,
		0.430833,
		0,
		0.44051,
		-0.059676,
		-0.895762,
		0,
		0.348787,
		0.930782,
		0.109514,
		0,
		0.486393,
		0.566719,
		-0.459198,
		1
	},
	[0.0166666666667] = {
		0.215412,
		0.190215,
		0.957818,
		0,
		0.654531,
		0.699781,
		-0.286174,
		0,
		-0.724698,
		0.688567,
		0.02624,
		0,
		0.11288,
		0.229918,
		-0.352392,
		1
	},
	[0.0333333333333] = {
		0.143184,
		0.166264,
		0.97563,
		0,
		0.806091,
		0.55235,
		-0.212432,
		0,
		-0.574209,
		0.816863,
		-0.054937,
		0,
		0.148424,
		0.138291,
		-0.320037,
		1
	},
	[0.05] = {
		0.069703,
		0.140966,
		0.987558,
		0,
		0.892765,
		0.43289,
		-0.124804,
		0,
		-0.445097,
		0.890356,
		-0.095675,
		0,
		0.173832,
		0.073694,
		-0.297605,
		1
	},
	[0.0666666666667] = {
		0.000842,
		0.112334,
		0.99367,
		0,
		0.92235,
		0.383822,
		-0.044173,
		0,
		-0.386355,
		0.916549,
		-0.103288,
		0,
		0.183527,
		0.049702,
		-0.289151,
		1
	},
	[0.0833333333333] = {
		-0.055526,
		0.065777,
		0.996288,
		0,
		0.850919,
		0.525142,
		0.012753,
		0,
		-0.522354,
		0.848469,
		-0.08513,
		0,
		0.137567,
		0.11223,
		-0.301435,
		1
	},
	[0.116666666667] = {
		-0.207683,
		-0.048831,
		0.976977,
		0,
		0.288205,
		0.951366,
		0.108817,
		0,
		-0.934776,
		0.304169,
		-0.18351,
		0,
		-0.057204,
		0.444497,
		-0.349617,
		1
	},
	[0.133333333333] = {
		-0.343595,
		-0.097686,
		0.934023,
		0,
		0.106947,
		0.984035,
		0.142258,
		0,
		-0.933008,
		0.14877,
		-0.327663,
		0,
		-0.096029,
		0.607966,
		-0.354164,
		1
	},
	[0.15] = {
		-0.636222,
		-0.150744,
		0.756636,
		0,
		0.296481,
		0.857648,
		0.420166,
		0,
		-0.712265,
		0.491647,
		-0.500962,
		0,
		-0.036052,
		0.707635,
		-0.280187,
		1
	},
	[0.166666666667] = {
		-0.810636,
		-0.185717,
		0.555318,
		0,
		0.412038,
		0.492916,
		0.766328,
		0,
		-0.416045,
		0.850025,
		-0.323053,
		0,
		0.047238,
		0.754095,
		-0.17954,
		1
	},
	[0.183333333333] = {
		-0.782229,
		-0.181163,
		0.596069,
		0,
		0.543798,
		0.268292,
		0.795175,
		0,
		-0.303977,
		0.94615,
		-0.11135,
		0,
		0.092585,
		0.7721,
		-0.119365,
		1
	},
	[0.1] = {
		-0.115589,
		0.006056,
		0.993279,
		0,
		0.612625,
		0.787572,
		0.06649,
		0,
		-0.781876,
		0.616193,
		-0.094744,
		0,
		0.038319,
		0.260261,
		-0.327153,
		1
	},
	[0.216666666667] = {
		-0.770251,
		-0.179219,
		0.612041,
		0,
		0.624276,
		-0.015722,
		0.781045,
		0,
		-0.130356,
		0.983684,
		0.123992,
		0,
		0.218692,
		0.752339,
		-0.009626,
		1
	},
	[0.233333333333] = {
		-0.78634,
		-0.188891,
		0.588209,
		0,
		0.613124,
		-0.121762,
		0.780547,
		0,
		-0.075817,
		0.97442,
		0.211559,
		0,
		0.294732,
		0.707439,
		0.037227,
		1
	},
	[0.25] = {
		-0.761821,
		-0.186875,
		0.620247,
		0,
		0.64435,
		-0.31711,
		0.695883,
		0,
		0.066643,
		0.929795,
		0.361995,
		0,
		0.375899,
		0.656917,
		0.084164,
		1
	},
	[0.266666666667] = {
		-0.73339,
		-0.180908,
		0.655294,
		0,
		0.652331,
		-0.458561,
		0.603478,
		0,
		0.191319,
		0.870054,
		0.454316,
		0,
		0.430918,
		0.615796,
		0.111008,
		1
	},
	[0.283333333333] = {
		-0.742007,
		-0.173643,
		0.647514,
		0,
		0.63287,
		-0.500042,
		0.59113,
		0,
		0.221138,
		0.848414,
		0.480928,
		0,
		0.44786,
		0.588817,
		0.11127,
		1
	},
	[0.2] = {
		-0.755752,
		-0.168436,
		0.632826,
		0,
		0.625447,
		0.100696,
		0.773742,
		0,
		-0.194049,
		0.980556,
		0.029246,
		0,
		0.145054,
		0.777595,
		-0.063491,
		1
	},
	[0.316666666667] = {
		-0.753143,
		-0.168204,
		0.63599,
		0,
		0.603977,
		-0.559974,
		0.567134,
		0,
		0.260744,
		0.811256,
		0.523331,
		0,
		0.471695,
		0.535277,
		0.110596,
		1
	},
	[0.333333333333] = {
		-0.758341,
		-0.168299,
		0.629757,
		0,
		0.592093,
		-0.581942,
		0.557466,
		0,
		0.272661,
		0.795624,
		0.54096,
		0,
		0.479758,
		0.510478,
		0.110419,
		1
	},
	[0.35] = {
		-0.763642,
		-0.169349,
		0.623034,
		0,
		0.581082,
		-0.600883,
		0.548893,
		0,
		0.281416,
		0.781192,
		0.557265,
		0,
		0.486243,
		0.488154,
		0.110358,
		1
	},
	[0.366666666667] = {
		-0.768773,
		-0.170941,
		0.616253,
		0,
		0.57055,
		-0.618629,
		0.540158,
		0,
		0.288896,
		0.766862,
		0.573116,
		0,
		0.491985,
		0.469125,
		0.11034,
		1
	},
	[0.383333333333] = {
		-0.773473,
		-0.17265,
		0.609862,
		0,
		0.559975,
		-0.636895,
		0.529899,
		0,
		0.296931,
		0.75137,
		0.589301,
		0,
		0.497822,
		0.454215,
		0.110304,
		1
	},
	[0.3] = {
		-0.748324,
		-0.169457,
		0.641323,
		0,
		0.616942,
		-0.533008,
		0.579038,
		0,
		0.243708,
		0.828968,
		0.503407,
		0,
		0.461216,
		0.561732,
		0.110974,
		1
	},
	[0.416666666667] = {
		-0.780568,
		-0.174678,
		0.600167,
		0,
		0.535952,
		-0.681136,
		0.498808,
		0,
		0.321664,
		0.711015,
		0.625292,
		0,
		0.513202,
		0.437373,
		0.110044,
		1
	},
	[0.433333333333] = {
		-0.782452,
		-0.17415,
		0.597864,
		0,
		0.520619,
		-0.709705,
		0.47463,
		0,
		0.34165,
		0.682635,
		0.645976,
		0,
		0.524576,
		0.43116,
		0.109901,
		1
	},
	[0.45] = {
		-0.783791,
		-0.172235,
		0.596663,
		0,
		0.500841,
		-0.743383,
		0.443329,
		0,
		0.367192,
		0.64631,
		0.66892,
		0,
		0.539018,
		0.425402,
		0.10866,
		1
	},
	[0.466666666667] = {
		-0.785277,
		-0.169131,
		0.595595,
		0,
		0.475812,
		-0.780368,
		0.405745,
		0,
		0.396159,
		0.602014,
		0.69328,
		0,
		0.555883,
		0.419924,
		0.105298,
		1
	},
	[0.483333333333] = {
		-0.78669,
		-0.16507,
		0.59487,
		0,
		0.445907,
		-0.81834,
		0.362612,
		0,
		0.42695,
		0.55052,
		0.717385,
		0,
		0.574611,
		0.414742,
		0.09999,
		1
	},
	[0.4] = {
		-0.777488,
		-0.174041,
		0.604336,
		0,
		0.548713,
		-0.657261,
		0.516646,
		0,
		0.307288,
		0.733293,
		0.606511,
		0,
		0.504592,
		0.444249,
		0.110201,
		1
	},
	[0.516666666667] = {
		-0.788481,
		-0.155116,
		0.595177,
		0,
		0.374094,
		-0.889054,
		0.263887,
		0,
		0.488211,
		0.430723,
		0.759031,
		0,
		0.615412,
		0.405353,
		0.084237,
		1
	},
	[0.533333333333] = {
		-0.788507,
		-0.149796,
		0.596504,
		0,
		0.334134,
		-0.918604,
		0.211002,
		0,
		0.516343,
		0.365689,
		0.774378,
		0,
		0.636366,
		0.401189,
		0.074141,
		1
	},
	[0.55] = {
		-0.787769,
		-0.144626,
		0.598751,
		0,
		0.293125,
		-0.942946,
		0.157895,
		0,
		0.541754,
		0.299894,
		0.785217,
		0,
		0.656955,
		0.397404,
		0.063629,
		1
	},
	[0.566666666667] = {
		-0.786164,
		-0.139887,
		0.601978,
		0,
		0.252518,
		-0.961736,
		0.106293,
		0,
		0.564075,
		0.235574,
		0.791407,
		0,
		0.676632,
		0.394,
		0.053192,
		1
	},
	[0.583333333333] = {
		-0.783613,
		-0.135882,
		0.606207,
		0,
		0.213906,
		-0.975135,
		0.057929,
		0,
		0.583262,
		0.175065,
		0.793195,
		0,
		0.694841,
		0.390979,
		0.042234,
		1
	},
	[0.5] = {
		-0.787821,
		-0.160306,
		0.594676,
		0,
		0.411718,
		-0.855171,
		0.314913,
		0,
		0.458068,
		0.492934,
		0.739723,
		0,
		0.59464,
		0.409878,
		0.092912,
		1
	},
	[0.616666666667] = {
		-0.775449,
		-0.131277,
		0.617613,
		0,
		0.149306,
		-0.988531,
		-0.022655,
		0,
		0.613504,
		0.074646,
		0.786156,
		0,
		0.724637,
		0.386089,
		0.0164,
		1
	},
	[0.633333333333] = {
		-0.769747,
		-0.131313,
		0.624697,
		0,
		0.126674,
		-0.990573,
		-0.052135,
		0,
		0.625654,
		0.039002,
		0.779125,
		0,
		0.735112,
		0.384228,
		0.000388,
		1
	},
	[0.65] = {
		-0.762901,
		-0.133276,
		0.632629,
		0,
		0.112739,
		-0.990953,
		-0.072809,
		0,
		0.636609,
		0.015776,
		0.771025,
		0,
		0.741898,
		0.382772,
		-0.018472,
		1
	},
	[0.666666666667] = {
		-0.754836,
		-0.137427,
		0.641356,
		0,
		0.109232,
		-0.990488,
		-0.083679,
		0,
		0.646755,
		0.006892,
		0.762667,
		0,
		0.744438,
		0.381737,
		-0.040772,
		1
	},
	[0.683333333333] = {
		-0.682592,
		-0.179546,
		0.708401,
		0,
		0.165248,
		-0.982164,
		-0.089704,
		0,
		0.711871,
		0.055831,
		0.700087,
		0,
		0.744618,
		0.382831,
		-0.069089,
		1
	},
	[0.6] = {
		-0.780057,
		-0.132904,
		0.611431,
		0,
		0.178944,
		-0.983753,
		0.014461,
		0,
		0.599575,
		0.120692,
		0.791165,
		0,
		0.711029,
		0.388342,
		0.030159,
		1
	},
	[0.716666666667] = {
		-0.171227,
		-0.417381,
		0.892454,
		0,
		0.43469,
		-0.844903,
		-0.311742,
		0,
		0.884153,
		0.334563,
		0.326101,
		0,
		0.74428,
		0.3943,
		-0.142956,
		1
	},
	[0.733333333333] = {
		0.156639,
		-0.563705,
		0.810988,
		0,
		0.459797,
		-0.685095,
		-0.565006,
		0,
		0.8741,
		0.461392,
		0.151877,
		0,
		0.743509,
		0.403215,
		-0.183599,
		1
	},
	[0.75] = {
		0.386217,
		-0.695293,
		0.606139,
		0,
		0.355051,
		-0.494437,
		-0.793392,
		0,
		0.851337,
		0.521632,
		0.055904,
		0,
		0.742167,
		0.413263,
		-0.223446,
		1
	},
	[0.766666666667] = {
		0.473095,
		-0.794609,
		0.380496,
		0,
		0.203351,
		-0.321734,
		-0.924735,
		0,
		0.857222,
		0.514862,
		0.009374,
		0,
		0.740124,
		0.423695,
		-0.26005,
		1
	},
	[0.783333333333] = {
		0.468408,
		-0.85469,
		0.223827,
		0,
		0.096075,
		-0.202561,
		-0.974545,
		0,
		0.878273,
		0.477989,
		-0.012767,
		0,
		0.737251,
		0.433746,
		-0.290963,
		1
	},
	[0.7] = {
		-0.481159,
		-0.280757,
		0.830459,
		0,
		0.30126,
		-0.942588,
		-0.144119,
		0,
		0.823243,
		0.18084,
		0.538115,
		0,
		0.744607,
		0.387261,
		-0.103969,
		1
	},
	[0.816666666667] = {
		0.45873,
		-0.872913,
		0.1661,
		0,
		0.111132,
		-0.1291,
		-0.985385,
		0,
		0.881599,
		0.470484,
		0.037786,
		0,
		0.726934,
		0.451053,
		-0.331267,
		1
	},
	[0.833333333333] = {
		0.476942,
		-0.861962,
		0.171892,
		0,
		0.140322,
		-0.118387,
		-0.983003,
		0,
		0.867661,
		0.492956,
		0.064488,
		0,
		0.71649,
		0.460136,
		-0.347982,
		1
	},
	[0.85] = {
		0.505409,
		-0.84308,
		0.183787,
		0,
		0.166931,
		-0.113437,
		-0.979421,
		0,
		0.846579,
		0.525688,
		0.083403,
		0,
		0.702503,
		0.469796,
		-0.363838,
		1
	},
	[0.866666666667] = {
		0.541634,
		-0.816151,
		0.201319,
		0,
		0.192227,
		-0.112891,
		-0.974836,
		0,
		0.818341,
		0.566703,
		0.095741,
		0,
		0.685395,
		0.47994,
		-0.378779,
		1
	},
	[0.883333333333] = {
		0.582961,
		-0.781035,
		0.22392,
		0,
		0.217558,
		-0.115479,
		-0.969192,
		0,
		0.782831,
		0.613717,
		0.102601,
		0,
		0.665584,
		0.490475,
		-0.392753,
		1
	},
	[0.8] = {
		0.452983,
		-0.875755,
		0.166914,
		0,
		0.078405,
		-0.147365,
		-0.98597,
		0,
		0.888065,
		0.459714,
		0.00191,
		0,
		0.733416,
		0.442639,
		-0.313746,
		1
	},
	[0.916666666667] = {
		0.670358,
		-0.686777,
		0.280994,
		0,
		0.272889,
		-0.123973,
		-0.954024,
		0,
		0.690038,
		0.716218,
		0.104307,
		0,
		0.619532,
		0.512325,
		-0.417588,
		1
	},
	[0.933333333333] = {
		0.711658,
		-0.628873,
		0.31315,
		0,
		0.304195,
		-0.125952,
		-0.944247,
		0,
		0.633253,
		0.767239,
		0.101665,
		0,
		0.594127,
		0.52344,
		-0.428348,
		1
	},
	[0.95] = {
		0.748844,
		-0.565384,
		0.345795,
		0,
		0.337852,
		-0.123214,
		-0.933099,
		0,
		0.570166,
		0.815573,
		0.098748,
		0,
		0.567695,
		0.534544,
		-0.437935,
		1
	},
	[0.966666666667] = {
		0.780734,
		-0.498073,
		0.37733,
		0,
		0.372961,
		-0.113062,
		-0.920933,
		0,
		0.501353,
		0.859733,
		0.09749,
		0,
		0.540653,
		0.545531,
		-0.446302,
		1
	},
	[0.983333333333] = {
		0.806811,
		-0.429054,
		0.406163,
		0,
		0.407924,
		-0.092755,
		-0.908292,
		0,
		0.427381,
		0.898504,
		0.100185,
		0,
		0.513414,
		0.556293,
		-0.453404,
		1
	},
	[0.9] = {
		0.626715,
		-0.737779,
		0.250821,
		0,
		0.244146,
		-0.119764,
		-0.962315,
		0,
		0.740014,
		0.664334,
		0.105068,
		0,
		0.64349,
		0.501303,
		-0.405707,
		1
	},
	[1.01666666667] = {
		0.842712,
		-0.295351,
		0.450115,
		0,
		0.467949,
		-0.011549,
		-0.88368,
		0,
		0.266194,
		0.955319,
		0.128477,
		0,
		0.460007,
		0.576698,
		-0.463635,
		1
	},
	[1.03333333333] = {
		0.854378,
		-0.235412,
		0.46327,
		0,
		0.486791,
		0.050582,
		-0.872053,
		0,
		0.181859,
		0.970578,
		0.157813,
		0,
		0.434672,
		0.586115,
		-0.46667,
		1
	},
	[1.05] = {
		0.863519,
		-0.183064,
		0.469917,
		0,
		0.494433,
		0.123752,
		-0.860361,
		0,
		0.099348,
		0.975281,
		0.197375,
		0,
		0.410804,
		0.594856,
		-0.468259,
		1
	},
	[1.06666666667] = {
		0.871495,
		-0.140406,
		0.469876,
		0,
		0.489874,
		0.20467,
		-0.847428,
		0,
		0.022814,
		0.968709,
		0.24715,
		0,
		0.38882,
		0.602802,
		-0.468356,
		1
	},
	[1.08333333333] = {
		0.880254,
		-0.104577,
		0.462835,
		0,
		0.472146,
		0.290133,
		-0.832407,
		0,
		-0.047233,
		0.951255,
		0.304766,
		0,
		0.369135,
		0.609837,
		-0.466867,
		1
	},
	[1.11666666667] = {
		0.902178,
		-0.04017,
		0.429489,
		0,
		0.397892,
		0.462043,
		-0.79259,
		0,
		-0.166603,
		0.885947,
		0.432828,
		0,
		0.338321,
		0.6207,
		-0.459549,
		1
	},
	[1.13333333333] = {
		0.914304,
		-0.011295,
		0.404871,
		0,
		0.345747,
		0.542434,
		-0.765653,
		0,
		-0.210968,
		0.840022,
		0.499855,
		0,
		0.328023,
		0.624296,
		-0.454129,
		1
	},
	[1.15] = {
		0.926446,
		0.015466,
		0.37611,
		0,
		0.287535,
		0.615771,
		-0.733587,
		0,
		-0.242943,
		0.787773,
		0.566032,
		0,
		0.321684,
		0.626515,
		-0.447807,
		1
	},
	[1.16666666667] = {
		0.938081,
		0.040124,
		0.344085,
		0,
		0.226577,
		0.680284,
		-0.697048,
		0,
		-0.262044,
		0.731849,
		0.62907,
		0,
		0.319717,
		0.627243,
		-0.440789,
		1
	},
	[1.18333333333] = {
		0.948773,
		0.062645,
		0.309686,
		0,
		0.166105,
		0.734878,
		-0.657544,
		0,
		-0.268773,
		0.6753,
		0.686827,
		0,
		0.320239,
		0.626893,
		-0.43327,
		1
	},
	[1.1] = {
		0.890641,
		-0.071224,
		0.449094,
		0,
		0.440878,
		0.376984,
		-0.814561,
		0,
		-0.111285,
		0.923477,
		0.367159,
		0,
		0.352163,
		0.615841,
		-0.463864,
		1
	},
	[1.21666666667] = {
		0.966174,
		0.101004,
		0.237288,
		0,
		0.057293,
		0.813051,
		-0.579366,
		0,
		-0.251446,
		0.573364,
		0.779762,
		0,
		0.322177,
		0.624571,
		-0.417509,
		1
	},
	[1.23333333333] = {
		0.972614,
		0.116686,
		0.201015,
		0,
		0.012586,
		0.837139,
		-0.546845,
		0,
		-0.232087,
		0.534399,
		0.812744,
		0,
		0.323529,
		0.622696,
		-0.409662,
		1
	},
	[1.25] = {
		0.977572,
		0.130309,
		0.165445,
		0,
		-0.026273,
		0.854909,
		-0.518112,
		0,
		-0.208956,
		0.502145,
		0.839159,
		0,
		0.325092,
		0.6204,
		-0.40212,
		1
	},
	[1.26666666667] = {
		0.981116,
		0.142318,
		0.130988,
		0,
		-0.060818,
		0.869849,
		-0.489555,
		0,
		-0.183612,
		0.472343,
		0.862078,
		0,
		0.326831,
		0.61773,
		-0.395087,
		1
	},
	[1.28333333333] = {
		0.983336,
		0.152867,
		0.098398,
		0,
		-0.09097,
		0.882361,
		-0.461696,
		0,
		-0.1574,
		0.445051,
		0.881564,
		0,
		0.328712,
		0.614746,
		-0.388743,
		1
	},
	[1.2] = {
		0.958203,
		0.082965,
		0.273796,
		0,
		0.108945,
		0.779105,
		-0.617355,
		0,
		-0.264535,
		0.62138,
		0.737502,
		0,
		0.321069,
		0.625987,
		-0.425444,
		1
	},
	[1.31666666667] = {
		0.984516,
		0.170239,
		0.041796,
		0,
		-0.138467,
		0.901463,
		-0.410112,
		0,
		-0.107494,
		0.397975,
		0.911077,
		0,
		0.332784,
		0.608078,
		-0.378836,
		1
	},
	[1.33333333333] = {
		0.983949,
		0.17741,
		0.019239,
		0,
		-0.156253,
		0.908609,
		-0.387316,
		0,
		-0.086195,
		0.378093,
		0.921746,
		0,
		0.334912,
		0.604509,
		-0.37563,
		1
	},
	[1.35] = {
		0.982979,
		0.183712,
		0.001463,
		0,
		-0.170363,
		0.914472,
		-0.367038,
		0,
		-0.068767,
		0.360542,
		0.930205,
		0,
		0.33706,
		0.600856,
		-0.373829,
		1
	},
	[1.36666666667] = {
		0.981889,
		0.189149,
		-0.010837,
		0,
		-0.180944,
		0.919266,
		-0.349584,
		0,
		-0.056161,
		0.345214,
		0.936842,
		0,
		0.339199,
		0.597173,
		-0.373613,
		1
	},
	[1.38333333333] = {
		0.980842,
		0.193832,
		-0.019429,
		0,
		-0.189063,
		0.923157,
		-0.334719,
		0,
		-0.046943,
		0.331979,
		0.942118,
		0,
		0.341284,
		0.593516,
		-0.374527,
		1
	},
	[1.3] = {
		0.984396,
		0.162117,
		0.068422,
		0,
		-0.116793,
		0.892799,
		-0.435052,
		0,
		-0.131617,
		0.420272,
		0.897802,
		0,
		0.330707,
		0.61151,
		-0.383266,
		1
	},
	[1.41666666667] = {
		0.978991,
		0.201283,
		-0.032577,
		0,
		-0.201314,
		0.928774,
		-0.311209,
		0,
		-0.032384,
		0.311229,
		0.949783,
		0,
		0.345169,
		0.586473,
		-0.377691,
		1
	},
	[1.43333333333] = {
		0.978227,
		0.204144,
		-0.037386,
		0,
		-0.205786,
		0.93073,
		-0.302314,
		0,
		-0.02692,
		0.303425,
		0.952475,
		0,
		0.346937,
		0.583177,
		-0.379727,
		1
	},
	[1.45] = {
		0.977581,
		0.206493,
		-0.041183,
		0,
		-0.209348,
		0.93224,
		-0.29513,
		0,
		-0.02255,
		0.297135,
		0.954569,
		0,
		0.348564,
		0.580093,
		-0.381921,
		1
	},
	[1.46666666667] = {
		0.977054,
		0.208376,
		-0.044089,
		0,
		-0.212125,
		0.933379,
		-0.289492,
		0,
		-0.019172,
		0.292202,
		0.956164,
		0,
		0.350034,
		0.577268,
		-0.384168,
		1
	},
	[1.48333333333] = {
		0.976642,
		0.209843,
		-0.046225,
		0,
		-0.214226,
		0.934212,
		-0.285229,
		0,
		-0.016669,
		0.288469,
		0.957344,
		0,
		0.351328,
		0.574747,
		-0.38636,
		1
	},
	[1.4] = {
		0.979868,
		0.197862,
		-0.026634,
		0,
		-0.195793,
		0.926285,
		-0.321965,
		0,
		-0.039034,
		0.320698,
		0.946377,
		0,
		0.343279,
		0.589934,
		-0.375922,
		1
	},
	[1.51666666667] = {
		0.97612,
		0.211712,
		-0.048658,
		0,
		-0.216793,
		0.935171,
		-0.280101,
		0,
		-0.013797,
		0.283961,
		0.958737,
		0,
		0.353316,
		0.570809,
		-0.390158,
		1
	},
	[1.53333333333] = {
		0.975986,
		0.212208,
		-0.049191,
		0,
		-0.217437,
		0.93539,
		-0.278866,
		0,
		-0.013165,
		0.282865,
		0.959069,
		0,
		0.353974,
		0.569487,
		-0.391551,
		1
	},
	[1.55] = {
		0.975916,
		0.212472,
		-0.049425,
		0,
		-0.217764,
		0.935493,
		-0.278264,
		0,
		-0.012887,
		0.282325,
		0.959232,
		0,
		0.354381,
		0.568658,
		-0.392465,
		1
	},
	[1.56666666667] = {
		0.975897,
		0.21255,
		-0.049477,
		0,
		-0.217856,
		0.935519,
		-0.278106,
		0,
		-0.012825,
		0.282181,
		0.959275,
		0,
		0.354521,
		0.568372,
		-0.392794,
		1
	},
	[1.5] = {
		0.976334,
		0.210939,
		-0.047708,
		0,
		-0.215752,
		0.934793,
		-0.28216,
		0,
		-0.014921,
		0.285775,
		0.95818,
		0,
		0.352428,
		0.572579,
		-0.388392,
		1
	}
}

return spline_matrices

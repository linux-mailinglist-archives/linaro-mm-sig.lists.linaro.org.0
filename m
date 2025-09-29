Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B1ABA93AC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 14:45:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E38445D43
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 12:45:43 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010002.outbound.protection.outlook.com [52.101.46.2])
	by lists.linaro.org (Postfix) with ESMTPS id 99C2740E18
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 12:45:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=qqt3uRmB;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 52.101.46.2 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BVjw2Hd/eNPqC24XATajBuHEM1vkAcaY8aYMSU/h0tWC81vUlm1C4scTdhYhLDLFCEDGW0gDpsEn648j+x4yIhKONop/VqkFJAcPu4bjeYLFT9wQewSiZhPv7AYZkjKvd5xOKRKy6QGKIsK+zUVI4aRfKPVuj+SyIayQQk8iWPm9igIVZehQ+wntZCnmAcUhRyLt81iZ0wOei6HK91IcapASgB6KWJNBqa5cJmbXMtGrbGvHfG1Hd3JumTdSwL2+1WstC+ivQNovN0CA0gUyE2L9Jgr0eTtxsHleb/bn+va0PKGO+35mxqf2r3zrWs6f4AEgVTOrmRMogAlfciqvLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yOC3IPT9b052ItUEL1OnUsFvC19Igu+2XYFY8kfcfLk=;
 b=ANZvYPLE+ZNNXCjGqKQP0dfMdjH1EoTgJjRWZB0tVtG73n49kh8x9U0zBLRunNnKKkko8RzO1SP8qdMMhU6UuOA2Lgp6Q6ihg7CRccfexZVJ+AyhWRKkfszxSgmvOXLDzytGmOq/jUDQ/+KFQ8aAL1wMMF8atUhHRguMq0BJ21rqsl7MMbOUcviMPD/F8cPIIUzwMpabkLRJTMjUFl57B33O1UtxWOM8DwE0Ft/e8TaI640s/7S7JUk6Ua7wpmAK+x1UDN6jl7m0fP9hA530Cny/eX1n5eS2F5e5Eku/r/hWaQ+V3dLXiyKvITR/88IzFpnqXTKoBQvV3C9DhEM8rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yOC3IPT9b052ItUEL1OnUsFvC19Igu+2XYFY8kfcfLk=;
 b=qqt3uRmBuzq44TvfCZKbGzuY/4cZbPrhBaPVuCUYDmZIlvlOUmb2I0Tu6CQ+kpZQ4MUAz2yPRzM/Ek28rvW2B9Kpj3jC091/8sSYzF5mYrQ0EbzmMiLssgCGL3Z9woO9T7Niiqf44Js9GLO/0f8q8gV+Mb+n+TKAnuvaYG9cnxzADP88gxWyIqzA8UPHTxrPAs0+xdlrhz2Xiqe9VKIkVvHjLXd1OyjSY3awWk0yRmJVpCaDbnn+Bph3nHALnUri1eXOoCHUeLy2tRVX+iNio0DLJm7CH5tKgfeGQah2dStdI0IBbPg95UNGYuq4/7anRDDuxI28qA2+l5m9v11Qrw==
Received: from PH7PR12MB5757.namprd12.prod.outlook.com (2603:10b6:510:1d0::13)
 by DS4PR12MB9793.namprd12.prod.outlook.com (2603:10b6:8:2a3::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.16; Mon, 29 Sep
 2025 12:45:38 +0000
Received: from PH7PR12MB5757.namprd12.prod.outlook.com
 ([fe80::f012:300c:6bf4:7632]) by PH7PR12MB5757.namprd12.prod.outlook.com
 ([fe80::f012:300c:6bf4:7632%2]) with mapi id 15.20.9160.014; Mon, 29 Sep 2025
 12:45:37 +0000
Date: Mon, 29 Sep 2025 09:45:35 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250929124535.GI2617119@nvidia.com>
References: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
 <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
 <472f27f0-2f54-45dd-b0a6-3a26b5eec301@amd.com>
 <ef9f4fb1c55bf3e5e6423b2accdccee0607b95ef.camel@linux.intel.com>
 <20250926144128.GD2617119@nvidia.com>
 <765e3449-2eb1-49f5-954e-3bab5a5fc9d1@amd.com>
 <20250926160036.GE2617119@nvidia.com>
 <f33a4344-545a-43f4-9a3b-24bf070d559c@amd.com>
Content-Disposition: inline
In-Reply-To: <f33a4344-545a-43f4-9a3b-24bf070d559c@amd.com>
X-ClientProxiedBy: YT4PR01CA0477.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:d6::25) To PH7PR12MB5757.namprd12.prod.outlook.com
 (2603:10b6:510:1d0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5757:EE_|DS4PR12MB9793:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a4cc46c-61bb-469f-a965-08ddff56172d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TjZ4bWk2dzhKakMrRXNQT2doeGpmSStvdEpKSGxiSFF0VnNUSEJJWUd5M082?=
 =?utf-8?B?NW5zVHpTREhzRFkycFU3ZlgraTdMc0lWejJJWWw2T1QyVFlQMWJ2REFFb0tQ?=
 =?utf-8?B?U2dZdDJ3T1ZPRWc3RnNhSmxxUlVsYzQ5dUU4VmVHT29hMW5nU2JXcEhnZnRP?=
 =?utf-8?B?dVcraHpZdms2Wm94TTM2VXVKd0VCRGJTejF4MnZiRVhHcGhzZmxMa3lSZld4?=
 =?utf-8?B?QWZRVVF4RnZGeFBBRjhhdHk3bjdMTTlRTFM5QlFUcUhYOTRyOTVvS1ZNRlVl?=
 =?utf-8?B?bHhJSXp6TVBqMjRYLy9mRWV6K0xxcytMTVVTYmtjd3BweEhCRXJPcWUvT3BT?=
 =?utf-8?B?azE5ZVlybFhOTHgyRlFHTUlpYk5PWXlTTHFpalh6b29uaDV4bWYyTGJRVHV6?=
 =?utf-8?B?elExbmxIMVROeGUydmkwbWpPV3RBTG9STm9sakU4VlBwZUJQcFZ5NDhGYWM3?=
 =?utf-8?B?dDQ3b2NmeWo3YkZTV295S2JUdjAyT0FlbmtsTHFhNEh3NWo2bHlGam5WY1ND?=
 =?utf-8?B?Y1FNbFl2Q0RhMDJ4UldYQkt4YnM2TEZoWlhZU0lUMXNVVkRacmZ3NU81bnhq?=
 =?utf-8?B?U1pkOWR0ZHZkQzlzZEJ1ano3dUxrQVdSZjJ1RmxvU2N3ZmxoUmVNeTdqQjkv?=
 =?utf-8?B?eU9FNFZJVzlRd05MWmRVQ3NDSFNrYnlJQUFoUm9UNWhtWGhWSXZ1ZFZBYkNF?=
 =?utf-8?B?TmpkS3FqbllwOGRFaitYalBDYnRhdGZLNlJNQ2RXbzMvUUF4bHV6dDBsOVdO?=
 =?utf-8?B?VTBUYzJHRzMrUEN1bXdsUzhyN2xnRFlJL2JiMnpoWXR3cUF2VUFWeWhoeE52?=
 =?utf-8?B?R21ad1dPN01XNXhWSlFnOHRzRVYzWHVuVXpvbUFrcXQzc2owTWY0RzhDdW9W?=
 =?utf-8?B?dlJlSkJzZ05RNllPWFVTYzYvelpTU054cHZLTCtYempLak5tTW1NRUFxSFFy?=
 =?utf-8?B?L084NFAvemVkbjg3aXltN01za2lYUXZCTEQrZGZNTmdTQlZHYjVFVFNCMVls?=
 =?utf-8?B?MjdpK09KSFEvUVg2QUZzemVQU0Fic20wRUZXalRqcnhiVXU2ZzFmWVVoY0Yr?=
 =?utf-8?B?V1htdVBMMXVUTzJYTHNIcFRCL1lqUWQ2ZWtqZ0ZhRjBJK2Nsclc3b21LV09S?=
 =?utf-8?B?dzhzTjMzWS9SVmJZY0c4czl3U0dTLzBEa1Nka3IyWG1QTk5nT1ZKT3p4NDBX?=
 =?utf-8?B?TGRLTFdZcVZLSlQ2cksreGdFNGVRZHlPUzBudUJMRTVpRHpZMHBCUW1nd3ZI?=
 =?utf-8?B?TzQ3R3hTa08xemVGSUVTcWhyb2pMU0RidlozVnlMYVlpcno3SGFmcFdMcXcz?=
 =?utf-8?B?UnBlWVNBVUFEZDRUUUFObnNOUDh5ODRucU9KdndGMXhJZE50cWNoRkxKUzU2?=
 =?utf-8?B?T29oamo5UWFTRU1uVE0rSkhQNzN2TkNJMTZPamZnZ0lUMUx4Nll3NllBeENK?=
 =?utf-8?B?WDIvOGVjVDNOcXFRQk1ucGF2QWg3VS8vVnY4Zk1YVlQzc0QrYVFXRTlYL1M0?=
 =?utf-8?B?VEFiMmlZWkxoTnd1aEtXQTlyTVNMS0t2WmtRYmFBZVkwL25Ta05FeHpVc0pu?=
 =?utf-8?B?cWJLMGFZVDNnNkwzUkNZdFJLMno3NEluNXZLQ0tEYWtaMlRleXUxRG5IdkFp?=
 =?utf-8?B?bDRRZUFRbkVIVGhLaCtvYlFXWTVrRnJ3Qms5Q2dMZHphajhRWkFpZWhTdURh?=
 =?utf-8?B?YzNIUUlyamFjeW1Hc3ZMYVFuRTZmZFkzdGxyY3lBR3Y0aXhJUHU2cytFREto?=
 =?utf-8?B?M2RtZFBjODFuUzkrRkpWSk9sREVSYXNYVVNCbFZjak9NNUp5VklIYi9rSW9T?=
 =?utf-8?B?dTluaFJIVzhWTlV0RDkvSDgxWDZBeGxLV281cWFRWDFXeXJROUVxNHlieEM5?=
 =?utf-8?B?S0Vwd1lZU2lraG44eEErSC9YZ1RSYzRKR242S2c3cHhkRTB3aDRzWVo2R1c3?=
 =?utf-8?Q?kleinVDqVWSST18hl6gfWMWgbxv98NOy?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5757.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V2RuZVhqTERLbk1mQ2dxZm9nVmVZZDNUVHVIUG9URzgyUklCT1lPRWtHaVpO?=
 =?utf-8?B?Z2w2ODBjVTVwWW5CYnFXU0lyZzU2UkxwQ3NkVzdjeGs4UUpPUXJWL2FXUWFz?=
 =?utf-8?B?YXJsbHk1UlRnNTZuVDJHVVRlenRRcW9Qa0RJb1lzWjhURGFzc2VnQWRWQUhT?=
 =?utf-8?B?bk52czEzS3dWMTZDNWlORmZOY3J1c05yS1hGVVpjdnp6N3NXNHZKaTBzWCtu?=
 =?utf-8?B?OTVOR2dFOUxhek93KzUwZmhaSVUyRlAzQUxxc1o5VStQZmFualpQVU1OZzU1?=
 =?utf-8?B?L0NqakNLblUyRHBERGJ1dWVUc0Q2KzN5WXdXcjR6eVJVRjNMOFVOWWNUWGFG?=
 =?utf-8?B?ZVRDT0l0THNhaFNHeGF5eVJrdCt6ZjU5dVh3MEM1a2ZMaXlBNytkenFaZHBw?=
 =?utf-8?B?bksrRjE1Y1RSK04xdGV6OTdldGxYOHNtcjZqV0NNUmxUODROaUVBcXgyYzVy?=
 =?utf-8?B?R2FhUGFlSXNXV0pPWlNJZnZRMFBnbUg5N3htYmk1MjQweU5aUXBlZ0JJRENv?=
 =?utf-8?B?RjZOSkZpWnNTV2c4SzRJSFo0OFVCZDd0ZHdTUUEvOTNGTCtqOWhqbEV0ME1j?=
 =?utf-8?B?aVJ0cjFTNnJNSVNMUVIwdSswbmIyaFJoNnpEU3FEWWVIR2VHdUVDNFltcXVX?=
 =?utf-8?B?RTdRWlhVMHZMTktJTXpFSGpZb05KM0hrNUYrQzlBUlhNb2Z5QzduYm9QM2s3?=
 =?utf-8?B?K2ZUWVRTM2l3UFdGNjlyb1FiZFpBdWZwTmFqREREREdTM3EvZ1JYb3dLK0RG?=
 =?utf-8?B?aFVncUhGMjRNY1VibmE5Nmo1N3U5b1Z0YklXZGducjNUK0J6R2dRSmtKQlNX?=
 =?utf-8?B?ejNORUhKb0k2Vzk4bm56bld1OEFMem1xdCs2dWlmRDB3YlBGY01lQkpwcHVC?=
 =?utf-8?B?YzBNWXdqOHd2cCtWWWNGajMrd1J3YzQ0ZFVTcStoMGdIbUsyanVFZ3FLS3A3?=
 =?utf-8?B?WGhzOU5LTWExU1VQNW45WHQ5WFV2cHgwZUx1Vk1kTnZFbmFmNEpsVDFjaWNG?=
 =?utf-8?B?Uy9zMnBydHAwMWh0RW00ZlJsOFB3RWlYSUFtRFlqb2dJd3NhM0RIUG5NSTNF?=
 =?utf-8?B?SnRVMlJXYkxmMXhuYk9NUjhpOHZsY24vZXUvbkRodnNUOER6RkNYczBIQTVH?=
 =?utf-8?B?RGhqcmhKYllnYUt0alcyV0JsOHpwVTFlbXZIYWxpNS8xSnI1bXl0NWNoVmVG?=
 =?utf-8?B?V3BPZjlKVXdyOFNYdDhjNmdUM251ZW1KUGwvUnkwZWRPWm5NeW5aeG16dU1J?=
 =?utf-8?B?T0wzR0VwVlJ2cGdCcVN6MFgwOGYrWTY1ZlQrZHExV1BKL2Q3UjExVUhnZ1FB?=
 =?utf-8?B?THJuRWJlUklIdmprVUhXaEhQSmw3RXgwbkFnaWROcEllY3hKN2pTNnNNc21x?=
 =?utf-8?B?VWRrcHl3bFdvWGFmaDV5T21qSTNlOHg0SmJZbVFoWlZTZUppcWxhbHB5THFM?=
 =?utf-8?B?emMzSnVyNWFVMGtKWmZpejBEN3FSc1Y2eDhpaDVzQTJ1STA0WnNkcEJybTM5?=
 =?utf-8?B?WFNrSnJkNGxoemtqYWtJcnJFTEdEcTJYT295V3pqVXNXOTdPWk5rSWNmc0JL?=
 =?utf-8?B?eVNTVjYzdFVoaFF0VWV4ZjN0WUVRaUhtVzhWNm9RcEZMOE1taTU4UGc3SFdS?=
 =?utf-8?B?UWx0Tk1VUm9WU2FTeVQ5YnlDRW80cGc2dG4vcDgyYXVrUE9DNkkvRld5Q1dp?=
 =?utf-8?B?R3c5MDNNQTdxcHpaQVJzaEZ1TmNmSDZWYS9Db0MvWnpQK2VYVk5DQzcxWHZl?=
 =?utf-8?B?eEFGUUdUT3RuNzJBaVV0TVpHR1dhSThBeHZFY1R3UHp6cnZEYXpoZHNUYkg4?=
 =?utf-8?B?Um9OZjljMGJnL3BWdTdaMTNPNHFjbzJlQVl6SndqanloeHlyeTZVOGl3UW1u?=
 =?utf-8?B?NnZQd1YwVUtpQU44Q1RkaWpNMWErNlpQZmI4eENvd2wvRkU1bFVCekhvYXE0?=
 =?utf-8?B?bUcxT283dTFaWVh6TEFmM3hrYTgyNmxyZ05TUkVlODVMQkRZbmgza3BBQktE?=
 =?utf-8?B?S1JXUXRPNzFNWmx3TGttakk5K09MOTlhUnJzUVcxVHRFMHFvQXExMlo2L3pO?=
 =?utf-8?B?aGxYVk1HMXZkZW5vTDNRUjlkcnRyaTRMZmg4aFgxZGhYb2JvbDBlQTFxNkh0?=
 =?utf-8?Q?l/mA=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a4cc46c-61bb-469f-a965-08ddff56172d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5757.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2025 12:45:37.9010
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V/P2Sfu1jYEkiIGXrqxlkEQwMXuEQ2I/J/ANz7g4Kxfm2ppAcH+XGMXvGjS5+tSB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR12MB9793
X-Rspamd-Queue-Id: 99C2740E18
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.98 / 15.00];
	BAYES_HAM(-2.98)[99.89%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.46.2:from];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6HG73HNS5OM6NYNPPCTI6WZEIWKKQGWL
X-Message-ID-Hash: 6HG73HNS5OM6NYNPPCTI6WZEIWKKQGWL
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, intel-xe@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6HG73HNS5OM6NYNPPCTI6WZEIWKKQGWL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgMjksIDIwMjUgYXQgMTA6MTY6MzBBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCg0KPiBUaGUgcG9pbnQgaXMgdGhhdCB0aGUgZXhwb3J0ZXIgbWFuYWdlcyBhbGwg
YWNjZXNzZXMgdG8gaXQncyBidWZmZXINCj4gYW5kIHRoZXJlIGNhbiBiZSBtb3JlIHRoYW4gb25l
IGltcG9ydGVyIGFjY2Vzc2luZyBpdCBhdCB0aGUgc2FtZQ0KPiB0aW1lLg0KPiANCj4gU28gd2hl
biBhbiBleHBvcnRlciBzZWVzIHRoYXQgaXQgYWxyZWFkeSBoYXMgYW4gaW1wb3J0ZXIgd2hpY2gg
Y2FuDQo+IG9ubHkgZG8gRE1BIHRvIHN5c3RlbSBtZW1vcnkgaXQgd2lsbCBleHBvc2Ugb25seSBE
TUEgYWRkcmVzcyB0byBhbGwNCj4gb3RoZXIgaW1wb3J0ZXJzIGFzIHdlbGwuDQoNCkkgd291bGQg
cmVwaHJhc2UgdGhhdCwgaWYgdGhlIGV4cG9ydGVyIHN1cHBvcnRzIG11bHRpcGxlIHBsYWNlbWVu
dA0Kb3B0aW9ucyBmb3IgdGhlIG1lbW9yeSAoVlJBTS9DUFUgZm9yIGV4YW1wbGUpIHRoZW4gaXQg
bmVlZHMgdG8gdHJhY2sNCndoaWNoIHBsYWNlbWVudCBvcHRpb25zIGFsbCBpdHMgaW1wb3J0ZXIg
c3VwcG9ydCBhbmQgbmV2ZXIgcGxhY2UgdGhlDQptZW1vcnkgc29tZXBsYWNlIGFuIGFjdGl2ZSBp
bXBvcnRlciBjYW5ub3QgcmVhY2guDQoNCkkgZG9uJ3Qgd2FudCB0byBzYXkgdGhhdCBqdXN0IGJl
Y2F1c2Ugb25lIGltcG9ydGVyIHdhbnRzIHRvIHVzZQ0KZG1hX2FkZHJfdCB0aGVuIGFsbCBwcml2
YXRlIGludGVyY29ubmVjdCBvcHRpb25zIGFyZSBkaXNhYmxlZC4gSWYgdGhlDQptZW1vcnkgaXMg
aW4gVlJBTSB0aGVuIG11bHRpcGxlIGltcG9ydGVycyB1c2luZyBwcml2YXRlIGludGVyY29ubmVj
dA0KY29uY3VycmVudGx5IHdpdGggZG1hX2FkZHJfdCBzaG91bGQgYmUgcG9zc2libGUuDQoNClRo
aXMgc2VlbXMgbGlrZSBpdCBpcyBtYWtpbmcgdGhlIGFyZ3VtZW50IHRoYXQgdGhlIGV4cG9ydGVy
IGRvZXMgbmVlZA0KdG8ga25vdyB0aGUgaW1wb3J0ZXIgY2FwYWJpbGl0eSBzbyBpdCBjYW4gZmln
dXJlIG91dCB3aGF0IHBsYWNlbWVudA0Kb3B0aW9ucyBhcmUgdmFsaWQuDQoNCj4gPiBJIGRpZG4n
dCBza2V0Y2ggZnVydGhlciwgYnV0IEkgdGhpbmsgdGhlIGV4cG9ydGVyIGFuZCBpbXBvcnRlciBz
aG91bGQNCj4gPiBib3RoIGJlIHByb3ZpZGluZyBhIGNvbXBhdGlibGUgbGlzdCBhbmQgdGhlbiBp
biBhbG1vc3QgYWxsIGNhc2VzIHRoZQ0KPiA+IGNvcmUgY29kZSBzaG91bGQgZG8gdGhlIG1hdGNo
aW5nLg0KPiANCj4gTW9yZSBvciBsZXNzIG1hdGNoZXMgbXkgaWRlYS4gSSB3b3VsZCBqdXN0IHN0
YXJ0IHdpdGggdGhlIGV4cG9ydGVyDQo+IHByb3ZpZGluZyBhIGxpc3Qgb2YgaG93IGl0J3MgYnVm
ZmVyIGlzIGFjY2Vzc2libGUgYmVjYXVzZSBpdCBrbm93cw0KPiBhYm91dCBvdGhlciBpbXBvcnRl
cnMgYW5kIGNhbiBwcmUtcmVkdWNlIHRoZSBsaXN0IGlmIG5lY2Vzc2FyeS4NCg0KSSB0aGluayB0
aGUgaW1wb3J0ZXIgYWxzbyBoYXMgdG8gYWR2ZXJ0aXNlIHdoYXQgaXQgaXMgYWJsZSB0byBzdXBw
b3J0Lg0KQSBiaWcgcG9pbnQgb2YgdGhlIHByaXZhdGUgaW50ZXJjb25uZWN0IGlzIHRoYXQgaXQg
d29uJ3QgdXNlDQpzY2F0dGVybGlzdCBzbyBpdCBuZWVkcyB0byBiZSBhIG5lZ290aWF0ZWQgZmVh
dHVyZS4NCg0KPiA+IEZvciBleGFtcGxlLCB3ZSBoYXZlIHNvbWUgc3lzdGVtcyB3aXRoIG11bHRp
cGF0aCBQQ0kuIFRoaXMgY291bGQNCj4gPiBhY3R1YWxseSBzdXBwb3J0IHRob3NlIHByb3Blcmx5
LiBUaGUgUkRNQSBOSUMgaGFzIHR3byBzdHJ1Y3QgZGV2aWNlcw0KPiA+IGl0IG9wZXJhdGVzIHdp
dGggZGlmZmVyZW50IHBhdGhzLCBzbyBpdCB3b3VsZCB3cml0ZSBvdXQgdHdvDQo+ID4gJmRtYWJ1
Zl9nZW5lcmljX2RtYV9hZGRyX3QncyAtIG9uZSBmb3IgZWFjaC4NCj4gDQo+IFRoYXQgaXMgYWN0
dWFsbHkgc29tZXRoaW5nIHdlIHRyeSByYXRoZXIgaGFyZCB0byBhdm9pZC4gRS5nLiB0aGUNCj4g
ZXhwb3J0ZXIgc2hvdWxkIG9mZmVyIG9ubHkgb25lIHBhdGggdG8gZWFjaCBpbXBvcnRlci4NCg0K
UmVhbCBzeXN0ZW1zIGhhdmUgbXVsdGlwYXRoLiBXZSBuZWVkIHRvIGRvIGEgTnhNIG5lZ290aWF0
aW9uIHdoZXJlDQpib3RoIHNpZGVzIG9mZmVyIGFsbCB0aGVpciBwYXRocyBhbmQgdGhlIGJlc3Qg
cXVhbGl0eSBwYXRoIGlzDQpzZWxlY3RlZC4NCg0KT25jZSB0aGUgYXR0YWNobWVudCBpcyBtYWRl
IGl0IHNob3VsZCBiZSBvbmUgaW50ZXJjb25uZWN0IGFuZCBvbmUNCnN0YWJsZSBhZGRyZXNzIHdp
dGhpbiB0aGF0IGludGVyY29ubmVjdC4NCg0KSW4gdGhpcyBleGFtcGxlIEknZCBleHBlY3QgdGhl
IFhlIEdQVSBkcml2ZXIgdG8gYWx3YXlzIG9mZmVyIGl0cw0KcHJpdmF0ZSBpbnRlcmNvbm5lY3Qg
YW5kIGEgZG1hX2FkZHJfdCBiYXNlZCBpbnRlcmNvbm5jdCBhcyBib3RoDQpleHBvcnRlciBhbmQg
aW1wb3J0ZXIuIFRoZSBjb3JlIGNvZGUgc2hvdWxkIHNlbGVjdCBvbmUgZm9yIHRoZQ0KYXR0YWNo
bWVudC4NCg0KPiBXZSBjYW4gb2YgY291cnNlIGRvIGxvYWQgYmFsYW5jaW5nIG9uIGEgcm91bmQg
cm9iaW4gYmFzZXMuDQoNCkknbSBub3QgdGhpbmtpbmcgYWJvdXQgbG9hZCBiYWxhbmNpbmcsIG1v
cmUgYSAncXVhbGl0eSBvZiBwYXRoJw0KbWV0cmljLg0KDQpKYXNvbg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

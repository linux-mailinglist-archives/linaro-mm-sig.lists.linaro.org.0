Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FABAD3A7DE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 13:05:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D3CE400F2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 12:05:47 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011066.outbound.protection.outlook.com [40.93.194.66])
	by lists.linaro.org (Postfix) with ESMTPS id 440993F6FF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 12:05:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=JBLu8mfz;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.194.66 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RlcG7xK621qWHzLdrFeZJI6yVYRkSDEUNUxcUUE/KGvrnpw+/m4G6d58VJQDCHHPs1UiM3a6fsLlwsDxGcx9VrsRvPdxsQpphbKbkbaItoE8I9xwEE0Ktz+aw6UoUY0k6VIXDGag7tWZpiRxy8rNwfESdGbQHNhnttz5H97FMLBeBmOXn9LD4C45c8A3J0h/mpVdIAyQmnSFKbOZGwCZVN/rjXlu60+7ifBdj4uY/Blp/FCKOeeACAV4mAO9jEhQdzC9ItFoE2QuBJSMjo7ai+iGvycmqkfVK5CIwcAjTY5fncFy42VRP85xc4fWdqMQsrSu6t4EI9Rr6mHRulPxlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LFGbtM6Cu+F1q64Xe8wN40Gbs2kH0E9XObanYXYnxuo=;
 b=sIAS/lQhg1TKbqc1yNPILrv7s5ij22c30dBe+MXdXOHgjWWCnluxFVQWIiqYPk2utjnPUsign0/Ci/PtLeeYADKY6y44znnOjl93sTGoW2zauKFcigj1ssliJe6nq7ItXewYC0/0vVYqOwLrPJ62TxfbtUmAHFegyJVuKuoMndaauxHKJbWjPEbbX1g5lxQAVUaHSUsiIHYnXXVlKq4seCgjpP+PVzTMSuUg6HazDafT3t+QGHEXNJSthBgFrx6cKG7xpwOIxOnCL4lZXMURc3G7cITyFv1LFD2OUJSXqv9bNut4kdIEF74vYqIN/Ad6QNOsww5yyakEJODUlIVMZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LFGbtM6Cu+F1q64Xe8wN40Gbs2kH0E9XObanYXYnxuo=;
 b=JBLu8mfzXhivAsqg0BnCtaKsvcKCmWLN70PhsYAtwM7xmOjbeLNWDxUQGwK1JEHYQTgCYoJrKpcncZMoLCKPvpVXkrw9zvK08zQ6ZstjrdRqwAlJgbJJw2TzqBn5laTsdFMIxgmjct/OaTI1G9t9SOO/2lkuFds6IDPdFLzrwQw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ2PR12MB7845.namprd12.prod.outlook.com (2603:10b6:a03:4ce::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Mon, 19 Jan
 2026 12:05:35 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 12:05:35 +0000
Message-ID: <30ec9e80-f5a8-4b30-a55a-965f20f62125@amd.com>
Date: Mon, 19 Jan 2026 13:05:26 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <f115c91bbc9c6087d8b32917b9e24e3363a91f33.camel@linux.intel.com>
 <20260119075229.GE13201@unreal>
 <9112a605d2ee382e83b84b50c052dd9e4a79a364.camel@linux.intel.com>
 <78035892-758d-4104-9dd5-aed9a045d481@amd.com>
 <20260119105312.GJ13201@unreal>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260119105312.GJ13201@unreal>
X-ClientProxiedBy: FR2P281CA0086.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ2PR12MB7845:EE_
X-MS-Office365-Filtering-Correlation-Id: afe5e338-ed8f-46b2-2eac-08de57530d92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?OVczMzNrQ3ZqellyUGZPaDRJQVc1eUo3VlRqcnAzc3pKcmZRZEQyWGhWaHp4?=
 =?utf-8?B?aFMza05xeWllZW5mZXZsdXh1UDNGeDFhS0hLeTY1KzB2RExzWmFtWktRWVRh?=
 =?utf-8?B?WWFRNDVMUmxmYVJ6SEJldW9hekpld3lXdVVDK1lxSzBvS3NxS09LRlpnU3Bl?=
 =?utf-8?B?RnR0bEhYcndGaDBHdHJ6TWVZdm5aRzRjeFduNXJIMlBObURoQ2pPcExmWGgy?=
 =?utf-8?B?c2E2SzJVWXYxZVJOMWlvSFFMeGw3V2RLWW1VNVBaQkxtMGoxa3NGT1FrZkdi?=
 =?utf-8?B?OUlnY3pjbVo4Z2lZZHkrRVlaWFEwdXdhN0E0Um4vdkVORzcwWExEWDBFSmVM?=
 =?utf-8?B?dFRnUWxLT25mYStkcVAwem5LaEZOLzhkNTkwSUJ0aTg2azFPODU5emJqNlNt?=
 =?utf-8?B?NEp5a3dCaSsvOWJzWjd1WmtZMWJBWFA4NFVwMjB2R3Z6SEpzbFA4cWFndk9R?=
 =?utf-8?B?S0YwUUMrNWNEUGhNbk1VS3FXUmU3QmRSYVhXYVBjb01adHhnSk55MVdzRkhD?=
 =?utf-8?B?dGdsdFhVejhySE9zeTR5NmxaRmFIbG9rczlmckdPYnd3N0dxL2JyMkk0VzBG?=
 =?utf-8?B?QWI4K3dyeTFYRXVqdTNtejFmcDN4cHJLNFVYRmNXS0MzNTFVTmVuR0pzZXg5?=
 =?utf-8?B?K1lJTVVqWEY5c3JKQXlwWm1TaDdWK21UQjFtYWRqTjhzcG8yd0ZQVWwxVXU5?=
 =?utf-8?B?d1RLVExBcHowR0NVck5SYThmMGorQWoyUHR3em9BOWhma0dZSm1sN1Uyd0Jq?=
 =?utf-8?B?ZGFncUlPS3AvWGFTZG9iTnc1b09qcS9ZMjcxOENla2N0QXJRTzlVOWVKcHpG?=
 =?utf-8?B?VlpYTUhhS0RYSXZPQjRlMy9NZzgray85bzZDdUQ5ZE96RFprRTVTRkcyeW9o?=
 =?utf-8?B?bEp4cElXV3Z2dXBMS0ZoTmhVdFJFQXZRZmw0OVlQZ25uRnlVT2NBWG42b0VW?=
 =?utf-8?B?OWdPcnVyYVBhaVM3MGcxQTRleEtOUFlVNDBnL2lHZVNzcjV2NnFiamRKRE5I?=
 =?utf-8?B?VmplejZIZEdFUlAxaWtUNC9sdTZrRmVzUDFiVVBBK25lZ1hnUFZNUjFDZUJL?=
 =?utf-8?B?WDU3cVYyKytIRjZlV1ZXYkpwdEMyaVdLYy9BTEcyanJORjZDNjcyWGxZS0Ju?=
 =?utf-8?B?SlB1MVc0M3FzakE3YWl6d3ZjYVBRTG1KbEFFZHJnV0hpYWhSb1l3MmszZDg5?=
 =?utf-8?B?bm8rOEJsQ3RzVnN6dURtTHQzRzZGV0FGZTY5RHVJYitOODlYU2MvL3Nkamds?=
 =?utf-8?B?Y2JzUjkzVVBKaVVGczdIaTk0cy93T0IyNEdNVFBCOTV5dEVTRzJHcmtZajlI?=
 =?utf-8?B?K1NNeUlFS1VJWlpNeGt3OUx5Qkp4NXl6aEp0dExnRXhpT0NnUVRmRnZieW5B?=
 =?utf-8?B?dHJyVlhNU203dDN2aC9xMERYRnZNWkJJMTR1T2Vld0VpcnJsSTVkR0tuMEZj?=
 =?utf-8?B?aG5JQ1VxRjhjWVg3U245SXVSRURtRmZ4Z1V5ZlBHaStMdUtKWVdJdzdydjMv?=
 =?utf-8?B?bTJpMzlDOVNqVndJc1o3bXRTR0JKbjQwMnlVY1NNZ3QvZVF3M3QwTm9ORm1I?=
 =?utf-8?B?QllqREg2U040aTJuR1hocWNlby9aRW5LUzRtYmlSQ2doNkk4L2hZcGdGU0dn?=
 =?utf-8?B?dzBza29OT2QwK1BnNFRZbksxb0VIZUhxYVhYeFRMbC9ESUVFMWg5Y2lmckRs?=
 =?utf-8?B?MjVKVG9WR3E3MUlzSEdMakYrT2RoSk03cE0wRzFndFkzTHd5cXRRbVNMNlh2?=
 =?utf-8?B?SCt5MjN0QnJXWHZ4amJQY1Bxekd3cE9tc2ZMQzMwd2dYYU1wWjBpZE1xWm4y?=
 =?utf-8?B?Wmd4THBldWVVV01mMWwrek1BYnNEODM2dHRHc1JscTlRdzdHMkFsYkdpR2FV?=
 =?utf-8?B?WlNHbVBRWlU0WVFRWGFDVFR4dllvdlQ5TzQrdHREQkJvQnpuQjI0REt3bGFV?=
 =?utf-8?B?WTFwTHQ2RzBQQUY0bng4MktWa0hBWFVPTU5hKzhMZXExVU9SN1pGNUhqSTJW?=
 =?utf-8?B?eFFnWFY1WUFZdURuVzFRcVgwQTNqV2RBV0xHcERZVzFva2ZveUR0UXZ0NEVQ?=
 =?utf-8?Q?TvttPY?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZlBnQkJ0Z0ZNR2RtcW15RUwzN3Z0R2dFaDhYNmowb1dzeTJZRVM4VUh6dElK?=
 =?utf-8?B?WjlHWm1oUmVzMWloUXl5YjIxWWk2MHQvaVNNVXA5WHVPd2U2NWxmNW5Rdnky?=
 =?utf-8?B?UE9lbW1RaVd5MDBoL1RrLzlPSktmT3pkVzBuMmx0L1ZhMDA3OVBUd1RyZ2pR?=
 =?utf-8?B?dFBMQkZZWVZ3dTlPczh6WEgySmpYVXFxSlVXVTVwWVEzUDFRenE4RTc1aEdD?=
 =?utf-8?B?RVRha0E2a2t2U3FQWjBzMkFSWkVoK0JybHVYaHl2WnhzMHhLY1NYRHcwSXhx?=
 =?utf-8?B?UmRoOGRwRE1Fdkl1VkxMUzVoeEl6c2ZyQlhMYXhmSDhibk04aXcrUmpyeWRY?=
 =?utf-8?B?SFJBSGdZRzd2RjdUQ0hMQ0U5ZGx6SHlWZFZSbjFiSkk0QjE3ZHhvbnZtY3ph?=
 =?utf-8?B?NllncWgxZkRWbTRMcHdiTm5KQ3l0WnRINWh5VVJ5QytZYTVudEpIMkdBRGsw?=
 =?utf-8?B?bmxTZmZ2cDJwaUdyOWlmRUk0bU1xbW5NVXpocmVjcUdNeGh5cytoaWxjK2F1?=
 =?utf-8?B?eVhjMDl3TUYwZHhQUnE1RDBiQkdZQ3pJb0NCYlozZEJ6elNLQzYwLzkzTVVz?=
 =?utf-8?B?QndMdDF4MWFrSUdkN1VDd251ZE1EYnR4OHJ3QTZYTmpRclVWNERWamVrc1RC?=
 =?utf-8?B?WndiZllQS0VBUTZUYnhXU2xobDdtelcxUzBUYVZTMnk5aXFTMy9rcEh0Ynps?=
 =?utf-8?B?QmpaNVM2T0NWWEdWbHBEUDdENElTaEFMc01kdUsvWnBiYVVYT20yUFRsQy9l?=
 =?utf-8?B?YnY5TlhGb1lreG43Rm1EWlhkeWNVUGtjZDdoTW9wR0JoUFdCNzJ3WHFEZFM4?=
 =?utf-8?B?MDZqWCt4aDVraS9UM0V5dG5nUDlzZ3hNaUk2cU5NMllUS1prck0xTUZkSllL?=
 =?utf-8?B?SkR4WkFCVWhQbGMzcTdWU0NUVXpVdVBrSWVuNElhRTlBTTV0ZG9IT1Q2OUs1?=
 =?utf-8?B?a3QyR292c0t4NnlKNTJaNjdwb0JSSHcrbVdkRmdDUCtWZzB3SFN4clMzcDVH?=
 =?utf-8?B?M1k2blU3K1JUeFprb3pQWjgrVjNyemtVNGVyMkJRNTRsYWxFeUhLSHpuWTdZ?=
 =?utf-8?B?cmlZVjFtbDVzN0RwTVd5b29TREV0M2xudXRoTjlxd3RHbVVEUTFXVmZKYitD?=
 =?utf-8?B?eVE2Vkg1WlVZODFUWTRzSDRibURYV1phYm5CSW5NdnE0QVdENFc4ZWpDRUZm?=
 =?utf-8?B?OUJXNHlGRGkxRHZCOHNHbERXVS9Eb1FENVJFL1FkRDdjcWhndTYzYy83UXFZ?=
 =?utf-8?B?V1RZYXlIQ1J1RjJBcEpDZHE3UWlvcm1CY3M1TEFpaEZPdld2Wmd5VVVYUW9N?=
 =?utf-8?B?cVp6TUNseTVzU2ZlYW42S3YwV2VIVlRsaHdMSHBTZzhmamNTam9nRjRNdFVk?=
 =?utf-8?B?Z1VpY1Z5a0hTVUNSUng5dER4MVk5NGV1d0ZPR3haUFV0Q01OVWY1aldxUlp4?=
 =?utf-8?B?djF5Mmx4TU1jWVNFa3RmbTluOERSRTMzcUZlZEJEZFJ6UHBrcFdaWDUyb1dE?=
 =?utf-8?B?MFpINTZScUR1dHhrd1VoRkVFRXhBWDROOFo2L1VjeDdGTzVQQ3B3VW82Q1pV?=
 =?utf-8?B?ZG1xdmUzTWZDTGRFbGxHRkdTa0dvb1V3QUxHVmtIa3Q2eWN0VjRWQXZIQ0Ju?=
 =?utf-8?B?OFQ5RHhXTzJhODFxc25GL0tOSXVldzNIaEtvSlFXcEE0STRoZDJFN3pPa2RI?=
 =?utf-8?B?VzRPcVNsY1ZZb2tNYy9ZSnpFdzZ6RStuN29CdXVTaWxnTkNxeDF5K253aHVu?=
 =?utf-8?B?c3BhMjhkUXZWSkVzck90VElIcVpTK0RZMTAxUnRVaExyNElLMm1BTGlkUERU?=
 =?utf-8?B?MmJBOUR5VXZPQ3dXYWhuaEYvNUdOZm9yanIrTzUwRm9ZeXE4YkdwZExxRm9M?=
 =?utf-8?B?MjdMSHlacndTREIwa3gvQTF3SUVva1N0MUxkWFovN2tUdzhrS1NraTMzamJJ?=
 =?utf-8?B?WHVDYUdYMHJLMGI4dS9hOHlZYlZEMEhMMGNwV3R3KzNMOExwakRhZnE1ZUpT?=
 =?utf-8?B?R3orVXp2bUhGeC9Wc0NReGpFVkM3SGNsR1YzK2grTkNOd3JOZGZVeU1Xa3Yv?=
 =?utf-8?B?Z1lUL3Z3bFloZzhRMVlHQS80WjdKMFpjUkhkeDEyenlQSmh3V2hsNGx0RXZH?=
 =?utf-8?B?TWl0MzlTRC9yWS94TGlSZ014WnhpaWZPVHJlNzFoZnRvYjl4aEpLVVVuNU5U?=
 =?utf-8?B?UU1GS3hzMlp3aW9VNmNzOGVhbzdFTHJBR05YWWFDSElzOVdDVjVnMVlQbjhE?=
 =?utf-8?B?THBmOUg2d1FGRlJtNkM2Wk1rU1MvdFZFblI4S0RjbnN1QUZCVkZNdVpTMDYz?=
 =?utf-8?Q?9w+TCgbwEbvUnIqKiI?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afe5e338-ed8f-46b2-2eac-08de57530d92
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 12:05:35.6031
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NTDS9BnJjN5tQ97lCZeoyr6cKBegr+48fbRNqQnykQEBIAbI7M1Vgl9phxCHp6t6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB7845
X-Rspamd-Queue-Id: 440993F6FF
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	RCPT_COUNT_TWELVE(0.00)[31];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.194.66:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ZCXKTTPB24LX53XPOTIB746QHTVLLPA7
X-Message-ID-Hash: ZCXKTTPB24LX53XPOTIB746QHTVLLPA7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma
 @vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/4] dma-buf: document revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZCXKTTPB24LX53XPOTIB746QHTVLLPA7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMS8xOS8yNiAxMTo1MywgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBPbiBNb24sIEphbiAx
OSwgMjAyNiBhdCAxMToyMDo0NkFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
T24gMS8xOS8yNiAxMDoyNywgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6DQo+Pj4gT24gTW9uLCAy
MDI2LTAxLTE5IGF0IDA5OjUyICswMjAwLCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6DQo+Pj4+IE9u
IFN1biwgSmFuIDE4LCAyMDI2IGF0IDAzOjE2OjI1UE0gKzAxMDAsIFRob21hcyBIZWxsc3Ryw7Zt
IHdyb3RlOg0KPj4+Pj4gSGksIExlb24sDQo+Pj4+Pg0KPj4+Pj4gT24gU3VuLCAyMDI2LTAxLTE4
IGF0IDE0OjA4ICswMjAwLCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6DQo+Pj4+Pj4gQ2hhbmdlbG9n
Og0KPj4+Pj4+IHYyOg0KPj4+Pj4+IMKgKiBDaGFuZ2VkIHNlcmllcyB0byBkb2N1bWVudCB0aGUg
cmV2b2tlIHNlbWFudGljcyBpbnN0ZWFkIG9mDQo+Pj4+Pj4gwqDCoCBpbXBsZW1lbnRpbmcgaXQu
DQo+Pj4+Pj4gdjE6DQo+Pj4+Pj4gaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjYwMTExLWRt
YWJ1Zi1yZXZva2UtdjEtMC1mYjRiY2M4YzI1OWJAbnZpZGlhLmNvbQ0KPj4+Pj4+DQo+Pj4+Pj4g
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0NCj4+Pj4+PiAtLS0tDQo+Pj4+Pj4gLS0tLQ0KPj4+Pj4+IFRoaXMgc2VyaWVzIGRv
Y3VtZW50cyBhIGRtYS1idWYg4oCccmV2b2tl4oCdIG1lY2hhbmlzbTogdG8gYWxsb3cgYQ0KPj4+
Pj4+IGRtYS0NCj4+Pj4+PiBidWYNCj4+Pj4+PiBleHBvcnRlciB0byBleHBsaWNpdGx5IGludmFs
aWRhdGUgKOKAnGtpbGzigJ0pIGEgc2hhcmVkIGJ1ZmZlciBhZnRlcg0KPj4+Pj4+IGl0DQo+Pj4+
Pj4gaGFzDQo+Pj4+Pj4gYmVlbiBkaXN0cmlidXRlZCB0byBpbXBvcnRlcnMsIHNvIHRoYXQgZnVy
dGhlciBDUFUgYW5kIGRldmljZQ0KPj4+Pj4+IGFjY2Vzcw0KPj4+Pj4+IGlzDQo+Pj4+Pj4gcHJl
dmVudGVkIGFuZCBpbXBvcnRlcnMgcmVsaWFibHkgb2JzZXJ2ZSBmYWlsdXJlLg0KPj4+Pj4+DQo+
Pj4+Pj4gVGhlIGNoYW5nZSBpbiB0aGlzIHNlcmllcyBpcyB0byBwcm9wZXJseSBkb2N1bWVudCBh
bmQgdXNlDQo+Pj4+Pj4gZXhpc3RpbmcNCj4+Pj4+PiBjb3JlDQo+Pj4+Pj4g4oCccmV2b2tlZOKA
nSBzdGF0ZSBvbiB0aGUgZG1hLWJ1ZiBvYmplY3QgYW5kIGEgY29ycmVzcG9uZGluZw0KPj4+Pj4+
IGV4cG9ydGVyLQ0KPj4+Pj4+IHRyaWdnZXJlZA0KPj4+Pj4+IHJldm9rZSBvcGVyYXRpb24uIE9u
Y2UgYSBkbWEtYnVmIGlzIHJldm9rZWQsIG5ldyBhY2Nlc3MgcGF0aHMgYXJlDQo+Pj4+Pj4gYmxv
Y2tlZCBzbw0KPj4+Pj4+IHRoYXQgYXR0ZW1wdHMgdG8gRE1BLW1hcCwgdm1hcCwgb3IgbW1hcCB0
aGUgYnVmZmVyIGZhaWwgaW4gYQ0KPj4+Pj4+IGNvbnNpc3RlbnQgd2F5Lg0KPj4+Pj4NCj4+Pj4+
IFRoaXMgc291bmRzIGxpa2UgaXQgZG9lcyBub3QgbWF0Y2ggaG93IG1hbnkgR1BVLWRyaXZlcnMg
dXNlIHRoZQ0KPj4+Pj4gbW92ZV9ub3RpZnkoKSBjYWxsYmFjay4NCj4+Pj4NCj4+Pj4gTm8gY2hh
bmdlIGZvciB0aGVtLg0KPj4+Pg0KPj4+Pj4NCj4+Pj4+IG1vdmVfbm90aWZ5KCkgd291bGQgdHlw
aWNhbGx5IGludmFsaWRhdGUgYW55IGRldmljZSBtYXBzIGFuZCBhbnkNCj4+Pj4+IGFzeW5jaHJv
bm91cyBwYXJ0IG9mIHRoYXQgaW52YWxpZGF0aW9uIHdvdWxkIGJlIGNvbXBsZXRlIHdoZW4gdGhl
DQo+Pj4+PiBkbWEtDQo+Pj4+PiBidWYncyByZXNlcnZhdGlvbiBvYmplY3QgYmVjb21lcyBpZGxl
IFdSVCBETUFfUkVTVl9VU0FHRV9CT09LS0VFUA0KPj4+Pj4gZmVuY2VzLg0KPj4+Pg0KPj4+PiBU
aGlzIHBhcnQgaGFzIG5vdCBjaGFuZ2VkIGFuZCByZW1haW5zIHRoZSBzYW1lIGZvciB0aGUgcmV2
b2NhdGlvbg0KPj4+PiBmbG93IGFzIHdlbGwuDQo+Pj4+DQo+Pj4+Pg0KPj4+Pj4gSG93ZXZlciwg
dGhlIGltcG9ydGVyIGNvdWxkLCBhZnRlciBvYnRhaW5pbmcgdGhlIHJlc3YgbG9jaywgb2J0YWlu
DQo+Pj4+PiBhDQo+Pj4+PiBuZXcgbWFwIHVzaW5nIGRtYV9idWZfbWFwX2F0dGFjaG1lbnQoKSwg
YW5kIEknZCBhc3N1bWUgdGhlIENQVSBtYXBzDQo+Pj4+PiB3b3JrIGluIHRoZSBzYW1lIHdheSwg
SS5FLiBtb3ZlX25vdGlmeSgpIGRvZXMgbm90ICpwZXJtYW5lbnRseSoNCj4+Pj4+IHJldm9rZQ0K
Pj4+Pj4gaW1wb3J0ZXIgYWNjZXNzLg0KPj4+Pg0KPj4+PiBUaGlzIHBhcnQgZGl2ZXJnZXMgYnkg
ZGVzaWduIGFuZCBpcyBkb2N1bWVudGVkIHRvIG1hdGNoIHJldm9rZQ0KPj4+PiBzZW1hbnRpY3Mu
wqAgDQo+Pg0KPj4gUGxlYXNlIGRvbid0IGRvY3VtZW50IHRoYXQuIFRoaXMgaXMgc3BlY2lmaWMg
ZXhwb3J0ZXIgYmVoYXZpb3IgYW5kIGRvZXNuJ3QgYmVsb25nIGludG8gRE1BLWJ1ZiBhdCBhbGwu
DQo+Pg0KPj4+PiBJdCBkZWZpbmVzIHdoYXQgbXVzdCBvY2N1ciBhZnRlciB0aGUgZXhwb3J0ZXIg
cmVxdWVzdHMgdGhhdCB0aGUNCj4+Pj4gYnVmZmVyIGJlwqAgDQo+Pj4+ICJraWxsZWQiLiBBbiBp
bXBvcnRlciB0aGF0IGZvbGxvd3MgcmV2b2tlIHNlbWFudGljcyB3aWxsIG5vdCBhdHRlbXB0DQo+
Pj4+IHRvIGNhbGzCoCANCj4+Pj4gZG1hX2J1Zl9tYXBfYXR0YWNobWVudCgpLCBhbmQgdGhlIGV4
cG9ydGVyIHdpbGwgYmxvY2sgYW55IHJlbWFwcGluZw0KPj4+PiBhdHRlbXB0c8KgIA0KPj4+PiBy
ZWdhcmRsZXNzLiBTZWUgdGhlIHByaXYtPnJldm9rZWQgZmxhZyBpbiB0aGUgVkZJTyBleHBvcnRl
ci4NCj4+DQo+PiBJIGhhdmUgdG8gY2xlYXJseSByZWplY3QgdGhhdC4NCj4+DQo+PiBJdCdzIHRo
ZSBqb2Igb2YgdGhlIGV4cG9ydGVyIHRvIHJlamVjdCBzdWNoIGNhbGxzIHdpdGggYW4gYXBwcm9w
cmlhdGUgZXJyb3IgYW5kIG5vdCB0aGUgaW1wb3J0ZXIgdG8gbm90IG1ha2UgdGhlbS4NCj4gDQo+
IEN1cnJlbnQgY29kZSBiZWhhdmVzIGFzIGV4cGVjdGVkOiB0aGUgZXhwb3J0ZXIgcmVqZWN0cyBt
YXBwaW5nIGF0dGVtcHRzIGFmdGVyDQo+IC5pbnZhbGlkYXRlX21hcHBpbmcgaXMgY2FsbGVkLCBh
bmQgaGFuZGxlcyB0aGUgbG9naWMgaW50ZXJuYWxseS4NCj4gDQo+IEhvd2V2ZXIsIGl0IGlzIG5v
dCBjbGVhciB3aGF0IGV4YWN0bHkgeW91IGFyZSBwcm9wb3NpbmcuIEluIHYxIOKAlCB3aGljaCB5
b3UNCj4gb2JqZWN0ZWQgdG8g4oCUIEkgc3VnZ2VzdGVkIG5lZ290aWF0aW5nIHJldm9rZSBzdXBw
b3J0IGFsb25nIHdpdGggdGhlIGxvZ2ljIGZvcg0KPiByZWplY3RpbmcgbWFwcGluZ3MgaW4gdGhl
IGRtYS1idWYgY29yZS4gSW4gdGhpcyB2ZXJzaW9uLCB5b3Ugb2JqZWN0IHRvIHBsYWNpbmcNCj4g
dGhlIHJlamVjdGlvbiBsb2dpYyBpbiB0aGUgZXhwb3J0ZXIuDQoNClNvcnJ5IEkgcHJvYmFibHkg
d2Fzbid0IGV4cGxhaW5pbmcgdGhpcyBjb3JyZWN0bHkuDQoNCkkgd2FzIHJlamVjdGluZyB0aGUg
aWRlYSBvZiBkb2luZyB0aGlzIGluIHRoZSBmcmFtZXdvcmssIGUuZy4gdGhlIG1pZGRsZSBsYXll
ciwgb3IgdGhhdCBpbXBvcnRlcnMgd291bGQgYmUgZm9yY2UgdG8gZHJvcCB0aGVpciByZWZlcmVu
Y2VzLg0KDQpUaGF0IGFuIGV4cG9ydGVyIHJlamVjdHMgYXR0ZW1wdHMgdG8gYXR0YWNoIG9yIG1h
cCBhIHJlc291cmNlIGlzIHBlcmZlY3RseSB2YWxpZC4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4N
Cg0KPiANCj4+DQo+Pj4+IEluIGFkZGl0aW9uLCBpbiB0aGlzIGVtYWlsIHRocmVhZCwgQ2hyaXN0
aWFuIGV4cGxhaW5zIHRoYXQgcmV2b2tlDQo+Pj4+IHNlbWFudGljcyBhbHJlYWR5IGV4aXN0cywg
d2l0aCB0aGUgY29tYmluYXRpb24gb2YgZG1hX2J1Zl9waW4gYW5kDQo+Pj4+IGRtYV9idWZfbW92
ZV9ub3RpZnksIGp1c3Qgbm90IGRvY3VtZW50ZWQ6DQo+Pj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC9mN2YxODU2YS00NGZhLTQ0YWYtYjQ5Ni1lYjEyNjdhMDVkMTFAYW1kLmNvbS8NCj4+
Pg0KPj4+DQo+Pj4gSG1tLA0KPj4+DQo+Pj4gQ29uc2lkZXJpbmcgDQo+Pj4NCj4+PiBodHRwczov
L2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xOS1yYzUvc291cmNlL2RyaXZlcnMvaW5maW5p
YmFuZC9jb3JlL3VtZW1fZG1hYnVmLmMjTDE5Mg0KPj4NCj4+IFllcywgdGhhdCBjYXNlIGlzIHdl
bGwga25vd24uDQo+Pg0KPj4+IHRoaXMgc291bmRzIGxpa2UgaXQncyBub3QganVzdCB1bmRvY3Vt
ZW50ZWQgYnV0IGFsc28gaW4gc29tZSBjYXNlcw0KPj4+IHVuaW1wbGVtZW50ZWQuIFRoZSB4ZSBk
cml2ZXIgZm9yIG9uZSBkb2Vzbid0IGV4cGVjdCBtb3ZlX25vdGlmeSgpIHRvIGJlDQo+Pj4gY2Fs
bGVkIG9uIHBpbm5lZCBidWZmZXJzLA0KPj4NCj4+IEFuZCB0aGF0IGlzIHdoYXQgd2UgbmVlZCB0
byBjaGFuZ2UuIFNlZSBtb3ZlX25vdGlmeSBjYW4gaGFwcGVuIG9uIHBpbm5lZCBidWZmZXJzIGN1
cnJlbnRseSBhcyB3ZWxsLg0KPj4NCj4+IEZvciBleGFtcGxlIGluIHRoZSBjYXNlIG9mIFBDSSBo
b3QgdW5wbHVnLiBBZnRlciBwaW5uaW5nIHdlIGp1c3QgZG9uJ3QgY2FsbCBpdCBmb3IgbWVtb3J5
IG1hbmFnZW1lbnQgbmVlZHMgYW55IG1vcmUuDQo+Pg0KPj4gV2UganVzdCBoYXZlbid0IGRvY3Vt
ZW50ZWQgdGhhdCBwcm9wZXJseS4NCj4+DQo+Pj4gc28gaWYgdGhhdCBpcyBpbmRlZWQgZ29pbmcg
dG8gYmUgcGFydCBvZiB0aGUNCj4+PiBkbWEtYnVmIHByb3RvY29sLCAgd291bGRuJ3Qgc3VwcG9y
dCBmb3IgdGhhdCBuZWVkIHRvIGJlIGFkdmVydGlzZWQgYnkNCj4+PiB0aGUgaW1wb3J0ZXI/DQo+
Pg0KPj4gVGhhdCdzIHdoYXQgdGhpcyBwYXRjaCBzZXQgaGVyZSBzaG91bGQgZG8sIHllcy4NCj4+
DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4+Pg0KPj4+IFRoYW5rcywNCj4+PiBU
aG9tYXMNCj4+Pg0KPj4+Pg0KPj4+PiBUaGFua3MNCj4+Pj4NCj4+Pj4+DQo+Pj4+PiAvVGhvbWFz
DQo+Pj4+Pg0KPj4+Pj4NCj4+Pj4+Pg0KPj4+Pj4+IFRoYW5rcw0KPj4+Pj4+DQo+Pj4+Pj4gQ2M6
IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KPj4+Pj4+IENjOiBkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+Pj4+Pj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
Zw0KPj4+Pj4+IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+Pj4+Pj4gQ2M6IGFt
ZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+Pj4+Pj4gQ2M6IHZpcnR1YWxpemF0aW9uQGxp
c3RzLmxpbnV4LmRldg0KPj4+Pj4+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4+Pj4+PiBDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcNCj4+Pj4+PiBDYzogaW9tbXVA
bGlzdHMubGludXguZGV2DQo+Pj4+Pj4gQ2M6IGt2bUB2Z2VyLmtlcm5lbC5vcmcNCj4+Pj4+PiBU
bzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4+Pj4+PiBUbzogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+Pj4+IFRvOiBBbGV4
IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+DQo+Pj4+Pj4gVG86IERhdmlkIEFp
cmxpZSA8YWlybGllZEBnbWFpbC5jb20+DQo+Pj4+Pj4gVG86IFNpbW9uYSBWZXR0ZXIgPHNpbW9u
YUBmZndsbC5jaD4NCj4+Pj4+PiBUbzogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+
DQo+Pj4+Pj4gVG86IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5j
b20+DQo+Pj4+Pj4gVG86IEd1cmNoZXRhbiBTaW5naCA8Z3VyY2hldGFuc2luZ2hAY2hyb21pdW0u
b3JnPg0KPj4+Pj4+IFRvOiBDaGlhLUkgV3UgPG9sdmFmZmVAZ21haWwuY29tPg0KPj4+Pj4+IFRv
OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0K
Pj4+Pj4+IFRvOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQo+Pj4+Pj4gVG86
IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPj4+Pj4+IFRvOiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4+Pj4+PiBUbzogVGhvbWFz
IEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPg0KPj4+Pj4+IFRv
OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+Pj4+Pj4gVG86IEphc29u
IEd1bnRob3JwZSA8amdnQHppZXBlLmNhPg0KPj4+Pj4+IFRvOiBMZW9uIFJvbWFub3Zza3kgPGxl
b25Aa2VybmVsLm9yZz4NCj4+Pj4+PiBUbzogS2V2aW4gVGlhbiA8a2V2aW4udGlhbkBpbnRlbC5j
b20+DQo+Pj4+Pj4gVG86IEpvZXJnIFJvZWRlbCA8am9yb0A4Ynl0ZXMub3JnPg0KPj4+Pj4+IFRv
OiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPg0KPj4+Pj4+IFRvOiBSb2JpbiBNdXJwaHkg
PHJvYmluLm11cnBoeUBhcm0uY29tPg0KPj4+Pj4+IFRvOiBBbGV4IFdpbGxpYW1zb24gPGFsZXhA
c2hhemJvdC5vcmc+DQo+Pj4+Pj4NCj4+Pj4+PiAtLS0NCj4+Pj4+PiBMZW9uIFJvbWFub3Zza3kg
KDQpOg0KPj4+Pj4+IMKgwqDCoMKgwqAgZG1hLWJ1ZjogUmVuYW1lIC5tb3ZlX25vdGlmeSgpIGNh
bGxiYWNrIHRvIGEgY2xlYXJlcg0KPj4+Pj4+IGlkZW50aWZpZXINCj4+Pj4+PiDCoMKgwqDCoMKg
IGRtYS1idWY6IERvY3VtZW50IHJldm9rZSBzZW1hbnRpY3MNCj4+Pj4+PiDCoMKgwqDCoMKgIGlv
bW11ZmQ6IFJlcXVpcmUgRE1BQlVGIHJldm9rZSBzZW1hbnRpY3MNCj4+Pj4+PiDCoMKgwqDCoMKg
IHZmaW86IEFkZCBwaW5uZWQgaW50ZXJmYWNlIHRvIHBlcmZvcm0gcmV2b2tlIHNlbWFudGljcw0K
Pj4+Pj4+DQo+Pj4+Pj4gwqBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA2ICsrKy0tLQ0KPj4+Pj4+IMKgZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyB8wqAgNCArKy0tDQo+Pj4+Pj4gwqBkcml2
ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfcHJpbWUuY8KgwqDCoMKgwqAgfMKgIDIgKy0NCj4+
Pj4+PiDCoGRyaXZlcnMvZ3B1L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVmLmPCoMKgwqDCoMKgwqAg
fMKgIDYgKysrLS0tDQo+Pj4+Pj4gwqBkcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICstDQo+Pj4+Pj4gwqBkcml2ZXJzL2luZmluaWJh
bmQvY29yZS91bWVtX2RtYWJ1Zi5jwqDCoMKgwqDCoMKgIHzCoCA0ICsrLS0NCj4+Pj4+PiDCoGRy
aXZlcnMvaW5maW5pYmFuZC9ody9tbHg1L21yLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
IDIgKy0NCj4+Pj4+PiDCoGRyaXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8IDExICsrKysrKysrKy0tDQo+Pj4+Pj4gwqBkcml2ZXJzL3ZmaW8v
cGNpL3ZmaW9fcGNpX2RtYWJ1Zi5jwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTYNCj4+Pj4+PiArKysr
KysrKysrKysrKysrDQo+Pj4+Pj4gwqBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyNQ0KPj4+Pj4+ICsrKysrKysrKysrKysr
KysrKysrKystLS0NCj4+Pj4+PiDCoDEwIGZpbGVzIGNoYW5nZWQsIDYwIGluc2VydGlvbnMoKyks
IDE4IGRlbGV0aW9ucygtKQ0KPj4+Pj4+IC0tLQ0KPj4+Pj4+IGJhc2UtY29tbWl0OiA5YWNlNDc1
M2E1MjAyYjAyMTkxZDU0ZTlmZGY3ZjllM2QwMmI4NWViDQo+Pj4+Pj4gY2hhbmdlLWlkOiAyMDI1
MTIyMS1kbWFidWYtcmV2b2tlLWI5MGVmMTZlNDIzNg0KPj4+Pj4+DQo+Pj4+Pj4gQmVzdCByZWdh
cmRzLA0KPj4+Pj4+IC0twqAgDQo+Pj4+Pj4gTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlh
LmNvbT4NCj4+Pj4+Pg0KPj4+Pj4NCj4+Pg0KPj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

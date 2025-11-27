Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B312C8DBE4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Nov 2025 11:26:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2076E3F8F1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Nov 2025 10:26:46 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013062.outbound.protection.outlook.com [40.93.196.62])
	by lists.linaro.org (Postfix) with ESMTPS id AE9473F847
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Nov 2025 10:26:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Tx8af7IQ;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.62 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l8ZNUMTbaJGr8gplcBb3dZdGgcY80VydrIXml/gua6tAZoSR8qyujcATt3FksyYqm7A1uV7ilp8DXUKzlov7z/PFpibzUbbMb3UnEsyBUz2YmvVhRYDMLOxkIPEQEJhie0Gq7iw0fXxnXBzRjayYs/A9WhoY/cFkgs6ZVMXis0gauzivmREsQq163CY5UbVNhrXxFpjYHG6uFSTx1VcCuL3A51urtlQ2kTGqHYurU22F1a/SsJwxi+Kjyx/XNvnjstoUynSo/sAL25sFwvd4NvP3NMr/oVGKxOXDNbyKET2tJrHadt+V2npMPbH+w+OpI4JFAxaxyZFq9kT67IZarA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3KIh7vxYyta7EJDCpAA1nIBQvoKdWCzCfsKGDDJT54I=;
 b=rIc0HfIA1wlO6XCkBv+pIVbFmnipd3Yrbj/ZGBSDg2bZBsF6qSIGbzGNLtj6nGXOitDbkOgSQtopaLJXPydZDl4g0AB4IUQFyg7dWC3yK+vFLwkKqpEi8c7EMG76TglkMgjjLxk2mZJzNd/naqkLO7TF/4/d1bIF0pMqx2XsRfVe6vbI8FRkk+yr7ZASnDMj6dPzkyIv6Ib9VA6yXndHuyd66r+IvioW8KjpKL/ezwSiAL0g8XfmUJ2MKdjXrGHLysLOGo/Kcp2FBebORWnYtfAcUWJdDD7UWSmmaPPBAGIRQWYG6VBkCb0zINRh1/qWfUeHlEs0eTEg1gSFcrmxOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3KIh7vxYyta7EJDCpAA1nIBQvoKdWCzCfsKGDDJT54I=;
 b=Tx8af7IQxB0zfeGYHOSHJ7giOPgLTyV38nMTL9ZU8K9d/yumJ/+QolSU0yixPl19AN/7+DvdtdQfF57riuuIwVsmSKptOaLCZvHfiMckGoDCZyRKlBOKJmPTZ/dWQ3bcv0eKAuMBKtGf4PTH3VLOAoFrGWSu/PFp6BLtNyPFGUk=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB6911.namprd12.prod.outlook.com (2603:10b6:806:261::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.13; Thu, 27 Nov
 2025 10:26:27 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 10:26:27 +0000
Message-ID: <79688e4f-203c-4e06-b73a-641dcc3f4c73@amd.com>
Date: Thu, 27 Nov 2025 11:26:23 +0100
User-Agent: Mozilla Thunderbird
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <6202945f4af2d10e0fb6602b25ff9cb454c1ee85.1764229204.git.viresh.kumar@linaro.org>
 <8d5ae067-e1bf-46a7-9137-d5936197ad5c@amd.com>
 <4o3meb52jvgjrtqswpmrgkgjhn4zbzkvmyen4zqrkzeypsthpt@nt4vm7jwqash>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <4o3meb52jvgjrtqswpmrgkgjhn4zbzkvmyen4zqrkzeypsthpt@nt4vm7jwqash>
X-ClientProxiedBy: BN8PR04CA0060.namprd04.prod.outlook.com
 (2603:10b6:408:d4::34) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB6911:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f842c72-bfee-4f72-c190-08de2d9f6c40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bmN0QkFNN3NWS28ybENpMFI2VWJhUm1EWjVRVzRveEthZTZiRDIrVjlLaEVE?=
 =?utf-8?B?R3czemJqMVJnRkU1eWdzcjFpZWloYmU1VTNhb1NZbnB6SFNRUDBqV3hTMkNU?=
 =?utf-8?B?USt4UCtKZW1keXhwUWcwYjV5dE1QcTQyZ1I2Q2hmZkI0M1M1WE9relI1UDhy?=
 =?utf-8?B?V21heUlEODJYSURqNEtSZWVONDgrOENQNmI3L1VmSHRKbng5amZ5V1ZSK1BS?=
 =?utf-8?B?UkZLTmcrSzFlYW1vdGFVZnlQazZwOHVKWkpKU0FtUXFLQldRM0RBVHhsYXZW?=
 =?utf-8?B?L0c2cGRUQ3R0SkFBOEZkMHdRUE5VMVErdmhRZGk3TitWU3QxMm1Wd2tMVzFZ?=
 =?utf-8?B?QlFibERaWHViK0k0c2pnRXMyMnpyQTNNeTVKeFVkUms4V3JwVkxQOGtiUUdH?=
 =?utf-8?B?b2RxdDE5ZHpPZm4xVkIrUlhQeXQwQ09UWGtOSzVDMjdqZjQraDE3aVYvVjhm?=
 =?utf-8?B?YWN1bUY0Vk9XU3VkbVpDUngwZlhSRGVJditpTHdydUw4Z2lpaGJWMWduZ1JI?=
 =?utf-8?B?RHRqSkRRcHJQbXFiTnpydHcvbUtSdzlPU0RhY1JWRDZGN0lCOXZndWRrNVlU?=
 =?utf-8?B?bm8xbnRNekIrNldtdEJlWTlCUDRhYXNsMW1lUUh5bkZ5aDZXVHQzVFRsY2xB?=
 =?utf-8?B?Q3h5NUtVd1ZrYVovYmJuTEZwb05tYzMxdDN4RFI2bXdKUUNnd2VnUE55ak9l?=
 =?utf-8?B?amk3N0c3dWNPQ09YMVlaRTlqM0QyRDdVblFDYlpFRWxRREdJaTk3SHd1UnpF?=
 =?utf-8?B?c0hNMXVqZ29QZ21YQTVhK2YzWGUwQ1I4UU1JRTBQajBtRnd4VGtmaEFOZHNJ?=
 =?utf-8?B?c296NlNqU0czU2V0ODdNL1VrZzV4L09idFpUTEN1U05lczNXVmRqT0Q3OWR1?=
 =?utf-8?B?NS9VV1VhVE9hSmNsNy8wcysySks5eDJ4NEdUK1o5VCtHZTRVUDFCTldhQUYr?=
 =?utf-8?B?RWYrOXhoUDVBSE5xeWJQTEJMVmpLVTNtNWJlbXRudFdYbzRrOHZHaUFCN1k4?=
 =?utf-8?B?QkVodXZtL2E1M1c0c2tIMThKU1VnSlAvbGhSandXbUxTRmRCWm83QnZrZXh5?=
 =?utf-8?B?NlRmMHZQcVNhK2xGakw5OVdlSTlEL00yU3NNUlJTUWpyK25OMHpEamh1MDRU?=
 =?utf-8?B?NUpMbFVYMFhRdEkrYmdmTWdoTVlUUEx5akpWZGhBTHYrczhrZ1B4UWZPU0ps?=
 =?utf-8?B?amt5TXFEUHBkWnpucWdQZzhWMXpXd3JoLzg4WFFDRjhvR25vOHYySVJlc0Y2?=
 =?utf-8?B?bDcxTHVnWUVvcGRDUkxyMW1DeUZERDFvTVdGQ3liV3paNGVYay9yeE56eVQ1?=
 =?utf-8?B?VGExbkp0NzQ3em1zRlF6VHdQV0ZmVVA3T1BvbEdWS2JSTElFOEtZOWN5UWpl?=
 =?utf-8?B?OVdGaWpuaWplZmVTNk0yaEZGVkdKQ2lXMXJrUVhmUG5IZzlZQnNwR2Y1TkQv?=
 =?utf-8?B?a0FSczFBTm5lZnVkVE5OVk9DKzJaWGlpTzRBSlp1ZDFRU2JUanlTRDF3Y3hy?=
 =?utf-8?B?R2xYNTZMUk83a2NPTUpJZGUwaE5EeUszNGVUNHN5a2hBck5FdXgxUEhCeDBq?=
 =?utf-8?B?ZXV3ZU5WRzJOZDV2eERqRVVmTkZqYWJ4US96ZHdwZVRWM0JPYi81OUNXOWZU?=
 =?utf-8?B?MWpWWUZObldSUUQwbjR4MU0xOFJoeTA1VWtYRHlMY0xYNUdFai96b0daa1FV?=
 =?utf-8?B?YkdwWHpYUWl2dytXNkl3UXNCMXc1WjM2TkZJNXV5TUhyNDNPZDVFM2J5YWUy?=
 =?utf-8?B?Ry9ITmN5dHp6dDRiL2hJSU9ORyt1SlJ2VTNkdEszUVEwMm1VOUtiTHpOU3Bw?=
 =?utf-8?B?OWRYYStQc1htMTZlc2Q2cE1kanNabVNIa0xJb3ExbmtrVTNlQTJ4cnhESUYr?=
 =?utf-8?B?ZzJ4TGFCeDFBYnZmM0pNTGRnSndkMlk3SmVjNXBoenZ5R0oxb2hLS2hjTFVt?=
 =?utf-8?Q?5WJOO+8Es17G5eCJFsUzXCmcfSQHbqIs?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MUdXSlRITk53R2JGcDdmWlVqWmU3RnpHUzZFWlUreDlWUGJqQTI0VWF4V3Nw?=
 =?utf-8?B?NTZXdlQvNEpoWHhGcCtNYVJtM3ZkeVlxa1hLT3U0TlBNL2N0eDdaak94Vkgr?=
 =?utf-8?B?eWtTSlhXQTBEaU5zMzBXSmtjMjRwRWZtNnVxcmxqNEhZWFhTN21LaGN1VWo2?=
 =?utf-8?B?NzdpQjE2YUtEeE9NWHVLTy8vNGNtRUN5WE1qcGgyeFNUTzJibWhsWGRZRFlZ?=
 =?utf-8?B?aXl3b0tQVlROdmtiNVRVTTg2WDg2dk1pMVh6dzdWbThsS1Q5cXA4UE5CSzdz?=
 =?utf-8?B?bEZVeHhKMkhmV05JeUZVU3FpRFRzQlFDclhnMngvMlRwMlZrWElDeGdmN2pi?=
 =?utf-8?B?eTlPeHQvbGZNazR0eXMwVjVDQUxhem51MEMwT2o3NHl2UDliUWdPeE8rcTFI?=
 =?utf-8?B?SUl5QXhGTXozRWwwRStUaXc1Q1p2SkhlaGU5aXFjWDdEdXlHZzBPQXJWU3Rw?=
 =?utf-8?B?NFFtK1JpTXFocDJmL01ReVRjanBISFRSSDBHOVlpM0E1anlKQS9xZURFN1F0?=
 =?utf-8?B?V0RlaTJJcXB3WFAxZjBqejZQQUdLeVlUdHQyd2dGVEk5SUNyOCtYVlo1Uith?=
 =?utf-8?B?RXMyd1FpT1VCcnh2OWdGd0RCbTBLMkQ4QXBqbkw2WVUydk9Sd0ttaGdEYk0r?=
 =?utf-8?B?U3I2RjZkUC9YZTNIVXNnU3g1OEFJb0xjN1h5VURNRkh6aUJaYzAreUN1SWUx?=
 =?utf-8?B?eUtwWHZ6bmVjNldueUpGRitFK2ZCWm1FZ1VBeElQNGk0a2o0Z1VxTkxMMUxq?=
 =?utf-8?B?WnAzZFhGemZ6RXNtNGlWWVNXTjVvZ2MyWDhYUzNPSkFiM1pTVGY5eXp1MEg1?=
 =?utf-8?B?aC8zOWx2WCtJRWZjMHpLNHB6cXptdm83UDB0NnBIcDhFR2RQV3IxMGpmcURD?=
 =?utf-8?B?ejExbGV1cGhraXVhT1JJSWpMVWI2dFU0UWQ1NkV4Y2RTeHFFMHpBUWZBS2ln?=
 =?utf-8?B?Q0JtN1VJZktMOXcrNnVYYnB4NVhoTGw5WTVNYnJocGY1ME54aUtQa0gremw2?=
 =?utf-8?B?SWZteE81ckZEZm44MGdRU3dGUExZMEJURlQrN1ROa2dpSFNDcXVDNEtBNkha?=
 =?utf-8?B?ck9Ca1p5VUJvS0tSMHpDclV3aVJBMTNBK0tCTjc1MXVTNGJncERueGtSNzBo?=
 =?utf-8?B?aUdYSmV2cDhtMGNBK0xaUTl3eDd0Y1VlNWl3a0Zad1pzdlBYNGl5aURNeEtD?=
 =?utf-8?B?SThFRGF0bzUxMGk3R1hDTlhtQzB0UGtNYkJnbGo2ZVVJdGNwU0lvR1NwdEVy?=
 =?utf-8?B?TFI3cjFDVEMvWHdEZitVYllWaU5GRGl1S3c2ZFNINWx3eTJ3L0NxRlhxRlNw?=
 =?utf-8?B?MW9Xbm9iQXR6bUVVSWxmdUhhUG5YcVlHdWNEcWxZYmpYQlIxSllISEwrQjVJ?=
 =?utf-8?B?QnVCMGZNSHM5QmVFQlQ2TE5mdlVjOCtGeENXWURFY2wwelI0QlhZNHdMbWZp?=
 =?utf-8?B?UUZXRi8vUHZDd0wvOEtCRG1WOEQrZUJoK1lIY2EzMCtBdE9MSVRvYTFxbkd4?=
 =?utf-8?B?V3ZRRTBNQjM1aG40R244VGZpYzZ1WmdpT1MyUlNNOUQ5ZkhCaDg4MGo2SGRK?=
 =?utf-8?B?QnlGTWJNVFdMWHI1dWRUeDRBY1FzUHJDKzc2OEkwMTRtT1JWWjFjNWViZTB3?=
 =?utf-8?B?c0FkZFJhWmZqQWZTMUxqR05jYTByZHAyK3BZQ3NqVFh4OFc1d3VqcHhOU01r?=
 =?utf-8?B?cWZ6SVR6N0pqU1RvdzV4SzR4MFhNRFZrY2NMOWtVeGtIdGVDMm9qWVhQejFm?=
 =?utf-8?B?NWNPc2kyRUhVb0RWZ0VnV3JvamRmN3hoUGVjdWxjbUc3QmRraGhCQTUvY050?=
 =?utf-8?B?aDRsZFJEN09CLzROTmtPWkREZ2hpY2R4c0RIQXN4cUVnajdXdGxLK1hEblFS?=
 =?utf-8?B?MDZ1NTVFSm5FTWtoWmNsT1Jwa2RzUUZxN3ZuNzN1Z3BSd3ZqUFhCc0g2K0Nw?=
 =?utf-8?B?aE1WZ1duYzY4QmkrR3Ywd2trSmZGaFphZWw1b3hQYlBsZWFyM1RpN2dWTHRa?=
 =?utf-8?B?cXlXM1pFTDlocnNPQ3o4OTRHMEU3bGpKUDdSeS96eFl5SENRYjVMcWZKUVVI?=
 =?utf-8?B?Z1pXcnliK0MweFBWRDF5VXZaelV6K0o1STIwL0c3Nzk1VmM1VzR1aVJtYmFl?=
 =?utf-8?Q?LuJrjK8aQ5a7OCI9YGusSmMHJ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f842c72-bfee-4f72-c190-08de2d9f6c40
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 10:26:27.3958
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lbP71F0ly6Sb92pwdD31uT4BdnK/AIV9OioRlwQJxiYbD8z/ekJ+YIYy8HiE7WFE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6911
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.196.62:from];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AE9473F847
X-Spamd-Bar: ----
Message-ID-Hash: YFPMUDGLJPIYJXEUAOH2ZAFQEI6ZCAIL
X-Message-ID-Hash: YFPMUDGLJPIYJXEUAOH2ZAFQEI6ZCAIL
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: add no-op stubs when CONFIG_DMA_SHARED_BUFFER is disabled
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YFPMUDGLJPIYJXEUAOH2ZAFQEI6ZCAIL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjcvMjUgMDk6MjMsIFZpcmVzaCBLdW1hciB3cm90ZToNCj4gT24gMjctMTEtMjUsIDA5
OjA3LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gT24gMTEvMjcvMjUgMDg6NDAsIFZpcmVz
aCBLdW1hciB3cm90ZToNCj4+PiBNb3ZlIHNldmVyYWwgZG1hLWJ1ZiBmdW5jdGlvbiBkZWNsYXJh
dGlvbnMgdW5kZXINCj4+PiBDT05GSUdfRE1BX1NIQVJFRF9CVUZGRVIgYW5kIHByb3ZpZGUgc3Rh
dGljIGlubGluZSBuby1vcCBpbXBsZW1lbnRhdGlvbnMNCj4+PiBmb3IgdGhlIGRpc2FibGVkIGNh
c2UgdG8gYWxsb3cgdGhlIGNhbGxlcnMgdG8gYnVpbGQgd2hlbiB0aGUgZmVhdHVyZSBpcw0KPj4+
IG5vdCBjb21waWxlZCBpbi4NCj4+DQo+PiBHb29kIHBvaW50LCBidXQgd2hpY2ggZHJpdmVyIGFj
dHVhbGx5IG5lZWRzIHRoYXQ/DQo+IA0KPiBUaGlzIGJyb2tlIHNvbWUgV0lQIHN0dWZmIFsxXSB3
aGljaCBpc24ndCBwb3N0ZWQgdXBzdHJlYW0geWV0LiBUaGF0J3Mgd2h5IEkNCj4gZGlkbid0IG1l
bnRpb24gYW55dGhpbmcgaW4gdGhlIGNvbW1pdCBsb2csIHRob3VnaCBJIGNvdWxkIGhhdmUgYWRk
ZWQgYSBjb21tZW50DQo+IGFib3V0IHRoYXQgaW4gdGhlIG5vbi1jb21taXQtbG9nIHBhcnQuDQoN
CldlbGwgdGhlbiBiZXR0ZXIgc2VuZCB0aGF0IG91dCB3aXRoIHRoZSBmdWxsIHBhdGNoIHNldC4N
Cg0KPj4gSW4gb3RoZXIgd29yZHMgdGhlcmUgc2hvdWxkIGJlIGEgY29uY3JldGUgZXhhbXBsZSBv
ZiB3aGF0IGJyZWFrcyBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuDQo+IA0KPiBUaGVyZSBpcyB0aW1l
IGZvciB0aG9zZSBjaGFuZ2VzIHRvIGJlIHBvc3RlZCBhbmQgbm90IHN1cmUgaWYgdGhleSB3aWxs
IGJlDQo+IGFjY2VwdGVkIG9yIG5vdC4gQnV0IGVpdGhlciB3YXksIHRoaXMgY2hhbmdlIG1hZGUg
c2Vuc2UgaW4gZ2VuZXJhbCBhbmQgc28gSQ0KPiB0aG91Z2h0IHRoZXJlIGlzIG5vdGhpbmcgd3Jv
bmcgdG8gZ2V0IHRoaXMgdXBzdHJlYW0gcmlnaHQgYXdheS4NCg0KWWVhaCB3aGVuIGl0IGlzIHVu
dXNlZCBpbnRlcm1lZGlhdGVseSB0aGVuIHRoYXQgaXMgdXN1YWxseSBhIG5vLWdvIGV2ZW4gaWYg
SSBhZ3JlZSB0aGF0IGl0IG1ha2VzIHNlbnNlLg0KDQo+Pj4gK3N0YXRpYyBpbmxpbmUgc3RydWN0
IGRtYV9idWYgKmRtYV9idWZfZ2V0KGludCBmZCkNCj4+PiArew0KPj4+ICsJcmV0dXJuIE5VTEw7
DQo+Pg0KPj4gQW5kIGhlcmUgRVJSX1BUUigtRUlOVkFMKS4NCj4gDQo+IEkgYW0gbm90IHJlYWxs
eSBzdXJlIGlmIHRoaXMgc2hvdWxkIGJlIEVJTlZBTCBpbiB0aGlzIGNhc2UuIEVPUE5PVFNVUFAg
c3RpbGwNCj4gbWFrZXMgc2Vuc2UgYXMgdGhlIEFQSSBpc24ndCBzdXBwb3J0ZWQuDQoNCldoZW4g
dGhlIEFQSSBpc24ndCBjb21waWxlZCBpbiB0aGUgZmQgY2FuJ3QgYmUgdmFsaWQgKGJlY2F1c2Ug
eW91IGNhbid0IGNyZWF0ZSBhIGRtYV9idWYgb2JqZWN0IGluIHRoZSBmaXJzdCBwbGFjZSkuDQoN
ClNvIHJldHVybmluZyAtRUlOVkFMIHN0aWxsIG1ha2VzIGEgbG90IG9mIHNlbnNlLg0KDQpSZWdh
cmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPj4+ICtzdGF0aWMgaW5saW5lIHN0cnVjdCBkbWFfYnVm
ICpkbWFfYnVmX2l0ZXJfYmVnaW4odm9pZCkNCj4+PiArew0KPj4+ICsJcmV0dXJuIE5VTEw7DQo+
Pj4gK30NCj4+PiArDQo+Pj4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IGRtYV9idWYgKmRtYV9idWZf
aXRlcl9uZXh0KHN0cnVjdCBkbWFfYnVmICpkbWJ1ZikNCj4+PiArew0KPj4+ICsJcmV0dXJuIE5V
TEw7DQo+Pj4gK30NCj4+DQo+PiBUaG9zZSB0d28gYXJlIG9ubHkgZm9yIEJQRiBhbmQgbm90IGRy
aXZlciB1c2UuDQo+IA0KPiBXaWxsIGRyb3AgdGhlbS4NCj4gDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

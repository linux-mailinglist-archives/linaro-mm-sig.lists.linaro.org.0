Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4B6CBEB23
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 16:39:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F1773F802
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 15:39:00 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011012.outbound.protection.outlook.com [40.107.208.12])
	by lists.linaro.org (Postfix) with ESMTPS id 001703F802
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 15:38:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Phz5eCU5;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.208.12 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M5+v71DvQWO8Y0ilxBHqXCzITqgo7f+Zy3DbTC8hAWMmWBO42yrv8kXvMHiu1Hs/07eIRxQ27fv9Ni8c1Uc51YGqNtUbErxjYYk9pJZB1LrOmiE1QdnabfeZVepw3NX1swgsNFVDhFFyhhQz9dsv4NUedBlW2mLqSWY2vbr25XZjmP/cZBrA8J5mkrtkTaxElm4u6Gmy99p4BuaLn/Eh66G/Bfkf+ThQJ1hxPFcHA5ul5h1SOni5yNrBh1mBZqWVxVNQDJtIfPdw7b0D1wrpRj5XsA8qkuM/q7eUXIPPu76DKbEzzZP+6pMzjgFXEEKs9sMnB6Wkiqz6ow89DPzEgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7j9LgfSlqtJ/iXLJ9AZP4DUtSjkry9z69Fo5T2MfvMk=;
 b=pPzYjVmDC+ngwzNJTSPPi8jGQtjFi5Ns3b8b5l9WRd8bxDvbEAReG29Z17Jynj+mT/1JloAru88O0y82iSaZj3VqetIa76faR24IF2t0VyI5FCZgzM4yOkGGhYcbCYqgNhWdEZ/5i4Vq8AUireqppgjxjaPA0fTPb5QUUgfsFu40+b5gsgoYBYiLex6Efq8EFMfyC1b4v96xS/EbCMZZoLTdsWu2CuK5/3WcLM+6qe8PpEOJgS85Um0t2ax742EYhf+WYfr8NQqfjG0zB9Rr0Qd+R86HfzbE5qF+Ya/RF3XGgZtgU28gBigWNWaE2KgoYdmHLdafnYQKvicnUeCtfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7j9LgfSlqtJ/iXLJ9AZP4DUtSjkry9z69Fo5T2MfvMk=;
 b=Phz5eCU5M5HlAbjpbp+JM373aFOmD7V13YdddcQGYkapeX9qo3pxi4wNDtFyGzxNT3aJoQ6uACD5G5c5Kvyd8sMY6qobJyV2PFZZXpuYuRYKs2PYhemuASs/53tHmA6OcFjpdB81WKP/scFapZUyCTzcB5tGkddhwCWUMrPEYOY=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BL1PR12MB5827.namprd12.prod.outlook.com (2603:10b6:208:396::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 15:38:49 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 15:38:49 +0000
Message-ID: <6e2e258a-0c20-4229-8301-5a217f29eea6@amd.com>
Date: Mon, 15 Dec 2025 16:38:45 +0100
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, phasta@mailbox.org,
 matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-10-christian.koenig@amd.com>
 <9ef8686f-820f-41e9-985e-40411b4b9bd3@ursulin.net>
 <587fb06e-cfac-4603-b074-a9b382ecea31@amd.com>
 <e19284e2-ff38-415d-a44d-0ab610032d24@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <e19284e2-ff38-415d-a44d-0ab610032d24@ursulin.net>
X-ClientProxiedBy: YT3PR01CA0067.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:84::26) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BL1PR12MB5827:EE_
X-MS-Office365-Filtering-Correlation-Id: 9cda7e88-9811-4638-e131-08de3bf00acb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?aktaTkVsbDd4UzE2NGdRMFlNTTJ2NDZkTUlwdStSTnFlLzRuNzdaWXJZUDJ4?=
 =?utf-8?B?R2dFWlZrNWhRODMydml1TnJwbWp0VStBR1lkMm82ZFRzcUlwbXBkVWdMM3R0?=
 =?utf-8?B?S2l2OWc0M3B3M1VPVFJVcklBdU84Q3ZyTnJpSjYzcnJuMEtrQldSa3RIZk1j?=
 =?utf-8?B?OXZlSHhIL3JYWG05NjQ0Skd2bzN6ZzdMWkpCOVNqL2JpYTVJTWp6SnhWcHVy?=
 =?utf-8?B?NUhxdG5MU1FNc2s2dGRRWmxzWWJUN214N25oUFVOTDdwdUtjaSt3OFNtZExn?=
 =?utf-8?B?SEQ0SWcwcndDVWkrU2YyZ2NPbGNjbXhkbTUxcTNadXQyMEM2b2FueVNJemZs?=
 =?utf-8?B?ajJDVWFHMnFQbjJiTGpZdGFxMDBGd1R2RkR0OUtUdnBLd2JyNS9uM3RGQldH?=
 =?utf-8?B?MWZBR1B6Nm85STVqVkVnSlM1SjMrRFV0VHNtbjJwTHVrMGtiQ3lZdWl1OG5t?=
 =?utf-8?B?Vk1lb1E3aHpDMUJNK2NRNlR2ekNCM29VZUxWTDBaMnpmWTFqYk9KNmEvZDJI?=
 =?utf-8?B?MjF5aVd5MGQ2U3FDamNzeUpjMmxGNXpNSHk3aGpPSzBxVllrQWFqU2F5OEYr?=
 =?utf-8?B?bHJZcUY0M05FOGJiV08vREQzRmtrbjZ3NEFLTFF0azRjQXArM1pScElDMlZr?=
 =?utf-8?B?MU1RUWRRL2tqb3VFS2R0WlB5OWxseGtBbUxmOVRxeXh0cThjMnBuRGlNSUJV?=
 =?utf-8?B?dU5SYk5TaUg1bnR1MWV3bFMzL2o3eElIdjk4TzNLSm1PMENaRGRhMUtyWStQ?=
 =?utf-8?B?b2RxU1VzZkIzQ1BFZnNobFJwOENibUxnUGFHVU5uWVdLclJnekdPekMxOVRC?=
 =?utf-8?B?eU5mZGg4T0dEY2pnUTh4THFmc3lhWUkwNVg4cXZPZHpIUTBGOFNjRnRIV0c5?=
 =?utf-8?B?S1JHWm9nREkzSTd3QkhTcktSTDhxT05mak4xQWJGMkFGQTllNTdCZkJsSmtI?=
 =?utf-8?B?VFY3U1hBeUdaN0JSNUhnMmhhTitNaWlJVWs3OVhWYzhtMHJrNGtocy9meTFG?=
 =?utf-8?B?Ny8xQWdHQk1YK1dnTGJJS2VaeWk2MXI5c21NUjNmUk43L1ZZRXFkd0U2YUFN?=
 =?utf-8?B?VGlRRXVtN0V5OXFWS2xnMWZPbmZLdmYyOVdqU3Y3d3N1Wm9zWUxTS0k1V2VX?=
 =?utf-8?B?UWI0UjF6MXlodktkSVNGT21QM0ZTbVJRdzFGdUJUVDBuWm9HYUJtZmhZUkda?=
 =?utf-8?B?VkJqbnpvaThyeDZ3RTRsMUdXRDRkVXI0ZWRmSm1udkNtRmZuVTFPblJ6N2hu?=
 =?utf-8?B?aUR4OWdyM3NnTTFxeGlVTUdSMU0zOTJheGpDbGFSTFhjVnRiK1FYNi95d2NG?=
 =?utf-8?B?eDd2ZU9xTFVzbktZaGZqZUFOUkZGQnU5dkJ3TVJFdVpOVWJnWEJ1NEt0V01w?=
 =?utf-8?B?NXJJSU5yQjRodGtGQW8ybFI3eDRJUzFMS3JsOWtGRzZIVktMV3dmRE5Eb3dm?=
 =?utf-8?B?ZDViTGFpcXJZTDdoRU5QU3kzbExDRncraStiQnlqVm1xSzcvSGlnYnI5OEFk?=
 =?utf-8?B?MXJ6RVFTa0VDZU5IWFlONFVNVkJRZEhtUm5yb25vdmVWVFpYQmlkTGo1TS8x?=
 =?utf-8?B?enRYdmQ4S1Y2aCtLNnFTa2tlZWRmVlI1Z2hZTTZqdVc1ZktwK0gwMzhpQWxD?=
 =?utf-8?B?RDU1WHdDeXRMdncvdE80TDJXVktCNjE0TExsSk5LenVaem5YaEp6RFpGY0tP?=
 =?utf-8?B?b2lBTExyTFh6MitiSk5QeGhIdXlRRmtLaE1aVkhTZGtQRU1PL2oyNnNwYktM?=
 =?utf-8?B?YnpKWWdOVjNybGlaZFByS1hnT0N6ZStSbU5CbmVlckdNbWpJZnVRa2JMK29h?=
 =?utf-8?B?bnNkQnhGdkdjcVNBcXpQMnJOTUxGVzMvenRYWFoyWm1KWHAzenErMWlHRGZO?=
 =?utf-8?B?c2lpSGNUT2c2a3JPVUErRGd1SkFQRnd0ZCt5TFBUQ3NVSjN1dHlOd0FSMGlV?=
 =?utf-8?Q?XOsv2dAu8Y2pGgWNvzNnBr9pN5XWrGg/?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cXZPbzNoekc1ckp2NzBMOW9FNWc1WW9HVnV5Y2xMR3huRDhmYjVZNGI3TnIz?=
 =?utf-8?B?Q3BweEQwVzRieXRwZzhucUxESkRXMEFaSHNRZ3RGcXJkNkdEVlpZeXdZR2tV?=
 =?utf-8?B?WGhpVDhUQXg3OTQrYU9UNFVCMTVGUVR2U3dxKzEyekNEczdjY1p4UXlDbkNR?=
 =?utf-8?B?cjFOZHdTbTV4THdXOHgwaDdud3ZvOFp4NnZzdVpxU3JPN2FoSStjRHp3ZUkv?=
 =?utf-8?B?NXRDQ0pJOUg2WjNMd3RVRFFNRzE4d3RlYnY4ZXBIYXRpSXF5THZIdmx1WG1G?=
 =?utf-8?B?dmhXcW9Oc1IrM1VrNmlnUHZ6RlZMbWhOZG8wM0xJVzJmMTdHOEMraEhpZ0tF?=
 =?utf-8?B?RkhkUEZvY1N0am1DMWE4NEZUZHY4S3UwVzBUVHIrUGs2UGRyS0RYRFVJMVpp?=
 =?utf-8?B?ZkluSmpRTzZ5aHVXSWJWZFQ4bmxyWmJja29waU42djhmanBYWHJkT0lsVk51?=
 =?utf-8?B?OTQ2aWV0S2RqNHNnN2dwME5qVVpPS2w4MUNTUkJmUEp1WjEwMWlWU1NRL0dp?=
 =?utf-8?B?VHRFVCt6MzVUTm5iUEtRTUd3azVEeFJIUnlTaWZtSm9jRkg5RXJhakl6L0Uw?=
 =?utf-8?B?ZCtrTDRhc1hDem5Tb3U0WWFqQ2hrZVY4dXo2S2JTQzB1RURFMXI2OUFKWFVt?=
 =?utf-8?B?ajZOZXNRWFFrYnBQNWpxemNsa2hSV2toSGJTOE5CYUx0a0xsMEl4SktrUjJP?=
 =?utf-8?B?TzhNWllhZkY4K1dVZFEvbXNZSFZVcFJ5UkM1ZDI2MHhVNWZOK2VITWZsU0RJ?=
 =?utf-8?B?YUh1Z1pjTUZuUng3d0RYaWIwZ1RwTmovR3czblNLYW1UdGMvNjdFNjVLL0p5?=
 =?utf-8?B?eDYxNmYyNlNvZXQybTdIVkZiQVp0MkJabENhWXo2VHFmSlVmMTRTZDhqcENG?=
 =?utf-8?B?L3NraURBQmMvQTI0YWJ5M1p5cXBDZTVSdE9VSFBXSnpEUUhuQTVjM0cwaGJi?=
 =?utf-8?B?cHg0RXpheXd6NWZ6bHRvMCtzTDl3bFZKVEpiSFhyQnVaTldzTG55Kzc4WHp4?=
 =?utf-8?B?RGlkQjBhbDg2UFBsalpFaEF1elRqdGJudHBoUUpHL3NwUmxzR0oxY1c0TnB4?=
 =?utf-8?B?NjdZcTFKU0prSlVDTVV1c09jcVphSkk2RktTeXljT0VXVEU1b004a1ZVSGpM?=
 =?utf-8?B?bmNkWkFpVnFhK1RwTDlYUlM0cmhzUFhkNXNldUlYaHh5MlJZdG14SDVYNER0?=
 =?utf-8?B?clY5ODNVZ05zdFU5WDF6SkN0SWRaSXNVdmZHaHdyUlg5VU15Y3o3QmV5V1dG?=
 =?utf-8?B?K0hvUmN5dTZpdEx4SmZocGtaK3F6WkZwelg2RzUwRXdVYlpRR1FGV3NhT3Jk?=
 =?utf-8?B?eXRmamd1RUY0NVBCcVl4NGFSRUJtTGowS1piUjJycHNyWDVYNThoUzdYQWo2?=
 =?utf-8?B?aVZFRkVvNmJBWk5OY2FyMnkvaGcwZ09WS1o4Q3RISzdhTGZ4RVVkR2x1Wkxk?=
 =?utf-8?B?OWRPMWV5WmFpMjFmWGZvaitEc1lOWE8xcHl0cVhmcWlPVTFGMFA3NGpmSU1E?=
 =?utf-8?B?cWVlc2JrVTZpa09iYm9JRy9lQlNmNzE0dlk3V3VjYkFvaFF4MzFseWxYbnRo?=
 =?utf-8?B?VWM2eFpDVURqNVpiSmpMTEJYNnZTdEJYUGd2ZkUycUtjQWE0MU5mU0w4ellG?=
 =?utf-8?B?dTI5SER3eUxhRzhuckVZWTBrUUZwOWJJZ3ZWdXJrMTQ1MXNKdmR2RmVmS1dQ?=
 =?utf-8?B?dEREWi9rTEJtd0xIbVR4MUpMTXZ5RWpvMVE0K20rb0lWeTcxb3R2REY5T0J2?=
 =?utf-8?B?YmZPenNDS0JKZmNOMUJBYnd5WUpXTUlOYTRCN01QalZ3MGZTb3Z6R3lzNy95?=
 =?utf-8?B?cXRyVnhXMGhMM3ZrRGlTdlp2QlFzR2dZRFNIVkRTS01HaE9sbVZnd1Z5SExt?=
 =?utf-8?B?aUVqZkNGdk1qckNwKzNBZ3J4OWQ0V0N5TG9NR1pJVVd4c2xBbTcxcTg4anF0?=
 =?utf-8?B?cjZkZkpoNTA2cXVVQnUwWmVIN25pNjdHQ2hNRTlhSG1zM2lRMzVWd3F5aHYr?=
 =?utf-8?B?SEM4MTV5VHZsUUxFUWJYOXZlYTR6cDNiV2piaVVsWWpmNlljNzloQ1E0dnRC?=
 =?utf-8?B?SHZvV2MrbSs0M1FJWWF2L0tPajc5Zlg5VmRxQmxLMVhuc0wraXhJaStiUDNB?=
 =?utf-8?Q?xmNen66oz7FF3icGv6SlpwvtX?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cda7e88-9811-4638-e131-08de3bf00acb
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 15:38:49.4319
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HrYGD7fRrlIxirsAmOxCaDrTjYiDkg0WX0gH/PNtuofJWLqSfPa23m9stuLocXLc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5827
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.208.12:from];
	TO_DN_SOME(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[40.107.208.12:server fail,2603:10b6:510:13c::22:server fail];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mail-westus3azon11011012.outbound.protection.outlook.com:rdns,PH0PR06CU001.outbound.protection.outlook.com:helo,amd.com:mid,amd.com:email,amd.com:dkim,amd.com:from_smtp,amd.com:from_mime];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 001703F802
X-Spamd-Bar: -----
Message-ID-Hash: JYQQ3JH3NZWGHMCDGCVYNGWVPSKYXZTV
X-Message-ID-Hash: JYQQ3JH3NZWGHMCDGCVYNGWVPSKYXZTV
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/19] drm/sched: use inline locks for the drm-sched-fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JYQQ3JH3NZWGHMCDGCVYNGWVPSKYXZTV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMTUvMjUgMTA6MjAsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPiANCj4gT24gMTIvMTIv
MjAyNSAxNTo1MCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IE9uIDEyLzExLzI1IDE2OjEz
LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+Pg0KPj4+IE9uIDExLzEyLzIwMjUgMTM6MTYsIENo
cmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+IFVzaW5nIHRoZSBpbmxpbmUgbG9jayBpcyBub3cg
dGhlIHJlY29tbWVuZGVkIHdheSBmb3IgZG1hX2ZlbmNlIGltcGxlbWVudGF0aW9ucy4NCj4+Pj4N
Cj4+Pj4gU28gdXNlIHRoaXMgYXBwcm9hY2ggZm9yIHRoZSBzY2hlZHVsZXIgZmVuY2VzIGFzIHdl
bGwganVzdCBpbiBjYXNlIGlmDQo+Pj4+IGFueWJvZHkgdXNlcyB0aGlzIGFzIGJsdWVwcmludCBm
b3IgaXRzIG93biBpbXBsZW1lbnRhdGlvbi4NCj4+Pj4NCj4+Pj4gQWxzbyBzYXZlcyBhYm91dCA0
IGJ5dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQo+Pj4+DQo+Pj4+IFNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+Pj4gLS0t
DQo+Pj4+IMKgwqAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jIHwgNyAr
KystLS0tDQo+Pj4+IMKgwqAgaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5owqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHwgNCAtLS0tDQo+Pj4+IMKgwqAgMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+Pj4+DQo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1
bGVyL3NjaGVkX2ZlbmNlLmMNCj4+Pj4gaW5kZXggMDhjY2JkZThiMmY1Li40NzQ3MWI5ZTQzZjkg
MTAwNjQ0DQo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2Uu
Yw0KPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMNCj4+
Pj4gQEAgLTE2MSw3ICsxNjEsNyBAQCBzdGF0aWMgdm9pZCBkcm1fc2NoZWRfZmVuY2Vfc2V0X2Rl
YWRsaW5lX2ZpbmlzaGVkKHN0cnVjdCBkbWFfZmVuY2UgKmYsDQo+Pj4+IMKgwqDCoMKgwqDCoCAv
KiBJZiB3ZSBhbHJlYWR5IGhhdmUgYW4gZWFybGllciBkZWFkbGluZSwga2VlcCBpdDogKi8NCj4+
Pj4gwqDCoMKgwqDCoMKgIGlmICh0ZXN0X2JpdChEUk1fU0NIRURfRkVOQ0VfRkxBR19IQVNfREVB
RExJTkVfQklULCAmZi0+ZmxhZ3MpICYmDQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIGt0aW1l
X2JlZm9yZShmZW5jZS0+ZGVhZGxpbmUsIGRlYWRsaW5lKSkgew0KPj4+PiAtwqDCoMKgwqDCoMKg
wqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZmVuY2UtPmxvY2ssIGZsYWdzKTsNCj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGRtYV9mZW5jZV91bmxvY2tfaXJxcmVzdG9yZShmLCBmbGFncyk7DQo+Pj4N
Cj4+PiBSZWJhc2UgZXJyb3IgSSBndWVzcy4gUHVsbCBpbnRvIHRoZSBsb2NraW5nIGhlbHBlcnMg
cGF0Y2guDQo+Pg0KPj4gTm8gdGhhdCBpcyBhY3R1YWxseSBjb21wbGV0ZWx5IGludGVudGlvbmFs
IGhlcmUuDQo+Pg0KPj4gUHJldmlvdXNseSB3ZSBoYWQgYSBzZXBhcmF0ZSBsb2NrIHdoaWNoIHBy
b3RlY3RlZCBib3RoIHRoZSBETUEtZmVuY2VzIGFzIHdlbGwgYXMgdGhlIGRlYWRsaW5lIHN0YXRl
Lg0KPj4NCj4+IE5vdyB3ZSB0dXJuIHRoYXQgdXBzaWRlIGRvd24gYnkgZHJvcHBpbmcgdGhlIHNl
cGFyYXRlIGxvY2sgYW5kIHByb3RlY3RpbmcgdGhlIGRlYWRsaW5lIHN0YXRlIHdpdGggdGhlIGRt
YV9mZW5jZSBsb2NrIGluc3RlYWQuDQo+IA0KPiBJIGRvbid0IGZvbGxvdy4gVGhlIGNvZGUgaXMg
Y3VycmVudGx5IGxpa2UgdGhpczoNCj4gDQo+IHN0YXRpYyB2b2lkIGRybV9zY2hlZF9mZW5jZV9z
ZXRfZGVhZGxpbmVfZmluaXNoZWQoc3RydWN0IGRtYV9mZW5jZSAqZiwNCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAga3RpbWVfdCBkZWFkbGluZSkN
Cj4gew0KPiDCoMKgwqDCoHN0cnVjdCBkcm1fc2NoZWRfZmVuY2UgKmZlbmNlID0gdG9fZHJtX3Nj
aGVkX2ZlbmNlKGYpOw0KPiDCoMKgwqDCoHN0cnVjdCBkbWFfZmVuY2UgKnBhcmVudDsNCj4gwqDC
oMKgwqB1bnNpZ25lZCBsb25nIGZsYWdzOw0KPiANCj4gwqDCoMKgwqBzcGluX2xvY2tfaXJxc2F2
ZSgmZmVuY2UtPmxvY2ssIGZsYWdzKTsNCj4gDQo+IMKgwqDCoMKgLyogSWYgd2UgYWxyZWFkeSBo
YXZlIGFuIGVhcmxpZXIgZGVhZGxpbmUsIGtlZXAgaXQ6ICovDQo+IMKgwqDCoMKgaWYgKHRlc3Rf
Yml0KERSTV9TQ0hFRF9GRU5DRV9GTEFHX0hBU19ERUFETElORV9CSVQsICZmLT5mbGFncykgJiYN
Cj4gwqDCoMKgwqDCoMKgwqAga3RpbWVfYmVmb3JlKGZlbmNlLT5kZWFkbGluZSwgZGVhZGxpbmUp
KSB7DQo+IMKgwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmZlbmNlLT5sb2Nr
LCBmbGFncyk7DQo+IMKgwqDCoMKgwqDCoMKgIHJldHVybjsNCj4gwqDCoMKgwqB9DQo+IA0KPiDC
oMKgwqDCoGZlbmNlLT5kZWFkbGluZSA9IGRlYWRsaW5lOw0KPiDCoMKgwqDCoHNldF9iaXQoRFJN
X1NDSEVEX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJVCwgJmYtPmZsYWdzKTsNCj4gDQo+IMKg
wqDCoMKgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZmVuY2UtPmxvY2ssIGZsYWdzKTsuLi4NCj4g
DQo+IFRoZSBkaWZmIGNoYW5nZXMgb25lIG91dCBvZiB0aGUgdGhyZWUgbG9jay91bmxvY2sgb3Bl
cmF0aW9ucy4gT3RoZXIgdHdvIGFyZSBjaGFuZ2VkIGluIDMvMTkuIEFsbCB0aHJlZSBzaG91bGQg
c3VyZWx5IGJlIGNoYW5nZWQgaW4gdGhlIHNhbWUgcGF0Y2guDQoNCldlIGNvdWxkIGNoYW5nZSB0
aG9zZSBzcGluX2xvY2svdW5sb2NrIGNhbGxzIGluIHBhdGNoICMzLCBidXQgSSBkb24ndCB0aGlu
ayB0aGF0IHRoaXMgaXMgY2xlYW4uDQoNClNlZSB0aGUgY29kZSBoZXJlIGN1cnJlbnRseSB1c2Vz
IGZlbmNlLT5sb2NrIGFuZCBwYXRjaCAjMyB3b3VsZCBjaGFuZ2UgaXQgdG8gdXNlIGZlbmNlLT5m
aW5pc2hlZC0+bG9jayBpbnN0ZWFkLiBUaGF0IG1pZ2h0IGJlIHRoZSBwb2ludGVyIGF0IHRoZSBt
b21lbnQsIGJ1dCB0aGF0IGlzIGp1c3QgYnkgY29pbmNpZGVudCBhbmQgbm90IGRlc2lnbi4NCg0K
T25seSB0aGlzIGNoYW5nZSBoZXJlIG9udG9wIG1ha2VzIGl0IGludGVudGlvbmFsIHRoYXQgd2Ug
dXNlIGZlbmNlLT5maW5pc2hlZC0+bG9jayBmb3IgZXZlcnl0aGluZy4NCg0KUmVnYXJkcywNCkNo
cmlzdGlhbi4NCg0KPiANCj4gUmVnYXJkcywNCj4gDQo+IFR2cnRrbw0KPiANCj4+DQo+PiBSZWdh
cmRzLA0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4+Pg0KPj4+IFJlZ2FyZHMsDQo+Pj4NCj4+PiBUdnJ0
a28NCj4+Pg0KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47DQo+Pj4+IMKgwqDCoMKg
wqDCoCB9DQo+Pj4+IMKgwqAgQEAgLTIxNyw3ICsyMTcsNiBAQCBzdHJ1Y3QgZHJtX3NjaGVkX2Zl
bmNlICpkcm1fc2NoZWRfZmVuY2VfYWxsb2Moc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0
eSwNCj4+Pj4gwqDCoCDCoMKgwqDCoMKgIGZlbmNlLT5vd25lciA9IG93bmVyOw0KPj4+PiDCoMKg
wqDCoMKgwqAgZmVuY2UtPmRybV9jbGllbnRfaWQgPSBkcm1fY2xpZW50X2lkOw0KPj4+PiAtwqDC
oMKgIHNwaW5fbG9ja19pbml0KCZmZW5jZS0+bG9jayk7DQo+Pj4+IMKgwqAgwqDCoMKgwqDCoCBy
ZXR1cm4gZmVuY2U7DQo+Pj4+IMKgwqAgfQ0KPj4+PiBAQCAtMjMwLDkgKzIyOSw5IEBAIHZvaWQg
ZHJtX3NjaGVkX2ZlbmNlX2luaXQoc3RydWN0IGRybV9zY2hlZF9mZW5jZSAqZmVuY2UsDQo+Pj4+
IMKgwqDCoMKgwqDCoCBmZW5jZS0+c2NoZWQgPSBlbnRpdHktPnJxLT5zY2hlZDsNCj4+Pj4gwqDC
oMKgwqDCoMKgIHNlcSA9IGF0b21pY19pbmNfcmV0dXJuKCZlbnRpdHktPmZlbmNlX3NlcSk7DQo+
Pj4+IMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfaW5pdCgmZmVuY2UtPnNjaGVkdWxlZCwgJmRybV9z
Y2hlZF9mZW5jZV9vcHNfc2NoZWR1bGVkLA0KPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAmZmVuY2UtPmxvY2ssIGVudGl0eS0+ZmVuY2VfY29udGV4dCwgc2VxKTsNCj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTlVMTCwgZW50aXR5LT5mZW5jZV9jb250ZXh0LCBz
ZXEpOw0KPj4+PiDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX2luaXQoJmZlbmNlLT5maW5pc2hlZCwg
JmRybV9zY2hlZF9mZW5jZV9vcHNfZmluaXNoZWQsDQo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICZmZW5jZS0+bG9jaywgZW50aXR5LT5mZW5jZV9jb250ZXh0ICsgMSwgc2VxKTsN
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTlVMTCwgZW50aXR5LT5mZW5jZV9j
b250ZXh0ICsgMSwgc2VxKTsNCj4+Pj4gwqDCoCB9DQo+Pj4+IMKgwqAgwqAgbW9kdWxlX2luaXQo
ZHJtX3NjaGVkX2ZlbmNlX3NsYWJfaW5pdCk7DQo+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2Ry
bS9ncHVfc2NoZWR1bGVyLmggYi9pbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmgNCj4+Pj4gaW5k
ZXggZmI4ODMwMWIzYzQ1Li5iNzdmMjRhNzgzZTMgMTAwNjQ0DQo+Pj4+IC0tLSBhL2luY2x1ZGUv
ZHJtL2dwdV9zY2hlZHVsZXIuaA0KPj4+PiArKysgYi9pbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVy
LmgNCj4+Pj4gQEAgLTI5NywxMCArMjk3LDYgQEAgc3RydWN0IGRybV9zY2hlZF9mZW5jZSB7DQo+
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBiZWxvbmdzIHRvLg0KPj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICovDQo+Pj4+IMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2dwdV9zY2hlZHVs
ZXLCoMKgwqAgKnNjaGVkOw0KPj4+PiAtwqDCoMKgwqDCoMKgwqAgLyoqDQo+Pj4+IC3CoMKgwqDC
oMKgwqDCoMKgICogQGxvY2s6IHRoZSBsb2NrIHVzZWQgYnkgdGhlIHNjaGVkdWxlZCBhbmQgdGhl
IGZpbmlzaGVkIGZlbmNlcy4NCj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqAgKi8NCj4+Pj4gLcKgwqDC
oCBzcGlubG9ja190wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2NrOw0KPj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAvKioNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIEBvd25lcjogam9i
IG93bmVyIGZvciBkZWJ1Z2dpbmcNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLw0KPj4+
DQo+Pg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D23059A1E51
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Oct 2024 11:27:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 594D3434C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Oct 2024 09:27:46 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2040.outbound.protection.outlook.com [40.107.244.40])
	by lists.linaro.org (Postfix) with ESMTPS id 03EA63F33B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Oct 2024 09:27:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=2TYB6CUG;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.40 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QajYG7Tti5ArtpLOKOXBq/ymgHIcOVFCd1RkHqYISLSxM/zxU//6EcJ6/sASsLQ5NUgtIiKUxLOi0vsDiQFYvi1rOVZXonQQB/SdbUadIMhiZUHaByklRNzuVCQEsdrxew7cQcSfjiHG66oker+4fU4/ANq8eOQ7c0eDyqU0F+FwN7unR6V+qkqGbLNOTrDtr9HKAhhhGgfvyFMI76vObtuC7XdbVE8h+XSpmh5dyCBQ3PXqeCiCw4H48eyC4MRJgvYZI2tnJdwja4OJRZ85wuj8nvn203fPL5XxsGjyhO5YCn2yh05TzzQU998dZes/bHDfQoHTjRX4CCwOjH0nUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=moRSRK7DAnTH+lLWca7IiYnpG+qE45XwHDiIBTjr1F4=;
 b=EVwk3fz61ueDPHDcVX7Oks6rP9pwKwxnWcbOS/mRlAtf4FtbUk8XGhvgtOBWsd895+Ln2nUmoM5bXmvvuLQdEuOS5loerM/10cO6wU23tfE5pUlHJa7VOGAlP/7YDVeC4jXtbrZhx0HzRKxF2Nrw1sRLzcc93YBpk2SRR/axp3GZVkEKL2BllK2cR7vX+O762Ztj+Ya1GLuBY62FnX04+P6UYmMvATK7wChYO9wZKrWdhrRsQG7E0QYzF9roP2yEBpvy8NL6Y924I8PeDJiE3UrWLlpFMibs/scAGk2O6/XTQxtts/DMHVyMwbPuEHgZZ1n6ZrBNYrbCIt7XjEUdhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=moRSRK7DAnTH+lLWca7IiYnpG+qE45XwHDiIBTjr1F4=;
 b=2TYB6CUGwwaQriYRNWShFTHrCJK/EuCPiSuT2G0LH9Nx+JC5esvZQMIJKJbhCSWkOcq7QIfRys3s/8o5K+VSJlQe7zpXF/5PgITKizaBMv1nuQjkN25y3HQl41gcuJ++5oeO1UGaxiZrhJzoMg72WgBkG1pM0w0yPubadc+DV0Y=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB7794.namprd12.prod.outlook.com (2603:10b6:510:276::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.25; Thu, 17 Oct
 2024 09:27:27 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%2]) with mapi id 15.20.8069.020; Thu, 17 Oct 2024
 09:27:26 +0000
Message-ID: <51315b7a-02a7-415f-b69b-3a7919e921f6@amd.com>
Date: Thu, 17 Oct 2024 11:27:08 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Adri=C3=A1n_Larumbe?= <adrian.larumbe@collabora.com>
References: <20241014233758.994861-1-adrian.larumbe@collabora.com>
 <20241014233758.994861-9-adrian.larumbe@collabora.com>
 <94be6c2a-47fd-4157-b5d8-307040eaa3b7@amd.com>
 <3mkdo37kvulmticy7g5siwk3skvbg33fnrioolcgofgbakbnph@3dyq77kiotig>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <3mkdo37kvulmticy7g5siwk3skvbg33fnrioolcgofgbakbnph@3dyq77kiotig>
X-ClientProxiedBy: FR3P281CA0007.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::6) To SJ0PR12MB5673.namprd12.prod.outlook.com
 (2603:10b6:a03:42b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB7794:EE_
X-MS-Office365-Filtering-Correlation-Id: b4de4565-19f4-4b3c-bd50-08dcee8de9de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RG0vWHlPYVFSdjRscmpBb2djaTN4UWI1MTR3RnBaVnpodC9mbUJ0WFdMaEx5?=
 =?utf-8?B?Zk5yYW9HT041UmtSN1JTQjdMM2praXRyZ055N1BuTHNac0hieVVEQ1FmRTg0?=
 =?utf-8?B?VjcyYk5OUjN5dGZJWVczODBNTDNGQmxIODJ1eWY1UVZxN2FDWGV1OHVWNkVq?=
 =?utf-8?B?VDU0MFNlOEZKdjNTdVFQVUJBRGhPQk14am1EZHZpOG5JZERmUFhneFRBOHpn?=
 =?utf-8?B?bVpZSFNudUVSeGtWenlCdWVQSmFFbkZEOExIbUtmWFJ4L2lydjluUXZlSHhV?=
 =?utf-8?B?aTE4L1pIREV1bUU3K0xQS2tNWGR2YTR5MnV4b2dMMHpTWlYrTzc2VnlpM0du?=
 =?utf-8?B?SWZKR3dIUm5WMm9uQWcyU1VuMnJFdWJtdmRGYXhTMGVqTyt6Mk9xUThsN2ht?=
 =?utf-8?B?a0NacWNCaEFUNWwxbCtPY2dFdC80TitORGNzV2MxTTR1c25pUEdjMS85YkZD?=
 =?utf-8?B?ZzQxR3JmOTVINzNDNG9FVEx5emQ1QmhHZUd5ZkNGMG42cjZSN085Q0ZtWTM4?=
 =?utf-8?B?WFUzTEJ1TzlKMHB3TnladUZoRlVJTW05am1TdmtOenErZEwvRVNzTFpaVGpQ?=
 =?utf-8?B?YzlQTmpKdFVYMVFUVmxJSGc0b1lUWnNnc3dGMVlqOFprbkYrUEZicmF6R0ty?=
 =?utf-8?B?WmlZdW1JNXhFYlJPL1VXL2o4a2czWWlBMnRXeUJDZTREcnRlY3dIL1YyWEE4?=
 =?utf-8?B?NnRGaE01UGdvWS85dy9od2dvbWxIWGRPelVrUVBuQXI0MGE1VHZ2T3pZZGNj?=
 =?utf-8?B?MW5DQ0pDQlZKUjVsQzYyekE4UGtMcG5RUXpQcjVEMXR4TmhGQjlGWVcyVGpm?=
 =?utf-8?B?aUpZR0FOZUFYdjZxc0JCb2djMlMzbitpOTZnUHlBUXVBemY5T1o0VU8zaWV3?=
 =?utf-8?B?RmI1LzVvaUZSSWxyM1h4ZlppMW9Gekhka2haZ3UyTDdrYlpqTTFDaVd3VTlO?=
 =?utf-8?B?Sk1oWVpNeE95bCthK3ltUThQRE51SlpvYmVqUFpTWHlDYWNKMHZHSHZaa0dr?=
 =?utf-8?B?aWRML0k2VkdYRXdvdDE1L085MVg2Zk9ZVDBYdFlaNzRQeXRKWFdyVUFDL0Ju?=
 =?utf-8?B?SFNaUSt0dytKVXh6TmFHb1VNUlNDYWk3SHFNN1IreWtjTURPTHpxN08wOGJN?=
 =?utf-8?B?VjFHb1d5eWt5SVE2eHA4dTdwTzlpZzVpNWhTV3ZnZFlGRHhvTUlCa2VSL0Zy?=
 =?utf-8?B?T2hIN1RYTk5VVjlpakFQZlBPMXM0NFNiTjZzS0YweG4xbGp2N0ZaR3JUaXo1?=
 =?utf-8?B?NmlKMDNrMWQxcDJIQjRVdnkxelA2Y05rOWJBY3p3dElmVktZV3VQOXJGU0tU?=
 =?utf-8?B?ZmxQWVJIeTZLQlFNY2tKdFU1MGtxWEN0RnFldncwK2pzYnBGSytlWll3V2Y3?=
 =?utf-8?B?YkpEQXpmdDJSMDBlcnZkUkRGckJVc21NL0tGNzZ6VHoreTRFMS9mdDFYa0Z6?=
 =?utf-8?B?ZS83V1V2Ri9qelQwZXVPV1JIL2puanNxZE1EM1Y4LzFRWWk1UzlaVisxaXVE?=
 =?utf-8?B?eUZsMUlDWGpVV3MzbVNpU0t3R0xoOGdaOHU4ZHNPWDdmcU5lcTh1eFRITDds?=
 =?utf-8?B?ZTd6SlBIZXlQTE1iSWllaWovTFVDd2RTRy9RWlErd1BZMW9LcjVjS3dMTy9Q?=
 =?utf-8?B?QkFhcXhrdHpmQm9md2NSMlNrZTFXa25HYUJCaDNSZnJvMjB4VldPeUd1MzMv?=
 =?utf-8?B?UkpyYm9rak1jKythVUw1YklhTytMREZDb2w3MFkrQzVSb2djK2JwLzhhZnJ5?=
 =?utf-8?Q?aqe7CExUcaztguAFkw=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?czJUZDRBeDNORDg3N2ovRFBsY1JpZVAwTkdSVU1pWUMzN2tRdjdwRStQRkpl?=
 =?utf-8?B?SmdTeCtHd3lucFJSWjBhd1FldXd2ejhDek1NWUJpZjYvdTZWcDlwdTMzVXFo?=
 =?utf-8?B?N0pzMU5ZazlGWHJvcE9PUTRMUE9BeDdYTHpRZVBqc0JJN0E0elZXTCt0bW0r?=
 =?utf-8?B?ekhwaGhRUVBnMG84K3Z5Z0c2K2tEbTN3RXQ4RXdrZnE0VWNSV09Vb0lsT1JZ?=
 =?utf-8?B?SzBWLytMNlRSTkhrK3M1Q3JRdk5NOHhOdFlFcmg1VWp1dDhRL2lsT0QvUHA3?=
 =?utf-8?B?NnNuYkVkNGZpQXV1czYyNjcrSFBoRHNIdk9JNjYrQzRaSHNPYWdWVVdlWU50?=
 =?utf-8?B?aWZYd2toRi9tRWdpNUJlMG5wcEdVS0NRdHdteEl2bTZudTlUQmZ1UHNXTFI0?=
 =?utf-8?B?ZThLWW1ZRjhBaFFaQUovM3dSdkJKRmNoWVEwYm5KbWlmUnVRZW1ldEFkaEtu?=
 =?utf-8?B?LzJQSjM2dXUyRzczdHR6NFBBZEVYVjdnRHlqUWRoTndMZWRXSUJUdjR5SUhm?=
 =?utf-8?B?cW1kc1NHR3hvNFpVaGVGby9lTEdWZ1dWRzVNVGtVNkhIUUM4Ynp0MTNFMW1V?=
 =?utf-8?B?bVY2cnQ0MmJVZzhtaUJtS3NRZ2lXSHJ2OExQWWdrRGk3M0tFcTZLa3JURXps?=
 =?utf-8?B?c3hMdmxpYkVab2RVZFQ5ei9rcDJYaWNubWZIeGZVVGdLWXB0ZDg4K0VSSmRV?=
 =?utf-8?B?MCtFMytCOFg1dGZDcWZHYUxRZkhrdERRblA3bENnMkl6WWczcnNRc3lncVRQ?=
 =?utf-8?B?Z1EvcHVwYlVpdkJsZDBWdG5qT0ZxNXdDQlVMUmdjY1B5NEdQTDNqNTJFdjBE?=
 =?utf-8?B?RHhsOHpTcFE5dHdGc3VxeTY0bksyMmR3ZXJjRlZiS1RlRU56d3Q3T3ZxY1ZR?=
 =?utf-8?B?VVB1UWd6TC9kaGdKWXVYaGtXU2VTb1pDK1RSUDN3LzhxK1JuUDF3V056dWZS?=
 =?utf-8?B?VCsxNzFqRlJkM0lhRG9QTmd5a0R3d1ZWN2RwZUlLWnRRazJzajE1Ukh6bmVV?=
 =?utf-8?B?d1lFVW9CRXRjMXZTTVU5OXM5ZnNCOHRHck9rRUJVc3lNVnNLQ3pNb3dsazEz?=
 =?utf-8?B?WDBXcGRsbVNYbVZlSW52ZGI0RlBsQk1xekl6YkdkcGlZK1JtWkM2OXVjOGkx?=
 =?utf-8?B?akZ4Zlh4Q0x0ZEFSTGdSeTYzc1ZtZEdEa1YyekoyZlN0MHRqTVc4NDhtODNz?=
 =?utf-8?B?OEZiWTQvejM1ZExQZEN6U0ZGOHA5V054aUxkZXZhZEVzQ3FxZE1Edzg1ZDR0?=
 =?utf-8?B?cWdSWTBDejZNdmRwNEZJY0tiRDBsQ1JsWWVxZHRyYUZ0ejV6SCtQeEllWXFn?=
 =?utf-8?B?ZEpqelR3RkdYSXROdGdVRmJmbDBjOW5oRTZOK0dGMll5RDZiS2lQNUE5WmlK?=
 =?utf-8?B?WGNvclY2TWJlbWNSa3RMWjFhMXpWU3pzdVV0L0VIRDZBZEYydjJEVFlsLzJI?=
 =?utf-8?B?a3Qxa2FueWx1LzYrUXF0N3FXY0pKV1kvVlc3eTdhc0NBSHVQZTVGVVp2K09C?=
 =?utf-8?B?MU9UbTFBSjJDN1R4aWFPSXhUMXFadjVtODlBQy9SRkVtRXR3SmVBQ3orY0RL?=
 =?utf-8?B?RmZhMFhuYmFMc3h6S2JNMlhZcFZQR0RrRVNadWxhNnVsMDhEcUw3eWYzL1JO?=
 =?utf-8?B?ZDZjbWlyOEZrMWxMaVZscjRHbDdyNUt5cmI0NWN6YWV6UGJtZXE2K0xSdGky?=
 =?utf-8?B?Z05wUTlmUHJWRDg5Nk52bXpWR1ZsVHFxalRadjdTVnRvdEZJMWxUcGVNbDFR?=
 =?utf-8?B?MGpBc2YrYldmNiszd3ZPMVZrMGVkNVZ6VHZnRVFWc3Qxa1UzSGpESUpCOFZv?=
 =?utf-8?B?L0J6VEg1Z05QVks4eSswV2orVkRuOXZ5Nk02Qi82OWs1WVU3allYRG5GbGg2?=
 =?utf-8?B?ZmltNGN5VDBUQW15VG9ROCt0R2V0RCtHaTllVkF2OXFRL1hIc1RQSituTFl1?=
 =?utf-8?B?b2EvYzBJT0JqSlZOVDMvWjZxZVAzWFdqSU15L0xqZ0c1TXdDWVlvbVg4dGJN?=
 =?utf-8?B?M2FUdUh0MUR1WCtvcnRXL1cxMTFseWErSHJYUFJQVklVRWYvdEZwaDdxVFRH?=
 =?utf-8?B?KzZEa09FZDRLYnJyVkVEWkJObis3YzErTUVXUmQzMGZHYjhCakViT2Z6RWZp?=
 =?utf-8?Q?8b3M6dtp1fmyxP3WUmCDO55+H?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4de4565-19f4-4b3c-bd50-08dcee8de9de
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5673.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2024 09:27:26.6648
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /98wCsnHT7coiXiu+9ecX29Yxg+kNH9any02MKj6WVwtzio/D9hgfMtmVMt4qakA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7794
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 03EA63F33B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[16];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.40:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,kernel.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,pengutronix.de,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: SBQSCILWXNQAVC6VIMO4ZLYI7LZZAKDQ
X-Message-ID-Hash: SBQSCILWXNQAVC6VIMO4ZLYI7LZZAKDQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Boris Brezillon <boris.brezillon@collabora.com>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, kernel@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 9/9] drm/panfrost: Explicitly clean up panfrost fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SBQSCILWXNQAVC6VIMO4ZLYI7LZZAKDQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTYuMTAuMjQgdW0gMTg6NDMgc2NocmllYiBBZHJpw6FuIExhcnVtYmU6DQo+IE9uIDE2LjEw
LjIwMjQgMTU6MTIsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBBbSAxNS4xMC4yNCB1bSAw
MTozMSBzY2hyaWViIEFkcmnDoW4gTGFydW1iZToNCj4+PiBEb2Vzbid0IG1ha2UgYW55IGZ1bmN0
aW9uYWwgZGlmZmVyZW5jZSBiZWNhdXNlIGdlbmVyaWMgZG1hX2ZlbmNlIGlzIHRoZQ0KPj4+IGZp
cnN0IHBhbmZyb3N0X2ZlbmNlIHN0cnVjdHVyZSBtZW1iZXIsIGJ1dCBJIGd1ZXNzIGl0IGRvZXNu
J3QgaHVydCBlaXRoZXIuDQo+PiBBcyBkaXNjdXNzZWQgd2l0aCBTaW1hIHdlIHdhbnQgdG8gcHVz
aCBpbnRvIHRoZSBleGFjdGx5IG9wcG9zaXRlIGRpcmVjdGlvbg0KPj4gYmVjYXVzZSB0aGF0IHJl
cXVpcmVzIHRoYXQgdGhlIHBhbmZyb3N0IG1vZHVsZSBzdGF5cyBsb2FkZWQgYXMgbG9uZyBhcyBm
ZW5jZXMNCj4+IGFyZSBhcm91bmQuDQo+IERvZXMgdGhhdCBtZWFuIGluIGZ1dHVyZSBjb21taXRz
IHRoZSBzdHJ1Y3QgZG1hX2ZlbmNlX29wcycgLnJlbGVhc2UgcG9pbnRlciB3aWxsIGJlDQo+IGRv
bmUgd2l0aCBhbHRvZ2V0aGVyPw0KDQpZZXMsIGV4YWN0bHkgdGhhdCdzIHRoZSBpZGVhLg0KDQpB
cyBhIGZpcnN0IHN0ZXAgSSdtIHByZXBhcmluZyBwYXRjaGVzIHJpZ2h0IG5vdyB0byBlbmZvcmNl
IHVzaW5nIGttYWxsb2MgDQppbnN0ZWFkIG9mIGRyaXZlciBicmV3ZWQgYXBwcm9hY2hlcyBmb3Ig
ZG1hX2ZlbmNlIGhhbmRsaW5nLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+PiBTbyBj
bGVhcmx5IGEgTkFLIHRvIHRoaXMgb25lIGhlcmUuIFJhdGhlciBkb2N1bWVudCBvbiB0aGUgc3Ry
dWN0dXJlIHRoYXQgdGhlDQo+PiBkbWFfZmVuY2Ugc3RydWN0dXJlIG11c3QgYmUgdGhlIGZpcnN0
IG1lbWJlci4NCj4+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4+PiBTaWduZWQt
b2ZmLWJ5OiBBZHJpw6FuIExhcnVtYmUgPGFkcmlhbi5sYXJ1bWJlQGNvbGxhYm9yYS5jb20+DQo+
Pj4gLS0tDQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2pvYi5jIHwg
NiArKysrKysNCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQo+Pj4NCj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2pvYi5jIGIv
ZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2pvYi5jDQo+Pj4gaW5kZXggNWQ4M2M2
YTE0OGVjLi5mYTIxOWY3MTliZGMgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Bh
bmZyb3N0L3BhbmZyb3N0X2pvYi5jDQo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0
L3BhbmZyb3N0X2pvYi5jDQo+Pj4gQEAgLTg1LDkgKzg1LDE1IEBAIHN0YXRpYyBjb25zdCBjaGFy
ICpwYW5mcm9zdF9mZW5jZV9nZXRfdGltZWxpbmVfbmFtZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSkNCj4+PiAgICAJfQ0KPj4+ICAgIH0NCj4+PiArc3RhdGljIHZvaWQgcGFuZnJvc3RfZmVuY2Vf
cmVsZWFzZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4+PiArew0KPj4+ICsJa2ZyZWUodG9f
cGFuZnJvc3RfZmVuY2UoZmVuY2UpKTsNCj4+PiArfQ0KPj4+ICsNCj4+PiAgICBzdGF0aWMgY29u
c3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgcGFuZnJvc3RfZmVuY2Vfb3BzID0gew0KPj4+ICAgIAku
Z2V0X2RyaXZlcl9uYW1lID0gcGFuZnJvc3RfZmVuY2VfZ2V0X2RyaXZlcl9uYW1lLA0KPj4+ICAg
IAkuZ2V0X3RpbWVsaW5lX25hbWUgPSBwYW5mcm9zdF9mZW5jZV9nZXRfdGltZWxpbmVfbmFtZSwN
Cj4+PiArCS5yZWxlYXNlID0gcGFuZnJvc3RfZmVuY2VfcmVsZWFzZSwNCj4+PiAgICB9Ow0KPj4+
ICAgIHN0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNlICpwYW5mcm9zdF9mZW5jZV9jcmVhdGUoc3RydWN0
IHBhbmZyb3N0X2RldmljZSAqcGZkZXYsIGludCBqc19udW0pDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

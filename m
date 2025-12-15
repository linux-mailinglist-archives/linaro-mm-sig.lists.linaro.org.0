Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC1ACBE122
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 14:31:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 510F53F9D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Dec 2025 13:31:03 +0000 (UTC)
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012015.outbound.protection.outlook.com [40.107.209.15])
	by lists.linaro.org (Postfix) with ESMTPS id 63F9B3F78A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 13:30:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=u4DyCTP9;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.209.15 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E1VtRKedImpj4Z2Mrc4y8GyZOGuulFh9srNU9Lx6icMm//7oY1S3jus9c4by72XHVnqjLKbGMJOm2Z0XEhXdbsCiY3DAoRGhI83dv5XLOHTslR72/JFc2UyzxBNj60Rd11u8uUjteRbNduBtQxMsKgIfbNIh5K/n8ibdpsOibvt4u81JRrGDg2rkSUkbCElI7bAIs4vJvhHN10yCHG3wiou9C7M775slnJ8fu/NV6NtzU3IsWkqao1hB37c/SDQN6XJpymRZhoCBBa9D/bQuV4D+8Sv1rl1yiaxIwxll9/ufuaLcQRcUuKOxEHGYyypWVPMee30sVENpcDtVwVovNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dq7+kbXQkX8gpVf9I4I1oRW723Ia/Zm5HMiHILEP7nI=;
 b=hfzvPMEwspg73KDfu5pDbhcJ6pw9cbJoxL5+ZhcMGcialiBrAL1tnMi0LcC77fNAw2ipnz0fQoXQx+RBth374NAnwNQBuQlVfwEAyd0ItkLN7JXIK39dN6daJSUhvqzsbmUKpGCKZ8du4oyrcJZEEwOVGrZGY47pOUsJ1HOsTf5NZXujOoulItP9nlXNIPNvh7GLM/S3U7zALEhPUyNlLG+dQ44FvmNZDKLonmRiXcT+AVNU8IN05DMd0ye7IZ9J/hk5u6hA+Haao74QAD0VEB0o2+p90j+vSSYDyj+iaZ5dqLNVC/FrswGh1mWoJpVtC7sohhVLfKWrzPKxEEe28w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dq7+kbXQkX8gpVf9I4I1oRW723Ia/Zm5HMiHILEP7nI=;
 b=u4DyCTP9OkkJjMs7hdeZ8LQRL4Qr5uYo1hLpkpmR+8cNvvjV7d0LcpoQ8Awpjd0eJT9xc5wwtcaAHTpnFH192Fhl8IxBOcYol9To3KYUOQZB1ezejh9hE76C5cAtzprdx5H9yu+Qt8pOjCMs1jMPoSobOWhlM5H40cyCGk+ak1s=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS7PR12MB8348.namprd12.prod.outlook.com (2603:10b6:8:e5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 13:30:54 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 13:30:54 +0000
Message-ID: <07cdcce2-7724-4fe9-8032-258f6161e71d@amd.com>
Date: Mon, 15 Dec 2025 14:30:47 +0100
User-Agent: Mozilla Thunderbird
To: Maxime Ripard <mripard@redhat.com>, "T.J. Mercier" <tjmercier@google.com>
References: <20251211193106.755485-2-echanude@redhat.com>
 <CABdmKX2MPhw121ZG8V+f-XoOReUsCdmcug-cWDg=3WZcJ=NHHA@mail.gmail.com>
 <20251215-sepia-husky-of-eternity-ecf0ce@penduick>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251215-sepia-husky-of-eternity-ecf0ce@penduick>
X-ClientProxiedBy: YT4PR01CA0312.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:10e::24) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS7PR12MB8348:EE_
X-MS-Office365-Filtering-Correlation-Id: de2416a3-a395-4d42-998e-08de3bde2c35
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UVJKSU9pVm1scWFzNHlBak4rd2hiRG9vcUtxUWdvZ0c0RDJsbDNpZHhzdmlv?=
 =?utf-8?B?emdHZFBjNHBRakFWRDhuYmpKV280MHp0Q1dOTjNFeFZ2dGhQVW1wODMzZVdv?=
 =?utf-8?B?MUpSV0V0SzFyNStZejJSM2txUUhkclB5TmJZbTROMGJBOUVGYXJZWlZleEFo?=
 =?utf-8?B?Z1ZLUm1yVnB0RWRNaUJTUGNMOU9Fb2ltVFh4dnlWcjlCT0xtbnJEUzdsQjh3?=
 =?utf-8?B?WmNVbi92T3NGbGFqbDN4NExlSWw4TnJsZDZxRXFmdC90bVFDZlZBaE1lN1dI?=
 =?utf-8?B?RHJGa0FIb0ZSMldxdUdwSFQ1QW1sWlRTaXFpa1NNRUl4YmNBQ1NZVjhHbEFJ?=
 =?utf-8?B?SVNTT2NKb2V2cTU5SWl1ZXovbnRCVzN6b2VMR1crUmljRFpISW5UNHNzb3hM?=
 =?utf-8?B?QXdkeDRYSGdlcVZyM1RRaVM0ekEvdnhSUTUxQkRRa0lhTkJFVklKMFhibTh3?=
 =?utf-8?B?N2dqbUJDUDJDc0FHeTlXM3FmNDJ5dkVLeDJObHROWVBVcXBtM2RGK1J3RlNm?=
 =?utf-8?B?WVB1TFRjVjdrZnpEVXpCZXAxcGFiQUU0ejFCQitDZE14cGRYTG1yam9HVCtk?=
 =?utf-8?B?ZytuMVhMSjJBYUVzenRyNlZTdkNndGdlVEhLR2JUcDhzNzhyUU1BMTlnMERr?=
 =?utf-8?B?OGJVT3BYeHI2ZWVlTVFOckxVaG0xRCtOblBTRWNUMDRaN1lUM2RWR1RKVEdE?=
 =?utf-8?B?YnVSY3hOSXVPTFp4Q0haUUVSd0k4aG1uME1HK0xJY1ZlOWtTbHpVSlpEWlhE?=
 =?utf-8?B?QmMrMUEyRk5ZLzN3RmYyTU9wNWdGSDRiZytlT3c2OXI0aWJhbWZ5R0dDOS9x?=
 =?utf-8?B?VDFJdmNUK0RYME03RTdtaEIvV3dOR0UrVWhQSVdyZE1Jd09UUnNPdjQ4THlz?=
 =?utf-8?B?eFRoQ0l4KytTUVlrWlFTZnJpY3hENVZBYmQxNGxJZnpMU0RYWTQ0U05YcHlu?=
 =?utf-8?B?dVE0bGdSblplQXMweXZNamVndURIQ1BkTHYzT2ZCVDRKcUhJcS92L1h4c0dG?=
 =?utf-8?B?MGV0QTZ1djY3M3dRczNyUTNUT0hMVHplUFZVanVqZGRxN3NoV2lKZTVnS3Ny?=
 =?utf-8?B?bkZhaEpYRStpVU1MZmQwTW91b1o4ZWt3L1NhVXpqMUFiRXlWaU1wdGFYdWl6?=
 =?utf-8?B?STZPK1JHRHhha1VQTFluQ2puczJQdWRMRkcva0JlaVNxYkE1Y2xJOHJsdjZx?=
 =?utf-8?B?eDVhelZMbWtkSjJ6MFVyYzh6V2pSOW9MQ2VPZERncUFZVTRkYmlaYXhYSnBE?=
 =?utf-8?B?SFhoSG4wbnFYQ1VWYTFlZW5namJaWnZ3RDl5S255azVKMGV0MUl0NXdXcyt1?=
 =?utf-8?B?SGtuNGhKcSs5bFF5Q2FxajhLaEJuUzY0RVlySTZTVVd2eFc2RUlXUHljR3Bw?=
 =?utf-8?B?bGF1WkIxdnRPdkkwNXFZVXhFTmpSN0RUL1YzcXFIZG9nakJDZEpxOThGak95?=
 =?utf-8?B?SDlNaC9NaURGM3NWK28wRjFKR0c4SGRIdkxGY3poelpWQ3oyQ2JpdThTS1Rt?=
 =?utf-8?B?Z2N5d1NWQk1HandOWHRPK0E3N0JpM3dzbTRUM2w5cGgrUnRSeCtTOFE0Y0hJ?=
 =?utf-8?B?TUdpczNTZy9rdmdMNGZSWVZ2bmZvRmp2T3puV3dGOXMvajg4RktadStnRko4?=
 =?utf-8?B?TzNIQXIvZGk4VmhkOXgweUpURFA3VENYdTI5UzZiZFpFN1BWcTdCcU9IUTl4?=
 =?utf-8?B?R2JTS3VyS1UwbWlFVXp6LytrM2hNNitRTXhGVmNVZEFleCtwOVpxdUlNbWsr?=
 =?utf-8?B?cmIxdkE4QXBhQStna0lzc0wvc0NVSS9lNG16V1c3bHpzZ0lVNUFDb2F3dU9N?=
 =?utf-8?B?d0V5ZFRnU1gzWFZZcURoQ0kwbDN5dEY3L0JJNnhwWnBHYWpHVkVuWVZBRjRm?=
 =?utf-8?B?SS9lMm1lR0k2S1B0N0VjalBWcTRldlMwaHR1NDZtVllBUXkyZGR6eThYQUlK?=
 =?utf-8?Q?oQv9nTbaLBNpegn+0OENMOadEySKiTsT?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aHRXeDFCQndOTmV2SHdJRjUxOG9xMnh1S29CdWF1SlZkdi9SbUozTEluY2xT?=
 =?utf-8?B?ZkRJckxWb1pzQTVSLy9aWmU5Zk9QUE0wWGpRU1NhUi9obVpmSHJmOHp1QVRk?=
 =?utf-8?B?TzZLaTZXT3hwKytKT3hvMXF0bjFaVzh2UFkvbEF4Mkw0TzRrMlJROWR3QVNT?=
 =?utf-8?B?R2dRSk9hWTNQUUxSUDJmTjlKTkpPTGtkNGlYV1VQaWQ1RVpja1JmanEzK1ZK?=
 =?utf-8?B?MFFaN3dCT2lTOGhiZm1GYWpFeWlLeGlFQU1GSnBkaDBGRlV1TGM1dFJpV1Yr?=
 =?utf-8?B?azN0TFN2TUdIdHlaTzIybjhyVHlkQUdwQ0cxb3Z1aWdHZ2QrVXlXS2R2UjVY?=
 =?utf-8?B?UVNncm9QR3dVOThSdkJ0QUhYa2lkUHh4SXlFMzYrQ3kwd1FoTTRNQmgyNmVQ?=
 =?utf-8?B?TTEweEVlRnNBaWE2YUs1b3ViNU43OGxzVFgrVThnSUs3Mkc5eGhab0FyMlJS?=
 =?utf-8?B?MEFmZWdTb2QzRDRaazd1OFlua3FDOEphdnpxU0JkKy92SVhSeUp2N2RkK3Uy?=
 =?utf-8?B?QTE4NjFoaTc5NGg4WC8wbEIxMGtKSy9jT1ZTakxwSXVDNis2ZlU2aTA1ZmlD?=
 =?utf-8?B?dmtzY2drcmRUVlhDUUMwZ3hreTVsVXRBMlpBNGpaWVFhV3cvVzkvTS9WRC9X?=
 =?utf-8?B?ODFhYUYzdkpwK0p4aEpEa045UmpUS1ljWDNmNi9vWEsweXhPWDVIR1VTbi9H?=
 =?utf-8?B?dmxXdEFqT3BXWGlETGxlL0NVQkN1RWxILzhNcEEwN0JlemNTR1BlbEJJcWFE?=
 =?utf-8?B?SGRuN0RKMkNrK051R2IyK2plT013bmkvdWFUbWtqL2g1MnJZb29LUFJHNnZx?=
 =?utf-8?B?ZFJ1Y3hNM0V6czAxQmlicFVOemVPVy9YN0dIVnpuYzBSSEtiQ0crSTUrcW1w?=
 =?utf-8?B?M2FISW5NMWRKc0tJcTI0ak9uMWpNYlBOS0tHaDA3dTF6b3dQWWE4V3k5Nkpm?=
 =?utf-8?B?aGVjYmlhaHV5cjBXSDh6K2QvWmxKeXFEVXR0Qk5XQ0ROV1QxY1Nwd0lOWldU?=
 =?utf-8?B?dFNyc2MxeDFsQXVHc3lZUHMyMXlZN0ZXZk9aMDZYSHQ2QU95VW9yWUhmaDlB?=
 =?utf-8?B?d0JtcDQxbllvdmEzS1d0a21XblpjcmxIWkNoOFgwcDZCTWtpUldTcUN5dU1m?=
 =?utf-8?B?Q0hjWlFiMkRRcXc2R0dFTzhRZU9TVWpKMmY3TDUwOWRCTE4xTlRwVFBpc2hM?=
 =?utf-8?B?dFNGU01IMTl6UVpOZW9QRHAzeWZwZ1ZITzRlVlpONmZvZkxmUVp2QVNJNHlv?=
 =?utf-8?B?b3BVZ1FMU2hXVS9OQ3J4TThQeEg5SExwL2JUaHJycUJQQm5WaVQ3R2ZBQzBr?=
 =?utf-8?B?QWNmUU9rbzY3c0ppOEJIay8zRTBId0JCa2UwQldkVWsybk5xaElZdFhDcytD?=
 =?utf-8?B?V24yWXE3c1RJVTFwQ1FTNWJZVFlKcDYzOXdpcXEzdUlQUmNPZTR0UFlJRkg2?=
 =?utf-8?B?c0pkeEc0aDcyVGRoVVIrY3lCUkM3MUo0VFBnRUhXNC9HUGZuYXVldHJkdHly?=
 =?utf-8?B?S0FkdDdCdGVFcjBZOFRrNXR5MHlqWEJVOUZJdTZaaHVUOWFlSisrQS9uKzdv?=
 =?utf-8?B?SlZCMHhPdFQvcDh2ellkTGVHQ1djejByLzR1OVh2Wk5Ud3NmZ0k1Y0JWT2pn?=
 =?utf-8?B?ZFBhVHFqQ0RIZTRFMCsrM3RiQ2czZlpUaXdnS2tMN1hPU0dRdGNJTC9rQkpI?=
 =?utf-8?B?QktYTnBIaC9RSm9NeXR0MnAzV3VCVXI3QnMxN29qMkdwMHFKV1ZKYUJoQk4w?=
 =?utf-8?B?aW5WQ2c4UWFybVFPZC9YV0pTWS8vNHFBbEFCNGNMSVJjSUcweXVzWThCbFE0?=
 =?utf-8?B?RWN6dEw5OWhGcmh5dk5tVXF0clZ3Z2hNS2JjU0NjeTY1Y2I2V3Z2NnhwbWpU?=
 =?utf-8?B?cURic0dUN0NZeEE0NzIwU1psM3BDTHZaY2daM0pYTm5PTWd1U0lGWlJCRnRr?=
 =?utf-8?B?UTdZR3JucXY3V0lRajJOQkwzSFZWd1lHSXludm1RcUQ5OU5RNFNQeTFGVmxq?=
 =?utf-8?B?clZYcHdINFd4NVpJdG5sNkhFcEFnZm84UHBFbmsrT25PbGdRbVBuUUV1d0dB?=
 =?utf-8?B?aXMvNkdDbHZxWjBtT3Y3eW10ZlBtVTlCZ09QakJ2NTBYcmxaZnZPM2htNFlQ?=
 =?utf-8?Q?6dLozCAlkchmSjaKegr6yNOK6?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de2416a3-a395-4d42-998e-08de3bde2c35
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 13:30:54.5072
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RRFwi/IFQdd1YKK4TIvskkryvA51ehqL6or7su0PfkGRUJmIf6rlee1fpmY7mvbw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB8348
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.209.15:from];
	RCPT_COUNT_TWELVE(0.00)[12];
	BLOCKLISTDE_FAIL(0.00)[40.107.209.15:server fail,2603:10b6:510:13c::22:server fail];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mail-westus3azon11012015.outbound.protection.outlook.com:rdns,PH8PR06CU001.outbound.protection.outlook.com:helo,amd.com:dkim,amd.com:mid,amd.com:from_smtp,amd.com:from_mime];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 63F9B3F78A
X-Spamd-Bar: ----
Message-ID-Hash: YM3RQYZ55RBBKLHLEA632JQHK3TSFN4D
X-Message-ID-Hash: YM3RQYZ55RBBKLHLEA632JQHK3TSFN4D
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YM3RQYZ55RBBKLHLEA632JQHK3TSFN4D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMTUvMjUgMTE6NTEsIE1heGltZSBSaXBhcmQgd3JvdGU6DQo+IEhpIFRKLA0KPiANCj4g
T24gRnJpLCBEZWMgMTIsIDIwMjUgYXQgMDg6MjU6MTlBTSArMDkwMCwgVC5KLiBNZXJjaWVyIHdy
b3RlOg0KPj4gT24gRnJpLCBEZWMgMTIsIDIwMjUgYXQgNDozMeKAr0FNIEVyaWMgQ2hhbnVkZXQg
PGVjaGFudWRlQHJlZGhhdC5jb20+IHdyb3RlOg0KPj4+DQo+Pj4gVGhlIHN5c3RlbSBkbWEtYnVm
IGhlYXAgbGV0cyB1c2Vyc3BhY2UgYWxsb2NhdGUgYnVmZmVycyBmcm9tIHRoZSBwYWdlDQo+Pj4g
YWxsb2NhdG9yLiBIb3dldmVyLCB0aGVzZSBhbGxvY2F0aW9ucyBhcmUgbm90IGFjY291bnRlZCBm
b3IgaW4gbWVtY2csDQo+Pj4gYWxsb3dpbmcgcHJvY2Vzc2VzIHRvIGVzY2FwZSBsaW1pdHMgdGhh
dCBtYXkgYmUgY29uZmlndXJlZC4NCj4+Pg0KPj4+IFBhc3MgdGhlIF9fR0ZQX0FDQ09VTlQgZm9y
IG91ciBhbGxvY2F0aW9ucyB0byBhY2NvdW50IHRoZW0gaW50byBtZW1jZy4NCj4+DQo+PiBXZSBo
YWQgYSBkaXNjdXNzaW9uIGp1c3QgbGFzdCBuaWdodCBpbiB0aGUgTU0gdHJhY2sgYXQgTFBDIGFi
b3V0IGhvdw0KPj4gc2hhcmVkIG1lbW9yeSBhY2NvdW50ZWQgaW4gbWVtY2cgaXMgcHJldHR5IGJy
b2tlbi4gV2l0aG91dCBhIHdheSB0bw0KPj4gaWRlbnRpZnkgKGFuZCBwb3NzaWJseSB0cmFuc2Zl
cikgb3duZXJzaGlwIG9mIGEgc2hhcmVkIGJ1ZmZlciwgdGhpcw0KPj4gbWFrZXMgdGhlIGFjY291
bnRpbmcgb2Ygc2hhcmVkIG1lbW9yeSwgYW5kIHpvbWJpZSBtZW1jZyBwcm9ibGVtcw0KPj4gd29y
c2UuIDpcDQo+IA0KPiBBcmUgdGhlcmUgbm90ZXMgb3IgYSByZXBvcnQgZnJvbSB0aGF0IGRpc2N1
c3Npb24gYW55d2hlcmU/DQo+IA0KPiBUaGUgd2F5IEkgc2VlIGl0LCB0aGUgZG1hLWJ1ZiBoZWFw
cyAqdHJpdmlhbCogY2FzZSBpcyBub24tZXhpc3RlbnQgYXQNCj4gdGhlIG1vbWVudCBhbmQgdGhh
dCdzIGRlZmluaXRlbHkgYnJva2VuLiBBbnkgYXBwbGljYXRpb24gY2FuIGJ5cGFzcyBpdHMNCj4g
Y2dyb3VwcyBsaW1pdHMgdHJpdmlhbGx5LCBhbmQgdGhhdCdzIGEgcHJldHR5IGJpZyBob2xlIGlu
IHRoZSBzeXN0ZW0uDQoNCldlbGwsIHRoYXQgaXMganVzdCB0aGUgdGlwIG9mIHRoZSBpY2ViZXJn
Lg0KDQpQcmV0dHkgbXVjaCBhbGwgZHJpdmVyIGludGVyZmFjZXMgZG9lc24ndCBhY2NvdW50IHRv
IG1lbWNnIGF0IHRoZSBtb21lbnQsIGFsbCB0aGUgd2F5IGZyb20gYWxzYSwgb3ZlciBHUFVzIChi
b3RoIFRUTSBhbmQgU0hNLUdFTSkgdG8gVjRMMi4NCg0KPiBUaGUgc2hhcmVkIG93bmVyc2hpcCBp
cyBpbmRlZWQgYnJva2VuLCBidXQgaXQncyBub3QgbW9yZSBvciBsZXNzIGJyb2tlbg0KPiB0aGFu
LCBzYXksIG1lbWZkICsgdWRtYWJ1ZiwgYW5kIEknbSBzdXJlIHBsZW50eSBvZiBvdGhlcnMuDQo+
IA0KPiBTbyB3ZSByZWFsbHkgaW1wcm92ZSB0aGUgY29tbW9uIGNhc2UsIGJ1dCBvbmx5IG1ha2Ug
dGhlICJhZHZhbmNlZCINCj4gc2xpZ2h0bHkgbW9yZSBicm9rZW4gdGhhbiBpdCBhbHJlYWR5IGlz
Lg0KPiANCj4gV291bGQgeW91IGRpc2FncmVlPw0KDQpJIHN0cm9uZ2x5IGRpc2FncmVlLiBBcyBm
YXIgYXMgSSBjYW4gc2VlIHRoZXJlIGlzIGEgaHVnZSBjaGFuY2Ugd2UgYnJlYWsgZXhpc3Rpbmcg
dXNlIGNhc2VzIHdpdGggdGhhdC4NCg0KVGhlcmUgaGFzIGJlZW4gc29tZSB3b3JrIG9uIFRUTSBi
eSBEYXZlIGJ1dCBJIHN0aWxsIGhhdmVuJ3QgZm91bmQgdGltZSB0byB3cmFwIG15IGhlYWQgYXJv
dW5kIGFsbCBwb3NzaWJsZSBzaWRlIGVmZmVjdHMgc3VjaCBhIGNoYW5nZSBjYW4gaGF2ZS4NCg0K
VGhlIGZ1bmRhbWVudGFsIHByb2JsZW0gaXMgdGhhdCBuZWl0aGVyIG1lbWNnIG5vciB0aGUgY2xh
c3NpYyByZXNvdXJjZSB0cmFja2luZyAoZS5nLiB0aGUgT09NIGtpbGxlcikgaGFzIGEgZ29vZCB1
bmRlcnN0YW5kaW5nIG9mIHNoYXJlZCByZXNvdXJjZXMuDQoNCkZvciBleGFtcGxlIHlvdSBjYW4g
dXNlIG1lbWZkIHRvIGJhc2ljYWxseSBraWxsIGFueSBwcm9jZXNzIGluIHRoZSBzeXN0ZW0gYmVj
YXVzZSB0aGUgT09NIGtpbGxlciBjYW4ndCBpZGVudGlmeSB0aGUgcHJvY2VzcyB3aGljaCBob2xk
cyB0aGUgcmVmZXJlbmNlIHRvIHRoZSBtZW1vcnkgaW4gcXVlc3Rpb24uIEFuZCB0aGF0IGlzIGEg
Kk1VQ0gqIGJpZ2dlciBwcm9ibGVtIHRoYW4ganVzdCBpbmFjY3VyYXRlIG1lbWNnIGFjY291bnRp
bmcuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IE1heGltZQ0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

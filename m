Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE5FA825D7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Apr 2025 15:15:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E296442531
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Apr 2025 13:15:01 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2079.outbound.protection.outlook.com [40.107.93.79])
	by lists.linaro.org (Postfix) with ESMTPS id 604D8454FF
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Apr 2025 13:14:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Ziuxw+SU;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.79 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yGfxgKvFAGgwkk6gmZOeei1K/SCTzIS9Mt/HWjv901b9OIZWtE+vMdIgVKD9Y1IgYUlC1Ydry+RklR0gwfRGbqg0nFpewAHzRgXpZEFb2ZC156J5BuLnm52tVKzUvi+MxO+3TPd2Fi/bd/OwAgC39YIjlC3MFZ2wALoXs1ZhVwr+lOT6zGF4J5OTGsrZ2Byu4Kj3ZErL1U5oiExTQ2eExGp5AmFrqVBZewWboD97Qr0BlKaBKGMah4KY7GATwOsX6dPiqobG9zP+e+Uiy4bWX/B06HIIbVxnF/9t0Gx/Dp7zWZChG3JD6mHaCt8g1ZyAKPqCvYzi/zluzvx14Ayqmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZMt8IhWXjfKKNSe/YUAi2Bwdd4Ynu5BMzPeY66KYb7k=;
 b=HRFpmKlgvhIZUEa9iLYZ6oShYvGSyDVm9eLPxl8HtZpge72fXvfskU5BGH18BlANIBOD0Ri/uWGEYFvfxNthi8txeyk7fMrkHr4iT/1/xmoXX+Lswq6cvXPt0+EuR4Gl66ndH4cNq5T5EpZUa5trdPFbgqWy50Up9otlpNVoRVirpLKoNMzkMEtnQhNKTVCWQutmof30S3PfV292KSIrbf0D1Km3mgOVnjoVC1W8OiD3E+U24yaIprBwBiFfMUUVo3ZotdZcK2TIGfulslMhm61nCbz7sBGT9/37XlbEBXUJOk10lS2hMUb1HEUVYSzwXwMVD8tNmF1GbfkLII+vzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZMt8IhWXjfKKNSe/YUAi2Bwdd4Ynu5BMzPeY66KYb7k=;
 b=Ziuxw+SUz6wk9Z0qJxeR2lPXUP81o1XEr+3qKbkvWvZR54vc5Hq/Rw8rltt7Nb+b7BHCGqcz6PAqc7DK3G190hVGnuIXNtEUrSWcLSRH+qfpEqp0mmdc4pMD4vs4s6qeaJQSMigNpbIS0ShVbA3H9gU8eAG8frwyEFfPcGt9O+0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA0PR12MB8352.namprd12.prod.outlook.com (2603:10b6:208:3dd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.35; Wed, 9 Apr
 2025 13:14:42 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8632.021; Wed, 9 Apr 2025
 13:14:42 +0000
Message-ID: <ab7d1937-d0e9-45f8-8f7d-ddd7a1a9d3d5@amd.com>
Date: Wed, 9 Apr 2025 15:14:17 +0200
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Boris Brezillon <boris.brezillon@collabora.com>
References: <20250409120640.106408-2-phasta@kernel.org>
 <20250409120640.106408-3-phasta@kernel.org>
 <20250409143917.31303d22@collabora.com>
 <73d41cd84c73b296789b654e45125bfce88e0dbf.camel@mailbox.org>
 <72eb974dfea8fa1167cf97e29848672223f6fc5b.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <72eb974dfea8fa1167cf97e29848672223f6fc5b.camel@mailbox.org>
X-ClientProxiedBy: FR4P281CA0132.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::10) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA0PR12MB8352:EE_
X-MS-Office365-Filtering-Correlation-Id: 75da6efb-51ca-475b-8897-08dd77687d4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UjBqNXgzbkhLaU5rdTVpRFRjQy9KZkhZdHMyRU9EMUxzRWQ3THRiYkRTZkds?=
 =?utf-8?B?LzNNQ1pQS285Wmx6RTVxR1ltSzRVbXhrV3ZxZTdPY0QzcEdlaVVQdld5Qks0?=
 =?utf-8?B?SUFkSk1UYWdOOXNWLzZweFNVQVpzejdyRFFXc05ST1Y0ZWt6UDJneXZQYk4w?=
 =?utf-8?B?STBhaFI0ZjNVUi80ajZWRVFJTXFrMkNkTGQ3ZHhwWUxPb2NoQWN4aE4wV2Z4?=
 =?utf-8?B?NFV4d09GcEVmQk1JdGV1aVl6Z3paM0dta0FHditZbjFXSDN5RVFTUndCWW4r?=
 =?utf-8?B?U0JlaHZ0SHRPZmpLN1pJVVEwSXVqRXRGQzFJTkFOa2ZOWG8zSmFaUWJEUWhi?=
 =?utf-8?B?S0o2OGdUOGtxQi9lbzRZZURsOEdBNkQ3MGZOQWJZMkV1Um1OVENpbjFUZDFm?=
 =?utf-8?B?M0Q1MlJlQ244b2N5MDEwSmZWdHBkYzNpTmgrTUl2NUZyVmFyTmlrM3hzcllB?=
 =?utf-8?B?NXVIcGRWcG1DcGlJQU11VVJzRVQ0V2RHajUzZW1LR2FGMVMvaDJhK05xc3ll?=
 =?utf-8?B?cENIV3dYcUZPckRkaHV1U1JaSG9XbVhJcDF1ZnhqOTh6ZVFPMnV4c1NZU2Js?=
 =?utf-8?B?ZnNWd1pPT3FCR20xR1FTTGdwNitmUWNBSWNKWmgvY3hmOVdzcUFFZHdzRmEv?=
 =?utf-8?B?WGthUmJuL1U4SExTZWNGYmJ4WVp0MzY5U3FIOVNnOVo2cFcwclZOZFB3a29M?=
 =?utf-8?B?L1B1YWFzVVhhcmt3QUxxU2p3SUUrNmt0Y2Zna2VLOVZSbFl1OTRXSVJqSjYy?=
 =?utf-8?B?R1Zwc29aWEdrLzB0RVdxZ2RkeExqSFVyOGF6OXl3ZzVvYVhOKy9rd2VQU0Nw?=
 =?utf-8?B?OGhOZ0VtUTdsOUdHd3V5cUJmZWVTS2VGMG9xL01JWmRJbHRkRklLbFV1UVZP?=
 =?utf-8?B?bk4yWGRDVngxZzViTEs4V1Y0cnNpeXIrb29QL0J6aGtiemxPYjkxRUdrOEov?=
 =?utf-8?B?VmFlVldjUnVUWXdTK2VxVzhlSkZUbjd2eFRraU5FKzl1YjBhRDE0Y0JodG9W?=
 =?utf-8?B?dTFwQlI0L2tINm93NVlEVk8wRGovT1pNOXBHTzBhaTdIMHJDT2pxMFBobGVo?=
 =?utf-8?B?ZXI2eS8zbEtDci9ZVjlxQXY3bXY5YkNjY1RkZXEwOEpDZlRxbXNOTkdvcFVt?=
 =?utf-8?B?SWZZVm5ObHVyeEo3T0tJekZWQi9ITDkya2UvdXF5RWpxeCsrK0Fsa2JiTC9a?=
 =?utf-8?B?Z09CaCt6dlo4NFZLUWVtaitwenhrYU9tVE41QStVY1RHTG81UEsyOGw0T25K?=
 =?utf-8?B?cVl6MGdibVAvbXlTeXNZaUZ0ME5ESk5IQk9LSWU0YzlrSlAyQlpIZytCNm9v?=
 =?utf-8?B?TWZoRmdtcUNCeE5Mb2xINks4MUdNeVpCWDdlS2NmaFNoQWdEZXhWVkI3akJl?=
 =?utf-8?B?L2liYldyYmxvZUZNOHpiRFBuNXRTS0hHSndoeFpwVWpIK0h1QVlXaVRCQjg2?=
 =?utf-8?B?L0dHeVg4RWpIZ2xwb0s2VGlQRmpqKzJIY1Qxd2F0bDhiUEduMk9kTWIzUmRl?=
 =?utf-8?B?WGQrQjd2cnFXUFZCdFExZE1kclFvWTlxZHZvTTN1TTd1WFlRRE4wM09Xc3Z3?=
 =?utf-8?B?Qjg1OWlwNFQ5MEppbkoremNoWk9GT0I5MjdSSjE1S3V1VVhtUDYrL3RGVm9C?=
 =?utf-8?B?QTc1MTdrbkRsS1dlR3RJZ3k2N21BeElxeEdrZEROMVhHa3VIOFpOeVVOdjhk?=
 =?utf-8?B?L2ZrS01SK3VVbGZGSU10dkJUa0QzbE04dE9nTDlCK0N5eGJ2RXRBMGEydGdL?=
 =?utf-8?B?NkJKR1N6UysvMjFSMFQxYk5sbEo4NGR2dTcvcnBhQ0xFMkt0OHFDdHFQajYr?=
 =?utf-8?B?eXpnaGoxUGN1OCtJaEpqd2VucnVudVBaLzk2NHE3OWJlWDAxbytJWHpkSGdN?=
 =?utf-8?B?bFg3T2RQcGpycTltSi9vS1FlYjh4dUMvSDBRL2xqNXVhdm1IbEJWd3J5dEUw?=
 =?utf-8?Q?3zvaB5TSbLY=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SFVXQlJLTHpjNzJoYi9mWVhiZmNYaDZFa1RoZS9Jc2FkOFpwWnJHQnNTOVNt?=
 =?utf-8?B?TTRUSGlkZElpcVpIaFFrQ3lrOGFVM0VhUEdhL2NxZ2M5R1ZHMHlxci9iMnpG?=
 =?utf-8?B?cFRSeWh2ekYxdy84Rld4SmFpMDg5aUJMRXNpNHlzWndCbEZnazhURFBnM25z?=
 =?utf-8?B?bEV5N1lpM24yR2Qwd25HS202Yis0MkU3SXJwTFFNNVJteStkS3NoYUh6SzdR?=
 =?utf-8?B?NzlWc05yZ2lPRXBML3ZERW5KUWtnQWt5V1QyRHlVQ2h1VXlGV2RnNUpDRWVI?=
 =?utf-8?B?NWJrRlN5U3p4MytYa2Q4L3ZTZFBNSG9nOUZBZGNLY2hQaG02aG9UUlRSNkJh?=
 =?utf-8?B?cTlYZ3NsTmdvL0prSU4xUXgzYlJBL1cwMW1xVDE2SEEwWDduRGFQYXpORUpE?=
 =?utf-8?B?MSs4ZTZsK0Y2T1FtK0FPQkJzcHlGZDBWa29lcWNJZDNaNFdTVTUxNDkzU1Rn?=
 =?utf-8?B?TGpPd0FKekwvWVNCaWFsVUQyR1cxby94RStHM1djMk5ydUdTdm1FK3N3bkFE?=
 =?utf-8?B?dFBHb1hYZnBvZHRRZWgzTzRzNDB5Z0twM0Y4Y205ZWU1NU9mamFEYmpzaWxL?=
 =?utf-8?B?SkJaSzZ3cFU2Q3F5R3NXaHU3WFdJMnRpbWNFTkl1ODZEb2JmQWxaZkZST2l2?=
 =?utf-8?B?QWJVYktDWDIzc3BZU0krRDd4RVJNQzFqQkoyK1lDb0oxTSs5Qk9xclNkY1pH?=
 =?utf-8?B?cTlmUlNlall4clBnaFRjUC8xRWsxWTRZclFqV2UwUGV2Y0p5NVZxeGNGZG1m?=
 =?utf-8?B?dDQwUVJzWlFIZWhKUmUyYXI0V3lkSU5kc3ZWZGFhNzRZSnUwQmMwZ1hzZWZ0?=
 =?utf-8?B?UzVPSGkyQTNuUkVkUFlUYnh4cGtXU0hsRXEyVnlmM0srMnVpem9YT3B2bWhH?=
 =?utf-8?B?aGVMSGsyYUlkak52UjI2WjdhMndWNTlSNS9wdWZwN1VhVG01clo4WExoNVk5?=
 =?utf-8?B?UmtqaTlxVDhiMUlqa1RPNjZ2cnNxNUVHMmRwalJYWEJTMkpDRmlLTDZqRk03?=
 =?utf-8?B?bUh3M0ZKNjNRN3k3clVuK0V4OFJuNmhBOFRhSWtVY1VZc1NJUVpLQlB2MWRr?=
 =?utf-8?B?ckp2NXR2RmxGZ09ZdlVVdWdTRHpOQ2ltd0I2aE8yU04xYmNNM29GS25XZUxy?=
 =?utf-8?B?NHhLRlNXSFBReGdNbm9mQnlUMEMzUjJHalhKb0hEUGl6bWRkdndjUHFvUHBK?=
 =?utf-8?B?U1VRV2M5WUhDUnVDY0dOeFY4ay94WitjcjhsSFZ3eGhBQ3E0blplNXlVbHg0?=
 =?utf-8?B?NFBIeSs3UVZlTjRheWM1UnIvdzIyZS9BSGVnVE1nY24wdHVLWC9KTWRJMnph?=
 =?utf-8?B?KzFpYithVkl2MFdEdEJLQ1RINDRDZmNjaXVxTDNUTHM4SjFOd1hYbEl0ZWw1?=
 =?utf-8?B?VGQ5RDJFYjFrUlk4ZmVzNlJlYm1pakJLcENKSTU1OTdSQXU0MU9VeGpmdHpu?=
 =?utf-8?B?QjFKTDdhd04ySjZOY3dPaS85RXZwTkZGUmxJczVMdXNlMGZIODMrQ28rZjVs?=
 =?utf-8?B?cVgvQ1FURzc1TFhtbEVkU1ZmdEhEK0plT1hEclhZVUIxYnU2TVp0alh4ZDdr?=
 =?utf-8?B?Q2trclN5eEptSWdwWGMvdWt4amowZWlTYWpENjlSclRvb1BrbEVjZDVRREk2?=
 =?utf-8?B?UGc4RTdLTFExZmV2QzJaQ3VPMVN6RTNGdU9uVnhZMmZnLzhWTlFGbExXclJO?=
 =?utf-8?B?OTBQWWJsc0hKYVUzaG5nbHJqK2g4V0paektwRzRKd2tjaWhsd0RnWmUrT1Fo?=
 =?utf-8?B?VDFjb1JLQ2hHc0YwRW1CMFFOdnVUZ3hpL1BQbElNQlUwcDJVZzRkYU1YZzcv?=
 =?utf-8?B?VXZPZk00bWNhWHBIOFd3WXpvR0ZRQXFRYnBXd1dOOTR0SVd2anRUMVhmMnhy?=
 =?utf-8?B?WXZXaUljY1pLU09nSnh6TDg1NVQ4S2xLN01na3RzQndvYjJmdUpCUEZYZHp3?=
 =?utf-8?B?b0toNStFUXFEL0hKdTgzODFxa3ZwbzhtdmpENnpFS29UeVppRU5xaUc3czVM?=
 =?utf-8?B?VDBNalBIaXF3UUxFNFJrUkMvQXNIZWRQSFU0SHF0cWJlTzNCNFh2TEFiNjB5?=
 =?utf-8?B?aTlkSTRsMW5wSjB0WFl4cWJWeWFHZDlrdU5mODY0WklFZ1lnMHdTa2Ewb1do?=
 =?utf-8?Q?r8gw=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75da6efb-51ca-475b-8897-08dd77687d4e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2025 13:14:42.2808
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cwf+4Ijyeu9sD7MROrsq1lN1XEEQrMsc2l+l2+likNJmA+nXh7J80XOHgLCckfIQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8352
X-Rspamd-Queue-Id: 604D8454FF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.79:from];
	RBL_SENDERSCORE_REPUT_8(0.00)[40.107.93.79:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TAGGED_RCPT(0.00)[etnaviv];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,padovan.org,amd.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,pengutronix.de,armlinux.org.uk,intel.com,ursulin.net,imgtec.com,poorly.run,quicinc.com,somainline.org,redhat.com,arm.com,igalia.com,broadcom.com,basnieuwenhuizen.nl,gmx.de,linux-m68k.org,linutronix.de,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.93.79:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received];
	RCPT_COUNT_GT_50(0.00)[79];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: OQAMSLBXW3V7S2DEKAPDEBZVFFG2N73R
X-Message-ID-Hash: OQAMSLBXW3V7S2DEKAPDEBZVFFG2N73R
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Xinhui Pan <Xinhui.Pan@amd.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Russell King <linux+etnaviv@armlinux.org.uk>, Christian Gmeiner <christian.gmeiner@gmail.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, Qiang Yu <yuq825@gmail.com>, Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Marijn Suijten <marijn.suijten@somainline.org>, Lyude Paul <lyude@red
 hat.com>, Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>, Matthew Brost <matthew.brost@intel.com>, Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>, Melissa Wen <mwen@igalia.com>, =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, Zack Rusin <zack.rusin@broadcom.com>, Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Yang Wang <kevinyang.wang@amd.com>, Jesse Zhang <jesse.zhang@amd.com>, Tim Huang <tim.huang@amd.com>, Sathishkumar S <sathishkumar.sundararaju@amd.com>, Saleemkhan Jamadar <saleemkhan.jamadar@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Lijo Lazar <lijo.lazar@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Ma Jun <Jun.Ma2@amd.com>, Yunxiang L
 i <Yunxiang.Li@amd.com>, Eric Huang <jinhuieric.huang@amd.com>, Asad Kamal <asad.kamal@amd.com>, Srinivasan Shanmugam <srinivasan.shanmugam@amd.com>, Jack Xiao <Jack.Xiao@amd.com>, Friedrich Vock <friedrich.vock@gmx.de>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <mdaenzer@redhat.com>, Geert Uytterhoeven <geert@linux-m68k.org>, Anna-Maria Behnsen <anna-maria@linutronix.de>, Thomas Gleixner <tglx@linutronix.de>, Frederic Weisbecker <frederic@kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, etnaviv@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, lima@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org, virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-fence: Rename dma_fence_is_signaled()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OQAMSLBXW3V7S2DEKAPDEBZVFFG2N73R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMDkuMDQuMjUgdW0gMTQ6NTYgc2NocmllYiBQaGlsaXBwIFN0YW5uZXI6DQo+IE9uIFdlZCwg
MjAyNS0wNC0wOSBhdCAxNDo1MSArMDIwMCwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPj4gT24g
V2VkLCAyMDI1LTA0LTA5IGF0IDE0OjM5ICswMjAwLCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6DQo+
Pj4gSGkgUGhpbGlwcCwNCj4+Pg0KPj4+IE9uIFdlZCzCoCA5IEFwciAyMDI1IDE0OjA2OjM3ICsw
MjAwDQo+Pj4gUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVsLm9yZz4gd3JvdGU6DQo+Pj4N
Cj4+Pj4gZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKCkncyBuYW1lIHN0cm9uZ2x5IHJlYWRzIGFzIGlm
IHRoaXMgZnVuY3Rpb24NCj4+Pj4gd2VyZQ0KPj4+PiBpbnRlbmRlZCBmb3IgY2hlY2tpbmcgd2hl
dGhlciBhIGZlbmNlIGlzIGFscmVhZHkgc2lnbmFsZWQuIEFsc28NCj4+Pj4gdGhlDQo+Pj4+IGJv
b2xlYW4gaXQgcmV0dXJucyBoaW50cyBhdCB0aGF0Lg0KPj4+Pg0KPj4+PiBUaGUgZnVuY3Rpb24n
cyBiZWhhdmlvciwgaG93ZXZlciwgaXMgbW9yZSBjb21wbGV4OiBpdCBjYW4gY2hlY2sNCj4+Pj4g
d2l0aCBhDQo+Pj4+IGRyaXZlciBjYWxsYmFjayB3aGV0aGVyIHRoZSBoYXJkd2FyZSdzIHNlcXVl
bmNlIG51bWJlciBpbmRpY2F0ZXMNCj4+Pj4gdGhhdA0KPj4+PiB0aGUgZmVuY2UgY2FuIGFscmVh
ZHkgYmUgdHJlYXRlZCBhcyBzaWduYWxlZCwgYWx0aG91Z2ggdGhlDQo+Pj4+IGhhcmR3YXJlJ3Mg
Lw0KPj4+PiBkcml2ZXIncyBpbnRlcnJ1cHQgaGFuZGxlciBoYXMgbm90IHNpZ25hbGVkIGl0IHll
dC4gSWYgdGhhdCdzIHRoZQ0KPj4+PiBjYXNlLA0KPj4+PiB0aGUgZnVuY3Rpb24gYWxzbyBzaWdu
YWxzIHRoZSBmZW5jZS4NCj4+Pj4NCj4+Pj4gKFByZXN1bWFibHkpIHRoaXMgaGFzIGNhdXNlZCBh
IGJ1ZyBpbiBOb3V2ZWF1ICh1bmtub3duIGNvbW1pdCksDQo+Pj4+IHdoZXJlDQo+Pj4+IG5vdXZl
YXVfZmVuY2VfZG9uZSgpIHVzZXMgdGhlIGZ1bmN0aW9uIHRvIGNoZWNrIGEgZmVuY2UsIHdoaWNo
DQo+Pj4+IGNhdXNlcyBhDQo+Pj4+IHJhY2UuDQo+Pj4+DQo+Pj4+IEdpdmUgdGhlIGZ1bmN0aW9u
IGEgbW9yZSBvYnZpb3VzIG5hbWUuDQo+Pj4gVGhpcyBpcyBqdXN0IG15IHBlcnNvbmFsIHZpZXcg
b24gdGhpcywgYnV0IEkgZmluZCB0aGUgbmV3IG5hbWUganVzdA0KPj4+IGFzDQo+Pj4gY29uZnVz
aW5nIGFzIHRoZSBvbGQgb25lLiBJdCBzb3VuZHMgbGlrZSBzb21ldGhpbmcgaXMgY2hlY2tlZCwg
YnV0DQo+Pj4gaXQncw0KPj4+IGNsZWFyIHdoYXQsIGFuZCB0aGVuIHRoZSBmZW5jZSBpcyBmb3Jj
aWJseSBzaWduYWxlZCBsaWtlIGl0IHdvdWxkDQo+Pj4gYmUNCj4+PiBpZg0KPj4+IHlvdSBjYWxs
IGRybV9mZW5jZV9zaWduYWwoKS4gT2YgY291cnNlLCB0aGlzIGNsYXJpZmllZCBieSB0aGUgZG9j
LA0KPj4+IGJ1dA0KPj4+IGdpdmVuIHRoZSBnb2FsIHdhcyB0byBtYWtlIHRoZSBmdW5jdGlvbiBu
YW1lIGNsZWFybHkgcmVmbGVjdCB3aGF0DQo+Pj4gaXQNCj4+PiBkb2VzLCBJJ20gbm90IGNvbnZp
bmNlZCBpdCdzIHNpZ25pZmljYW50bHkgYmV0dGVyLg0KPj4+DQo+Pj4gTWF5YmUgZG1hX2ZlbmNl
X2NoZWNrX2h3X3N0YXRlX2FuZF9wcm9wYWdhdGUoKSwgdGhvdWdoIGl0IG1pZ2h0IGJlDQo+Pj4g
dG9vIGxvbmcgb2YgbmFtZS4gT2ggd2VsbCwgZmVlbCBmcmVlIHRvIGlnbm9yZSB0aGlzIGNvbW1l
bnRzIGlmIGENCj4+PiBtYWpvcml0eSBpcyBmaW5lIHdpdGggdGhlIG5ldyBuYW1lLg0KPj4gWW9h
LCB0aGUgbmFtZSBpc24ndCBwZXJmZWN0ICh0aGUgcGVyZmVjdCBuYW1lIGRlc2NyaWJpbmcgdGhl
IHdob2xlDQo+PiBiZWhhdmlvciB3b3VsZCBiZQ0KPj4gZG1hX2ZlbmNlX2NoZWNrX2lmX2FscmVh
ZHlfc2lnbmFsZWRfdGhlbl9jaGVja19oYXJkd2FyZV9zdGF0ZV9hbmRfcHJvDQo+PiBwYQ0KPj4g
Z2F0ZSgpIF5eJw0KPj4NCj4+IE15IGludGVudGlvbiBoZXJlIGlzIHRvIGhhdmUgdGhlIHJlYWRl
ciByZWFsaXplICJ3YXRjaCBvdXQsIHRoZSBmZW5jZQ0KPj4gbWlnaHQgZ2V0IHNpZ25hbGVkIGhl
cmUhIiwgd2hpY2ggaXMgcHJvYmFibHkgdGhlIG1vc3QgaW1wb3J0YW50IGV2ZW50DQo+PiByZWdh
cmRpbmcgZmVuY2VzLCB3aGljaCBjYW4gcmFjZSwgaW52b2tlIHRoZSBjYWxsYmFja3MgYW5kIHNv
IG9uLg0KPj4NCj4+IEZvciBkZXRhaWxzIHJlYWRlcnMgd2lsbCB0aGVuIGNoZWNrIHRoZSBkb2N1
bWVudGF0aW9uLg0KPj4NCj4+IEJ1dCBJJ20gb2YgY291cnNlIG9wZW4gdG8gc2VlIGlmIHRoZXJl
J3MgYSBtYWpvcml0eSBmb3IgdGhpcyBvciB0aGF0DQo+PiBuYW1lLg0KPiBob3cgYWJvdXQ6DQo+
DQo+IGRtYV9mZW5jZV9jaGVja19od19hbmRfc2lnbmFsKCkgPw0KDQpJIGRvbid0IHRoaW5rIHRo
YXQgcmVuYW1pbmcgdGhlIGZ1bmN0aW9uIGlzIGEgZ29vZCBpZGVhIGluIHRoZSBmaXJzdCBwbGFj
ZS4NCg0KV2hhdCB0aGUgZnVuY3Rpb24gZG9lcyBpbnRlcm5hbGx5IGlzIGFuIGltcGxlbWVudGF0
aW9uIGRldGFpbCBvZiB0aGUgZnJhbWV3b3JrLg0KDQpGb3IgdGhlIGNvZGUgdXNpbmcgdGhpcyBm
dW5jdGlvbiBpdCdzIGNvbXBsZXRlbHkgaXJyZWxldmFudCBpZiB0aGUgZnVuY3Rpb24gbWlnaHQg
YWxzbyBzaWduYWwgdGhlIGZlbmNlLCB3aGF0IG1hdHRlcnMgZm9yIHRoZSBjYWxsZXIgaXMgdGhl
IHJldHVybmVkIHN0YXR1cyBvZiB0aGUgZmVuY2UuIEkgdGhpbmsgdGhpcyBhbHNvIGNvdW50cyBm
b3IgdGhlIGRtYV9mZW5jZV9pc19zaWduYWxlZCgpIGRvY3VtZW50YXRpb24uDQoNCldoYXQgd2Ug
c2hvdWxkIGltcHJvdmUgaXMgdGhlIGRvY3VtZW50YXRpb24gb2YgdGhlIGRtYV9mZW5jZV9vcHMt
PmVuYWJsZV9zaWduYWxpbmcgYW5kIGRtYV9mZW5jZV9vcHMtPnNpZ25hbGVkIGNhbGxiYWNrcy4N
Cg0KRXNwZWNpYWxseSBzZWUgdGhlIGNvbW1lbnQgYWJvdXQgcmVmZXJlbmNlIGNvdW50cyBvbiBl
bmFibGVfc2lnbmFsaW5nIHdoaWNoIGlzIG1pc3Npbmcgb24gdGhlIHNpZ25hbGVkIGNhbGxiYWNr
LiBUaGF0IGlzIG1vc3QgbGlrZWx5IHRoZSByb290IGNhdXNlIHdoeSBub3V2ZWF1IGltcGxlbWVu
dGVkIGVuYWJsZV9zaWduYWxpbmcgY29ycmVjdGx5IGJ1dCBub3QgdGhlIG90aGVyIG9uZS4NCg0K
QnV0IHB1dHRpbmcgdGhhdCBhc2lkZSBJIHRoaW5rIHdlIHNob3VsZCBtYWtlIG5haWxzIHdpdGgg
aGVhZHMgYW5kIGxldCB0aGUgZnJhbWV3b3JrIGd1YXJhbnRlZSB0aGF0IHRoZSBmZW5jZXMgc3Rh
eSBhbGl2ZSB1bnRpbCB0aGV5IGFyZSBzaWduYWxlZCAob25lIHdheSBvciBhbm90aGVyKS4gVGhp
cyBjb21wbGV0ZWx5IHJlbW92ZXMgdGhlIGJ1cmRlbiB0byBrZWVwIGEgcmVmZXJlbmNlIG9uIHVu
c2lnbmFsZWQgZmVuY2VzIGZyb20gdGhlIGRyaXZlcnMgLyBpbXBsZW1lbnRhdGlvbnMgYW5kIG1h
a2UgdGhpbmdzIG1vcmUgb3ZlciBhbGwgbW9yZSBkZWZlbnNpdmUuDQoNClJlZ2FyZHMsDQpDaHJp
c3RpYW4uDQoNCj4NCj4gUC4NCj4NCj4+IFAuDQo+Pg0KPj4NCj4+PiBSZWdhcmRzLA0KPj4+DQo+
Pj4gQm9yaXMNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==

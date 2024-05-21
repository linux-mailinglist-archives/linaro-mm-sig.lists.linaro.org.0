Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 537AE8CB396
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 May 2024 20:37:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A7C443C20
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 May 2024 18:37:21 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2057.outbound.protection.outlook.com [40.107.94.57])
	by lists.linaro.org (Postfix) with ESMTPS id 47D8D3F4A1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 May 2024 18:37:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=5XWZEw0w;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.94.57 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XdiH6pmzqWbxzWMQFHJ0I13489aNsiM/Mx5HtNaziHCxVZ2/+7U2OunXL+Vd7tBYAjf/VbVfDM/Cc6RNjK95r3Cg4UElJMpIZCeI07hzA6Xq8C5cC4pBgTDvUiUFTMx/fFdxlTiVQsUdLpnPuhLeGE3+82hj36oEqoc9qAmUQK5RZVYehTmOkuGuPpjScVPKOTYyhXkQ5F8fFAWDkudMU5hiOYUetB5bzsgnW3A4xi+JjBX5NKNMAuYXowexbq9LAj8GM5VdeSDnJ46HDE9lHtqlh1lkTyxseyQ4V1haKKVnFBxOmizknCPMDh53wwzHvtw3br5HUbmUOQZyUZWiqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K6/mx6bGHrUqhXAtKRG94+c9S8aT9dbM498RzyImKPY=;
 b=QkFarlsQstNX0+bSEycqCUjPXW3oioWQCSpdkABoK546cS8qUvfgKT3XgSAJPBjbn4BG2gyknZ/YHoYW6/Cu/oqVcUXsh1zWaP+BZ13xtif3hf0QW+4NIZbYKnMx9wRfj9OfCi7FIPAuztnCwFqwQWPUT9ue9YHTbs/A5G0AW5QyW0vKftOLpyIaDyERvePZXUwSccg/FLDcKBe70Q8Iewm3Rk5AE0G4YbDbIBCqofqJCTf1hiB8fNdbzKKXJ0Ymelean4X9m0M/pmLpFxa4gUXt05X8mWHP3CbJCOj51wbwIkQLzjpgbSw+y7aoiXPUukqFgxJTOshpkjQ2I1EaMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K6/mx6bGHrUqhXAtKRG94+c9S8aT9dbM498RzyImKPY=;
 b=5XWZEw0w0ftX9MfHAuehzQ2UmqDf/kqo/6vS9Q3Zwg7VR6bUnFsM4/RQN8701MI6rSmVQP95969yuBXBJUOQaljAApJ7HYssH2o9y0Q+Hgb1YXFGvI5OczHdPB0FXV3yspo4+QPlJwHJWPRTtGPeUhN+TF0HvHbakXNFcWl4Z3Y=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB6042.namprd12.prod.outlook.com (2603:10b6:208:3d6::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Tue, 21 May
 2024 18:37:06 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%2]) with mapi id 15.20.7587.030; Tue, 21 May 2024
 18:37:06 +0000
Message-ID: <cef8f87d-edab-41d8-8b95-f3fc39ad7f74@amd.com>
Date: Tue, 21 May 2024 20:36:55 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
References: <20240515112308.10171-1-yong.wu@mediatek.com>
 <20240515112308.10171-3-yong.wu@mediatek.com>
 <98721904-003d-4d0d-8cfe-1cecdd59ce01@amd.com>
 <779ce30a657754ff945ebd32b66e1c644635e84d.camel@mediatek.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <779ce30a657754ff945ebd32b66e1c644635e84d.camel@mediatek.com>
X-ClientProxiedBy: FR4P281CA0042.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c7::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB6042:EE_
X-MS-Office365-Filtering-Correlation-Id: ced9a95c-6790-4313-df46-08dc79c503e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|7416005|376005;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TGNpQ2U5UHRVcHdJbDZEMytaOEZHU1gyWlZUejJ3NTR3Q1lvOG4yNlZRbzhy?=
 =?utf-8?B?TldlcTFhU0pJanpBS1R5c0V3Vmd3Nm8xeVFqT0JvVC9jMDZ2a0pSbUI0R2Z2?=
 =?utf-8?B?VHhLUDkrNTY1ZFVOMk5DYTlMT2lPZy8rWFFYL09BMVN0Y2FwK0wzSlFWQXRq?=
 =?utf-8?B?WE1UbGxxenZJSnBrVjNvQW96TElET0dqYmw4UDd4azNaTkxLZ2JnaHo0YlBq?=
 =?utf-8?B?ajlUSzZOc1hkczNnRXFINUN5L3NZUDl3M0J4OW1jZlJld25VazdJUVFKMVNY?=
 =?utf-8?B?VytUQk9YOWpXTFlTTTVJUUl5SDdubWJoMTB5N1NUWU9IclJKaGJzd05tb21s?=
 =?utf-8?B?NDlXMXBxMktJUTkxM0g1aVNhZmhjTkYxb00wVStTL1FsYUlWYW9oQXFUUEV5?=
 =?utf-8?B?dWRuMzhzQXQxdGpjMEJWYW9FNGlkbnZKYisrcnpUbi9Hem9INFZyOGpHejZE?=
 =?utf-8?B?dU1zN0kzc2dPQkVkUU9rU0VVU01ObVlRaC92bCtOY2phdWlCeHZyOERYdnd3?=
 =?utf-8?B?ajQ1NjQ2dWJJdmh6SEppa2U3b0F0cGRrNHFyKzhJSXRmcHFseWlnZk91bUlF?=
 =?utf-8?B?cGFLSnIrZmg1YmtWMnh3R0p3WGptZ0IwU3RxK21pTCsvRlloQjZObGlBVkZp?=
 =?utf-8?B?dnlNWG5mTGpBbkdjUXd3eHFFbTBUT05heUVZdjF1MnFra3FhWWNFUFZTWHd2?=
 =?utf-8?B?QzJmT0hZNVd2VnRoT1NML29Ebm5pbnhpdlNoT1dKa0VxbFNHTWlPRU1FVEVt?=
 =?utf-8?B?TjYrZ3h2RXlGandjZUxEZDAzaGhBZFlBbUhNR1hqbHNqZjJsQ1JVZjhrVi9R?=
 =?utf-8?B?aTRUb0svYmVDY25IY1FMUVVkMXZhREpGOW5OaURWd0sya1pQdHhpQjZseWxu?=
 =?utf-8?B?VnBRR2h6OUtFVHc3VG5ybm1kaFBZNmZpemE1RTE2Z0dvQkpWbURORDBvK2ZQ?=
 =?utf-8?B?MFo4S1RoZnBLKzhJb0FNUHpzMi9ZcmNNcy9HbEIxOU1zNU4wdG5uWk40cHBr?=
 =?utf-8?B?K2NKTXhHSGMzZ0hYYXpIV3BYSGx4elU2dFYvcHVOMjdZVEZDN0pLQzdCbE5O?=
 =?utf-8?B?S0luNTMwSnRCRjY1V2tYRXhxdVlBMHFRcFg2QUwzeXlyRS8ydUNsYlFkTnFV?=
 =?utf-8?B?Zmw2T3R4QnMzMFRYVUsrcit3TTlqT3NaSzE4S0NtZDBrUTI1OG5nSFdjN0hQ?=
 =?utf-8?B?Q2UvZFFmSXFGM3UxRDR5SUNRUGxGMXFEcWlVL2NpTjgwdDdQNWdLTStrNENv?=
 =?utf-8?B?M05aNi9obFk3cEdaL1hMemY5RjI0WnZpUDgycDBRQ1JPc3hTcHQvL01SaUxt?=
 =?utf-8?B?dWs3WlRmTjNzNEtML1NFK1RBSElEWnNwZHhnSHl6cnVjVWM2Z3Z5cnRhaGV2?=
 =?utf-8?B?TDFYRWZySWphaUhKL0V3dU9kUCtWblVtWXNodkZPcnhUdERuK0tnNWs1M0ZS?=
 =?utf-8?B?eHV6bGxpbTNVZnlZRDVxM1VQNmxIOWZaR1VhM0ZFK2lRZHNnckZseTRLQmg1?=
 =?utf-8?B?MlgyNG1mOVlrb3c1dzZoYmx5cVBlWlZKUEs5WFE0ZENneVZUSjJ4TUdKS2FT?=
 =?utf-8?B?T0FwVVc0M09FVkd2NGVmcklTUWdyRGQzenE5Y3U3L2F3cGUxSGsvVFA2ejFP?=
 =?utf-8?B?OHpUSWQ2aXFtK2s0VENjbzl3UlByV3BHYXdFYU4xMEY0VHVxNnd3Tnp4UXkx?=
 =?utf-8?B?ZndsRDJSL0g1NGhTR1ZoV2kwdlB0ZUJZSTRhSEZiK0xQekhvT01HTVZBPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(7416005)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VHEwZDFFdkZsMVc5anNDVElGdHNJcTlpMG10UGRJMHBCOXhtTkI3UC8vc3NY?=
 =?utf-8?B?Sm4zOHQwcjJ3NWpyajV2b1hQSGgzZEluc1diOFF6OEpjM2VaaTBzQTF5Ry94?=
 =?utf-8?B?dGRCMlhCYjgrZ0d2d1I0TWl5T2htczY4OVFHWW5qaVEvTE9remF4K2ZsZ21a?=
 =?utf-8?B?dEhyaHRFMFNvNzVXWDdxSFVkcXlwK0x2SENaN0RqUVF3NjE1bklzN1preWJR?=
 =?utf-8?B?MEkwaU1ZZE9ORkloUkxFS2htSWxHSVpEWU9OY29KSmsrUy8zbyt2c0l4WW1j?=
 =?utf-8?B?Mk81UEVYYmU1dHdXdUZsZUdJS0FKa1c1cVZxci95WHM1V3czQnREaFNUZk8z?=
 =?utf-8?B?SFVoZUdnMXVWK3VvblNyY2tvNkZnWkpMNTVFZklKSCt4ZWQrdVJydEdabjRT?=
 =?utf-8?B?WCtjT29FdkF2Qlp4N0xyNnpac1ErYlZ2ektMZk11Q3dQZGRBVzlZamxrcmo5?=
 =?utf-8?B?dTJMVWQzQm5yRytBSVIwR2RsWE1LWjJRN1pnWkZCcXF0MkN4TjFBdmRlWmVP?=
 =?utf-8?B?Y01NS2I4bzBXYU5jYTQ1MEVYcTBmaytaMW9aK3o5QXJIZWYybjZiYWNZMksz?=
 =?utf-8?B?czZpT2w4emxYWncvT3BHTG9VNmxFNWZYdzVIT3Y2a2IxMnZUZVhzblY0UTFh?=
 =?utf-8?B?LzVOSHhCcC9CUk8xaWdtdzNVOUJEY0ZwV3U3cUlZRERjQ0ttYUZIMlFNL2lT?=
 =?utf-8?B?c2hLdk8rKzhkaXdFTCthbjJaSWFIQnpmaGMydTBnRlF2a1lLUTZ0bDhRWDlD?=
 =?utf-8?B?eEZkSURvR25ZWWpXc3VIbWNQWlVOd0hoNzZsci96QnNvdFpPQWR1WFhwVXRM?=
 =?utf-8?B?TzdKclN3VHpnMTN6Y0wzbDl3UDdEUDFNK3ZGZnI2K3laejZFVXJTaEtDdkhx?=
 =?utf-8?B?WHRxMjZXSVUvM2ZaUmFEbXY2cnZYZXZqZ25nYkgzZWJUeVJWV0MzR3BSZUVR?=
 =?utf-8?B?L3ZrcTloTGdDcEd1d0YxRStwNk5HRDhaV1I2SDJYUUdlUWkwK3doeERWNjEw?=
 =?utf-8?B?dSsya0o5a3U3RTFYbGU5dWFscWtnRVRQdFhyd3lKK1prbE1JcklWVzg1WkVj?=
 =?utf-8?B?VDNEZnJVWThJUndTbTl6Mzc4VDRRT2ZuY1ZIWi95UmphdndMSVhGRllCTnNj?=
 =?utf-8?B?UlJWOGRCdVhaTVVYbFlRWTJhL25QTlJ1dllNYzFhU3dteStUVE1hUWpmcEJk?=
 =?utf-8?B?RmQyeUN6RitqaVRpYzdnS2RQeUQyYTYzVCs0ZFp5WlVwdXJTSUNlVUxIaFdW?=
 =?utf-8?B?T245QjN2RXZ4YWZlVDMvNG5JeHpUbEdtU0dCZ283bFJtM05BMTdUaXYwenBl?=
 =?utf-8?B?dHRNT3BIRVl3RTZ2K1FCQ3hrY0pqUmxldFRqOEplQVA4WE0yL3M1OVZCQTN1?=
 =?utf-8?B?SlVoV0VkL0dsS1hzQzZPUDNxbzhsTDdmNjU4YTZnVGJjV1hpd0oySS9tQ2w0?=
 =?utf-8?B?dlptRmp3R3dieE82QXNMTW1wYVVnUlllM3B3OTdXTnBUVzVHOXpIblA2dlI5?=
 =?utf-8?B?ZVVKZlBadmpxeWtmYXdtNlIwdUQ3L0ZpaWdvRWd2ZlVaU0ZPWVFHbllIeXU2?=
 =?utf-8?B?c3FaZDV4aEsxY3NhQS9TOFJOWjZnOUVSckxWRW05c0VyWmk1WFJGNDVkQ0tp?=
 =?utf-8?B?VjRLWnkzbkJCTlBrb29kUXdKNG45NE1QL2xPTkc4ZnVvbGN2ZTNObHFSK2Fy?=
 =?utf-8?B?TmNtRTZDZDhSZFJvMEVqbTRWanI1bFJnWnA2VVBibXE3NzBqMUpOT0NRaFJQ?=
 =?utf-8?B?Z3FOUGNTMWlybkd0SG1XblpuTnpwdm1DQ2hQbHFuMkxHUXFaQWNpRjlKVkJj?=
 =?utf-8?B?OEx2SWpiZSsvSHQvK3g0MS9NMEY5L3dnRDNOTk16c1p1cVJpRHY5M09QdmVW?=
 =?utf-8?B?ZHJuY3o1dmo0dCtzSjBpSFc2RkQ3Sys5NWNCM1FrRmdhN3dNT3BWNHJMdTJN?=
 =?utf-8?B?WWtLd2F2b3VteTU5SEZQeXBJVy9xVzRrc0JHS29FdmhzVUcrZnFJb2I3WFlN?=
 =?utf-8?B?a3VDWjN4SDJaYmh3d3JBR3ZOK0pFWEV0RU5SUW00aVI0Q3Y3RXcrNnk0d0ZP?=
 =?utf-8?B?cVdScmoxczlWNUtrc0VzL1JNUkhvZit6VFN4N3Q0U04vemU3ZVRmMVdJSE8v?=
 =?utf-8?Q?MAZqDYIm8kqIDrQSzDmSoXYJn?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ced9a95c-6790-4313-df46-08dc79c503e5
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2024 18:37:06.1908
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CK+Mws1giy/ArgtXpZMYsPN+MQjcmzNL+NFD5Eeyv9+No2enzGzwjQ23bZKC2QUY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6042
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 47D8D3F4A1
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.49 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.57:from];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[32];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[mediatek.com,linux-foundation.org,gmail.com,kernel.org,linaro.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,google.com,mediatek.com,lists.linaro.org,quicinc.com,infradead.org,ucw.cz,arm.com,emersion.fr,deltatee.com,ffwll.ch,kernel.org,collabora.com,linaro.org,lists.freedesktop.org,gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: ZZL47XNUQAJ43WL537T5LO2P7MU2DCPU
X-Message-ID-Hash: ZZL47XNUQAJ43WL537T5LO2P7MU2DCPU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "willy@infradead.org" <willy@infradead.org>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "pavel@ucw.cz" <pavel@ucw.cz>, "robin.murphy@arm.com" <robin.murphy@arm.com>, "contact@emersion.fr" <contact@emersion.fr>, "logang@deltatee.com" <logang@deltatee.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "jkardatzke@google.com" <jkardatzke@google.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabor
 a.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, "ppaalanen@gmail.com" <ppaalanen@gmail.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, =?UTF-8?B?WW91bGluIFBlaSAo6KO05Y+L5p6XKQ==?= <youlin.pei@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZZL47XNUQAJ43WL537T5LO2P7MU2DCPU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAuMDUuMjQgdW0gMDk6NTggc2NocmllYiBZb25nIFd1ICjlkLTli4cpOg0KPiBPbiBUaHUs
IDIwMjQtMDUtMTYgYXQgMTA6MTcgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiAg
IAkNCj4+IEV4dGVybmFsIGVtYWlsIDogUGxlYXNlIGRvIG5vdCBjbGljayBsaW5rcyBvciBvcGVu
IGF0dGFjaG1lbnRzIHVudGlsDQo+PiB5b3UgaGF2ZSB2ZXJpZmllZCB0aGUgc2VuZGVyIG9yIHRo
ZSBjb250ZW50Lg0KPj4gICBBbSAxNS4wNS4yNCB1bSAxMzoyMyBzY2hyaWViIFlvbmcgV3U6DQo+
Pj4gSW50cm9kdWNlIGEgRkxBRyBmb3IgdGhlIHJlc3RyaWN0ZWQgbWVtb3J5IHdoaWNoIG1lYW5z
IHRoZSBtZW1vcnkNCj4+IGlzDQo+Pj4gcHJvdGVjdGVkIGJ5IFRFRSBvciBoeXBlcnZpc29yLCB0
aGVuIGl0J3MgaW5hY2Nlc3NpYWJsZSBmb3Iga2VybmVsLg0KPj4+DQo+Pj4gQ3VycmVudGx5IHdl
IGRvbid0IHVzZSBzZ19kbWFfdW5tYXJrX3Jlc3RyaWN0ZWQsIHRodXMgdGhpcw0KPj4gaW50ZXJm
YWNlDQo+Pj4gaGFzIG5vdCBiZWVuIGFkZGVkLg0KPj4gV2h5IHNob3VsZCB0aGF0IGJlIHBhcnQg
b2YgdGhlIHNjYXR0ZXJsaXN0PyBJdCBkb2Vzbid0IHNlZW0gdG8NCj4+IGFmZmVjdA0KPj4gYW55
IG9mIGl0J3MgZnVuY3Rpb25hbGl0eS4NCj4+DQo+PiBBcyBmYXIgYXMgSSBjYW4gc2VlIHRoZSBz
Y2F0dGVybGlzdCBzaG91bGRuJ3QgYmUgdGhlIHRyYW5zcG9ydCBvZg0KPj4gdGhpcw0KPj4ga2lu
ZCBvZiBpbmZvcm1hdGlvbi4NCj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3LiBJIHdpbGwgcmVtb3Zl
IHRoaXMuDQo+DQo+IEluIG91ciB1c2VyIHNjZW5hcmlvLCBEUk0gd2lsbCBpbXBvcnQgdGhlc2Ug
YnVmZmVycyBhbmQgY2hlY2sgaWYgdGhpcw0KPiBpcyBhIHJlc3RyaWN0ZWQgYnVmZmVyLiBJZiB5
ZXMsIGl0IHdpbGwgdXNlIHNlY3VyZSBHQ0UgdGFrZXMgb3Zlci4NCj4NCj4gSWYgdGhpcyBqdWRn
bWVudCBpcyBub3Qgc3VpdGFibGUgdG8gYmUgcGxhY2VkIGluIHNjYXR0ZXJsaXN0LiBJIGRvbid0
DQo+IGtub3cgaWYgaXQgaXMgb2sgdG8gbGltaXQgdGhpcyBpbnNpZGUgZG1hLWJ1Zi4gQWRkaW5n
IHN1Y2ggYW4NCj4gaW50ZXJmYWNlOg0KPg0KPiBzdGF0aWMgYm9vbCBkbWFfYnVmX2lzX3Jlc3Ry
aWN0ZWQoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4gew0KPiAJcmV0dXJuICFzdHJuY21wKGRt
YWJ1Zi0+ZXhwX25hbWUsICJyZXN0cmljdGVkIiwgMTApOw0KPiB9DQoNCk5vLCB1c3VhbGx5IHN0
dWZmIGxpa2UgdGhhdCBkb2Vzbid0IGJlbG9uZyBpbnRvIERNQSBidWYgZWl0aGVyLg0KDQpRdWVz
dGlvbiBoZXJlIHJlYWxseSBpcyB3aG8gY29udHJvbHMgdGhlIHNlY3VyaXR5IHN0YXR1cyBvZiB0
aGUgbWVtb3J5IA0KYmFja2luZyB0aGUgYnVmZmVyPw0KDQpJbiBvdGhlciB3b3JkcyB3aG8gdGVs
bHMgdGhlIGV4cG9ydGVyIHRoYXQgaXQgc2hvdWxkIGFsbG9jYXRlIGFuZCBmaWxsIGEgDQpidWZm
ZXIgd2l0aCBlbmNyeXB0ZWQgZGF0YT8NCg0KSWYgdGhhdCBpcyB1c2Vyc3BhY2UgdGhlbiB0aGF0
IGlzIHBhcnQgb2YgdGhlIGZvcm1hdCBpbmZvcm1hdGlvbiBhbmQgaXQgDQppcyBhbHNvIHVzZXJz
cGFjZSB3aG8gc2hvdWxkIHRlbGwgdGhlIGltcG9ydGVyIHRoYXQgaXQgbmVlZHMgdG8gd29yayAN
CndpdGggZW5jcnlwdGVkIGRhdGEuDQoNClRoZSBrZXJuZWwgaXMgaW50ZW50aW9uYWxseSBub3Qg
aW52b2x2ZWQgaW4gc3R1ZmYgbGlrZSB0aGF0Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQoN
Cj4NCj4gVGhhbmtzLg0KPg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4gU2ln
bmVkLW9mZi1ieTogWW9uZyBXdSA8eW9uZy53dUBtZWRpYXRlay5jb20+DQo+Pj4gLS0tDQo+Pj4g
ICAgaW5jbHVkZS9saW51eC9zY2F0dGVybGlzdC5oIHwgMzQNCj4+ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysNCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygr
KQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaA0KPj4g
Yi9pbmNsdWRlL2xpbnV4L3NjYXR0ZXJsaXN0LmgNCj4+PiBpbmRleCA3N2RmM2Q3YjE4YTYuLmE2
YWQ5MDE4ZWNhMCAxMDA2NDQNCj4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L3NjYXR0ZXJsaXN0LmgN
Cj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L3NjYXR0ZXJsaXN0LmgNCj4+PiBAQCAtMjgyLDYgKzI4
Miw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBzZ191bm1hcmtfZW5kKHN0cnVjdA0KPj4gc2NhdHRl
cmxpc3QgKnNnKQ0KPj4+ICAgIA0KPj4+ICAgICNkZWZpbmUgU0dfRE1BX0JVU19BRERSRVNTKDEg
PDwgMCkNCj4+PiAgICAjZGVmaW5lIFNHX0RNQV9TV0lPVExCKDEgPDwgMSkNCj4+PiArI2RlZmlu
ZSBTR19ETUFfUkVTVFJJQ1RFRCgyIDw8IDEpDQo+Pj4gICAgDQo+Pj4gICAgLyoqDQo+Pj4gICAg
ICogc2dfZG1hX2lzX2J1c19hZGRyZXNzIC0gUmV0dXJuIHdoZXRoZXIgYSBnaXZlbiBzZWdtZW50
IHdhcw0KPj4gbWFya2VkDQo+Pj4gQEAgLTM1Miw2ICszNTMsMzEgQEAgc3RhdGljIGlubGluZSB2
b2lkIHNnX2RtYV9tYXJrX3N3aW90bGIoc3RydWN0DQo+PiBzY2F0dGVybGlzdCAqc2cpDQo+Pj4g
ICAgc2ctPmRtYV9mbGFncyB8PSBTR19ETUFfU1dJT1RMQjsNCj4+PiAgICB9DQo+Pj4gICAgDQo+
Pj4gKy8qKg0KPj4+ICsgKiBzZ19kbWFfbWFya19yZXN0cmljdGVkIC0gTWFyayB0aGUgc2NhdHRl
cmxpc3QgZm9yIHJlc3RyaWN0ZWQNCj4+IGJ1ZmZlci4NCj4+PiArICogQHNnOlNHIGVudHJ5DQo+
Pj4gKyAqDQo+Pj4gKyAqIERlc2NyaXB0aW9uOg0KPj4+ICsgKiAgIE1hcmtzIGEgYSBzY2F0dGVy
bGlzdCBmb3IgdGhlIHJlc3RyaWN0ZWQgYnVmZmVyIHRoYXQgbWF5IGJlDQo+PiBpbmFjY2Vzc2lh
YmxlDQo+Pj4gKyAqICAgaW4ga2VybmVsIGlmIGl0IGlzIHByb3RlY3RlZC4NCj4+PiArICovDQo+
Pj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBzZ19kbWFfbWFya19yZXN0cmljdGVkKHN0cnVjdCBzY2F0
dGVybGlzdCAqc2cpDQo+Pj4gK3sNCj4+PiArc2ctPmRtYV9mbGFncyB8PSBTR19ETUFfUkVTVFJJ
Q1RFRDsNCj4+PiArfQ0KPj4+ICsNCj4+PiArLyoqDQo+Pj4gKyAqIHNnX2RtYV9pc19yZXN0cmlj
dGVkIC0gUmV0dXJuIHdoZXRoZXIgdGhlIHNjYXR0ZXJsaXN0IHdhcw0KPj4gbWFya2VkIGFzIHJl
c3RyaWN0ZWQNCj4+PiArICogICAgICAgICAgICAgICAgICAgICAgICBidWZmZXIuDQo+Pj4gKyAq
IEBzZzpTRyBlbnRyeQ0KPj4+ICsgKg0KPj4+ICsgKiBEZXNjcmlwdGlvbjoNCj4+PiArICogICBS
ZXR1cm5zIHRydWUgaWYgdGhlIHNjYXR0ZXJsaXN0IHdhcyBtYXJrZWQgYXMgcmVzdHJpY3RlZA0K
Pj4gYnVmZmVyLg0KPj4+ICsgKi8NCj4+PiArc3RhdGljIGlubGluZSBib29sIHNnX2RtYV9pc19y
ZXN0cmljdGVkKHN0cnVjdCBzY2F0dGVybGlzdCAqc2cpDQo+Pj4gK3sNCj4+PiArcmV0dXJuIHNn
LT5kbWFfZmxhZ3MgJiBTR19ETUFfUkVTVFJJQ1RFRDsNCj4+PiArfQ0KPj4+ICAgICNlbHNlDQo+
Pj4gICAgDQo+Pj4gICAgc3RhdGljIGlubGluZSBib29sIHNnX2RtYV9pc19idXNfYWRkcmVzcyhz
dHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnKQ0KPj4+IEBAIC0zNzIsNiArMzk4LDE0IEBAIHN0YXRpYyBp
bmxpbmUgdm9pZCBzZ19kbWFfbWFya19zd2lvdGxiKHN0cnVjdA0KPj4gc2NhdHRlcmxpc3QgKnNn
KQ0KPj4+ICAgIHsNCj4+PiAgICB9DQo+Pj4gICAgDQo+Pj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBz
Z19kbWFfaXNfcmVzdHJpY3RlZChzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnKQ0KPj4+ICt7DQo+Pj4g
K3JldHVybiBmYWxzZTsNCj4+PiArfQ0KPj4+ICsNCj4+PiArc3RhdGljIGlubGluZSB2b2lkIHNn
X2RtYV9tYXJrX3Jlc3RyaXRlZChzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnKQ0KPj4+ICt7DQo+Pj4g
K30NCj4+PiAgICAjZW5kaWYvKiBDT05GSUdfTkVFRF9TR19ETUFfRkxBR1MgKi8NCj4+PiAgICAN
Cj4+PiAgICAvKioNCj4+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

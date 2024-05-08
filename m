Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A38E8BFD10
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 14:22:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EEBAD440FE
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 12:22:25 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2085.outbound.protection.outlook.com [40.107.93.85])
	by lists.linaro.org (Postfix) with ESMTPS id DD6AE40C4C
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 12:22:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=fp3+9PMz;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.85 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rh+wFljY+1UUMpgVHQi+sYNHG91/PxV8Emyb3u6kTg7xit7zctx+b/+peRAIPJ2ERK7EJVCO3BruVRULtpkSuV+z7Nevx4q9BCeRscSb2jQsDI00QlTVTv43GCRZ27VX7KTc3ZWAx/DyzGI867ApYHM2/IXiRiuqKQt8IDh/dm3lht1yMynog02UnBI985V46Xju9dDK2klLQmsHKEh971E+/ON9LUtSEKX5o8tfx4eR09GenUh3KotTaCN8l80Wm/CGzGexWMMovWlm4LvElfSI7EF853J/3KFbSHv8I+itF+BsO7pBbr7bRarcN6+2HjNjdzOomBa8pWg+LzJWJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C8voy6oaEH+U6LAL3exko8Sn2j7x7CxBU0t7bx5isO8=;
 b=QhVJjIAMR86/vFx6c6AM4/V+XKP2Z/xPGHwXXsvLgOKs8HOlyHmM9tqkAGBdGlDOFl9Jmcd0zdVlXgTMMElRtwUp33TQJX5ig1Cr5vKTHMSBNZOmJ8Z/vBDd8+v6XWYCpSp8I++qmzigOTBhctVVRRyUq7RpPTDC1BQWqRV+QuWs1S8gK5qTnPtTBeRhOeskp2EEVGwtVBP4cy6YuM1IAS/IaKOQKAD2Q+mXX4jDzBYbbhxjFvsx9dSp9IBJk46DX+KR9DV6CC43gs5Uixd4Y5L3AYN+HYU4kFnHcJK7o6TxCQFS668ZmsYBlr/d8BgkdTXyETudPtfAoDjYRXjJDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C8voy6oaEH+U6LAL3exko8Sn2j7x7CxBU0t7bx5isO8=;
 b=fp3+9PMzAZQqdSmJM1HxPcLvidob7fYepna3gFN0GNxBGsKbu/mXv7YJyhWpTgwioip0cD5KwkyNBufAOi82Vj3itAwCY52sW2rKkDdSwa7iy61g7rJ3wF6/i9LuC0uLCqj8oYCfw6MgCo8rrTl/IiJt6MyDe0lHaIWXufk7r54=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB8755.namprd12.prod.outlook.com (2603:10b6:610:17e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.42; Wed, 8 May
 2024 12:22:08 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%2]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 12:22:08 +0000
Message-ID: <facb101b-3535-421d-bffb-c4ea675c9107@amd.com>
Date: Wed, 8 May 2024 14:21:58 +0200
User-Agent: Mozilla Thunderbird
To: David Laight <David.Laight@ACULAB.COM>,
 "T.J. Mercier" <tjmercier@google.com>,
 Charan Teja Kalla <quic_charante@quicinc.com>,
 zhiguojiang <justinjiang@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "opensource.kernel@vivo.com" <opensource.kernel@vivo.com>
References: <4fedd80c-d5b6-4478-bfd3-02d1ee1a26e5@vivo.com>
 <aab5ec51-fcff-44f2-a4f5-2979bd776a03@amd.com>
 <2ebca2fd-9465-4e64-b3cc-ffb88ef87800@vivo.com>
 <d4209754-5f26-422d-aca0-45cccbc44ad0@amd.com>
 <289b9ad6-58a3-aa39-48ae-a244fe108354@quicinc.com>
 <CABdmKX3Zu8LihAFjMuUHx4xzZoqgmY7OKdyVz-D26gM-LECn6A@mail.gmail.com>
 <8ca45837-cbed-28da-4a6f-0dcec8294f51@quicinc.com>
 <83605228-92ee-b666-d894-1c145af2e5ab@quicinc.com>
 <CABdmKX2MWU9-9YN46PXx-Jy-O9CHMv8hCkvArd7BbWUBs=GPnw@mail.gmail.com>
 <8915fcc1-d8f1-48c2-9e51-65159aaa5a3b@amd.com>
 <ZjovD5WaWjknd-qv@phenom.ffwll.local>
 <44b08793-cf44-4cbd-a3bb-583af351ab9e@amd.com>
 <c0fe95949d4f41449f17add8300270b9@AcuMS.aculab.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <c0fe95949d4f41449f17add8300270b9@AcuMS.aculab.com>
X-ClientProxiedBy: VI1PR0102CA0047.eurprd01.prod.exchangelabs.com
 (2603:10a6:803::24) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB8755:EE_
X-MS-Office365-Filtering-Correlation-Id: 80af52e4-a9a2-45e5-5205-08dc6f597abe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|366007|1800799015|7416005|376005|921011;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WFFIZ2xtNGZpYXZZbi9vTlcwdDlKTnZLekJKSkpXbmkvQ3l1RjU5UUYvT2Zn?=
 =?utf-8?B?aGxMQVVhOVR1SWNmNlp2MGVGdHdscXpUU0oydlBVM3hrbHB5RDJpM0ttbmNw?=
 =?utf-8?B?cGYwamZweWpRTUcyVlJ0ZHhqSFY4dGNzS3Z4SDk0NlQzaCtkSUZYQVViSDR0?=
 =?utf-8?B?dFJlM3RXcS9VK1B0WWhKZnZnWkNEWGVESDBQaDd6a0wxUHZaS2lmcHBFUFlv?=
 =?utf-8?B?ZjZJZklmWE10dUgxeUlabEJJNzhWdnhSMDRPT0g4Y3RrQm1OMFQ4UUVldWdS?=
 =?utf-8?B?N0drU0dCTDhFQXZYRUlFSEVld2xEb2grbzltNytmeTVxaWZLZTcxMzVxeCtt?=
 =?utf-8?B?cE1wSi91a1RmYWt0KzA4QWN0cm5YRlVvZ3ZVWVhZc0gzLzAyaUxCM25hek1L?=
 =?utf-8?B?RzVMOUhteXozQm5MOWVKN2pFUmZLZTBMbU9YRTk5dW5TZW5tRFpRQ3RvZm9L?=
 =?utf-8?B?LzhmSzZDTGo1TFg5cWJzdWNqWmhWNG96VndVVXNCVmFNcTRSazI2MFZyZ1or?=
 =?utf-8?B?R09UMnhhZEdHK1V3M0pjakFLT2FuZS9XcmppNUtBK0padXBmVXlWUEdseG0x?=
 =?utf-8?B?cm1ZcW1nS3ByTmJubHRCSlpSYkFMUm9YNGFBT1NBZUxvK3FaU1NFNFZKc2hP?=
 =?utf-8?B?VTYyQ2VZdm1JTmNZMkh6UENaNWlxcWgyNnZRY09MdkZ6Z3k1NzBkV01qSEs2?=
 =?utf-8?B?NnJ3ZVBjVXRoeE96bHFmU2VMYmpTK0dQZHFFOGo1cG9qOGtZVEpXeUV5MHc2?=
 =?utf-8?B?K2hVcTU2Qkg1WXJqWkhydjdBQ1kydFdONnlLRlBodnJBU3VBZFJCTnVxQUV3?=
 =?utf-8?B?cC9BUDV0UUxXNXgyWFgydUsxZnlnV3ZZcHY1UFNYK05nWW9RUVB6NEM1QlFB?=
 =?utf-8?B?bDhPSENFMTk2ejZlVkNTMFhzYWJHb1JrM1BZR0RzQitsQmtIWkJYdUp2bU4v?=
 =?utf-8?B?d1BCQlR1WHJodmNxLzB3U0o5cENoZERxMXp1eUhOV0pTNG53aHlhNHM0M1VU?=
 =?utf-8?B?YVhaeEM3STJuaUw1Tzk1MnRGc1hIaG5ZT2JUMWNtZVl1TUJoMHhuS2JvUmVD?=
 =?utf-8?B?QUhOQUh4L0ppOXMzdmtrajZ3bG5wQ2xWQ0VZWXJZVEltc3VOUFlQYkJPRjMx?=
 =?utf-8?B?V3NLYTZIdFB2WU5SbHByR1hGaTdoeG16ei84TndlSXZIN0V6MFhBcDJWZ0NU?=
 =?utf-8?B?b1JDNS9QcGZiZ0xsblRtOGRRQjMyL2l2c2xIeklHWE9lRnNoS0t2TFg0S1dh?=
 =?utf-8?B?WHA1VlBzU2poR1hzZ1hFOVNiSTVYcGRRYzk2eG5VWUtoaXlBVm14bUxGZ2JJ?=
 =?utf-8?B?bTVtRXlHWmZHcjRTVHdTUlhTeitrL0ZndmtIbVVQdW5BQzYydk1BbTlJSGxx?=
 =?utf-8?B?MkcwMTRRTFYycmdDV1BPbjh5dFhzbHphd0FJZE5XMGFYSU1PbW1hUWRTY2l5?=
 =?utf-8?B?TjhWeWgrMkZZMWdQNVplQm5lcjJkN0JYUGpwOHQ1QUlQN2hQaDNEWkIyMWZB?=
 =?utf-8?B?WkIzZXhETTViald4VDRsQVdiejFOWWg5di9YNVk0eXFzNmpwZUJCRDBaUXVr?=
 =?utf-8?B?cnQxMHgwZGxzL3FIazdBUmtsTFdKREtISFl1SVYweVFwT0RWdzJRT3BKMUxj?=
 =?utf-8?B?c0gxREtUcjBMaXFhb25XUjJGL21Gd1hIS1NBbmxQMncycG1vNm8rVno1Mnpt?=
 =?utf-8?B?RGI5eEdGT3hhWXNsakdiRXpaWHJGMDFKVWJuc0MzRzJab1hhYWtJa2RaUG4y?=
 =?utf-8?Q?BqV5LI2GTnNgXht2WkweX/FBiPk7zexOsbDBlg6?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(7416005)(376005)(921011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K1BlUXJMckd3eHp2MytwWFVnVjRhVVFRc3pNNkZwVE1uTFBqdjZuRld4ZnRn?=
 =?utf-8?B?L056VUdUU21xN3JWWWFVdkFITEMwaXRsWGVOMDRxMHAvQUpqRkVUOXdERzR3?=
 =?utf-8?B?N1BQMjlVVy8wdGF0dlA2bitKdkxFc3ZTWEEvMStONjB6OXpoMy9DMUpQRm04?=
 =?utf-8?B?TGh0cWtHb1lTeUNLR1ozblNsdldpWTFxMHZuNUdQMktWUFJwYnlqZWFQeGVH?=
 =?utf-8?B?SDk5RU8vY3BFUFVjdHlYYTcrUmdiYmNLV25Ia0hLNkpLaEk1MHVSZlBGWk5q?=
 =?utf-8?B?eUJJc0JPRUlDRFpITFVybDdRVFFFT2dBenZ0cExtZjRUcGM0Wkp1N0JPWi8x?=
 =?utf-8?B?aitYQnFscXFSWGFkVWNhcEpsS2paQVlUaGVDSHhQQjNnYVRTSm9IWlZBdldt?=
 =?utf-8?B?Zm03dDcwa0tCL0UwOVkwQVpPS0Iwa3NFazA2Q2JLVGJ2ajU2d1ZOSXN1a01H?=
 =?utf-8?B?U3ByZ2x6Ymp2bHVhOWEveWU5ODVpd2d4eHQ2NklDQVJybE5aQWt4L0hjOTZX?=
 =?utf-8?B?K2hMRHhEMlpJZlI2dkordmo5MHU0d3lhRmJZckVab1AreHJHdFNhWWhZYW8r?=
 =?utf-8?B?NlQxL0swVUExdFltTEttUmhkRitvNmNJRnZiK2NUVklxSE9tbjg1N0FKZ0E3?=
 =?utf-8?B?aitKS1JDYXFyczc5b2ZPYXNlNzc0K3BzWTRIN09scXNrMUFrOXZtZVJjWnJN?=
 =?utf-8?B?eG1mL1BZY2VUL1N1bWlZU3hNanFBNHA5R3BKaVZMTmNDNTllaUExUWdFQWFO?=
 =?utf-8?B?M0pYNHRITEZWOTFsNTJGNFIrUTdkWk9lR05OOE5oRS9SQXhPZ3BickY4SDRo?=
 =?utf-8?B?L0NBQUxNeVVtRndUR0luOWc4UVpiZEU1ZmpLU1c0NFNlaEpobDRuK3k0QnBT?=
 =?utf-8?B?NnFpNEt1TUFsUHRWNURocTZUQmltcDh6UlIxcllYNmMrUXFUZnY1YTBQK3Zi?=
 =?utf-8?B?U1FZK1NRYkNVNndLRTVEWENCdjZwclg5OGlHUWExYWdzZ05vVTRNRG1MR0dY?=
 =?utf-8?B?R0c3MkRNZDhkSWNMTVI5TkFYTXJMSWQ5ZTc3UU1oWlVCZDk5UmNmWEJleFFp?=
 =?utf-8?B?a0loNGNtQ3hiMnAwUkxGSFhjd0NVSnVVSTd2d2RVdE01RXY5b05YeGRkK0Vr?=
 =?utf-8?B?Y0plNnVUL1Q3ZXQyLzNNa1dWYllPdmZQcDNpWlRFbWdERmZkUWsyVTBDaGtm?=
 =?utf-8?B?KzNDd1JjSXJQM1FuazkrK3F5eXVueUdNM1dra3dJdnZOZEw0a1RQTVEvNmdH?=
 =?utf-8?B?dTA3WG12Nm1ZcWgvSVM3czFsUlZHaXdJWmk4dGN6OVBnWnZhK3MxVXM2bXFm?=
 =?utf-8?B?R1AxVDJzVVpQUEQxUFY3bXNZZXZoNTd1RzZCb056M210Z3l0RUpyOGJzbWd1?=
 =?utf-8?B?UGlHWjAvNGQydy9jN2ZzYmx2ZWc2aEYvYjFhVCt2S0lWZkhjLzZnRkdKcjJU?=
 =?utf-8?B?NXNoUXNjTkkxdUVwcUZCVTlKVkFJMVFrZDdSb09SRnc2YmxyOEhnUENLdGNW?=
 =?utf-8?B?NUFUYUl3ZVM0aVQzMmVobXlMSnBTQjVnb2g3ZlFlU0xnS08yWmRkWUpkL09t?=
 =?utf-8?B?SVhvNGFOZXFpdzc5VTFkRFpzVjAzOFVYdXFLVkJCalplbXlGMDFMNm11eUJC?=
 =?utf-8?B?TWo4aDFsMFZBNW5ZM0I3NGhDdTlIV2FTRnJ5NzZFbmk0ZklHWUtuWHUva0dy?=
 =?utf-8?B?UVovZnBBVDdwbDMxTHRYNFFVUXNYQXVDZzVNVnpvK0dnNFlrTWtmbGpUT3ln?=
 =?utf-8?B?a3lhRjRQeFVPYzgzMjdMTEFHN0RKcENaUlNWNFRpVkJ0eEV5S2cweXVTSklr?=
 =?utf-8?B?ZlVoZWJTem80Q0ROZmFub0JxeUxGeHR2QktmQ2lHdU5uSm5HZlNHOTcvUzhR?=
 =?utf-8?B?R04zdHpBWVVtMmpzdVdXZ0VLZUhMZGd5WnZkQjJqSGF0UjZZSmRLWWQwcUlK?=
 =?utf-8?B?OXRoREhOVzF3citMY3YyZ3FHakl3dy9SY2R1dm04S0RGc3lpeWVpWHNDaHVR?=
 =?utf-8?B?YjRUL2ttMTQ0U2pUVlc1ZEhtZnFlTlVxTGc0VW9LUTBFM1ZjRjdzdnhLWU9W?=
 =?utf-8?B?bXM1YkhKa2hJeEs4RDArK3lBampxK2V3cjh1SzIxTUwvanhyTWNiTEI2cVFR?=
 =?utf-8?Q?CwpiEPTlJtoW1ObtW0axNZcdj?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80af52e4-a9a2-45e5-5205-08dc6f597abe
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2024 12:22:08.2916
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dYC1peof3w3fxOtUJgFQzvAPep3NO1XFTDnbw1T1DcWyDHLIa3b8dtKCOWAtmkRC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8755
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DD6AE40C4C
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.85:from];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[NAM10-DM6-obe.outbound.protection.outlook.com:helo,mail-dm6nam10on2085.outbound.protection.outlook.com:rdns,amd.com:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 4RAPDMIK5VODIHDLYQKO5LZ3UDCJTLE6
X-Message-ID-Hash: 4RAPDMIK5VODIHDLYQKO5LZ3UDCJTLE6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4RAPDMIK5VODIHDLYQKO5LZ3UDCJTLE6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1529547040435163194=="

--===============1529547040435163194==
Content-Type: multipart/alternative;
 boundary="------------1ZwzVE4eoGd2lFKru0aC4Zl0"
Content-Language: en-US

--------------1ZwzVE4eoGd2lFKru0aC4Zl0
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDguMDUuMjQgdW0gMTM6NTEgc2NocmllYiBEYXZpZCBMYWlnaHQ6DQo+IEZyb206IENocmlz
dGlhbiBLw7ZuaWcNCj4+IFNlbnQ6IDA3IE1heSAyMDI0IDE1OjA1DQo+IC4uLg0KPj4gSSBhY3R1
YWxseSBoYXZlIGJlZW4gdGVsbGluZyBwZW9wbGUgdG8gKGFiKXVzZSB0aGUgZXBvbGwgYmVoYXZp
b3IgdG8NCj4+IGNoZWNrIGlmIHR3byBmaWxlIGRlc2NyaXB0b3JzIHBvaW50IHRvIHRoZSBzYW1l
IHVuZGVybHlpbmcgZmlsZSB3aGVuDQo+PiBLQ01QIGlzbid0IGF2YWlsYWJsZS4NCj4gSW4gd2hh
dCB3YXk/DQoNClNvbWV0aGluZyBsaWtlIHRoaXM6DQoNCmZkX2UgPSBlcG9sbF9jcmVhdGUxKEVQ
T0xMX0NMT0VYRUMpOw0KDQp0bXAgPSBkdXAoZmRfQSkNCmVwb2xsX2N0bChmZF9lLCBFUE9MTF9D
VExfQURELCB0bXAsIC4uLi4pOw0KZHVwMihmZF9CLCB0bXApOw0KDQovKiBJZiB0aGlzIHJldHVy
biAtRUVYSVNUUyB0aGVuIHRoZSBmZF9BIGFuZCBmZF9CIGFyZSBwb2ludGluZyB0byB0aGUgDQpz
YW1lIHN0cnVjdCBmaWxlICovDQplcG9sbF9jdGwoZmRfZSwgRVBPTExfQ1RMX0FERCwgdG1wLCAu
Li4uKTsNCg0KY2xvc2UgKHRtcCk7DQpjbG9zZSAoZmRfZQ0KDQoNCj4gWW91IGNhbiBhZGQgYm90
aCBmZCB0byB0aGUgc2FtZSBlcG9sbCBmZC4NCj4gUmVseWluZyBvbiB0aGUgaW1wbGljaXQgRVBP
TExfQ1RMX0RFTCBub3QgaGFwcGVuaW5nIHVudGlsIGJvdGggZmQgYXJlDQo+IGNsb3NlZCBpcyBh
IHJlY2lwZSBmb3IgZGlzYXN0ZXIuDQo+IChBbmQgSSBjYW4ndCBzZWUgYW4gb2J2aW91cyB3YXkg
b2YgdGVzdGluZyBpdC4pDQo+DQo+IFE2L0E2IG9uIGVwb2xsKDcpIHNob3VsZCBhbHdheXMgaGF2
ZSBoYWQgYSBjYXZlYXQgdGhhdCBpdCBpcyBhbg0KPiAnaW1wbGVtZW50YXRpb24gZGV0YWlsJyBh
bmQgc2hvdWxkbid0IGJlIHJlbGllZCBvbi4NCj4gKGl0IGlzIHdyaXR0ZW4gYXMgYSAnYmV3YXJl
IG9mJyAuLi4pDQo+DQo+IFRoZSBvdGhlciBwb2ludCBpcyB0aGF0IHRoZXJlIGFyZSB0d28gd2F5
cyB0byBnZXQgbXVsdGlwbGUgZmQgdGhhdA0KPiByZWZlcmVuY2UgdGhlIHNhbWUgdW5kZXJseWlu
ZyBmaWxlLg0KPiBkdXAoKSBmb3JrKCkgZXRjIHNoYXJlIHRoZSBmaWxlIG9mZnNldCwgYnV0IG9w
ZW4oIi9kZXYvZmQvbiIpIGFkZHMNCj4gYSByZWZlcmVuY2UgY291bnQgbGF0ZXIgYW5kIGhhcyBh
IHNlcGFyYXRlIGZpbGUgb2Zmc2V0Lg0KDQpObyBpdCBkb2Vzbid0Lg0KDQpBY2Nlc3NpbmcgL2Rl
di9mZC9uIG9yIC9wcm9jLyovZmQvbiBpZGVhbGx5IGFjY2Vzc2VzIHRoZSBzYW1lIGlub2RlLCBi
dXQgDQpnaXZlcyB5b3UgYSBuZXcgc3RydWN0IGZpbGUuDQoNCmR1cCgpLCBmb3JrKCkgZXRjLi4g
bWFrZSB5b3UgYWN0dWFsbHkgcmVmZXJlbmNlIHRoZSBzYW1lIHN0cnVjdCBmaWxlIA0KaW5zaWRl
IHRoZSBrZXJuZWwuDQoNClRoYXQgdHVybmVkIG91dCB0byBiZSBhIHJhdGhlciBpbXBvcnRhbnQg
ZGlzdGluY3Rpb24gd2hlbiB3b3JraW5nIHdpdGggDQpkZXZpY2UgZHJpdmVycyBhbmQgRE1BLWJ1
Zi4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBJIGRvbid0IGtub3cgd2hpY2ggc3Ry
dWN0dXJlIGVwb2xsIGlzIHVzaW5nLCBidXQgSSBzdXNwZWN0IGl0IGlzDQo+IHRoZSBmb3JtZXIu
DQo+IFNvIGl0IG1heSBub3QgdGVsbCB5b3Ugd2hhdCB5b3Ugd2FudCB0byBrbm93Lg0KPg0KPiAJ
RGF2aWQNCj4NCj4gLQ0KPiBSZWdpc3RlcmVkIEFkZHJlc3MgTGFrZXNpZGUsIEJyYW1sZXkgUm9h
ZCwgTW91bnQgRmFybSwgTWlsdG9uIEtleW5lcywgTUsxIDFQVCwgVUsNCj4gUmVnaXN0cmF0aW9u
IE5vOiAxMzk3Mzg2IChXYWxlcykNCg==

--------------1ZwzVE4eoGd2lFKru0aC4Zl0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PCFET0NUWVBFIGh0bWw+PGh0bWw+PGhlYWQ+DQo8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5
cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCI+DQogIDwvaGVhZD4NCiAgPGJv
ZHk+DQogICAgQW0gMDguMDUuMjQgdW0gMTM6NTEgc2NocmllYiBEYXZpZCBMYWlnaHQ6PGJyPg0K
ICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9Im1pZDpjMGZlOTU5NDlkNGY0MTQ0OWYx
N2FkZDgzMDAyNzBiOUBBY3VNUy5hY3VsYWIuY29tIj4NCiAgICAgIDxwcmUgY2xhc3M9Im1vei1x
dW90ZS1wcmUiIHdyYXA9IiI+RnJvbTogQ2hyaXN0aWFuIEvDtm5pZw0KPC9wcmU+DQogICAgICA8
YmxvY2txdW90ZSB0eXBlPSJjaXRlIj4NCiAgICAgICAgPHByZSBjbGFzcz0ibW96LXF1b3RlLXBy
ZSIgd3JhcD0iIj5TZW50OiAwNyBNYXkgMjAyNCAxNTowNQ0KPC9wcmU+DQogICAgICA8L2Jsb2Nr
cXVvdGU+DQogICAgICA8cHJlIGNsYXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPi4uLg0KPC9w
cmU+DQogICAgICA8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj4NCiAgICAgICAgPHByZSBjbGFzcz0i
bW96LXF1b3RlLXByZSIgd3JhcD0iIj5JIGFjdHVhbGx5IGhhdmUgYmVlbiB0ZWxsaW5nIHBlb3Bs
ZSB0byAoYWIpdXNlIHRoZSBlcG9sbCBiZWhhdmlvciB0bw0KY2hlY2sgaWYgdHdvIGZpbGUgZGVz
Y3JpcHRvcnMgcG9pbnQgdG8gdGhlIHNhbWUgdW5kZXJseWluZyBmaWxlIHdoZW4NCktDTVAgaXNu
J3QgYXZhaWxhYmxlLg0KPC9wcmU+DQogICAgICA8L2Jsb2NrcXVvdGU+DQogICAgICA8cHJlIGNs
YXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPg0KSW4gd2hhdCB3YXk/PC9wcmU+DQogICAgPC9i
bG9ja3F1b3RlPg0KICAgIDxicj4NCiAgICBTb21ldGhpbmcgbGlrZSB0aGlzOjxicj4NCiAgICA8
c3Bhbj48c3BhbiBjbGFzcz0idWktcHJvdmlkZXIgZWIgYmx0IGF2diBibHUgYmx2IGJsdyBibHgg
Ymx5IGJseiBibWEgYm1iIGJtYyBibWQgYm1lIGJtZiBibWcgYm1oIGJtaSBibWogYm1rIGJtbCBi
bW0gYm1uIGJtbyBibXAgYm1xIGJtciBibXMgYm10IGJtdSBibXYgYm13IGJteCBibXkgYm16IiBk
aXI9Imx0ciI+DQogICAgICAgIDxwPmZkX2UgPSBlcG9sbF9jcmVhdGUxKEVQT0xMX0NMT0VYRUMp
OzwvcD4NCiAgICAgICAgPHA+dG1wID0gZHVwKGZkX0EpPGJyPg0KICAgICAgICAgIGVwb2xsX2N0
bChmZF9lLCBFUE9MTF9DVExfQURELCB0bXAsIC4uLi4pOzxicj4NCiAgICAgICAgICBkdXAyKGZk
X0IsIHRtcCk7PC9wPg0KICAgICAgICA8cD4vKiBJZiB0aGlzIHJldHVybiAtRUVYSVNUUyB0aGVu
IHRoZSBmZF9BIGFuZCBmZF9CIGFyZQ0KICAgICAgICAgIHBvaW50aW5nIHRvIHRoZSBzYW1lIHN0
cnVjdCBmaWxlICovPGJyPg0KICAgICAgICAgIGVwb2xsX2N0bChmZF9lLCBFUE9MTF9DVExfQURE
LCB0bXAsIC4uLi4pOzwvcD4NCiAgICAgICAgPHA+Y2xvc2UgKHRtcCk7PGJyPg0KICAgICAgICAg
IGNsb3NlIChmZF9lPC9wPg0KICAgICAgPC9zcGFuPjwvc3Bhbj48YnI+DQogICAgPGJsb2NrcXVv
dGUgdHlwZT0iY2l0ZSIgY2l0ZT0ibWlkOmMwZmU5NTk0OWQ0ZjQxNDQ5ZjE3YWRkODMwMDI3MGI5
QEFjdU1TLmFjdWxhYi5jb20iPg0KICAgICAgPHByZSBjbGFzcz0ibW96LXF1b3RlLXByZSIgd3Jh
cD0iIj4NCllvdSBjYW4gYWRkIGJvdGggZmQgdG8gdGhlIHNhbWUgZXBvbGwgZmQuDQpSZWx5aW5n
IG9uIHRoZSBpbXBsaWNpdCBFUE9MTF9DVExfREVMIG5vdCBoYXBwZW5pbmcgdW50aWwgYm90aCBm
ZCBhcmUNCmNsb3NlZCBpcyBhIHJlY2lwZSBmb3IgZGlzYXN0ZXIuDQooQW5kIEkgY2FuJ3Qgc2Vl
IGFuIG9idmlvdXMgd2F5IG9mIHRlc3RpbmcgaXQuKQ0KDQpRNi9BNiBvbiBlcG9sbCg3KSBzaG91
bGQgYWx3YXlzIGhhdmUgaGFkIGEgY2F2ZWF0IHRoYXQgaXQgaXMgYW4NCidpbXBsZW1lbnRhdGlv
biBkZXRhaWwnIGFuZCBzaG91bGRuJ3QgYmUgcmVsaWVkIG9uLg0KKGl0IGlzIHdyaXR0ZW4gYXMg
YSAnYmV3YXJlIG9mJyAuLi4pDQoNClRoZSBvdGhlciBwb2ludCBpcyB0aGF0IHRoZXJlIGFyZSB0
d28gd2F5cyB0byBnZXQgbXVsdGlwbGUgZmQgdGhhdA0KcmVmZXJlbmNlIHRoZSBzYW1lIHVuZGVy
bHlpbmcgZmlsZS4NCmR1cCgpIGZvcmsoKSBldGMgc2hhcmUgdGhlIGZpbGUgb2Zmc2V0LCBidXQg
b3BlbigmcXVvdDsvZGV2L2ZkL24mcXVvdDspIGFkZHMNCmEgcmVmZXJlbmNlIGNvdW50IGxhdGVy
IGFuZCBoYXMgYSBzZXBhcmF0ZSBmaWxlIG9mZnNldC48L3ByZT4NCiAgICA8L2Jsb2NrcXVvdGU+
DQogICAgPGJyPg0KICAgIE5vIGl0IGRvZXNuJ3QuPGJyPg0KICAgIDxicj4NCiAgICBBY2Nlc3Np
bmcgL2Rldi9mZC9uIG9yIC9wcm9jLyovZmQvbiBpZGVhbGx5IGFjY2Vzc2VzIHRoZSBzYW1lIGlu
b2RlLA0KICAgIGJ1dCBnaXZlcyB5b3UgYSBuZXcgc3RydWN0IGZpbGUuPGJyPg0KICAgIDxicj4N
CiAgICBkdXAoKSwgZm9yaygpIGV0Yy4uIG1ha2UgeW91IGFjdHVhbGx5IHJlZmVyZW5jZSB0aGUg
c2FtZSBzdHJ1Y3QgZmlsZQ0KICAgIGluc2lkZSB0aGUga2VybmVsLjxicj4NCiAgICA8YnI+DQog
ICAgVGhhdCB0dXJuZWQgb3V0IHRvIGJlIGEgcmF0aGVyIGltcG9ydGFudCBkaXN0aW5jdGlvbiB3
aGVuIHdvcmtpbmcNCiAgICB3aXRoIGRldmljZSBkcml2ZXJzIGFuZCBETUEtYnVmLjxicj4NCiAg
ICA8YnI+DQogICAgUmVnYXJkcyw8YnI+DQogICAgQ2hyaXN0aWFuLjxicj4NCiAgICA8YnI+DQog
ICAgPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSIgY2l0ZT0ibWlkOmMwZmU5NTk0OWQ0ZjQxNDQ5ZjE3
YWRkODMwMDI3MGI5QEFjdU1TLmFjdWxhYi5jb20iPg0KICAgICAgPHByZSBjbGFzcz0ibW96LXF1
b3RlLXByZSIgd3JhcD0iIj4NCg0KSSBkb24ndCBrbm93IHdoaWNoIHN0cnVjdHVyZSBlcG9sbCBp
cyB1c2luZywgYnV0IEkgc3VzcGVjdCBpdCBpcw0KdGhlIGZvcm1lci4NClNvIGl0IG1heSBub3Qg
dGVsbCB5b3Ugd2hhdCB5b3Ugd2FudCB0byBrbm93Lg0KDQoJRGF2aWQNCg0KLQ0KUmVnaXN0ZXJl
ZCBBZGRyZXNzIExha2VzaWRlLCBCcmFtbGV5IFJvYWQsIE1vdW50IEZhcm0sIE1pbHRvbiBLZXlu
ZXMsIE1LMSAxUFQsIFVLDQpSZWdpc3RyYXRpb24gTm86IDEzOTczODYgKFdhbGVzKQ0KPC9wcmU+
DQogICAgPC9ibG9ja3F1b3RlPg0KICAgIDxicj4NCiAgPC9ib2R5Pg0KPC9odG1sPg0K

--------------1ZwzVE4eoGd2lFKru0aC4Zl0--

--===============1529547040435163194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1529547040435163194==--

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B46BA83C5E6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jan 2024 16:00:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9552C43E53
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jan 2024 15:00:33 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
	by lists.linaro.org (Postfix) with ESMTPS id 3D50143E21
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jan 2024 15:00:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=lVL0gHpC;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.236.41 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ci9tS/t1sLLMNvt+T1y9QtIeSCeBKzwygEu4abGvQyNkQpfgUn1BN8KmZHTDdDL84PyMqitFlSpvQdeiBh2mXKEL9IoGPptmnrR8SFhGlVU+EHAyUNxy6gH20gjPlINSfTc0MaJQDxzS7wZj2+lqzZa7WQx9JiUzVZY2QWQYvA9twb6y248opSwml3L6QkAL4zfYYv2K9duCqo5hPVIzyUWAoM3L56G0cOipxvHRNycMXK9ZF+j1uyNXpWilKcWhgeLurWcFVuXhQPC110Q6s3QQ9/VXISQVDMLwHWmSIziYQAlAdhBoTxvf76SP/sHhONkmwTJEMofQda4Hm8LLfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tpy/4vMuXM9y6vOEXSPY7qm1mnaoiTsHs/uZ23ER7lg=;
 b=PEt9q4fMfM1ToyjvWqvWFcUttKmQJLn0DH/XqMy7Gq/1JwsGvsMY3uM3nvmd8sk+gPl1TkyDnYETPBJdDHIyot3hhEnpqIju/oIdPDxhPKaMweEDJbxLMoPbuRigvZkgaw3pw/6mMtpO6Drj4/y6voKkrxHE3WKgKB4AfFYHTPFpBv+54b8RoqqycimTX18MPZJAXFTO6zNI5mljcyGkIH3Z9dOvBp/1Rqj/9toY56U2N72BB85rBJPKXRbir4taF6rCd8UB29rpXOp1SlQai0HSWWwedhcsP4mgdzHErOokG/G+2a2XDdRtonVhiMAGW9akfpjAxUtLunqSk1ZDKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tpy/4vMuXM9y6vOEXSPY7qm1mnaoiTsHs/uZ23ER7lg=;
 b=lVL0gHpCADaeV3nXDQfXBQsRVsfxbvQ7atm7KfEAHJBfYVQu7wdCF0UpZNkNog5uuH+fqvYdW5mqyfziV8Xmm/p+4///nLZRiaxjaxRDtCuI0HulUrXEHMGSx1nUUGiWbIlWhU4bYqmgXqgD8WNHDcaryvzYJVqg3Ajtgx9orBY=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA3PR12MB9179.namprd12.prod.outlook.com (2603:10b6:806:3a1::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Thu, 25 Jan
 2024 15:00:23 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653%4]) with mapi id 15.20.7228.026; Thu, 25 Jan 2024
 15:00:22 +0000
Message-ID: <2ac7562c-d221-409a-bfee-1b3cfcc0f1c6@amd.com>
Date: Thu, 25 Jan 2024 16:00:16 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Cercueil <paul@crapouillou.net>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20240119141402.44262-1-paul@crapouillou.net>
 <20240119141402.44262-2-paul@crapouillou.net>
 <8035f515-591f-4c87-bf0a-23d5705d9b1c@gmail.com>
 <442f69f31ece6d441f3dc41c3dfeb4dcf52c00b8.camel@crapouillou.net>
 <0b6b8738-9ea3-44fa-a624-9297bd55778f@amd.com>
 <e4620acdf24628d904cedcb0030d78b14559f337.camel@crapouillou.net>
 <85a89505-edeb-4619-86c1-157f7abdd190@amd.com>
 <0fe2755fb320027234c086bcc88fd107855234c5.camel@crapouillou.net>
 <577501f9-9d1c-4f8d-9882-7c71090e5ef3@amd.com>
 <7928c0866ac5b2bfaaa56ad3422bedc9061e0f7b.camel@crapouillou.net>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <7928c0866ac5b2bfaaa56ad3422bedc9061e0f7b.camel@crapouillou.net>
X-ClientProxiedBy: FR3P281CA0205.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA3PR12MB9179:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f2641cb-e43b-4cbc-dbbe-08dc1db65aea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Us0sgN8t90Z8w/5Ptclrxkf77IkKJdsEi+x3b+g/FKlVeUMPhZuxwXVJxEJDaB8Oa7CBHHNAR9ASEyzYbpdS8AhXBGULoHFI2wsFqt/Pb62EXWfIuouiAAspIVPnua8kAUN2zo2yQVXJsMIca2GeSzM0+rLpWobxDWD3BPPeZFl6Ww0eBG/5jxBQbPvm5OoN/QDO8XItmPtMDvlwYRTg/tAOP3yY6EO5OOFKeCnqM+egro8uBC7b30uOcYziIMwaHgccvkNyzp5xC8+sajZlJbv1kKGuRxD9MBh4fa+Yqvp7VUHtgYfwT8FTGEjC9vcgN96SSkueD0rvWPe3ywY0PMlrE3WBjjiOf6N2HGHQ0y8MiYGWzQ1MmNPNhsE9YVTCizJ2bKSMjdAiXms87R3OZ8lNyN2GEk2xHnrwsGmarCAcbYUERplEU+eakw7KFv5MM0rFVMkLrHkc9yTVhUUI9Wj7DFTvUf/mGTaAVfOR+yewd2lZCKiOvO/o6s7ccv90UlMzQ8hQrSzBtD2JNowgLW1Hfk82WPPqixH6u5ctN+lkMdKNoACWhfAM/m6PAk+DwkLEQyVu8SrPaRxWernM4F3uHKY35pHYjfDuIjUMlv+rzejQsilXjgZZV5jB9ldOr7B9Usu901T1m8ldrXstjA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(396003)(136003)(39860400002)(366004)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(41300700001)(26005)(2616005)(31686004)(6486002)(36756003)(478600001)(33964004)(6512007)(6506007)(6666004)(83380400001)(38100700002)(54906003)(5660300002)(31696002)(2906002)(316002)(110136005)(66476007)(66556008)(66946007)(86362001)(8936002)(7416002)(4326008)(8676002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZkdPSnNJUWhPM2tMKzlIbUJWRENqUUtobWwxTFZqQTBaUXRRMnFIOXk5YUU2?=
 =?utf-8?B?S0Nkblo2eVdqalFlWDc5bFdnNWxsdi9xRjk0Sm5RR2paUVBXUUdGelVJdEtq?=
 =?utf-8?B?NUJGN0UrcThCZ1IxQTBUcEc5R0gzZERtVnZrYnN4a1pnS05rdXVOZ04vSXlN?=
 =?utf-8?B?RmlyN2ladGlBNWZTaURoL0lrS3Z3TlJWUDRpcm5pRjJaNk9oNzJFMmx3Tmky?=
 =?utf-8?B?dXJWY1B4Ym9CL1lrZHg1U0RYRUs5UGNaOG8zSXpwTWlibiswZXYya0paK09o?=
 =?utf-8?B?S1BIMHlBaG5JYUZRait5OFMza0U4b21IUG5GM2VaK0hOUXJQejM1TkZRQldH?=
 =?utf-8?B?Mlc3T2ZVZEo3QU10dHdrWXZ0M3ZMaVNGTThJK0ZLVDM3V2xYMWR2Y0F6d2Fo?=
 =?utf-8?B?RTRhMjZESnlrNzQwb3JiNWN5VWlYWnZ4VVZZWE9zMW9WMU83Rk5RRkZMQ2xy?=
 =?utf-8?B?TkVHWHNqTUJiNXFIY0xraGVhZlVhcU54V1h3K2gwcEtBc0VvcVlGMTQzMG52?=
 =?utf-8?B?dHgvRnRlQ25HMTBjNDRkTmk2UTg5clVxdHZscEh1N0ZmY1pWV3JLa0x2SDdW?=
 =?utf-8?B?V2FTUjFrNlRwOW11Q2M1QmdBaXJBS3p6aHg0YUNqNk53Z3FzQWUzS0ljVE12?=
 =?utf-8?B?VS9pTFQ3SVFIdEpQTVZxMGcwakZPazJONnliRzFUcTloQWxXQW54QlhEaWl1?=
 =?utf-8?B?QnlxVVZ3c1daendTSnVQYXFYeGZWeFpmQktBVXlKd3hGeUxreTFCdFN4WU1o?=
 =?utf-8?B?enNucUMrWnM4dzZUa241bUNMajJDVzdmbEM1Z3ZVTjArbkhpRWRxNzBoK3dO?=
 =?utf-8?B?anZmMG1xWEhXYnk3STJHVHpROWJHU0YrL1JoYmpJTVBWMTNmNmt6OGlCeVhU?=
 =?utf-8?B?bkpWTjZiU09OUHpUSkpOc2kyNmlJVGdCK0VsMk53R1l2MFpGS3VjTzZHR1Fy?=
 =?utf-8?B?UlluSnZpNTc1TzFmNFVOMUQvMjk1N2ROQk9nYWJFdFhsSlRKSkdaZS8xUVJG?=
 =?utf-8?B?Y0tDTnI5UEIwV3U5Y0lJL25SQTFmdFBrVGluMHBjMXVLd3RRUHlBN2JNQjZF?=
 =?utf-8?B?RUY0UjBhNEdHWjNMaG81L05pejhjK3JVN0ZNWWt4dUhOd1V0UlpOZUZvRkhJ?=
 =?utf-8?B?SCtObDEyV1NOZ1NUK1ZJVkh4Q1Y1NXdmUXZ4aWE5UnpRd3VQdUFYaWVpMVFY?=
 =?utf-8?B?dHpXaGxPZzFsVHVCQThPVFh5eDdoZ1JxL1lCaUwzSjdLa1pIZ3N2VnQzWm82?=
 =?utf-8?B?MTlnQTVtOHRJdHF2OGYrWXN2eDI0cm5BTldGYjJHYUUySGZCQzlaNGx6UXdJ?=
 =?utf-8?B?cHdZdjBIUXhkQ29BaVB4S3BQNVJmRVFyTGtwWGhXYnZySzlyVWY2aVh1UWZz?=
 =?utf-8?B?M0VSdGJINlJzTXRwdHk5WDFCRmh4aFBlN3EySmhMeEJhTEVTWEY4bW93UjFM?=
 =?utf-8?B?OVB4ejNDaGZ3OUhnQktXY2VUOEd4cWlTblJXR2RMRXI3STFwcWhVTU80T0JW?=
 =?utf-8?B?bGlGWmpFQVc2Qk5vSWRSK1NYZGgwMERrWXNNemJvQjVCTnlGSG95OEg1TWxu?=
 =?utf-8?B?YTF1cy9oZ1p0V2lJc2picXByN2U5c3dKTU1QVFdIZ2RJZzg0V0JmRkRWZExC?=
 =?utf-8?B?VzFzalkyUDJJSFBpMUhtWGZZSm5PankzaGJ0RkZVbVB6ejVqNlZRVllBWVZu?=
 =?utf-8?B?dFVHS3EzWWdCY1FrNmhTa3BoSDNtRmg0cXJ3ZXhsWE1YVmFYS2J5RGtnTWF6?=
 =?utf-8?B?NlpvSGNzTGRyWHlxREpxSFc1UmxJZW53ZW5qS3E2L2tBeHhhQkpEdk0xR1Nv?=
 =?utf-8?B?N3grMXpPOCs5dHpxSDhqV0VuQ0FWODdwaVJLQjl5T1lzRm4rcGoxNmVWdUJS?=
 =?utf-8?B?QWl6WFBLZno5YUlpbk9EdEVNbldtbmRxL0FNa0x4ZDVEMk9xU0Mvb2xDcnJH?=
 =?utf-8?B?TE43OTlWanMxY3pvOTFKRWtBSXQrd09ldlZBejlqNklTdDQvUFBTcjFzZEtv?=
 =?utf-8?B?WkEwOGdNOGVaS3k1SGxRRW03aVNTVXIyVjFUVWtCT2pkcGNrMkNrYnFIMDY1?=
 =?utf-8?B?SThOYitadkJlcVFpMldjYjQ5UVpoZkZLM0hIV3Y4cGkvZzlqZ1RRUG5WQWJx?=
 =?utf-8?Q?hK1zo2my5YuK9p9Fhe4KZ8ee0?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f2641cb-e43b-4cbc-dbbe-08dc1db65aea
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2024 15:00:22.9369
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dllCWIzLdtrXTdJET6s9RnDxBRqIpTrZmg7o7FOGjgDMUrKS2EM3ASerm9mL4ziw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB9179
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3D50143E21
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.49 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.41:from];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_TO(0.00)[crapouillou.net,gmail.com,linuxfoundation.org,lwn.net,linaro.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,ffwll.ch];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: 3VU5UETXCLN3U4SJEUZS52EDL3I625ZE
X-Message-ID-Hash: 3VU5UETXCLN3U4SJEUZS52EDL3I625ZE
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/6] dma-buf: Add dma_buf_{begin,end}_access()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3VU5UETXCLN3U4SJEUZS52EDL3I625ZE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4592175918687100072=="

--===============4592175918687100072==
Content-Type: multipart/alternative;
 boundary="------------qYUwP61eyIICIm0RCw6BFLAc"
Content-Language: en-US

--------------qYUwP61eyIICIm0RCw6BFLAc
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjQuMDEuMjQgdW0gMTE6NTggc2NocmllYiBQYXVsIENlcmN1ZWlsOg0KPiBbU05JUF0NCj4+
PiAgIA0KPj4+IFRoZSBwcm9ibGVtIHdhcyB0aGVuIHRoYXQgZG1hX2J1Zl91bm1hcF9hdHRhY2ht
ZW50IGNhbm5vdCBiZSBjYWxsZWQNCj4+PiBiZWZvcmUgdGhlIGRtYV9mZW5jZSBpcyBzaWduYWxl
ZCwgYW5kIGNhbGxpbmcgaXQgYWZ0ZXIgaXMgYWxyZWFkeQ0KPj4+IHRvbw0KPj4+IGxhdGUgKGJl
Y2F1c2UgdGhlIGZlbmNlIHdvdWxkIGJlIHNpZ25hbGVkIGJlZm9yZSB0aGUgZGF0YSBpcw0KPj4+
IHN5bmMnZCkuDQo+Pj4gICANCj4+ICAgDQo+PiAgwqBXZWxsIHdoYXQgc3luYyBhcmUgeW91IHRh
bGtpbmcgYWJvdXQ/IENQVSBzeW5jPyBJbiBETUEtYnVmIHRoYXQgaXMNCj4+IGhhbmRsZWQgZGlm
ZmVyZW50bHkuDQo+PiAgIA0KPj4gIMKgRm9yIGltcG9ydGVycyBpdCdzIG1hbmRhdG9yeSB0aGF0
IHRoZXkgY2FuIGJlIGNvaGVyZW50IHdpdGggdGhlDQo+PiBleHBvcnRlci4gVGhhdCB1c3VhbGx5
IG1lYW5zIHRoZXkgY2FuIHNub29wIHRoZSBDUFUgY2FjaGUgaWYgdGhlDQo+PiBleHBvcnRlciBj
YW4gc25vb3AgdGhlIENQVSBjYWNoZS4NCj4gSSBzZWVtIHRvIGhhdmUgc3VjaCBhIHN5c3RlbSB3
aGVyZSBvbmUgZGV2aWNlIGNhbiBzbm9vcCB0aGUgQ1BVIGNhY2hlDQo+IGFuZCB0aGUgb3RoZXIg
Y2Fubm90LiBUaGVyZWZvcmUgaWYgSSB3YW50IHRvIHN1cHBvcnQgaXQgcHJvcGVybHksIEkgZG8N
Cj4gbmVlZCBjYWNoZSBmbHVzaC9zeW5jLiBJIGRvbid0IGFjdHVhbGx5IHRyeSB0byBhY2Nlc3Mg
dGhlIGRhdGEgdXNpbmcNCj4gdGhlIENQVSAoYW5kIHdoZW4gSSBkbywgSSBjYWxsIHRoZSBzeW5j
IHN0YXJ0L2VuZCBpb2N0bHMpLg0KDQpVc3VhbGx5IHRoYXQgaXNuJ3QgYSBwcm9ibGVtIGFzIGxv
bmcgYXMgeW91IGRvbid0IGFjY2VzcyB0aGUgZGF0YSB3aXRoIA0KdGhlIENQVS4NCg0KW1NOSVBd
DQoNCj4+PiAoYW5kIEkgKnRoaW5rKiB0aGVyZSBpcyBhIHdheSB0byBmb3JjZSBjb2hlcmVuY3kg
aW4gdGhlDQo+Pj4gVWx0cmFzY2FsZSdzDQo+Pj4gaW50ZXJjb25uZWN0IC0gd2UncmUgaW52ZXN0
aWdhdGluZyBpdCkNCj4+PiAgIA0KPj4gICANCj4+ICDCoFdoYXQgeW91IGNhbiBkbyBpcyB0aGF0
IGluc3RlYWQgb2YgdXNpbmcgdWRtYWJ1ZiBvciBkbWEtaGVhcHMgaXMNCj4+IHRoYXQgdGhlIGRl
dmljZSB3aGljaCBjYW4ndCBwcm92aWRlIGNvaGVyZW5jeSBhY3QgYXMgZXhwb3J0ZXJzIG9mIHRo
ZQ0KPj4gYnVmZmVycy4NCj4+ICAgDQo+PiAgwqBUaGUgZXhwb3J0ZXIgaXMgYWxsb3dlZCB0byBj
YWxsIHN5bmNfZm9yX2NwdS9zeW5jX2Zvcl9kZXZpY2Ugb24gaXQncw0KPj4gb3duIGJ1ZmZlcnMg
YW5kIGFsc28gZ2V0cyBiZWdpbi9lbmQgQ1BVIGFjY2VzcyBub3RmaWNhdGlvbnMuIFNvIHlvdQ0K
Pj4gY2FuIHRoZW4gaGFuZGxlIGNvaGVyZW5jeSBiZXR3ZWVuIHRoZSBleHBvcnRlciBhbmQgdGhl
IENQVS4NCj4gQnV0IGFnYWluIHRoYXQgd291bGQgb25seSB3b3JrIGlmIHRoZSBpbXBvcnRlcnMg
d291bGQgY2FsbA0KPiBiZWdpbl9jcHVfYWNjZXNzKCkgLyBlbmRfY3B1X2FjY2VzcygpLCB3aGlj
aCB0aGV5IGRvbid0LCBiZWNhdXNlIHRoZXkNCj4gZG9uJ3QgYWN0dWFsbHkgYWNjZXNzIHRoZSBk
YXRhIHVzaW5nIHRoZSBDUFUuDQoNCldvdywgdGhhdCBpcyBhIGNvbXBsZXRlbHkgbmV3IHVzZSBj
YXNlIHRoZW4uDQoNCk5laXRoZXIgRE1BLWJ1ZiBub3IgdGhlIERNQSBzdWJzeXN0ZW0gaW4gTGlu
dXggYWN0dWFsbHkgc3VwcG9ydHMgdGhpcyBhcyANCmZhciBhcyBJIGNhbiBzZWUuDQoNCj4gVW5s
ZXNzIHlvdSBtZWFuIHRoYXQgdGhlIGV4cG9ydGVyIGNhbiBjYWxsIHN5bmNfZm9yX2NwdS9zeW5j
X2Zvcl9kZXZpY2UNCj4gYmVmb3JlL2FmdGVyIGV2ZXJ5IHNpbmdsZSBETUEgdHJhbnNmZXIgc28g
dGhhdCB0aGUgZGF0YSBhcHBlYXJzDQo+IGNvaGVyZW50IHRvIHRoZSBpbXBvcnRlcnMsIHdpdGhv
dXQgdGhlbSBoYXZpbmcgdG8gY2FsbA0KPiBiZWdpbl9jcHVfYWNjZXNzKCkgLyBlbmRfY3B1X2Fj
Y2VzcygpLg0KDQpZZWFoLCBJIG1lYW4gdGhlIGltcG9ydGVycyBkb24ndCBoYXZlIHRvIGNhbGwg
YmVnaW5fY3B1X2FjY2VzcygpIC8gDQplbmRfY3B1X2FjY2VzcygpIGlmIHRoZXkgZG9uJ3QgZG8g
Q1BVIGFjY2VzcyA6KQ0KDQpXaGF0IHlvdSBjYW4gc3RpbGwgZG8gYXMgZXhwb3J0ZXIgaXMgdG8g
Y2FsbCBzeW5jX2Zvcl9kZXZpY2UoKSBhbmQgDQpzeW5jX2Zvcl9jcHUoKSBiZWZvcmUgYW5kIGFm
dGVyIGVhY2ggb3BlcmF0aW9uIG9uIHlvdXIgbm9uLWNvaGVyZW50IA0KZGV2aWNlLiBQYWlyZWQg
d2l0aCB0aGUgZmVuY2Ugc2lnbmFsaW5nIHRoYXQgc2hvdWxkIHN0aWxsIHdvcmsgZmluZSB0aGVu
Lg0KDQpCdXQgdGFraW5nIGEgc3RlcCBiYWNrLCB0aGlzIHVzZSBjYXNlIGlzIG5vdCBzb21ldGhp
bmcgZXZlbiB0aGUgbG93IA0KbGV2ZWwgRE1BIHN1YnN5c3RlbSBzdXBwb3J0cy4gVGhhdCBzeW5j
X2Zvcl9jcHUoKSBkb2VzIHRoZSByaWdodCB0aGluZyANCmlzIGNvaW5jaWRlbnQgYW5kIG5vdCBw
cm9wZXIgZW5naW5lZXJpbmcuDQoNCldoYXQgeW91IG5lZWQgaXMgYSBzeW5jX2RldmljZV90b19k
ZXZpY2UoKSB3aGljaCBkb2VzIHRoZSBhcHByb3ByaWF0ZSANCmFjdGlvbnMgZGVwZW5kaW5nIG9u
IHdoaWNoIGRldmljZXMgYXJlIGludm9sdmVkLg0KDQo+IEluIHdoaWNoIGNhc2UgLSB0aGlzIHdv
dWxkIHN0aWxsIGRlbXVsdGlwbHkgdGhlIGNvbXBsZXhpdHk7IG15IFVTQi0NCj4gZnVuY3Rpb25m
cyBpbnRlcmZhY2UgaGVyZSAoYW5kIElJTyBpbnRlcmZhY2UgaW4gdGhlIHNlcGFyYXRlIHBhdGNo
c2V0KQ0KPiBhcmUgbm90IGRldmljZS1zcGVjaWZpYywgc28gSSdkIHJhdGhlciBrZWVwIHRoZW0g
aW1wb3J0ZXJzLg0KPiAgIA0KPj4gIMKgSWYgeW91IHJlYWxseSBkb24ndCBoYXZlIGNvaGVyZW5j
eSBiZXR3ZWVuIGRldmljZXMgdGhlbiB0aGF0IHdvdWxkDQo+PiBiZSBhIHJlYWxseSBuZXcgdXNl
IGNhc2UgYW5kIHdlIHdvdWxkIG5lZWQgbXVjaCBtb3JlIGFncmVlbWVudCBvbiBob3cNCj4+IHRv
IGRvIHRoaXMuDQo+IFtzbmlwXQ0KPg0KPiBBZ3JlZWQuIERlc2lnaW5nIGEgZ29vZCBnZW5lcmlj
IHNvbHV0aW9uIHdvdWxkIGJlIGJldHRlci4NCj4NCj4gV2l0aCB0aGF0IHNhaWQuLi4NCj4NCj4g
TGV0J3Mga2VlcCBpdCBvdXQgb2YgdGhpcyBVU0ItZnVuY3Rpb25mcyBpbnRlcmZhY2UgZm9yIG5v
dy4gVGhlDQo+IGludGVyZmFjZSBkb2VzIHdvcmsgcGVyZmVjdGx5IGZpbmUgb24gcGxhdGZvcm1z
IHRoYXQgZG9uJ3QgaGF2ZQ0KPiBjb2hlcmVuY3kgcHJvYmxlbXMuIFRoZSBjb2hlcmVuY3kgaXNz
dWUgaW4gaXRzZWxmIHJlYWxseSBpcyBhDQo+IHRhbmdlbnRpYWwgaXNzdWUuDQoNClllYWgsIGNv
bXBsZXRlbHkgYWdyZWUuDQoNCj4gU28gSSB3aWxsIHNlbmQgYSB2NiB3aGVyZSBJIGRvbid0IHRy
eSB0byBmb3JjZSB0aGUgY2FjaGUgY29oZXJlbmN5IC0NCj4gYW5kIGluc3RlYWQgYXNzdW1lIHRo
YXQgdGhlIGF0dGFjaGVkIGRldmljZXMgYXJlIGNvaGVyZW50IGJldHdlZW4NCj4gdGhlbXNlbHZl
cy4NCj4NCj4gQnV0IGl0IHdvdWxkIGJlIGV2ZW4gYmV0dGVyIHRvIGhhdmUgYSB3YXkgdG8gZGV0
ZWN0IG5vbi1jb2hlcmVuY3kgYW5kDQo+IHJldHVybiBhbiBlcnJvciBvbiBhdHRhY2guDQoNClRh
a2UgYSBsb29rIGludG8gdGhlIERNQSBzdWJzeXN0ZW0uIEknbSBwcmV0dHkgc3VyZSB3ZSBhbHJl
YWR5IGhhdmUgDQpzb21ldGhpbmcgbGlrZSB0aGlzIGluIHRoZXJlLg0KDQpJZiBub3RoaW5nIGVs
c2UgaGVscHMgeW91IGNvdWxkIHRha2UgYSBsb29rIGlmIHRoZSBjb2hlcmVudCBtZW1vcnkgDQph
Y2Nlc3MgbWFzayBpcyBub24gemVybyBvciBzb21ldGhpbmcgbGlrZSB0aGF0Lg0KDQpSZWdhcmRz
LA0KQ2hyaXN0aWFuLg0KDQo+DQo+IENoZWVycywNCj4gLVBhdWwNCg==

--------------qYUwP61eyIICIm0RCw6BFLAc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    Am 24.01.24 um 11:58 schrieb Paul Cercueil:<br>
    <blockquote type="cite" cite="mid:7928c0866ac5b2bfaaa56ad3422bedc9061e0f7b.camel@crapouillou.net">[SNIP]<span style="white-space: pre-wrap">
</span><span style="white-space: pre-wrap">
</span>
      <blockquote type="cite">
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">&nbsp;
The problem was then that dma_buf_unmap_attachment cannot be called
before the dma_fence is signaled, and calling it after is already
too
late (because the fence would be signaled before the data is
sync'd).
&nbsp;
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">&nbsp;
&nbsp;Well what sync are you talking about? CPU sync? In DMA-buf that is
handled differently.
&nbsp;
&nbsp;For importers it's mandatory that they can be coherent with the
exporter. That usually means they can snoop the CPU cache if the
exporter can snoop the CPU cache.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
I seem to have such a system where one device can snoop the CPU cache
and the other cannot. Therefore if I want to support it properly, I do
need cache flush/sync. I don't actually try to access the data using
the CPU (and when I do, I call the sync start/end ioctls).</pre>
    </blockquote>
    <br>
    Usually that isn't a problem as long as you don't access the data
    with the CPU.<br>
    <br>
    [SNIP]<br>
    <br>
    <span style="white-space: pre-wrap">
</span><span style="white-space: pre-wrap">
</span>
    <blockquote type="cite" cite="mid:7928c0866ac5b2bfaaa56ad3422bedc9061e0f7b.camel@crapouillou.net">
      <blockquote type="cite">
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">(and I *think* there is a way to force coherency in the
Ultrascale's
interconnect - we're investigating it)
&nbsp;
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">&nbsp;
&nbsp;What you can do is that instead of using udmabuf or dma-heaps is
that the device which can't provide coherency act as exporters of the
buffers.
&nbsp;
&nbsp;The exporter is allowed to call sync_for_cpu/sync_for_device on it's
own buffers and also gets begin/end CPU access notfications. So you
can then handle coherency between the exporter and the CPU.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
But again that would only work if the importers would call
begin_cpu_access() / end_cpu_access(), which they don't, because they
don't actually access the data using the CPU.</pre>
    </blockquote>
    <br>
    Wow, that is a completely new use case then.<br>
    <br>
    Neither DMA-buf nor the DMA subsystem in Linux actually supports
    this as far as I can see.<br>
    <br>
    <blockquote type="cite" cite="mid:7928c0866ac5b2bfaaa56ad3422bedc9061e0f7b.camel@crapouillou.net">
      <pre class="moz-quote-pre" wrap="">Unless you mean that the exporter can call sync_for_cpu/sync_for_device
before/after every single DMA transfer so that the data appears
coherent to the importers, without them having to call
begin_cpu_access() / end_cpu_access().</pre>
    </blockquote>
    <br>
    Yeah, I mean the importers don't have to call begin_cpu_access() /
    end_cpu_access() if they don't do CPU access :)<br>
    <br>
    What you can still do as exporter is to call sync_for_device() and
    sync_for_cpu() before and after each operation on your non-coherent
    device. Paired with the fence signaling that should still work fine
    then.<br>
    <br>
    But taking a step back, this use case is not something even the low
    level DMA subsystem supports. That sync_for_cpu() does the right
    thing is coincident and not proper engineering.<br>
    <br>
    What you need is a sync_device_to_device() which does the
    appropriate actions depending on which devices are involved.<br>
    <br>
    <blockquote type="cite" cite="mid:7928c0866ac5b2bfaaa56ad3422bedc9061e0f7b.camel@crapouillou.net">
      <pre class="moz-quote-pre" wrap="">In which case - this would still demultiply the complexity; my USB-
functionfs interface here (and IIO interface in the separate patchset)
are not device-specific, so I'd rather keep them importers.
&nbsp;
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">&nbsp;If you really don't have coherency between devices then that would
be a really new use case and we would need much more agreement on how
to do this.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
[snip]

Agreed. Desiging a good generic solution would be better.

With that said...

Let's keep it out of this USB-functionfs interface for now. The
interface does work perfectly fine on platforms that don't have
coherency problems. The coherency issue in itself really is a
tangential issue.</pre>
    </blockquote>
    <br>
    Yeah, completely agree.<br>
    <br>
    <blockquote type="cite" cite="mid:7928c0866ac5b2bfaaa56ad3422bedc9061e0f7b.camel@crapouillou.net">
      <pre class="moz-quote-pre" wrap="">So I will send a v6 where I don't try to force the cache coherency -
and instead assume that the attached devices are coherent between
themselves.

But it would be even better to have a way to detect non-coherency and
return an error on attach.</pre>
    </blockquote>
    <br>
    Take a look into the DMA subsystem. I'm pretty sure we already have
    something like this in there.<br>
    <br>
    If nothing else helps you could take a look if the coherent memory
    access mask is non zero or something like that.<br>
    <br>
    Regards,<br>
    Christian.<br>
    <br>
    <blockquote type="cite" cite="mid:7928c0866ac5b2bfaaa56ad3422bedc9061e0f7b.camel@crapouillou.net">
      <pre class="moz-quote-pre" wrap="">

Cheers,
-Paul
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------qYUwP61eyIICIm0RCw6BFLAc--

--===============4592175918687100072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4592175918687100072==--

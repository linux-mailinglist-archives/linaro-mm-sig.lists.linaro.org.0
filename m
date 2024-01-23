Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D7B838DF0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 12:52:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3280E43D1A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 11:52:45 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2061.outbound.protection.outlook.com [40.107.223.61])
	by lists.linaro.org (Postfix) with ESMTPS id 082453EFCF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jan 2024 11:52:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=NqyGGpYv;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.223.61 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lD7WpB5dgv67toNRqTg2H9vQRVCyvOtbKKrm6XqAcsDz8IzUg8b6e4FBwpeN2LzN48ErCHi30wA4OTN1vpIpn7zMoesFDRm/AbDVl6J6w5vHwReQgmzxLfX+Vc4CAMxoJFtk5PBs2QNfFtKacemYu+pLccHAZIOjwTLqVk3zKnwSDrs3qluszobTdQJNicOutCyYlKUCt/WdZ8LueOWi2Y+K4dmR3H4YqNRhjK2GuC4WDCmMlGr2drJrNEc4G13Ac5xBp+DgsRXqUigLimwyIJXzAy9GazUxz3KJrIwqr/hFzkrDLzOWKVQ/e55Azd9zTSIlKAl7qNtW/6IwLyXmqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oy4fbR9UbO8+KCr7W9tHO9OyrVJdLHBYuWjQT1M0LbU=;
 b=ndse23KLbt1kNIscm3X1m+SWDMpyON9kyI5KVrvoHoYCn1xGiUxxNCnPPOxCWk4Zv43VAGDoCJwF5aqd2oxmDYFLQBOCbVr9XCEFlF8ctZKumYMq/GrV7p7qz3f+h9B0f/GKE5BsPgotinmpoPaBErOdcPak2LOYvMEl5iw6JR/Nck216P5LPIFrRVbhH8Eax+x6OEtGFmcb8hKD26DerVDife5flf3HdN4abe3EnWct1XrZLgVQjqk5i6ygCpDqQKVleSmmrWjBZyb07bHvNFtPwf7QoOfpyPac8MebyMzA/85zOHpHAwkNZtKDjQ0lozakNvKAFCAt1TSOME24kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oy4fbR9UbO8+KCr7W9tHO9OyrVJdLHBYuWjQT1M0LbU=;
 b=NqyGGpYv3Q2krlzds/X5pOQOanTmDcuqDUT5SiqITOd9D+O9iBDAdnEf+KRfl4dhgQGBnHhpt9vTZ5w++PPuMNLqTPARGibqhO/TaxSFUJ5edHZBNL9hReZ+4wRmOxgdGVXNquhZ/37wgW6E4yziGOFhW0/nbg2YN5Cww5JN0QE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BL3PR12MB6572.namprd12.prod.outlook.com (2603:10b6:208:38f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.34; Tue, 23 Jan
 2024 11:52:35 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::e1fb:4123:48b1:653%4]) with mapi id 15.20.7202.031; Tue, 23 Jan 2024
 11:52:29 +0000
Message-ID: <85a89505-edeb-4619-86c1-157f7abdd190@amd.com>
Date: Tue, 23 Jan 2024 12:52:21 +0100
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
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <e4620acdf24628d904cedcb0030d78b14559f337.camel@crapouillou.net>
X-ClientProxiedBy: FR4P281CA0321.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:eb::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BL3PR12MB6572:EE_
X-MS-Office365-Filtering-Correlation-Id: bfa89bfc-5d3e-42ab-1399-08dc1c09c69f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	x7WlHNrr4s0Teb1KKRw/K+hyylj0HmMy5BfOMUsUBkyi4bsWIXBy78/NRUWGL3Aa6elHQT8q3NA+yf70kI73Dsjy8IW3VfgTNO33H4YhmUmJylDa/7JmY2BYHpv77Kq7vGvIz+2hq+F88WIeFuVV5JgQCe70BcMAZsvo9I2Y/Eu4SbrL7Hgee3Nf9mvHFB3pTKweIOCapQe4P/JSyqKrKvXeV6DGD5wf2gX0KLPyCRNyaOh34IuqNkOBhqgrEHx2CU8mVZYQBFc9/N14UTSGcvfuGGkTXQ77MCBevSj7EzUeo600yJRKaCWdW148YpLP5MseLjagREYhz7YNt8LOO1qZ6mlMbLEE+MPKkrSDxFw4k0Y5NKXwwVtVH3cUy2Ssx0jjPIsRmzZlmDRyyhqi7KO6D4jjKtD/kNt92aW+le04/CSMCV2BhGAnIn4FSVqnrWPmuCF9D7bSCAFtGpj1bCFtKIwsE+b9TwYHDqYllhUXw9I+oVtk6C5ps2fNHyXwJerj1illhHW3Y1drXh34HGSIsanbOHRQteqsabG7dVlke/3mQQ8moeUoVaJ/JMB9AY5IWubDO3Uyo1bydt1pzQ/Hh5jHBRajeueIRgBwoo3T+vtXzMftgqNJ+BT5vfz1/7XU5X9KOkFBbd0FlL+Qfg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(346002)(39860400002)(366004)(136003)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(31696002)(66574015)(83380400001)(2616005)(26005)(66556008)(66476007)(8676002)(38100700002)(41300700001)(66946007)(54906003)(5660300002)(316002)(8936002)(7416002)(110136005)(4326008)(6512007)(6506007)(6666004)(6486002)(478600001)(2906002)(36756003)(86362001)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YTg4R3ZaekgrMGxrVXExbU5MSC9Dci9wZlVrdmVtRTc3MndQaHBJSWk2cFpm?=
 =?utf-8?B?Vkx3WUJlQTMrUzJ0UDlabDJTMXp1M2J1RmRBaDlXdUh6TjRFOEVjaGY5d3hI?=
 =?utf-8?B?OC9qbjFNZm9IUjdDakkwOFpFSm9NZWkvbG43bTlOSGxENFlpS3NtYkE0UitM?=
 =?utf-8?B?ampzeUl2Q2h1V05UV0Jrc1d2dXFrVkU3T2MxOFZYRXNRUzRSYWFCNFpocGE5?=
 =?utf-8?B?YjcxSjRDakN3S0EvaTEvS0R0by85cFNHNzhMMERTN05qdFFSejRsUm1rRVpv?=
 =?utf-8?B?aVBFaUs4TjlvSmFPdzBiL0RUSVVQVWlNbjhFckRVUGdmRHBGbVJIeHJtOTJt?=
 =?utf-8?B?TEdMUU5DYWw1RHRoSWIxYlNzVURPR1lYZkRVazRCL3R1M21rZHZkNUdVVnFZ?=
 =?utf-8?B?ZG5uNUg5RXkrdVpyK2QzN3ZQc2NldzZIZi9WQlhja1NBTmVnSGIwcEczdlp5?=
 =?utf-8?B?OVc4Z3plZzZjeEJROS9OTXdUc3dwTmlsQlNuK0UwSzZhMUV3dTA5cndHVHFp?=
 =?utf-8?B?OTRFbjkyYWxaRGdidE95RHBkRzNJbk9jdG5QLzUyV3JpbFlIWkMwaW9GTTRL?=
 =?utf-8?B?MVR2Um9LWGV3WGVWZXBML0s5Z1NBdXR2NWpPcDVDUjF6azdKR1hqR2JEWFVl?=
 =?utf-8?B?TkV2RlV5WDU4bTRRcGdyNmYrRFVkZDBEMW1QQTI3Wlk5NnhjeTExVDZrSHhu?=
 =?utf-8?B?d0NSOWY4MlRobi90bk9hT1gxV2p6L1VMMUtKclRFSGh1TklkcnlRWkZGRVFE?=
 =?utf-8?B?S1lpQ2ZscTRUS1dkYzVhSjJPWnlpTFMyWDNCam9KMmJ2RXBtMXRUTlhHQ2R0?=
 =?utf-8?B?aWtjL1FUbUdLZVppWXRBQzl3alRzb0tLd3M3cDVLWlA2ajQ0SS9SMHN0QXNr?=
 =?utf-8?B?QXZzaGozWWYxNnJLeXVpZkQ4WU9sTGJzZEcvYWUwdE5Ia3VoUE9JMTlPMGV0?=
 =?utf-8?B?U05XdENYanZHa2MyVEx3b3ROSlB3M3l0bTZ0SGJDL1NCNFFyZ2ZHQ2lyRDBq?=
 =?utf-8?B?bVk4YWlMTUl2QVhaa3g4YmdQQThZMCtqODVlTUYzb3FlT1NhdjRiT3NDTFZT?=
 =?utf-8?B?cWd0amdaZWZzMzlsbFY4WTMzNlh0M3AyQkxKZndzeFEvVktwU0pQUnFyR0o0?=
 =?utf-8?B?cjQxdHovZzB6UGd2SFltODd2TWdMN2FERk5RUmpNWjRoTXBocE55S2lHZTIy?=
 =?utf-8?B?TzBvT1NYNFRXZkpmVGZrRnFUTTMySGY3TWhsOWtiRUxkTFp4Sk14azJqNis5?=
 =?utf-8?B?dVJrM2RKVlNEYWhsUGtMRFV6UFNmeGxaTzVRVDlQSkNxR3FGK0k1eit5RDRN?=
 =?utf-8?B?VVdRb1ZpZjRaekJuUWFUaldBUVRRUUEwU09LREtpendYaGVjUERxSUR0WU9l?=
 =?utf-8?B?eStqbTc4eDNhSnJ6S2lwaW8xVFBSYzVHc25hVW43VjczWTYvVnRCU2wzbGFU?=
 =?utf-8?B?TFkwdXVJUWFueDkwQ2Q1UU92ZENBNU5OTElYajM5cjQwd3AzbWdjbnV5UThn?=
 =?utf-8?B?bXBtaWlNc3l1YThMdTU1ZkNGS0d3YjYycTFoMFlkU1JYNXZVQXlwMHlaV2FJ?=
 =?utf-8?B?dUxEZXBDWGtXSjcvVDU2NGgwaTEvd0xzVUphaXZ2akdCUFcwRmpvMnFSN1FG?=
 =?utf-8?B?cmxkSWF6N1liM0pMUlZsUk85eHovWDJtaDEvQjlJVUp6ZUcvVVczSFRZQ2FP?=
 =?utf-8?B?bkluSncvK2tsUUJnVWVIL3BGY1Q0QlhnRDlnemJ0VnRYNWZWa2FsTUp2QkNu?=
 =?utf-8?B?QnZ3SUJQM2R6TXYrUzRqbys3QWprcHc5dWVyLytOR29vcFdGRlhFNi9qcnl4?=
 =?utf-8?B?OGYyaENydmhLRk5JUksyb21oK3grOEJqK1FiVjZONGxFQWxwclNjZWtBanFH?=
 =?utf-8?B?ZFpSR2NOQWpKN3JXWkxaVkdFOUxMWFI2NTYvWHJkSW84Z3VjWklaaWRsbFhz?=
 =?utf-8?B?RTYrQnQ0OU01cG1SQmxXYkpFNHozZWVXOFVSdkduSzhZZnFFM29KTXM3MFJa?=
 =?utf-8?B?andkOUZyQ2ozbXpiRjd5Y0tVa2pQVDdMVTNXU0RkZjloeFVTSXdoM21mcXJ3?=
 =?utf-8?B?R3M0RzdFUHYxT2pxSnFWSTVxTVpTY1BBK2d4dW94WU8ydmNyWWVJMFRqM1Ri?=
 =?utf-8?Q?OylojFnsfJVnigKymWgHor4R1?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfa89bfc-5d3e-42ab-1399-08dc1c09c69f
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2024 11:52:29.4526
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ttm9Gnp4Er+7JoIVqE1phhuC3/HbZeD0cF/I8REE4nJHEA3gZRZCeUyaGWJXHCOW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB6572
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 082453EFCF
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.49 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.61:from];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
Message-ID-Hash: 3EXAKLEW6PXD2YO2TUDNT6BKH2NWEL4T
X-Message-ID-Hash: 3EXAKLEW6PXD2YO2TUDNT6BKH2NWEL4T
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/6] dma-buf: Add dma_buf_{begin,end}_access()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3EXAKLEW6PXD2YO2TUDNT6BKH2NWEL4T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMDEuMjQgdW0gMTE6MTAgc2NocmllYiBQYXVsIENlcmN1ZWlsOg0KPiBIaSBDaHJpc3Rp
YW4sDQo+DQo+IExlIGx1bmRpIDIyIGphbnZpZXIgMjAyNCDDoCAxNDo0MSArMDEwMCwgQ2hyaXN0
aWFuIEvDtm5pZyBhIMOpY3JpdMKgOg0KPj4gQW0gMjIuMDEuMjQgdW0gMTI6MDEgc2NocmllYiBQ
YXVsIENlcmN1ZWlsOg0KPj4+IEhpIENocmlzdGlhbiwNCj4+Pg0KPj4+IExlIGx1bmRpIDIyIGph
bnZpZXIgMjAyNCDDoCAxMTozNSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyBhIMOpY3JpdMKgOg0K
Pj4+PiBBbSAxOS4wMS4yNCB1bSAxNToxMyBzY2hyaWViIFBhdWwgQ2VyY3VlaWw6DQo+Pj4+PiBU
aGVzZSBmdW5jdGlvbnMgc2hvdWxkIGJlIHVzZWQgYnkgZGV2aWNlIGRyaXZlcnMgd2hlbiB0aGV5
DQo+Pj4+PiBzdGFydA0KPj4+Pj4gYW5kDQo+Pj4+PiBzdG9wIGFjY2Vzc2luZyB0aGUgZGF0YSBv
ZiBETUFCVUYuIEl0IGFsbG93cyBETUFCVUYgaW1wb3J0ZXJzDQo+Pj4+PiB0bw0KPj4+Pj4gY2Fj
aGUNCj4+Pj4+IHRoZSBkbWFfYnVmX2F0dGFjaG1lbnQgd2hpbGUgZW5zdXJpbmcgdGhhdCB0aGUg
ZGF0YSB0aGV5IHdhbnQNCj4+Pj4+IHRvDQo+Pj4+PiBhY2Nlc3MNCj4+Pj4+IGlzIGF2YWlsYWJs
ZSBmb3IgdGhlaXIgZGV2aWNlIHdoZW4gdGhlIERNQSB0cmFuc2ZlcnMgdGFrZQ0KPj4+Pj4gcGxh
Y2UuDQo+Pj4+IEFzIERhbmllbCBhbHJlYWR5IG5vdGVkIGFzIHdlbGwgdGhpcyBpcyBhIGNvbXBs
ZXRlIG5vLWdvIGZyb20gdGhlDQo+Pj4+IERNQS1idWYgZGVzaWduIHBvaW50IG9mIHZpZXcuDQo+
Pj4gV2hhdCBkbyB5b3UgbWVhbiAiYXMgRGFuaWVsIGFscmVhZHkgbm90ZWQiPyBJdCB3YXMgaGlt
IHdobw0KPj4+IHN1Z2dlc3RlZA0KPj4+IHRoaXMuDQo+PiBTb3JyeSwgSSBoYXZlbid0IGZ1bGx5
IGNhdGNoZWQgdXAgdG8gdGhlIGRpc2N1c3Npb24gdGhlbi4NCj4+DQo+PiBJbiBnZW5lcmFsIERN
QS1idWYgaXMgYnVpbGQgYXJvdW5kIHRoZSBpZGVhIHRoYXQgdGhlIGRhdGEgY2FuIGJlDQo+PiBh
Y2Nlc3NlZCBjb2hlcmVudGx5IGJ5IHRoZSBpbnZvbHZlZCBkZXZpY2VzLg0KPj4NCj4+IEhhdmlu
ZyBhIGJlZ2luL2VuZCBvZiBhY2Nlc3MgZm9yIGRldmljZXMgd2FzIGJyb3VnaHQgdXAgbXVsdGlw
bGUNCj4+IHRpbWVzDQo+PiBidXQgc28gZmFyIHJlamVjdGVkIGZvciBnb29kIHJlYXNvbnMuDQo+
IEkgd291bGQgYXJndWUgdGhhdCBpZiBpdCB3YXMgYnJvdWdodCB1cCBtdWx0aXBsZSB0aW1lcywg
dGhlbiB0aGVyZSBhcmUNCj4gYWxzbyBnb29kIHJlYXNvbnMgdG8gc3VwcG9ydCBzdWNoIGEgbWVj
aGFuaXNtLg0KPg0KPj4gVGhhdCBhbiBleHBvcnRlciBoYXMgdG8gY2FsbCBleHRyYSBmdW5jdGlv
bnMgdG8gYWNjZXNzIGhpcyBvd24NCj4+IGJ1ZmZlcnMNCj4+IGlzIGEgY29tcGxldGUgbm8tZ28g
Zm9yIHRoZSBkZXNpZ24gc2luY2UgdGhpcyBmb3JjZXMgZXhwb3J0ZXJzIGludG8NCj4+IGRvaW5n
IGV4dHJhIHN0ZXBzIGZvciBhbGxvd2luZyBpbXBvcnRlcnMgdG8gYWNjZXNzIHRoZWlyIGRhdGEu
DQo+IFRoZW4gd2hhdCBhYm91dCB3ZSBhZGQgdGhlc2UgZG1hX2J1Zl97YmVnaW4sZW5kfV9hY2Nl
c3MoKSwgd2l0aCBvbmx5DQo+IGltcGxlbWVudGF0aW9ucyBmb3IgImR1bWIiIGV4cG9ydGVycyBl
LmcuIHVkbWFidWYgb3IgdGhlIGRtYWJ1ZiBoZWFwcz8NCj4gQW5kIG9ubHkgaW1wb3J0ZXJzICh3
aG8gY2FjaGUgdGhlIG1hcHBpbmcgYW5kIGFjdHVhbGx5IGNhcmUgYWJvdXQgbm9uLQ0KPiBjb2hl
cmVuY3kpIHdvdWxkIGhhdmUgdG8gY2FsbCB0aGVzZS4NCg0KTm8sIHRoZSBwcm9ibGVtIGlzIHN0
aWxsIHRoYXQgeW91IHdvdWxkIGhhdmUgdG8gY2hhbmdlIGFsbCBpbXBvcnRlcnMgdG8gDQptYW5k
YXRvcnkgdXNlIGRtYV9idWZfYmVnaW4vZW5kLg0KDQpCdXQgZ29pbmcgYSBzdGVwIGJhY2sgY2Fj
aGluZyB0aGUgbWFwcGluZyBpcyBpcnJlbGV2YW50IGZvciBjb2hlcmVuY3kuIA0KRXZlbiBpZiB5
b3UgZG9uJ3QgY2FjaGUgdGhlIG1hcHBpbmcgeW91IGRvbid0IGdldCBjb2hlcmVuY3kuDQoNCklu
IG90aGVyIHdvcmRzIGV4cG9ydGVycyBhcmUgbm90IHJlcXVpcmUgdG8gY2FsbCBzeW5jX3RvX2Nw
dSBvciANCnN5bmNfdG9fZGV2aWNlIHdoZW4geW91IGNyZWF0ZSBhIG1hcHBpbmcuDQoNCldoYXQg
ZXhhY3RseSBpcyB5b3VyIHVzZSBjYXNlIGhlcmU/IEFuZCB3aHkgZG9lcyBjb2hlcmVuY3kgbWF0
dGVycz8NCg0KPiBBdCB0aGUgdmVyeSBsZWFzdCwgaXMgdGhlcmUgYSB3YXkgdG8gY2hlY2sgdGhh
dCAidGhlIGRhdGEgY2FuIGJlDQo+IGFjY2Vzc2VkIGNvaGVyZW50bHkgYnkgdGhlIGludm9sdmVk
IGRldmljZXMiPyBTbyB0aGF0IG15IGltcG9ydGVyIGNhbg0KPiBFUEVSTSBpZiB0aGVyZSBpcyBu
byBjb2hlcmVuY3kgdnMuIGEgZGV2aWNlIHRoYXQncyBhbHJlYWR5IGF0dGFjaGVkLg0KDQpZZWFo
LCB0aGVyZSBpcyBmdW5jdGlvbmFsaXR5IGZvciB0aGlzIGluIHRoZSBETUEgc3Vic3lzdGVtLiBJ
J3ZlIG9uY2UgDQpjcmVhdGVkIHByb3RvdHlwZSBwYXRjaGVzIGZvciBlbmZvcmNpbmcgdGhlIHNh
bWUgY29oZXJlbmN5IGFwcHJvYWNoIA0KYmV0d2VlbiBpbXBvcnRlciBhbmQgZXhwb3J0ZXIsIGJ1
dCB3ZSBuZXZlciBnb3QgYXJvdW5kIHRvIHVwc3RyZWFtIHRoZW0uDQoNCg0KDQo+DQo+IENoZWVy
cywNCj4gLVBhdWwNCj4NCj4+IFRoYXQgaW4gdHVybiBpcyBwcmV0dHkgbXVjaCB1bi10ZXN0YWJs
ZSB1bmxlc3MgeW91IGhhdmUgZXZlcnkNCj4+IHBvc3NpYmxlDQo+PiBpbXBvcnRlciBhcm91bmQg
d2hpbGUgdGVzdGluZyB0aGUgZXhwb3J0ZXIuDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlh
bi4NCj4+DQo+Pj4+IFJlZ2FyZHMsDQo+Pj4+IENocmlzdGlhbi4NCj4+PiBDaGVlcnMsDQo+Pj4g
LVBhdWwNCj4+Pg0KPj4+Pj4gU2lnbmVkLW9mZi1ieTogUGF1bCBDZXJjdWVpbCA8cGF1bEBjcmFw
b3VpbGxvdS5uZXQ+DQo+Pj4+Pg0KPj4+Pj4gLS0tDQo+Pj4+PiB2NTogTmV3IHBhdGNoDQo+Pj4+
PiAtLS0NCj4+Pj4+ICDCoMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA2Ng0KPj4+Pj4g
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+Pj4+PiAgwqDCoCBpbmNs
dWRlL2xpbnV4L2RtYS1idWYuaMKgwqAgfCAzNyArKysrKysrKysrKysrKysrKysrKysrDQo+Pj4+
PiAgwqDCoCAyIGZpbGVzIGNoYW5nZWQsIDEwMyBpbnNlcnRpb25zKCspDQo+Pj4+Pg0KPj4+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLQ0KPj4+Pj4gYnVmLmMNCj4+Pj4+IGluZGV4IDhmZTVhYTY3YjE2Ny4uYThiYWI2YzE4ZmNk
IDEwMDY0NA0KPj4+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4+Pj4gKysr
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4+Pj4gQEAgLTgzMCw2ICs4MzAsOCBAQCBz
dGF0aWMgc3RydWN0IHNnX3RhYmxlICoNCj4+Pj4+IF9fbWFwX2RtYV9idWYoc3RydWN0DQo+Pj4+
PiBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCj4+Pj4+ICDCoMKgwqAgKsKgwqDCoMKgIC0g
ZG1hX2J1Zl9tbWFwKCkNCj4+Pj4+ICDCoMKgwqAgKsKgwqDCoMKgIC0gZG1hX2J1Zl9iZWdpbl9j
cHVfYWNjZXNzKCkNCj4+Pj4+ICDCoMKgwqAgKsKgwqDCoMKgIC0gZG1hX2J1Zl9lbmRfY3B1X2Fj
Y2VzcygpDQo+Pj4+PiArICrCoMKgwqDCoCAtIGRtYV9idWZfYmVnaW5fYWNjZXNzKCkNCj4+Pj4+
ICsgKsKgwqDCoMKgIC0gZG1hX2J1Zl9lbmRfYWNjZXNzKCkNCj4+Pj4+ICDCoMKgwqAgKsKgwqDC
oMKgIC0gZG1hX2J1Zl9tYXBfYXR0YWNobWVudF91bmxvY2tlZCgpDQo+Pj4+PiAgwqDCoMKgICrC
oMKgwqDCoCAtIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tlZCgpDQo+Pj4+PiAgwqDC
oMKgICrCoMKgwqDCoCAtIGRtYV9idWZfdm1hcF91bmxvY2tlZCgpDQo+Pj4+PiBAQCAtMTYwMiw2
ICsxNjA0LDcwIEBAIHZvaWQgZG1hX2J1Zl92dW5tYXBfdW5sb2NrZWQoc3RydWN0DQo+Pj4+PiBk
bWFfYnVmDQo+Pj4+PiAqZG1hYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQo+Pj4+PiAgwqDC
oCB9DQo+Pj4+PiAgwqDCoCBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3Z1bm1hcF91bmxv
Y2tlZCwgRE1BX0JVRik7DQo+Pj4+PiAgICAgDQo+Pj4+PiArLyoqDQo+Pj4+PiArICogQGRtYV9i
dWZfYmVnaW5fYWNjZXNzIC0gQ2FsbCBiZWZvcmUgYW55IGhhcmR3YXJlIGFjY2Vzcw0KPj4+Pj4g
ZnJvbS90bw0KPj4+Pj4gdGhlIERNQUJVRg0KPj4+Pj4gKyAqIEBhdHRhY2g6CVtpbl0JYXR0YWNo
bWVudCB1c2VkIGZvciBoYXJkd2FyZSBhY2Nlc3MNCj4+Pj4+ICsgKiBAc2dfdGFibGU6CVtpbl0J
c2NhdHRlcmxpc3QgdXNlZCBmb3IgdGhlIERNQSB0cmFuc2Zlcg0KPj4+Pj4gKyAqIEBkaXJlY3Rp
b246wqAgW2luXcKgwqDCoCBkaXJlY3Rpb24gb2YgRE1BIHRyYW5zZmVyDQo+Pj4+PiArICovDQo+
Pj4+PiAraW50IGRtYV9idWZfYmVnaW5fYWNjZXNzKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQg
KmF0dGFjaCwNCj4+Pj4+ICsJCQkgc3RydWN0IHNnX3RhYmxlICpzZ3QsIGVudW0NCj4+Pj4+IGRt
YV9kYXRhX2RpcmVjdGlvbiBkaXIpDQo+Pj4+PiArew0KPj4+Pj4gKwlzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmOw0KPj4+Pj4gKwlib29sIGNvb2tpZTsNCj4+Pj4+ICsJaW50IHJldDsNCj4+Pj4+ICsN
Cj4+Pj4+ICsJaWYgKFdBUk5fT04oIWF0dGFjaCkpDQo+Pj4+PiArCQlyZXR1cm4gLUVJTlZBTDsN
Cj4+Pj4+ICsNCj4+Pj4+ICsJZG1hYnVmID0gYXR0YWNoLT5kbWFidWY7DQo+Pj4+PiArDQo+Pj4+
PiArCWlmICghZG1hYnVmLT5vcHMtPmJlZ2luX2FjY2VzcykNCj4+Pj4+ICsJCXJldHVybiAwOw0K
Pj4+Pj4gKw0KPj4+Pj4gKwljb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOw0K
Pj4+Pj4gKwlyZXQgPSBkbWFidWYtPm9wcy0+YmVnaW5fYWNjZXNzKGF0dGFjaCwgc2d0LCBkaXIp
Ow0KPj4+Pj4gKwlkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoY29va2llKTsNCj4+Pj4+ICsNCj4+
Pj4+ICsJaWYgKFdBUk5fT05fT05DRShyZXQpKQ0KPj4+Pj4gKwkJcmV0dXJuIHJldDsNCj4+Pj4+
ICsNCj4+Pj4+ICsJcmV0dXJuIDA7DQo+Pj4+PiArfQ0KPj4+Pj4gK0VYUE9SVF9TWU1CT0xfTlNf
R1BMKGRtYV9idWZfYmVnaW5fYWNjZXNzLCBETUFfQlVGKTsNCj4+Pj4+ICsNCj4+Pj4+ICsvKioN
Cj4+Pj4+ICsgKiBAZG1hX2J1Zl9lbmRfYWNjZXNzIC0gQ2FsbCBhZnRlciBhbnkgaGFyZHdhcmUg
YWNjZXNzDQo+Pj4+PiBmcm9tL3RvDQo+Pj4+PiB0aGUgRE1BQlVGDQo+Pj4+PiArICogQGF0dGFj
aDoJW2luXQlhdHRhY2htZW50IHVzZWQgZm9yIGhhcmR3YXJlIGFjY2Vzcw0KPj4+Pj4gKyAqIEBz
Z190YWJsZToJW2luXQlzY2F0dGVybGlzdCB1c2VkIGZvciB0aGUgRE1BIHRyYW5zZmVyDQo+Pj4+
PiArICogQGRpcmVjdGlvbjrCoCBbaW5dwqDCoMKgIGRpcmVjdGlvbiBvZiBETUEgdHJhbnNmZXIN
Cj4+Pj4+ICsgKi8NCj4+Pj4+ICtpbnQgZG1hX2J1Zl9lbmRfYWNjZXNzKHN0cnVjdCBkbWFfYnVm
X2F0dGFjaG1lbnQgKmF0dGFjaCwNCj4+Pj4+ICsJCcKgwqDCoMKgwqDCoCBzdHJ1Y3Qgc2dfdGFi
bGUgKnNndCwgZW51bQ0KPj4+Pj4gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcikNCj4+Pj4+ICt7DQo+
Pj4+PiArCXN0cnVjdCBkbWFfYnVmICpkbWFidWY7DQo+Pj4+PiArCWJvb2wgY29va2llOw0KPj4+
Pj4gKwlpbnQgcmV0Ow0KPj4+Pj4gKw0KPj4+Pj4gKwlpZiAoV0FSTl9PTighYXR0YWNoKSkNCj4+
Pj4+ICsJCXJldHVybiAtRUlOVkFMOw0KPj4+Pj4gKw0KPj4+Pj4gKwlkbWFidWYgPSBhdHRhY2gt
PmRtYWJ1ZjsNCj4+Pj4+ICsNCj4+Pj4+ICsJaWYgKCFkbWFidWYtPm9wcy0+ZW5kX2FjY2VzcykN
Cj4+Pj4+ICsJCXJldHVybiAwOw0KPj4+Pj4gKw0KPj4+Pj4gKwljb29raWUgPSBkbWFfZmVuY2Vf
YmVnaW5fc2lnbmFsbGluZygpOw0KPj4+Pj4gKwlyZXQgPSBkbWFidWYtPm9wcy0+ZW5kX2FjY2Vz
cyhhdHRhY2gsIHNndCwgZGlyKTsNCj4+Pj4+ICsJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGNv
b2tpZSk7DQo+Pj4+PiArDQo+Pj4+PiArCWlmIChXQVJOX09OX09OQ0UocmV0KSkNCj4+Pj4+ICsJ
CXJldHVybiByZXQ7DQo+Pj4+PiArDQo+Pj4+PiArCXJldHVybiAwOw0KPj4+Pj4gK30NCj4+Pj4+
ICtFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX2VuZF9hY2Nlc3MsIERNQV9CVUYpOw0KPj4+
Pj4gKw0KPj4+Pj4gIMKgwqAgI2lmZGVmIENPTkZJR19ERUJVR19GUw0KPj4+Pj4gIMKgwqAgc3Rh
dGljIGludCBkbWFfYnVmX2RlYnVnX3Nob3coc3RydWN0IHNlcV9maWxlICpzLCB2b2lkDQo+Pj4+
PiAqdW51c2VkKQ0KPj4+Pj4gIMKgwqAgew0KPj4+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4+Pj4+IGluZGV4IDhmZjRh
ZGQ3MWY4OC4uOGJhNjEyYzdjYzE2IDEwMDY0NA0KPj4+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9k
bWEtYnVmLmgNCj4+Pj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+Pj4+PiBAQCAt
MjQ2LDYgKzI0NiwzOCBAQCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgew0KPj4+Pj4gIMKgwqDCoAkgKi8N
Cj4+Pj4+ICDCoMKgwqAJaW50ICgqZW5kX2NwdV9hY2Nlc3MpKHN0cnVjdCBkbWFfYnVmICosIGVu
dW0NCj4+Pj4+IGRtYV9kYXRhX2RpcmVjdGlvbik7DQo+Pj4+PiAgICAgDQo+Pj4+PiArCS8qKg0K
Pj4+Pj4gKwkgKiBAYmVnaW5fYWNjZXNzOg0KPj4+Pj4gKwkgKg0KPj4+Pj4gKwkgKiBUaGlzIGlz
IGNhbGxlZCBmcm9tIGRtYV9idWZfYmVnaW5fYWNjZXNzKCkgd2hlbiBhDQo+Pj4+PiBkZXZpY2Ug
ZHJpdmVyDQo+Pj4+PiArCSAqIHdhbnRzIHRvIGFjY2VzcyB0aGUgZGF0YSBvZiB0aGUgRE1BQlVG
LiBUaGUNCj4+Pj4+IGV4cG9ydGVyDQo+Pj4+PiBjYW4gdXNlIHRoaXMNCj4+Pj4+ICsJICogdG8g
Zmx1c2gvc3luYyB0aGUgY2FjaGVzIGlmIG5lZWRlZC4NCj4+Pj4+ICsJICoNCj4+Pj4+ICsJICog
VGhpcyBjYWxsYmFjayBpcyBvcHRpb25hbC4NCj4+Pj4+ICsJICoNCj4+Pj4+ICsJICogUmV0dXJu
czoNCj4+Pj4+ICsJICoNCj4+Pj4+ICsJICogMCBvbiBzdWNjZXNzIG9yIGEgbmVnYXRpdmUgZXJy
b3IgY29kZSBvbiBmYWlsdXJlLg0KPj4+Pj4gKwkgKi8NCj4+Pj4+ICsJaW50ICgqYmVnaW5fYWNj
ZXNzKShzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICosDQo+Pj4+PiBzdHJ1Y3QNCj4+Pj4+IHNn
X3RhYmxlICosDQo+Pj4+PiArCQkJwqDCoMKgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uKTsNCj4+
Pj4+ICsNCj4+Pj4+ICsJLyoqDQo+Pj4+PiArCSAqIEBlbmRfYWNjZXNzOg0KPj4+Pj4gKwkgKg0K
Pj4+Pj4gKwkgKiBUaGlzIGlzIGNhbGxlZCBmcm9tIGRtYV9idWZfZW5kX2FjY2VzcygpIHdoZW4g
YQ0KPj4+Pj4gZGV2aWNlDQo+Pj4+PiBkcml2ZXIgaXMNCj4+Pj4+ICsJICogZG9uZSBhY2Nlc3Np
bmcgdGhlIGRhdGEgb2YgdGhlIERNQUJVRi4gVGhlIGV4cG9ydGVyDQo+Pj4+PiBjYW4NCj4+Pj4+
IHVzZSB0aGlzDQo+Pj4+PiArCSAqIHRvIGZsdXNoL3N5bmMgdGhlIGNhY2hlcyBpZiBuZWVkZWQu
DQo+Pj4+PiArCSAqDQo+Pj4+PiArCSAqIFRoaXMgY2FsbGJhY2sgaXMgb3B0aW9uYWwuDQo+Pj4+
PiArCSAqDQo+Pj4+PiArCSAqIFJldHVybnM6DQo+Pj4+PiArCSAqDQo+Pj4+PiArCSAqIDAgb24g
c3VjY2VzcyBvciBhIG5lZ2F0aXZlIGVycm9yIGNvZGUgb24gZmFpbHVyZS4NCj4+Pj4+ICsJICov
DQo+Pj4+PiArCWludCAoKmVuZF9hY2Nlc3MpKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKiwg
c3RydWN0DQo+Pj4+PiBzZ190YWJsZSAqLA0KPj4+Pj4gKwkJCcKgIGVudW0gZG1hX2RhdGFfZGly
ZWN0aW9uKTsNCj4+Pj4+ICsNCj4+Pj4+ICDCoMKgwqAJLyoqDQo+Pj4+PiAgwqDCoMKgCSAqIEBt
bWFwOg0KPj4+Pj4gIMKgwqDCoAkgKg0KPj4+Pj4gQEAgLTYwNiw2ICs2MzgsMTEgQEAgdm9pZCBk
bWFfYnVmX2RldGFjaChzdHJ1Y3QgZG1hX2J1Zg0KPj4+Pj4gKmRtYWJ1ZiwNCj4+Pj4+ICDCoMKg
IGludCBkbWFfYnVmX3BpbihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpOw0KPj4+
Pj4gIMKgwqAgdm9pZCBkbWFfYnVmX3VucGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0
dGFjaCk7DQo+Pj4+PiAgICAgDQo+Pj4+PiAraW50IGRtYV9idWZfYmVnaW5fYWNjZXNzKHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCj4+Pj4+ICsJCQkgc3RydWN0IHNnX3RhYmxl
ICpzZ3QsIGVudW0NCj4+Pj4+IGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIpOw0KPj4+Pj4gK2ludCBk
bWFfYnVmX2VuZF9hY2Nlc3Moc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPj4+
Pj4gKwkJwqDCoMKgwqDCoMKgIHN0cnVjdCBzZ190YWJsZSAqc2d0LCBlbnVtDQo+Pj4+PiBkbWFf
ZGF0YV9kaXJlY3Rpb24gZGlyKTsNCj4+Pj4+ICsNCj4+Pj4+ICDCoMKgIHN0cnVjdCBkbWFfYnVm
ICpkbWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1Y3QNCj4+Pj4+IGRtYV9idWZfZXhwb3J0X2luZm8N
Cj4+Pj4+ICpleHBfaW5mbyk7DQo+Pj4+PiAgICAgDQo+Pj4+PiAgwqDCoCBpbnQgZG1hX2J1Zl9m
ZChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBpbnQgZmxhZ3MpOw0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

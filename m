Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BFF804A8D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Dec 2023 07:46:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B9B243C8F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Dec 2023 06:46:29 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2052.outbound.protection.outlook.com [40.107.223.52])
	by lists.linaro.org (Postfix) with ESMTPS id 4AB4240B75
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Dec 2023 06:46:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=f0Eun7p9;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.223.52 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mb3l6AnmB4YIyBVd98rltKkbwi9EIBMukXpGjL5ZirehXr+D/x780w/M4llIZTzsPM27RUVcHRObMB0dJXw8aPNDLxp1fNyFbCKVAbik3KukPNGBHaipw5JBVFoJAIt2ocFI2sOwC1XDVUvIqMVWqXe6dvB1Q14xmktSyD1SgE5h9nIc0ZJZ5+SLA6aHO2fu/H/IdlR3TALfVdjA3QqRtadVKp6MlKXi/Udgg8gHjOUyyVaNskGlqgOvhOcchCCjnR8rNN0bK3TCMNcHWavzhyO7g4vYMjKAB8fBUhlyBzDZOAR4wmQws6ff09ypQlPoVHuP3I9uqy8g5H/RGtC6lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jyTlecyqbjD7w7FpPfn5ywtsnG0mOoeU6wY+B6z9WEs=;
 b=Qwg3R2kgUO9wBlfbZK7ZPkw/WkCgld0bblQvcOO1vvqMkIKkGXTPes2Tg7IUpBlRHJWbMA2P0tqUOZq37ty1Wq1vW1BF7Se89KAWrLvEbD6e3gPHge/AuSHB6qniVAqsGeR+crSDWo5BTiuBNG23Aodq1cf2OG1M0PKEy853ZMHGfGu2hfLR7aAUIZNLrqhWb/AafZchvX4hM6u3/RfhiT9iPbev3Z/BbJr0LlOzE/vkZbeoxBR5HqYXVcoy6dRLBy+4vIZWJ4adofLU5c9gHuHlf+ano7pzPADvWNHy2+W9/p0pLSoW9FPH5tVBkeUc5X+zMRFTosLMiGhChG6Zug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jyTlecyqbjD7w7FpPfn5ywtsnG0mOoeU6wY+B6z9WEs=;
 b=f0Eun7p9QkbloewRfZlB/0dW+rq+pA7vrO4ZDiZ4huWU4mfvVaMltuvAJK6NiyQBn8yKjG/rF1Buup801bNEfly9jSe/xvVBPCJNblMF7mmKuxZMizYtaa7056ao9+FnWZqCP8OY8+XCyws/krluARIoGmK/pQqJUU1e3llvps0=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by IA0PR12MB8861.namprd12.prod.outlook.com (2603:10b6:208:487::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Tue, 5 Dec
 2023 06:46:15 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::ca80:8f1c:c11:ded3]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::ca80:8f1c:c11:ded3%7]) with mapi id 15.20.7046.034; Tue, 5 Dec 2023
 06:46:15 +0000
Message-ID: <69d66b9e-5810-4844-a53f-08b7fd8eeccf@amd.com>
Date: Tue, 5 Dec 2023 07:46:07 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>
References: <20230322224403.35742-1-robdclark@gmail.com>
 <b9fb81f1-ac9e-cf3f-5cf4-f2d972d3ed3d@amd.com>
 <CAF6AEGvMwZCLntfYeH3Vg_Z7kYynqdVrinp+pmcbREksK1WGMA@mail.gmail.com>
 <e2fa296b-9b71-a41b-d37d-33f0fac2cd4e@amd.com>
 <CAF6AEGvdVca_mnZVo9He9oKVfYp84e_kOPWaxX+K5aV4Es9kcQ@mail.gmail.com>
 <CAF6AEGt2D6Ei6OkUK5osz+jWzmkX8tmB1KGi305HaNd=bnQSoA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAF6AEGt2D6Ei6OkUK5osz+jWzmkX8tmB1KGi305HaNd=bnQSoA@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0145.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::18) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|IA0PR12MB8861:EE_
X-MS-Office365-Filtering-Correlation-Id: bee50c23-c474-4ca7-8f11-08dbf55ddfce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wEJyZDPrXf1rwNoGc5BaNjPNkZTX0cHmJrveD4VMWR8QvUKCb8MM6LhsvX23gtIyTMcE/JGoX00D5R7FodSTxpVf3GLJy5rYhNBYKKa5OHY/WCqfMSnG9p1wwuXWRkSbzmp0LSxKWRuqHCz+ZxAE5PAvwsg60ri2VRu4JUGBwlc0EFHOsyyZLFz5OYxbRAV7LJj9VLYZbGaAHk+LFxxsi+ZHn2yGGKvURwr3QEjBOt8DLFIGJpeTBKUj+qD9jOml7UP7+fdVbbHoi0varoLZs1rJKazSLKkKefyr2BKnnvpBx5NJLKzTV/7TvX/o/DAUoCB/rR6hnr98byZH4xIW6RG39plh+gvyudAHsDuJMW16Ki/wqbAqbpKXhVSeBN/cCslSIXDRSrb+uuaoNiJEY0ZYRA7IR9TKCvpJBCJaopb5Tkrt2Q7GNE9ux6C0Dgcy3Io5AUM9VEWpdYCdVccmF/plyudLSehhgZoCwhcyT3HxhD43pK3GgYR+OsgXFuXP99UaEtzdunzwsFuzAbtLctvBxR7fyP5ZtiR7TYQRLOQ9F92uwUzh8xIke5aaMO5CSnZEG6DQiEwelNKz4eV/4VoBBFMen67QcglLXIHbGMXS2wCeUKDxCABjBiVnx5hHWQldigMfBtrQL9fZ0tPrgQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(396003)(346002)(376002)(39860400002)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(6486002)(83380400001)(478600001)(6512007)(2616005)(53546011)(6506007)(26005)(6666004)(316002)(66476007)(54906003)(6916009)(66556008)(66946007)(86362001)(41300700001)(36756003)(8676002)(4326008)(8936002)(2906002)(31696002)(5660300002)(38100700002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RHFlS2lwUGE5b3hyMHBqK2RFUXEzWFVlZHFmdFZ6NlArRXhvdnB1VS9iT3Ns?=
 =?utf-8?B?WkVycjhROGM2ZXdRRnppa1pRRjdzRlF5S2NQMXB2VmpRRU1HRE5GTUpmNkth?=
 =?utf-8?B?YWs5b1BINVNlOGdIWTNrVHRsck5Jc3R0Z3p1V2d1b0p2dEQwd1NyNGVESkpK?=
 =?utf-8?B?d25VSzBtZzZZYThUNFJBQUpIbGhlQmN3MXdkdzZCcnBySURodmpYM1ZQNUp6?=
 =?utf-8?B?NUVqK0dMdWFhMC9POUtvTHNBMmU5VjlXTWZKZWU2Z2RVQ1d0bThLRGRKMUpY?=
 =?utf-8?B?UmtuOXVVTUFvL3pYR01VUUwrMlIzVzFEc0dVU2k0SDlGM3dwcEg0NEdQaVRr?=
 =?utf-8?B?N0U3R242OTM5L2E3LzdWelZramdYMHlZS3Rybk1nVU4xSjJDQU5vaUdDeitU?=
 =?utf-8?B?dXl2cE9UK2hsZlNvQ3B1MTh3YWNJdkl1SVdmUWRMTkYvdU0xMUVQMGNEaWxH?=
 =?utf-8?B?VjNRU1VKMVpvNG9DWWpub1V0bk5VNDh6QWRDSnQ1RDRXTGFHMXUwRnRiVHZE?=
 =?utf-8?B?bmJIQmJidmJYdUhJN0pubU9qSE1sVUJwdHU2SlM5TWl0THN1UFJrTmJvcHZO?=
 =?utf-8?B?TTAyNWR3aFBMWWJibG81VzdEd2lNYTRmUUNPY1ZDc2lYNXRRYkFzd3EvN1lV?=
 =?utf-8?B?QzBET3M4Nmc2czMyT3NGbEh6N2Z6WlR3QmxuVnRwNVg3UHRBaGZJazFBemJ4?=
 =?utf-8?B?b0NzekRjdVVFcW9tV1dld21oTitqTjcxSjRCSTZuL0ozTlpob0p1RE9uQjlZ?=
 =?utf-8?B?em1qaTJrQVNnenpLN0E5WjVzMjArNzUvVjVCYS8xSjh2YXVwaUNCQ1ZWUytp?=
 =?utf-8?B?T1pGK0dRMkFrQW1rRW81Y1U5NWFKaVp0OURldWs3OFlmc2VKdVF2ZmpUZ0tZ?=
 =?utf-8?B?Z3dqRjNTSzF0WDRSRVNXekl1U1BmVVk4ZExwOW0xbVh3citZNHlpdDBCdXRE?=
 =?utf-8?B?S0VjVVhVN1lsVXBQQ2E4aEdheW5YdkxjTGFsOE8rd3JwUWRJc2d6Z1NhbVRl?=
 =?utf-8?B?UjYrZTFhN3FMSWZGLzlNMk1YeVcwN1dmaHhmeDU0RERweHljSTEzMC9ZUTNY?=
 =?utf-8?B?ejZQaEdaVWdGTlFDTmVnTHlnc2kwM1R3ZzRwajBsb0xSc0hEOUk1dmRwcVdH?=
 =?utf-8?B?UUtLZ2JXOFJ3eGQ2bTN6em04a25HRVBmSmtvSUhWamVuQkJYNnVEaDFUVFp6?=
 =?utf-8?B?c1FUNVFIZ2U4L1NQRDRLVW05MmZBUUZ1OWpCTVZqTmRDVTJ6SHVmRWY4U2dR?=
 =?utf-8?B?d0NlTFFubkRacGlJcytKVEF1OFVrb3NQSHdHMTZGZU5lenI3cmxNU0hySkFn?=
 =?utf-8?B?MllHcjVnRE10cVlmbzVNRldWbDhob0o0VGxzOVRhMitPNUZ4MnE0Q3g2M2xn?=
 =?utf-8?B?dkFBWW5sVFhLUnFxZkQ4MzB6RTJYTG83bDhXZitOUVcyWUltdlZnWVYrdU01?=
 =?utf-8?B?RmtYSzJZOXIzb2hTRjBNK3VlSWlJeEUyL1VQN0FOMG1ESWRLTGc0T09LL29y?=
 =?utf-8?B?UzV3L2ZnMHhtMzdHVVd0bk5LQjlRaFdHSmZTc1QxNHArcjBWVUh5aDN4Tm9z?=
 =?utf-8?B?c2ZEbms4dlcrQTRySy9URnpTa3F2ZjVDZ0VhSGl3M0plR1JFQjNtZ3dsOWFQ?=
 =?utf-8?B?dll6b0UwVHY3WENyUDRLTnpQSXBhRitCTk9Bd3hCWkd5YmFROEI4Z0YvWCt4?=
 =?utf-8?B?TEF1OXo4OHYvSlY4MzhxQmwyc043Y280S2dPMElUZDBmVFNzbitmbm9EeTQ3?=
 =?utf-8?B?N25md3BXN041cXczd1BxMlR2dzU0UVlYaDUwVUtONWxIb0tqL0lRNFhuWXpQ?=
 =?utf-8?B?TjV4TVFoSnY0RmRTclFWZTlMTkpsbmdOSytCNzRQSDRmU0hZT0lCOUw1NW40?=
 =?utf-8?B?RlVDWUZpVGVtZHJCRVVZMWhkSEpwL2Q1bTBLVzlSMXlQaHBrQkZFOUxnNFlY?=
 =?utf-8?B?dDZDNHRhdkFxTlhwdnF4VmZGdGpDUmVoaHdXZXlIOE1HYXJnRjl1aktPclpi?=
 =?utf-8?B?cS85Ui9hVTZDNGRrRGJ4eXd3YndtdEpvUXk3eVljTk84NTVQVmlycVlaL2hw?=
 =?utf-8?B?am13Y2FaR20yR0tNUXl2MGZpdlFvbGF4SW9BWWt1VGlhUHowNGZ6Vm52dEVI?=
 =?utf-8?Q?9TP8=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bee50c23-c474-4ca7-8f11-08dbf55ddfce
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2023 06:46:14.0926
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gwoZ1t2r81CFWgmGWiCiw9AmYr6SkkvsYWuiebulh3WZd6vNo4wAQLnw5gRX2vh1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8861
X-Rspamd-Queue-Id: 4AB4240B75
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.98 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.99)[99.96%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.52:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	URIBL_BLOCKED(0.00)[NAM11-DM6-obe.outbound.protection.outlook.com:helo,mail-dm6nam11on2052.outbound.protection.outlook.com:rdns,amd.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: T537SPE5G24AFJ6MZWGPY2MIKIGA473D
X-Message-ID-Hash: T537SPE5G24AFJ6MZWGPY2MIKIGA473D
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T537SPE5G24AFJ6MZWGPY2MIKIGA473D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDQuMTIuMjMgdW0gMjI6NTQgc2NocmllYiBSb2IgQ2xhcms6DQo+IE9uIFRodSwgTWFyIDIz
LCAyMDIzIGF0IDI6MzDigK9QTSBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+IHdyb3Rl
Og0KPj4gW1NOSVBdDQo+IFNvLCB0aGlzIHBhdGNoIHR1cm5zIG91dCB0byBibG93IHVwIHNwZWN0
YWN1bGFybHkgd2l0aCBkbWFfZmVuY2UNCj4gcmVmY250IHVuZGVyZmxvd3Mgd2hlbiBJIGVuYWJs
ZSBEUklWRVJfU1lOQ09CSl9USU1FTElORSAuLiBJIHRoaW5rLA0KPiBiZWNhdXNlIGl0IHN0YXJ0
cyB1bndyYXBwaW5nIGZlbmNlIGNoYWlucywgcG9zc2libHkgaW4gcGFyYWxsZWwgd2l0aA0KPiBm
ZW5jZSBzaWduYWxpbmcgb24gdGhlIHJldGlyZSBwYXRoLiAgSXMgaXQgc3VwcG9zZWQgdG8gYmUg
cGVybWlzc2libGUNCj4gdG8gdW53cmFwIGEgZmVuY2UgY2hhaW4gY29uY3VycmVudGx5Pw0KDQpU
aGUgRE1BLWZlbmNlIGNoYWluIG9iamVjdCBhbmQgaGVscGVyIGZ1bmN0aW9ucyB3ZXJlIGRlc2ln
bmVkIHNvIHRoYXQgDQpjb25jdXJyZW50IGFjY2Vzc2VzIHRvIGFsbCBlbGVtZW50cyBhcmUgYWx3
YXlzIHBvc3NpYmxlLg0KDQpTZWUgZG1hX2ZlbmNlX2NoYWluX3dhbGsoKSBhbmQgZG1hX2ZlbmNl
X2NoYWluX2dldF9wcmV2KCkgZm9yIGV4YW1wbGUuIA0KZG1hX2ZlbmNlX2NoYWluX3dhbGsoKSBz
dGFydHMgd2l0aCBhIHJlZmVyZW5jZSB0byB0aGUgY3VycmVudCBmZW5jZSAodGhlIA0KYW5jaG9y
IG9mIHRoZSB3YWxrKSBhbmQgdHJpZXMgdG8gZ3JhYiBhbiB1cCB0byBkYXRlIHJlZmVyZW5jZSBv
biB0aGUgDQpwcmV2aW91cyBmZW5jZSBpbiB0aGUgY2hhaW4uIE9ubHkgYWZ0ZXIgdGhhdCByZWZl
cmVuY2UgaXMgc3VjY2Vzc2Z1bGx5IA0KYWNxdWlyZWQgd2UgZHJvcCB0aGUgcmVmZXJlbmNlIHRv
IHRoZSBhbmNob3Igd2hlcmUgd2Ugc3RhcnRlZC4NCg0KU2FtZSBmb3IgZG1hX2ZlbmNlX2FycmF5
X2ZpcnN0KCksIGRtYV9mZW5jZV9hcnJheV9uZXh0KCkuIEhlcmUgd2UgaG9sZCBhIA0KcmVmZXJl
bmNlIHRvIHRoZSBhcnJheSB3aGljaCBpbiB0dXJuIGhvbGRzIHJlZmVyZW5jZXMgdG8gZWFjaCBm
ZW5jZSANCmluc2lkZSB0aGUgYXJyYXkgdW50aWwgaXQgaXMgZGVzdHJveWVkIGl0c2VsZi4NCg0K
V2hlbiB0aGlzIGJsb3dzIHVwIHdlIGhhdmUgc29tZWhvdyBtaXhlZCB1cCB0aGUgcmVmZXJlbmNl
cyBzb21ld2hlcmUuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gQlIsDQo+IC1SDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK

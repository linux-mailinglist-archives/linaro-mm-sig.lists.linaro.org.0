Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5D3805945
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Dec 2023 16:58:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E507244107
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Dec 2023 15:58:32 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2076.outbound.protection.outlook.com [40.107.92.76])
	by lists.linaro.org (Postfix) with ESMTPS id AC21B44107
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Dec 2023 15:58:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="r8/P1nP8";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.92.76 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BRLPBcHRSX4WPhKb8j1oc5wSI/iM3NfqB94TwDYya8dEu8XcdayOlwfs9xfG6/ajlLm/Ucl207uey05aMc3gvDQ5GH6J8Z0aQf7R+iDRCvSB9JcnR/nhW7BU8z8zPCAmWh262pVzPCx2Z/UZUfsL6wqOvJvI9W1gE+m1qsWAh62O32t1iw8/Mt/SETwe1nbIU1xG/H5XMvMkX+W+hzH+B9oYVqFD3jKZQMXK8pE70qsGdxSsT+Njb3kjFbkZcnjpRFTCFROIzmq6loyo7aX1b1HVScrRbmTTVlYnKLigGnVsn9/fSUaC+M7jL+gQgACuJFx/OdXJujoYcmN4fXMItA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hMPn5mkDKxqOd2Ru5oZK41Yogi1DqLxE+vjcp1V4e4s=;
 b=XJUwp9Iit+JzIi6pw+M3tHYpxKj/KEFjCG3U05Cn6uMGpyW99C5MBfA1H4qWlUv/sVfVhEx6nVmo3/Xmp26o6EPd0wOVEyjnAWGBdmp8nEa08yrjsR2xk4LiBFjtFrnTadLQ+kEyMu9hTVIb3arrvfbOqH/shbYNhQgqDI6sJxbzqTGifmJIN+B1S7XucURnDz8rVfdQnUpdezvRI6gTyc5NxZQvT2Rt/hl0L7W195DEd6asrohjwG6dheBzpqPxX942xNafeeFkHYDy3MK/Eq+Ouou96kBGveId0AErhXM6EIwBwAWbfqs+1Ml7Ni4S0TVeS1CQWJFxekfvQMPW0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hMPn5mkDKxqOd2Ru5oZK41Yogi1DqLxE+vjcp1V4e4s=;
 b=r8/P1nP8/r29C35gU+QO5oPC8AS6y0H/JHLXEq8b8AwYNuv2SdlXUrcrYa2XvoHLotGzZelFBN2Iw5Taje8h84apiUB7HitMcVRcFxKJTRl1nsbgHPRfUy+W1zhtFiuhnaYjMO5MarLYHxKinKqdmeed10h1cDPkIZgFcWBCwAc=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SA0PR12MB4526.namprd12.prod.outlook.com (2603:10b6:806:98::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Tue, 5 Dec
 2023 15:58:20 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::ca80:8f1c:c11:ded3]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::ca80:8f1c:c11:ded3%7]) with mapi id 15.20.7046.034; Tue, 5 Dec 2023
 15:58:20 +0000
Message-ID: <96665cc5-01ab-4446-af37-e0f456bfe093@amd.com>
Date: Tue, 5 Dec 2023 16:58:15 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>
References: <20230322224403.35742-1-robdclark@gmail.com>
 <b9fb81f1-ac9e-cf3f-5cf4-f2d972d3ed3d@amd.com>
 <CAF6AEGvMwZCLntfYeH3Vg_Z7kYynqdVrinp+pmcbREksK1WGMA@mail.gmail.com>
 <e2fa296b-9b71-a41b-d37d-33f0fac2cd4e@amd.com>
 <CAF6AEGvdVca_mnZVo9He9oKVfYp84e_kOPWaxX+K5aV4Es9kcQ@mail.gmail.com>
 <CAF6AEGt2D6Ei6OkUK5osz+jWzmkX8tmB1KGi305HaNd=bnQSoA@mail.gmail.com>
 <69d66b9e-5810-4844-a53f-08b7fd8eeccf@amd.com>
 <CAF6AEGuSexYVL2RF4yVCJptfJgN9vvTgzGWn3CminbsYvctTaw@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAF6AEGuSexYVL2RF4yVCJptfJgN9vvTgzGWn3CminbsYvctTaw@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0124.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::16) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|SA0PR12MB4526:EE_
X-MS-Office365-Filtering-Correlation-Id: 0657bd26-4731-4bb4-b35d-08dbf5ab0056
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tOnHHjXhJXMA/PTQy0LVfDfVHN5l1Pp8PjpvynxIweFAyl6xIITpmHC8wh7YDpI8iyExV/eXOm7adZVx+U/pDiTidcRAXZNuxi0EcNbl84ea/LHAHXSnoLT08tg/EdGBVMFTnQYEeySOahylX1ci0AXamb0sCjnKACL5hNP/OPjur1CL2c0Y8PkErowArg6AGNLjZtEMtVyfUJ+oQ5sOUPMbVqBvn8RaypBXFuw69HpL8p4BqwWWY7mxPPgZYvYETzBrSf42x7G7Kj7iHNdo6NsLUO/JvL60tEpO9WJoe7D2g5yC7LNmgGqspBNToUT7KJ8y8o242F4dAHnbCXmK/Ds2dz9a1JjGqmRGdzKFyQ5Zmtw8sVHzqERkOnKkFRJRJzNS1C9/Ot9rf+YJR1cToteg5OGIci2Jt1oXsT3eHsMkOMd2gzkEzc8pO91+UqfuI8V4VugoeNcNF1y3jb6f0LIsn5xEuGrBnu3Vb169gtu1GgHdcp5WvB0jxrm9mBqm/FbFE8WRdHB0LB0uqr0Oj2E5hvaPyUs6fjF1FwBdrAXJilXXCW2jsajOapbEDQozib/mSIvbnD647SZdpKfRpuJnMtl0bS//YWfIeQTVEtffhZ8qiVDHHQQ8wJ000lHdWsBsYgytKs4C6hHQfQnLEA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(366004)(376002)(396003)(39860400002)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(36756003)(5660300002)(2906002)(86362001)(41300700001)(31696002)(6512007)(2616005)(53546011)(83380400001)(26005)(6506007)(478600001)(6666004)(6486002)(38100700002)(31686004)(66946007)(6916009)(316002)(66556008)(66476007)(54906003)(8676002)(8936002)(4326008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UVhWc2dWM2FydU1UbXNJeFpYcThWcHFJWkd1TTNBSXRhV0tqTTZRRlB1c1p2?=
 =?utf-8?B?RGpJUTZFZmZHUS9JM2xaaFpIMm1FWGg1Nk1uQjdYODJNNWR4enZqd2dsS1li?=
 =?utf-8?B?UmJxWHV6T2YyZXZnWko3Z25PNzdXRUpUa2MyeTRoRUJvVGd3SjdySnUxVXZ0?=
 =?utf-8?B?aWdlQWxhci9RWng0REFuOXM0MWtlSC8wTGRTSEJGY0ZjVFV3MjZDbzcwekk2?=
 =?utf-8?B?MmNSbHFXVXZmcUd4ZGExMi9FczFPeGEwaDk2UElwOUxqRG9HYjJPVEpNVzk4?=
 =?utf-8?B?ejZMSjk1R3hzNCtSSUU2MDY1dHhlZ3hxRUpPemc0NXNDTFI5VkdJMk81b0ts?=
 =?utf-8?B?dUtBWEIxVUxSNlJnamJ0U2VwQk9YblNVdFI1U1FsSUY4MlpLUzcreVV2Wi9q?=
 =?utf-8?B?b0NZSXF0cTkzeUZwem9qQXhMKzhxTnVPNDJmVnU5TWZReVZ4ZlkwS2haY0hy?=
 =?utf-8?B?QlBHbnBNalVjeFFYYWlOUVIxNlBvSlRaTjQ5akl5Z29WYnRMY1VkNVBWcVI3?=
 =?utf-8?B?dmh5S2g0M040VWVyZVFIcXh0aUVjc1RDcXZCbzJSQ0N0RitFNm96bXlKM2dy?=
 =?utf-8?B?TXoyUG9pRjRVTjBKaUZvSGdhQ2g3ZUZiR1NNTmxoay9JMmlzbllUVHBHSkxU?=
 =?utf-8?B?Mys5N01HTzNYQnIrWXhvZDZNYitVYmJtYjE2Q01NNmxwMkNjUDVUK2VCL0ts?=
 =?utf-8?B?S3NGWmRaZGxYbU51TFZuaVFOOVcySDhLSW1McTBSemJUcjlKV29zMTNLd2g3?=
 =?utf-8?B?aUdqaDlsYU9HajREd0szOGd4Y2RjTUJVV3NBVGU5bjBueHM2ZWFUNndmVHhy?=
 =?utf-8?B?bVdZOE9ac2JkdlZuZ2doaUdSZit0Rk5tRXU2d1BOcmgrdFFMakp5THNwR1dQ?=
 =?utf-8?B?b3p2M1NwZVNaNUhHMnQwWHNmL2NMNTdGWC9KTk9Mc2p2eEdndVFlNWJrQ1lj?=
 =?utf-8?B?R1k1MXV3VTdkeDBmbks4QnBYRDBGRGhmN2lKNldOZWM3aGlWUlZaYlZVZE5P?=
 =?utf-8?B?ZUZIYUNTM25tQllLZ3R1VFJ5bllUdGQzR3JicEtTN1Y2NUhXZVFBbXpQV2ZI?=
 =?utf-8?B?ckJkcmRrYmsxTGt5dEdXeE5uN3RUSFVCQk01U2RuU2tuQmxYVGlzT2FYL25X?=
 =?utf-8?B?R2ZLL3ZmbXNwdm9WQ2xrZEZDMmRhWnJEbWNkUEZEQmc5MjAvRTlDU2RsOTFK?=
 =?utf-8?B?TFF2QjJlM3F6YTZUWWo1dlovbjhYV2lQVldTZnhKaGJvYURUdFZPWmZCMlBn?=
 =?utf-8?B?NlFaRXpXRE50RCtkNk56U0o5VGdNc0ZCS0xYT0pDczJWZWZ1MUVSdXBMa3dY?=
 =?utf-8?B?ZHd2TWkwUllhTTNjVFQ3THY1c0diYUU1SkNveUVYV0gzbFo5aUxoSnlyUzYr?=
 =?utf-8?B?U01YRkNwQXJnSXgxZzFmVDRQd0pzMm0rUFRYYnZkU3NmZW9MYkRVK3JHU2hF?=
 =?utf-8?B?cThjQy82MXZoN1ViK3J3RkdSTXJLemExcW5ZM0VGZ0p6UExnaDgwRmVvL1VZ?=
 =?utf-8?B?WWtkWldKOGgxeGtXRlNrZGkxV0ZzS1BHaUdnbnB5dnFvRnNLaG9OMmZTbVFW?=
 =?utf-8?B?RVc3ME9WaGpndTBBVTVESUd4Mi84Sy9OZksxSUhqZXNKMWpMZmcrNm5CcVJw?=
 =?utf-8?B?R0FOcUFaUzdZUzFtd29mMzVZYW1LeVVwaEV5SkJVc3lJVDRkUDVBUlhESnNE?=
 =?utf-8?B?MndxL2d5NjZRVStrdU1VR2pTbkhRTVA2UnRnRDlMWlAyNzZ1aklaVktqejFy?=
 =?utf-8?B?bWhnbzNzYVI0M3QzMDMrTjB2MkhvcmVQM3k4dWd4YWNWejVOUk04cE43MzVB?=
 =?utf-8?B?d09WekROVHNnYTlleE5RYmNGV2dDRnJXRkQxNTV2ZlVqSFh0YnZ4bjh3YWVF?=
 =?utf-8?B?eC9UYWloVWxXMC9RYllQYlhJS0RGb3ZQN1RDbVZrWTgzbFJGNWIwQW9uMkc1?=
 =?utf-8?B?cFFHNjlnVEtUZDg3MTE2ZnVZSStOWEF2N2JiOVhrSzBQSWdJWW9xUXNNa0Q3?=
 =?utf-8?B?bW1wQ0UrZkw0Y21ydGlGZ1JPZ0JXdFpwblJuendweUtkNFYyclhBbzBRZkoy?=
 =?utf-8?B?dGZ3Nll4eU4zeHBpaldvWE5vcXI0ZXVHU2R1TlpoRDIxb0kreTBheXlBWjVZ?=
 =?utf-8?Q?x/VE=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0657bd26-4731-4bb4-b35d-08dbf5ab0056
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2023 15:58:19.9235
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: woBcwZVYT97b5EHEPTefylJ2xAVOaYYYD7m6sf78w7kHMeARM792zPtWokqxfZew
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4526
X-Rspamd-Queue-Id: AC21B44107
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.97 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.98)[99.92%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.76:from];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: RSX2FXMXF2VW2DVT3O2GYGZRFD4HHOG5
X-Message-ID-Hash: RSX2FXMXF2VW2DVT3O2GYGZRFD4HHOG5
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RSX2FXMXF2VW2DVT3O2GYGZRFD4HHOG5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDUuMTIuMjMgdW0gMTY6NDEgc2NocmllYiBSb2IgQ2xhcms6DQo+IE9uIE1vbiwgRGVjIDQs
IDIwMjMgYXQgMTA6NDbigK9QTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+IHdyb3RlOg0KPj4gQW0gMDQuMTIuMjMgdW0gMjI6NTQgc2NocmllYiBSb2IgQ2xh
cms6DQo+Pj4gT24gVGh1LCBNYXIgMjMsIDIwMjMgYXQgMjozMOKAr1BNIFJvYiBDbGFyayA8cm9i
ZGNsYXJrQGdtYWlsLmNvbT4gd3JvdGU6DQo+Pj4+IFtTTklQXQ0KPj4+IFNvLCB0aGlzIHBhdGNo
IHR1cm5zIG91dCB0byBibG93IHVwIHNwZWN0YWN1bGFybHkgd2l0aCBkbWFfZmVuY2UNCj4+PiBy
ZWZjbnQgdW5kZXJmbG93cyB3aGVuIEkgZW5hYmxlIERSSVZFUl9TWU5DT0JKX1RJTUVMSU5FIC4u
IEkgdGhpbmssDQo+Pj4gYmVjYXVzZSBpdCBzdGFydHMgdW53cmFwcGluZyBmZW5jZSBjaGFpbnMs
IHBvc3NpYmx5IGluIHBhcmFsbGVsIHdpdGgNCj4+PiBmZW5jZSBzaWduYWxpbmcgb24gdGhlIHJl
dGlyZSBwYXRoLiAgSXMgaXQgc3VwcG9zZWQgdG8gYmUgcGVybWlzc2libGUNCj4+PiB0byB1bndy
YXAgYSBmZW5jZSBjaGFpbiBjb25jdXJyZW50bHk/DQo+PiBUaGUgRE1BLWZlbmNlIGNoYWluIG9i
amVjdCBhbmQgaGVscGVyIGZ1bmN0aW9ucyB3ZXJlIGRlc2lnbmVkIHNvIHRoYXQNCj4+IGNvbmN1
cnJlbnQgYWNjZXNzZXMgdG8gYWxsIGVsZW1lbnRzIGFyZSBhbHdheXMgcG9zc2libGUuDQo+Pg0K
Pj4gU2VlIGRtYV9mZW5jZV9jaGFpbl93YWxrKCkgYW5kIGRtYV9mZW5jZV9jaGFpbl9nZXRfcHJl
digpIGZvciBleGFtcGxlLg0KPj4gZG1hX2ZlbmNlX2NoYWluX3dhbGsoKSBzdGFydHMgd2l0aCBh
IHJlZmVyZW5jZSB0byB0aGUgY3VycmVudCBmZW5jZSAodGhlDQo+PiBhbmNob3Igb2YgdGhlIHdh
bGspIGFuZCB0cmllcyB0byBncmFiIGFuIHVwIHRvIGRhdGUgcmVmZXJlbmNlIG9uIHRoZQ0KPj4g
cHJldmlvdXMgZmVuY2UgaW4gdGhlIGNoYWluLiBPbmx5IGFmdGVyIHRoYXQgcmVmZXJlbmNlIGlz
IHN1Y2Nlc3NmdWxseQ0KPj4gYWNxdWlyZWQgd2UgZHJvcCB0aGUgcmVmZXJlbmNlIHRvIHRoZSBh
bmNob3Igd2hlcmUgd2Ugc3RhcnRlZC4NCj4+DQo+PiBTYW1lIGZvciBkbWFfZmVuY2VfYXJyYXlf
Zmlyc3QoKSwgZG1hX2ZlbmNlX2FycmF5X25leHQoKS4gSGVyZSB3ZSBob2xkIGENCj4+IHJlZmVy
ZW5jZSB0byB0aGUgYXJyYXkgd2hpY2ggaW4gdHVybiBob2xkcyByZWZlcmVuY2VzIHRvIGVhY2gg
ZmVuY2UNCj4+IGluc2lkZSB0aGUgYXJyYXkgdW50aWwgaXQgaXMgZGVzdHJveWVkIGl0c2VsZi4N
Cj4+DQo+PiBXaGVuIHRoaXMgYmxvd3MgdXAgd2UgaGF2ZSBzb21laG93IG1peGVkIHVwIHRoZSBy
ZWZlcmVuY2VzIHNvbWV3aGVyZS4NCj4gVGhhdCdzIHdoYXQgaXQgbG9va2VkIGxpa2UgdG8gbWUs
IGJ1dCB3YW50ZWQgdG8gbWFrZSBzdXJlIEkgd2Fzbid0DQo+IG92ZXJsb29raW5nIHNvbWV0aGlu
ZyBzdWJ0bGUuICBBbmQgaW4gdGhpcyBjYXNlLCB0aGUgZmVuY2UgYWN0dWFsbHkNCj4gc2hvdWxk
IGJlIHRoZSBzeW5jb2JqIHRpbWVsaW5lIHBvaW50IGZlbmNlLCBub3QgdGhlIGZlbmNlIGNoYWlu
Lg0KPiBWaXJ0Z3B1IGhhcyBlc3NlbnRpYWxseSB0aGUgc2FtZSBsb2dpYyAodGhlcmUgd2UgcmVh
bGx5IGRvIHdhbnQgdG8NCj4gdW53cmFwIGZlbmNlcyBzbyB3ZSBjYW4gcGFzcyBob3N0IGZlbmNl
cyBiYWNrIHRvIGhvc3QgcmF0aGVyIHRoYW4NCj4gd2FpdGluZyBpbiBndWVzdCksIEknbSBub3Qg
c3VyZSBpZiBpdCB3b3VsZCBibG93IHVwIGluIHRoZSBzYW1lIHdheS4NCg0KV2VsbCBkbyB5b3Ug
aGF2ZSBhIGJhY2t0cmFjZSBvZiB3aGF0IGV4YWN0bHkgaGFwcGVucz8NCg0KTWF5YmUgd2UgaGF2
ZSBzb21lIF9wdXQoKSBiZWZvcmUgX2dldCgpIG9yIHNvbWV0aGluZyBsaWtlIHRoaXMuDQoNClRo
YW5rcywNCkNocmlzdGlhbi4NCg0KPg0KPiBCUiwNCj4gLVINCj4NCj4+IFJlZ2FyZHMsDQo+PiBD
aHJpc3RpYW4uDQo+Pg0KPj4+IEJSLA0KPj4+IC1SDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

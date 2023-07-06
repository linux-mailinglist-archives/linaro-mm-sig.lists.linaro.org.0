Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 00165749CC7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 14:54:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9DD043F2A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 12:54:57 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2071.outbound.protection.outlook.com [40.107.93.71])
	by lists.linaro.org (Postfix) with ESMTPS id AEDA540F0B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  6 Jul 2023 12:54:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=p57WKb+p;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.71 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=abTl+DgkoeMtqRtNBTvhR9fEVRzqsHG/ObaczNaG8/WaFWIXi95uqRDtLerzFYN67IiSFZBe2rw4bBiatCUcIJK62OaomzuWLhmfy6Oe2iEZXJXq0G0+xcALRjXV1Iu5iCPE586H6/zTw5O+tGPwmr3WuQGrXVGOCuJvlImrgdbss1G/xL0RIcwaLPLrltD/UF+9LmdK3+CYGAFqNeli6mOD1lGNsWDnRGbm20v4z29wgeU+dulF2GBi1086M2frGFXtNkefT5ONBxMblOnIsKrwL+YvFUHTnX7pVAhTeu0mK9sX8PYb8noUt8GryM/gCUIdwsZYQTrf5YNIBoUMtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DeEQEuTZunrLsRvwqIC/lBnXLyF9qwc35iERwmNV7f0=;
 b=h0zQs+8kRCRXMmMfxYH+NtuJPfOlwNN4BWBj83GBZtphKM3Kfe5OXepigbTEiQB/pZKCoHWxcEG6OvuzXKUui4Qd4T/YAA3Drr4vcjp4ghSqV4quWCbJjpepWy9YYlKtLX5C+q6ITFSw/CgMihn6A0iJ8xzZJyKomzyiTi/Nm/g1vGxZJeimjuevQGf6LPQ9J+3UGW4gqta4lhGdhhd3PHf3EZE765rlU2wL9qcVfnj2uDuNtkeJKID4kGoX15HTQDIuJPfUfATC4n/Wl4bzfwN4lHCgQ/rTx3Yjh2TbYPJBw9+fJD/ICEms6Y40Rx3qEi3PbctiAqGBbu9eSVWEMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DeEQEuTZunrLsRvwqIC/lBnXLyF9qwc35iERwmNV7f0=;
 b=p57WKb+pHEBM9b8zYcdBC5K+4zJx8XNJv+zRmFBEeIFctPLsIIr2gv2mJ2h7N6+27thbPBy8yUGuBuEcp+nPMnd82noeGl7/CW+F3Bn2Mx3hMVfCNam4BVx1kKQpVnWiqtFR3AgiyNFWv9lyYYNPBnhpq2N0hFx75PL8P4DEMSQ=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SJ0PR12MB6805.namprd12.prod.outlook.com (2603:10b6:a03:44f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Thu, 6 Jul
 2023 12:54:39 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::384a:95a4:8819:ee84]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::384a:95a4:8819:ee84%7]) with mapi id 15.20.6565.016; Thu, 6 Jul 2023
 12:54:38 +0000
Message-ID: <ed3ef0ec-140d-59f1-b37e-4731d763a11b@amd.com>
Date: Thu, 6 Jul 2023 14:54:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@linaro.org>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <b09f1996-3838-4fa2-9193-832b68262e43@moroto.mountain>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <b09f1996-3838-4fa2-9193-832b68262e43@moroto.mountain>
X-ClientProxiedBy: FR0P281CA0246.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:af::11) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|SJ0PR12MB6805:EE_
X-MS-Office365-Filtering-Correlation-Id: 01ea2f00-0c87-485a-8203-08db7e202848
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ltK/br6R5Vw5U6bdZkm1cdDIP2G0UEHaOuFxdh2GrrVZhv+fz2FtUtYmU4qLpVpU4d9s5Yn6TvE56kB/LKAaGfzmqarvAamhgLP3yH4NpT7z2z0h3aARHoKVcIWB1KgzI7MSTEJ+J2bZn7lBehRoq11nlrVCHLP1GlK54vWTWwo4QO16L5BnF1JWJ8I3JJ2wMdjFZ4KgvThcCqSsJLNVBPKMvHCDgc6V9mZXhb+BlzdIz3LDHnVoLoefZ/iEEv/i24NkmhAH1IGqf6V45KFJSxa2RW3pPrqqihU73pvSUaufIsvW/y2oXV6AE+wvnugSL/qXcdicS8VtGy85CtimEU9CXqrFyVM/InnfQM8JhpxcZZbMzKlOBq8UoPtcRIcTGRAhp3BXJy2Fo7qZ06YITpLAXPzsokPQ6kHAZZVjtl5oNPiivBQXT4cJlGH80VZq9Hv9JYleiatg72L7HhWcK58mFkQw3xIpXr2aarXKEc293oT+e6ULehtLPgjJqlFNXA7QnKCdfCyyE9TOv25ilKzqD6bfUCMSDXm/l9u2m9EKrPebrxXr3FAkmdULGZMhvLi6Ur87XtzAlaCDxuRpEEDRSJntMSL4kEhCOyAGFhbgrdHAf5kFypho68Nq6uP9oat1Om7CvpaHtJmqdqCPcA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(39860400002)(136003)(346002)(376002)(396003)(451199021)(316002)(4326008)(31686004)(66574015)(66556008)(86362001)(66946007)(66476007)(6506007)(6512007)(186003)(83380400001)(2616005)(31696002)(2906002)(6486002)(38100700002)(41300700001)(8936002)(478600001)(7416002)(6666004)(5660300002)(110136005)(54906003)(36756003)(8676002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aCtaTGRpbVVhNVhTN2FnV1hZcTRjL0plOWVpWGVhSFZRT0FrYTZwcnZIOG01?=
 =?utf-8?B?SXFteFlaYXpMb2JGSDE4S3lZdUpJWUhnOXkzVGQwYmdYeDFuVEd1VFpoTkNm?=
 =?utf-8?B?NWcwd2ZlbFUwTk5zU0c1eUpHTDJHZjV5ZnZnV3VTejRoR1IrbnR3UEp1Z0Vk?=
 =?utf-8?B?YUpvYStoeFdqb2RONStwVkhRdEs4MGJsMVY4dStXaGp0YWRhM01mTUdZUm00?=
 =?utf-8?B?djlqV3Q4RGtFQVZ3OXNsOUlKdjlhdHlxVVRKRE5hK1BxQUcyUjA0K0JDRjh5?=
 =?utf-8?B?L2xiRDR6alhXYXJRNlp1ZmxWdmd5cURLbHlUdlZ6U0lVZFIvK25HUzJ3bXdQ?=
 =?utf-8?B?TzdKV0lSWkdQSjB0aVV5VTF5QlNhSW1KM3YwZHNuRXhUcDYzbGxvMk1sNi9L?=
 =?utf-8?B?WFc5K0VrODJ5Zm1RUDc1NGR6bEdINXRmMURqTTRvcUErMU1qenRrTG1SQXBo?=
 =?utf-8?B?MXFwa0V0Yk1ZaWsxSGRRL3JHR3ZydUN1aTBWNnhURk5OaFkzOEd0bWY4WElk?=
 =?utf-8?B?VG0yclFTSXpxV2tHNHl2Z25NbG5KRm4wYUVaV0FOQm14b1BiRm13NjZQZG5r?=
 =?utf-8?B?MnZJMXJnU3BQVTNZZ3NYbm1GWmhocDdhNXRMTFhDNGhyVThZdU92L0xmN3lU?=
 =?utf-8?B?SlNVaWtIeWIyZ1lITVhsakVhQXdLaGJSOFViYmJHVG50MUhwaUZHeXVLeDJw?=
 =?utf-8?B?ODJENDZGRFFHOE5aUTQxUHY2Q2JTUTVPQy9PNFZDT0VnSXBRVTFYZElvVHRI?=
 =?utf-8?B?MFhLa0NkWEtzTkswRzg3WEtVRHFrWER4czlNMndqejY1MllyQlZyRDV1WU10?=
 =?utf-8?B?NGlmT3VQUkFCNEhJYUpIU1NEbFhsTWg5VnFDTGVRMjFuS29qd1d5VG9WeEtG?=
 =?utf-8?B?ZkdSU1ZiTWNJN25OQ1AwYmY0RDZPdGdveHR1QWNodW1nT1VYdWhuaHBsUVpy?=
 =?utf-8?B?cFVwSEhsZkVXck5McldRTHdCQnplOUFJT1pxS0xHa3RTN3czcEVUdE9KaEc3?=
 =?utf-8?B?Zlk5dDZQb0txdUVVSlNHVXdzSHQ5T2xxa2JqTHMzcTl2V0FoSjRaTHZhbjU1?=
 =?utf-8?B?MkpsSllGdVU2UDU1U0VzcVNJREs2Uk9MSThZVCt1OGZWa3ZhdDQ2TnZvL3VK?=
 =?utf-8?B?Uk5FUUNHc2FsRkF1ZFBtM01sS2xqTGp3ZXJWa1l0Q2lna2RjNVFOaTJxbWxw?=
 =?utf-8?B?aStxUnlQSFBRUXM0Q1RieVd5VWRPaE1jVzM4Z050ZHlPenhURzNvREdBcEIx?=
 =?utf-8?B?ejhuZVhlVlRhMkp3RDJuZ3hSdTZOTkFwVjJ3cDQrUG9RKzVMY2NvSWcyc0hG?=
 =?utf-8?B?ZDRCTmpLMzdvZGdTbU9yOS8wVzVVSTQ1MTFFQkNOaUJIQVpWcTcrdzdrcnp5?=
 =?utf-8?B?K1h2VVhWa2xvZ2JKTUc5MWNYWXptWVhFaHRmNUxjUGZjOUlqN285YU9oMnd4?=
 =?utf-8?B?Y21sR1BsQWsxZ25obnFjSmwvVmJJM0NrUGdwR2gzeVE0ek4vQXpRT0xhMDBT?=
 =?utf-8?B?eVJFeGFTM0RycDVVT2o5bG0vZm81UUVHTlFEeitlaCtsMFNGMjFwYm5TbWxB?=
 =?utf-8?B?NnBjL0pWT1ZCS0pDYUxsRXUrMGJMcU16NVVUMGt0VzZWMldrcHJqZzJmbkRV?=
 =?utf-8?B?Tm12RWJucE5zL1VCRXBmMWFLTG0zWDYrbW5aOS9EY1J6TGZDL0ZFOVI2VzdI?=
 =?utf-8?B?Z0NNOW93NXlEQkpuL214N0RBYWFVSnVVNWZwZnRVY3VIRXVFLzFzRVZVbkdX?=
 =?utf-8?B?a2JwbkRoN0YyWVdJYnQyb3M5RFc2Q1BPWUFBQVcvSzN3cGxZVmwxejdMalBi?=
 =?utf-8?B?YkZSYXlYY2RmaGNuNUw5ck5BUWZtQ1Izb3NreFNVMlY1OWR4TVM5NEFhZTRD?=
 =?utf-8?B?bHNMZjdueDcrRTQ3S3E5bEFUUk9USE1VTGEzbExrS2V6WlVZem9KWlp0a1N0?=
 =?utf-8?B?akpGTnBlQkg5dFNVMHpxdWloNVJsOVhEMi8rN0Q0NGRKOE1NQkVYc1VUajJh?=
 =?utf-8?B?b3JtQVM2Vy9GSkNBL2pEVmg1aVQ4QzZ1Wk9kYmlMUkgxdkFSaEpNZWV0K2Qz?=
 =?utf-8?B?YnlVbUptTzdVdFJGdzNhdGZrZStadmRFc2p1bWt5cFVFdXJnTzVmS0V1TFkr?=
 =?utf-8?B?Sms5ZXJCVjNLdnM0WVh2WGkxbTFzZjVJZFdrbU9MQVZWYTFQQUxFWS9CS0VW?=
 =?utf-8?Q?HH+TGd5SCGNndMAYTtBA84mbGxIJAUXvjYqkFDExKgGO?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01ea2f00-0c87-485a-8203-08db7e202848
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2023 12:54:38.5980
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9JLS3QKYEPIcISiVIw3hpvsMqNkwDEnTE/tcYtWIwcfmZjzUEhg+qgcmxnhp3wWV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6805
X-Spamd-Result: default: False [-6.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[2603:10b6:408:43::13:received];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[padovan.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.93.71:from];
	RCPT_COUNT_TWELVE(0.00)[12];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.71:from];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AEDA540F0B
X-Spamd-Bar: ------
Message-ID-Hash: AOBUUNUSZ5KQYSUBQ4GK3L222LXVKK5T
X-Message-ID-Hash: AOBUUNUSZ5KQYSUBQ4GK3L222LXVKK5T
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Gustavo Padovan <gustavo@padovan.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: fix an error pointer vs NULL bug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AOBUUNUSZ5KQYSUBQ4GK3L222LXVKK5T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDYuMDcuMjMgdW0gMTQ6Mzcgc2NocmllYiBEYW4gQ2FycGVudGVyOg0KPiBTbWF0Y2ggZGV0
ZWN0ZWQgcG90ZW50aWFsIGVycm9yIHBvaW50ZXIgZGVyZWZlcmVuY2UuDQo+DQo+ICAgICAgZHJp
dmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmM6ODg4IGRybV9zeW5jb2JqX3RyYW5zZmVyX3RvX3Rp
bWVsaW5lKCkNCj4gICAgICBlcnJvcjogJ2ZlbmNlJyBkZXJlZmVyZW5jaW5nIHBvc3NpYmxlIEVS
Ul9QVFIoKQ0KPg0KPiBUaGUgZXJyb3IgcG9pbnRlciBjb21lcyBmcm9tIGRtYV9mZW5jZV9hbGxv
Y2F0ZV9wcml2YXRlX3N0dWIoKS4gIE9uZQ0KPiBjYWxsZXIgZXhwZWN0ZWQgZXJyb3IgcG9pbnRl
cnMgYW5kIG9uZSBleHBlY3RlZCBOVUxMIHBvaW50ZXJzLiAgQ2hhbmdlDQo+IGl0IHRvIHJldHVy
biBOVUxMIGFuZCB1cGRhdGUgdGhlIGNhbGxlciB3aGljaCBleHBlY3RlZCBlcnJvciBwb2ludGVy
cywNCj4gZHJtX3N5bmNvYmpfYXNzaWduX251bGxfaGFuZGxlKCksIHRvIGNoZWNrIGZvciBOVUxM
IGluc3RlYWQuDQo+DQo+IEZpeGVzOiBmNzgxZjY2MWU4YzkgKCJkbWEtYnVmOiBrZWVwIHRoZSBz
aWduYWxpbmcgdGltZSBvZiBtZXJnZWQgZmVuY2VzIHYzIikNCj4gU2lnbmVkLW9mZi1ieTogRGFu
IENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBsaW5hcm8ub3JnPg0KDQpSZXZpZXdlZC1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQpTaG91bGQgSSBwdXNo
IHRoYXQgb25lIHRvIGRybS1taXNjLWZpeGVzPw0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+
IC0tLQ0KPiB2MjogRml4IGl0IGluIGRtYV9mZW5jZV9hbGxvY2F0ZV9wcml2YXRlX3N0dWIoKSBp
bnN0ZWFkIG9mDQo+ICAgICBfX2RtYV9mZW5jZV91bndyYXBfbWVyZ2UoKS4NCj4NCj4NCj4gICBk
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgICB8IDIgKy0NCj4gICBkcml2ZXJzL2dwdS9kcm0v
ZHJtX3N5bmNvYmouYyB8IDQgKystLQ0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IGluZGV4IGFkMDc2ZjIw
ODc2MC4uOGFhOGY4Y2I3MDcxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IEBAIC0xNjAsNyAr
MTYwLDcgQEAgc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2FsbG9jYXRlX3ByaXZhdGVfc3R1
YihrdGltZV90IHRpbWVzdGFtcCkNCj4gICANCj4gICAJZmVuY2UgPSBremFsbG9jKHNpemVvZigq
ZmVuY2UpLCBHRlBfS0VSTkVMKTsNCj4gICAJaWYgKGZlbmNlID09IE5VTEwpDQo+IC0JCXJldHVy
biBFUlJfUFRSKC1FTk9NRU0pOw0KPiArCQlyZXR1cm4gTlVMTDsNCj4gICANCj4gICAJZG1hX2Zl
bmNlX2luaXQoZmVuY2UsDQo+ICAgCQkgICAgICAgJmRtYV9mZW5jZV9zdHViX29wcywNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9zeW5jb2JqLmMNCj4gaW5kZXggMDQ1ODlhMzVlYjA5Li5lNTkyYzVkYTcwY2UgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fc3luY29iai5jDQo+IEBAIC0zNTUsOCArMzU1LDggQEAgc3RhdGljIGludCBk
cm1fc3luY29ial9hc3NpZ25fbnVsbF9oYW5kbGUoc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2Jq
KQ0KPiAgIHsNCj4gICAJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBkbWFfZmVuY2VfYWxsb2Nh
dGVfcHJpdmF0ZV9zdHViKGt0aW1lX2dldCgpKTsNCj4gICANCj4gLQlpZiAoSVNfRVJSKGZlbmNl
KSkNCj4gLQkJcmV0dXJuIFBUUl9FUlIoZmVuY2UpOw0KPiArCWlmICghZmVuY2UpDQo+ICsJCXJl
dHVybiAtRU5PTUVNOw0KPiAgIA0KPiAgIAlkcm1fc3luY29ial9yZXBsYWNlX2ZlbmNlKHN5bmNv
YmosIGZlbmNlKTsNCj4gICAJZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

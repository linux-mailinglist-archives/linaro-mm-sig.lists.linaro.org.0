Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6667058DA1E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Aug 2022 16:14:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 861BD3F470
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Aug 2022 14:14:43 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by lists.linaro.org (Postfix) with ESMTPS id 858CD3F2F8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jul 2022 12:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1657627510; x=1689163510;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=KML5kFgvj4KWN2iF6Gztvn9GOq1zMlzgtR4TSTIOsh0=;
  b=mj3ZNfYFskjxK44wyB/SgYUTq6/O8KSBwAPZB9QgisjtwYLvvL0FUyW1
   TKOQbydeMJ2qIOGe6hiq5gSGAeE87vyc2B3uLiJBmE0IdC3XDesFG+BV4
   pGFfepvpHS+A31QoVHWcLA/F50ro2HspeYKyQUp3g5evbYs7OV4tsTlRg
   w0gQPQc1J9rAlmK7/xBFmbkhZXtNYJvkJpBv5P5yHWWy870Ppn6zHHe6O
   EzI3pr41T0sMNd4SbSF+AfL9WhHW4MMOJViEbAT2HjZqXgy4oZATHI/rs
   bjvQdlAy+doVRHStIJK/SJmlzK84/MA/TDW5l8anCc5HdztIac1uXf3vK
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="267952180"
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400";
   d="scan'208";a="267952180"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jul 2022 05:04:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400";
   d="scan'208";a="599359898"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by fmsmga007.fm.intel.com with ESMTP; 12 Jul 2022 05:04:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 05:04:04 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 05:04:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Jul 2022 05:04:04 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Jul 2022 05:04:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ihOBSJyN21UFwZmUOgXhj7KSvoI1CMIdwVTXbRUvk/+sRqqr6sc7rc2oqRg6xSSbpmnG0QsI9C+AVBSrsmtOv9l7HDYiPC6A04gz88JKylJ1BfNPs/+Ps4NuZbsbO81ORTcu3KN8d+1OeUfqUSd9dj05nZksVSlAsGRPkBXpl2WQIPJe/xaXITmrpbfAMAIAQSLhweBndAeZj8HwviY0EKen4r2jsiz1cH6ILRCBpb/t6WpMYvdRWLLUqwtlBXt+AP7AOSQ/kEtddHk2qkvo8IvdNDzgt6p7iBO4SDyhw3xY+EKHWN/53YdXRlzgIikc6N9LTtXh1K80BrpuVax37w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S4ryJ7bX87PXICXJH0q3o7oqmjtyKb3eNGNSJ9uXjXU=;
 b=Noqf/SqOEOyClSguF0BwdAFM89k6HzFaNEqCEp4rbUVGWAJQgeZ7h1Nq7tUrulnD1lgI0/eWtSz0sbXRdzVv9KQ9Ye4G+P4fyLqIl9Z5OUc1I2kJ/+ZVmfikfk+H8EG1BLhdtjUWyY6ytFhxFn07QFeKixRvF4dHzIFqB1DXx4F55Q20BHQRbKxOj0m30Bo/uvuFQZnKe8cpi5MPEeiKYk/dRvqIBRjxpzCa84cDE0I7/wjPFMk1Klft9TU9HhDKbhAwRQY+d6f0N1saIg3urMHMQysYqKoCgjQ0fRyBYml9zccUzNvPApQmIxfAcSMk1wMxqF/ONekMUjZYNDMlvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4243.namprd11.prod.outlook.com (2603:10b6:a03:1c8::16)
 by CY4PR11MB1846.namprd11.prod.outlook.com (2603:10b6:903:11f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.24; Tue, 12 Jul
 2022 12:04:02 +0000
Received: from BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a]) by BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a%4]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 12:04:02 +0000
Message-ID: <6570e584-7ddc-4029-0555-276020750dd2@intel.com>
Date: Tue, 12 Jul 2022 14:04:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220712102849.1562-1-christian.koenig@amd.com>
From: Karolina Drobnik <karolina.drobnik@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220712102849.1562-1-christian.koenig@amd.com>
X-ClientProxiedBy: FR3P281CA0033.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::12) To BY5PR11MB4243.namprd11.prod.outlook.com
 (2603:10b6:a03:1c8::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b9373340-c042-41c3-5743-08da63fe9c16
X-MS-TrafficTypeDiagnostic: CY4PR11MB1846:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fG7uig3FMnQWV6I9VrLKXBBFQ0vcdO0QAfkYRLQMNND5IiI8Urc4ytGHqbXu2vU08KrWwjPYRgGmXSsM2MGEARIuruWU3ly1l5zT4M/sMS3MVYCjtn4mEWRw2NgHiMDspE01l2o/mSkD7zR+KUtWgN/Kr2hrDKaMGQkaTzmk7qDujtb6IiS51hiq431YCIgflMKArX1SkgFydNERL047LJ1aQe4i3SaiJlDgT7VvzJShPvlnD1dEtubtGvZRmqSecz1jpnzZyb1+ajP0M3KcNfj4xzB4CbLmy/AVn14mnqsbnVkXIBmbFI6sipArkwEtPnDXmL7mtpVg4EymZ3wnIJlb1WhLXkWNM1wbBBO6J7kCgk0JBuIwj5USelO8H8+cy+vW/qvwdqhInuP0sE4SiypGO8L/2K1hxAAAKrN10PyAqS5OS3pzzZl/71gsnS+ZapGyg7t2IoHqrjk+65E/+2qZET9cimWpRv4Ou4+YPYHwPmmceuV96HotEYJhaepq0Ru9LymVWW2uAnfSGAl2U4R0BpMcGjcYFEhRrwE2I5z2DWL5WzdYluDNNzAznFkXe0b6mMbT3g5ph5DK37cTTG4QbSghbNwnj66F8ZgbbsK5t38UFpPg5oziALgoWgzEtDkxKiPThdTPtkOD2QLNBG8ds4AD9YSLHeqDJJqcGhnX6o1vrzmyBAXuxyWgdur9pycCtjSuJB3J5uSSaVRZzQ+WyAyNOnGJsKDpJPgn3jhgMbd9/h1udf+5/ZMalLdCvsCSeoq53QwU5kxf0eEgtNsm29RWI2uDbRPxso1AT7Yl6qwbu2kwAZ+JC4lNiIYLGxMfibmcEbPeAMV21QxNUg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4243.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(346002)(136003)(39860400002)(376002)(366004)(396003)(8936002)(2906002)(31696002)(5660300002)(44832011)(38100700002)(53546011)(82960400001)(6506007)(26005)(6512007)(66946007)(478600001)(86362001)(36756003)(36916002)(31686004)(41300700001)(66574015)(6486002)(4326008)(66556008)(186003)(316002)(66476007)(8676002)(2616005)(83380400001)(6916009)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RW1RdEFqSjlNSlJ4MVhrRlVJN2FDL3JQaXV6eGpZSDZmRVNobXdpekFsY055?=
 =?utf-8?B?dDlpdnhnckdsM0RLMXJ5RTlLNHYyZ0dtdCtsUjhJQm1IV25XOWJJTHNuL1Uv?=
 =?utf-8?B?M0htTFM5Zk1odkVjOXJVa0YySnFwS3F1N3VyWnRUSEdzbG8xYXp4Mjh1c2lR?=
 =?utf-8?B?SFRuYWFqVG5mb0hEODFiZG5jSTZJQ2ZXT29zVVNPTm11c2NLblMxc0JLZmlk?=
 =?utf-8?B?ZUYyVmc3STk5K3h0SE5VaFJ3Ti9EVkxRQzFhQjYrRUovYnRJOW45eVBXNDVI?=
 =?utf-8?B?ajZWR05tTDhLQ2hrbHBQV05yd0VYMlJFelpvQWl5dm5jZWhwZklEdVR1UlFJ?=
 =?utf-8?B?NGUrVUlGalo2T1VUUklTUlcvdDdqalhLUFBpeGJ5SkxOZVYvZW1DSjNIbDlJ?=
 =?utf-8?B?SXl1VVM2NVh6S1ErbmpPNXhvQ3g5a04rOXo4ZEpDT0RZSEhNRU11ZndaNHN1?=
 =?utf-8?B?RkR6dmwvSEg2MHNkVjJndFFuWkR3TmY1ZStzT0N1UW4yaWlsQVdnOXU3UkpG?=
 =?utf-8?B?SkRnYm9VQzhUZm1OdklHOVh4TGtVVlBIdityT05jL2xHU24wc05HYVhSSVls?=
 =?utf-8?B?Uy9KZmJscG1XQWxGUjFjeDJzSVhWODRBV1JKZ2w2cmovTjhYMjJjZTZTMHQ0?=
 =?utf-8?B?WGZUNjRXWURSV1RmNXFJZ0F4M0ZheVZNb1pKdlkzem5PcFVLWFpyRjF0UlVH?=
 =?utf-8?B?eXo2MEJ1K3UyYmlER0ljMnc2NlZQZERuRjBUSFVNOXEwaVJJTlduYk9id2NR?=
 =?utf-8?B?aUxZc2hIdTcyRTNBYWl3ams5Zzcwa0tObjBhR0l6ZWUvUXE0eXFJZ3pXWVFG?=
 =?utf-8?B?RXYvbjJablQ4YzQwVkkwMk9ONkZzempDWFlMUW1HU25UalgxT0pJVDNCT2I1?=
 =?utf-8?B?cDBYVExYU1BtR2RYUWRpOUsyb2NkUjF2eWV1bVlrOHpsK3QwMzg1eXg3ZXJJ?=
 =?utf-8?B?U1pLSmRScEZycDg0bDZwMThsd1NYcU9tM1g4MlZ3eW4yd0t1cHZQTXVCdjNk?=
 =?utf-8?B?VjNCMHQ0RS8wYTRhTGNOcnFrSUhMOHFhMXZJNU9iaUhQRnhPNUVObXppMk5v?=
 =?utf-8?B?U0Z4aGVndEszM1BtbFpzQkJTQ2E4Njd4cjd3VGFjZGNndnU5MnluMXZGWFZI?=
 =?utf-8?B?QVdRb3FuZ0h2MGs0c3diZFN0Wm1FS2F3UFE0ZXJMQWdzckZYMEkwaDBaSkNR?=
 =?utf-8?B?YXlLRzBmSE1KMkg2T0F0STBsMGp2aUlabGFKSlBZVis5LzA3Z1pPOW1WbkNp?=
 =?utf-8?B?MWZrVUtJT3Bja3gwOXhNbTQ5Zi9RVllMbXZHZmxXMTUwSm1BWS9yOUpQaHA1?=
 =?utf-8?B?M0lLL21ERjYwNXlzUExDcmpvY0p5dExJRlVEZ1ZIM3Rja3RIK1Uxb3VEc3dI?=
 =?utf-8?B?d1ZXejlCNFkrb2dFa281MGZIZ0NadXVsM2R1V3c4aVQ3VEh2c0VpWEZ4Q0JV?=
 =?utf-8?B?R2hHOXVtOE9LZjdaMkhWZjdHQ2kvWmlwMFJiQTZCSUcwTTBreTNBeDVNU1ky?=
 =?utf-8?B?ZUNYU3FHRXJteXFERzF6azVickZWSWpIamo4WGtmZWIySDVLcW5ncnRDMUth?=
 =?utf-8?B?N1V6MDAzU3BudHhwVE5KMW9rbVVsMlc2Y3lWNHFGcGYrZ1RFYTlIcFNZYnhF?=
 =?utf-8?B?OW1JWVRPemR3dW1KOWNTWVBRcFpHRGFTcTJpd3NBdlFBdFNRUmlibElwRmd2?=
 =?utf-8?B?c2hJakpWS1FIZzRscUtpVkdVMmJXQm5yQzc0YWV1djNHblphcithWExhVy95?=
 =?utf-8?B?SjNMNkg3Vklrc3g0a1NNeWhIVFBnR0FUekFMNU41UE5wRkhtUWdDV3d1Smpq?=
 =?utf-8?B?RHRjYng5QjJoRU43b3ZCcDZiS3FxMEFLdUQweG83TVEzbXU3R0t3blN1NDlS?=
 =?utf-8?B?UFY5KzUyc1Q0N1JtcHRhaWphaUd4ZjRicXRSaXNCU3kyd1FZbS9TZW4xRXVH?=
 =?utf-8?B?ZVNOV213U3QySjlmV2V6ckVvajFNNFBudlpTSE04OFo1Q3hKM2hwRUo1T3Bl?=
 =?utf-8?B?SmdNQ2ZTVmFJTzhSR1RLOXRNcVBMTWVzSXpRQWd3anJYSmRuM01qUnlyOUFr?=
 =?utf-8?B?Y0pPRzNmMmhHZFNYMm1HVDh5TXhMR0ZETVJrUS9QRjhrOHlrVGtnai9mZUFk?=
 =?utf-8?B?cGIvdVpuS3c0MlpJYXBNSytucnV4SjJ4em9KMmprTTlkdU1vWjhOYTVEZk1I?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9373340-c042-41c3-5743-08da63fe9c16
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4243.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 12:04:01.9461
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6BUl5FM6/4Y8HBIhwIKZrNZRlMLtOaHw6iQgsAoZJXH8K7LGtZkQyHZ9fqzkSFtRjP0dDPTUGMyGANspeAs30r1pEG+s6jnXgD/fJIZq0lc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1846
X-OriginatorOrg: intel.com
X-MailFrom: karolina.drobnik@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XNFWZKZMACZNZVZ6YP3PWWLCN3OGLH3N
X-Message-ID-Hash: XNFWZKZMACZNZVZ6YP3PWWLCN3OGLH3N
X-Mailman-Approved-At: Tue, 09 Aug 2022 14:14:40 +0000
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: revert "return only unsignaled fences in dma_fence_unwrap_for_each v3"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XNFWZKZMACZNZVZ6YP3PWWLCN3OGLH3N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiAxMi4wNy4yMDIyIDEyOjI4LCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOg0KPiBUaGlzIHJldmVydHMgY29tbWl0IDhmNjE5NzM3MTg0ODVmM2U4OWJjNGY0MDhmOTI5
MDQ4YjdiNDdjODMuDQo+IA0KPiBJdCB0dXJuZWQgb3V0IHRoYXQgdGhpcyBpcyBub3QgY29ycmVj
dC4gRXNwZWNpYWxseSB0aGUgc3luY19maWxlIGluZm8NCj4gSU9DVEwgbmVlZHMgdG8gc2VlIGV2
ZW4gc2lnbmFsZWQgZmVuY2VzIHRvIGNvcnJlY3RseSByZXBvcnQgYmFjayB0aGVpcg0KPiBzdGF0
dXMgdG8gdXNlcnNwYWNlLg0KPiANCj4gSW5zdGVhZCBhZGQgdGhlIGZpbHRlciBpbiB0aGUgbWVy
Z2UgZnVuY3Rpb24gYWdhaW4gd2hlcmUgaXQgbWFrZXMgc2Vuc2UuDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCkFmdGVy
IGFwcGx5aW5nIHRoZSBwYXRjaCwgZmVuY2UgbWVyZ2luZyB3b3JrcyBhbmQgYWxsIHN3X3N5bmMg
c3VidGVzdHMgDQphcmUgcGFzc2luZy4gVGhhbmtzIGZvciB0YWtpbmcgY2FyZSBvZiB0aGlzLg0K
DQpUZXN0ZWQtYnk6IEthcm9saW5hIERyb2JuaWsgPGthcm9saW5hLmRyb2JuaWtAaW50ZWwuY29t
Pg0KDQo+IC0tLQ0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMgfCAzICsr
LQ0KPiAgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oICAgfCA2ICstLS0tLQ0KPiAg
IDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQo+IGluZGV4IDUwMmE2NWVhNmQ0NC4uNzAwMmJj
YTc5MmZmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5j
DQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMNCj4gQEAgLTcyLDcg
KzcyLDggQEAgc3RydWN0IGRtYV9mZW5jZSAqX19kbWFfZmVuY2VfdW53cmFwX21lcmdlKHVuc2ln
bmVkIGludCBudW1fZmVuY2VzLA0KPiAgIAljb3VudCA9IDA7DQo+ICAgCWZvciAoaSA9IDA7IGkg
PCBudW1fZmVuY2VzOyArK2kpIHsNCj4gICAJCWRtYV9mZW5jZV91bndyYXBfZm9yX2VhY2godG1w
LCAmaXRlcltpXSwgZmVuY2VzW2ldKQ0KPiAtCQkJKytjb3VudDsNCj4gKwkJCWlmICghZG1hX2Zl
bmNlX2lzX3NpZ25hbGVkKHRtcCkpDQo+ICsJCQkJKytjb3VudDsNCj4gICAJfQ0KPiAgIA0KPiAg
IAlpZiAoY291bnQgPT0gMCkNCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNl
LXVud3JhcC5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmgNCj4gaW5kZXggMzkw
ZGUxZWU5ZDM1Li42NmIxZTU2ZmJiODEgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1h
LWZlbmNlLXVud3JhcC5oDQo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5o
DQo+IEBAIC00MywxNCArNDMsMTAgQEAgc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX3Vud3Jh
cF9uZXh0KHN0cnVjdCBkbWFfZmVuY2VfdW53cmFwICpjdXJzb3IpOw0KPiAgICAqIFVud3JhcCBk
bWFfZmVuY2VfY2hhaW4gYW5kIGRtYV9mZW5jZV9hcnJheSBjb250YWluZXJzIGFuZCBkZWVwIGRp
dmUgaW50byBhbGwNCj4gICAgKiBwb3RlbnRpYWwgZmVuY2VzIGluIHRoZW0uIElmIEBoZWFkIGlz
IGp1c3QgYSBub3JtYWwgZmVuY2Ugb25seSB0aGF0IG9uZSBpcw0KPiAgICAqIHJldHVybmVkLg0K
PiAtICoNCj4gLSAqIE5vdGUgdGhhdCBzaWduYWxsZWQgZmVuY2VzIGFyZSBvcHBvcnR1bmlzdGlj
YWxseSBmaWx0ZXJlZCBvdXQsIHdoaWNoDQo+IC0gKiBtZWFucyB0aGUgaXRlcmF0aW9uIGlzIHBv
dGVudGlhbGx5IG92ZXIgbm8gZmVuY2UgYXQgYWxsLg0KPiAgICAqLw0KPiAgICNkZWZpbmUgZG1h
X2ZlbmNlX3Vud3JhcF9mb3JfZWFjaChmZW5jZSwgY3Vyc29yLCBoZWFkKQkJCVwNCj4gICAJZm9y
IChmZW5jZSA9IGRtYV9mZW5jZV91bndyYXBfZmlyc3QoaGVhZCwgY3Vyc29yKTsgZmVuY2U7CVwN
Cj4gLQkgICAgIGZlbmNlID0gZG1hX2ZlbmNlX3Vud3JhcF9uZXh0KGN1cnNvcikpCQkJXA0KPiAt
CQlpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpDQo+ICsJICAgICBmZW5jZSA9IGRt
YV9mZW5jZV91bndyYXBfbmV4dChjdXJzb3IpKQ0KPiAgIA0KPiAgIHN0cnVjdCBkbWFfZmVuY2Ug
Kl9fZG1hX2ZlbmNlX3Vud3JhcF9tZXJnZSh1bnNpZ25lZCBpbnQgbnVtX2ZlbmNlcywNCj4gICAJ
CQkJCSAgIHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZXMsDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

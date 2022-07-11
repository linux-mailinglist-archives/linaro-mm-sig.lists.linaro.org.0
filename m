Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA8658D949
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Aug 2022 15:19:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC0503F470
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Aug 2022 13:19:03 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by lists.linaro.org (Postfix) with ESMTPS id 83CC53ECCD
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jul 2022 09:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1657532648; x=1689068648;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=Oe/XODLv1UaxdK3Sbwj3NNq6O7UMtWycoDr8lsimQ5Y=;
  b=CrgiBCVfFe7xITgKdhjxDyFT/e3YtQl1o9z/tUkeAt6e946zNCsnHy3+
   0LNPC6gWIJn0m7nsj+rFGDPiLBWYf59FgLOAbvZlxKX4mhucX0/aYJq0s
   f+MoAdbDh1iateez+DK7v3eNps7RRlooUQb7S5E3DIC9E6Q9C2RNaN+nQ
   QsN/2vsyhGl80b6lNhYhDbYM0evpvElh5GIfFU+CSxdqFpN6dbsX3O0i8
   WV1VNIThM68ZYdAXP18M6MYjdP0iN9Tq5iL+i+UyYTDeBuG2s+SGoQbra
   16/gp7P9OEoUw2nhP6M0avibYaL7Kel9daBrSq8fiuhYg4NsNRJPXhZ/Q
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="282170500"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400";
   d="scan'208";a="282170500"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2022 02:44:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400";
   d="scan'208";a="737032843"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmsmga001.fm.intel.com with ESMTP; 11 Jul 2022 02:44:06 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 02:44:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 02:44:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 02:44:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UdoVSPibK4p8fPsT05V8uhUueHUkpb37gqMbWholAXsLSVueI6YtC7KiBqcy3oNq/3mQ04yjES7xdJfs8zyIQMhAuQRIkZja0Y7tRqmHQcwIjkq7GruWrJCTWw8R1Uy9koDijwew21m/Z6gYbwgs1dBlXxc5Nql4fsR3jy9LqPke9sy328xZkYvs26jR325fIjyr+SiXG7woelSQq4fk+Z2AKRKe0IEcKZjHRtXlpLWpgAnHq+9QPKJz1cjywVo7F4Vu3/kctlOGyxgbEFan23iXK/7F+lqEVMiwVeQTMZSWqKQ7MfU0iibjtGh/Efi/KlHUm7u/qtA9QVBMNaSlcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=307eZTO2gMa6iqwCdOgV2YwpZY1M4wMqgMAkW9Y/oBU=;
 b=eFbF3Z6F5H6lJvpXwh4AmokuFcZVXjBZ5YYSBkziRw9+7WoocyGWSYJfCn1tvoLZK3gCpbrmuqHI0J3lhAZIjH9W0owLJh8fjkBQ5QBQwD+P3YpNRsSUL60baSbf5UjYk+MF5uXUtBpLGYgEKYA86SOT9q7dnyyVOSJAqGQsjYffuhU1qEeV7JGKNb/lKMusy6jIsO0UTWXxWg4CrLlhvmvbvMSmIflOFzen3bptsAUOUfIIkhMeb/lVCSckW9LfPsSfYssVpzvlVjmGEZpzoOGJvTsT8nvFn55JRkP/m9k3+ll2YyuXRLALN4xADfC28f4TQ4/RBSN3QeapGn1jdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4243.namprd11.prod.outlook.com (2603:10b6:a03:1c8::16)
 by SN6PR11MB3280.namprd11.prod.outlook.com (2603:10b6:805:bb::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.21; Mon, 11 Jul
 2022 09:44:05 +0000
Received: from BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a]) by BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a%4]) with mapi id 15.20.5417.026; Mon, 11 Jul 2022
 09:44:04 +0000
Message-ID: <f67d23e2-3953-7717-9c41-65075929525c@intel.com>
Date: Mon, 11 Jul 2022 11:44:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220506141009.18047-1-christian.koenig@amd.com>
 <20220506141009.18047-3-christian.koenig@amd.com>
From: Karolina Drobnik <karolina.drobnik@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220506141009.18047-3-christian.koenig@amd.com>
X-ClientProxiedBy: AM6P195CA0065.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:87::42) To BY5PR11MB4243.namprd11.prod.outlook.com
 (2603:10b6:a03:1c8::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: be77f56e-227b-4b3e-abbc-08da6321e49c
X-MS-TrafficTypeDiagnostic: SN6PR11MB3280:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qBYn98tWkFrRsUp3pOpsqZqfPMypYxogcl5wK4H7Dudw1D5qOVX3BsUk66+ksaTGp9ZxfmPXScfaavjKr48CcwUo3gN9mrzdhM/Dh3ihI3NkMHbK6SzMaS2lwIBlrew/sal5N7QM7vuy7zzHgGLnxkIHWuqg1lnsVxaxgZz0elmxgBccaRrbWlwTquaH7Rd5et+bScO4gm3jUAaQiqSzyoIvRdbRsS9fxP2VTSM0yz7i1H1jGqi6ZJfoe5VMOpJUeVArctBsHENO6ApaMrkuiCF3Axn4XdWg5tde2FoJPuRGUibPXeeFkL3mxubYx1IDYwdPJgQwg/teQqSTcBU25eOnfu0o8QXLgCjohCks6MJKrztbIKCRci6f9Uv6IYOGpfOBfDI273JiMwxFYx3xtl15mj/ZrKmm9esr8M2aPpucVOZX/xaAfyHHBO/rvpgqkpL1fCGqbAvoohhn3dnebc44X/yfe3hE8XLFooRqW3MnsYDoAO6voqG7dcQwuXQCdV2Kv6JvTfKW0p0rJAwq/7pSOdBLjKT51bDlXUp/SyWBRgvMgrCtKMjoR4h1kNY+d5OngFy8ivzPGp4ruZerYi4faXxeszIunUSmBYxFgtjJ7Wxi6lu7k6k4E6oMj22N96hny8aJPS2/Q45L1KF82YUu2oDp4eQoTtKT15Mfjft2WnVvhgMjNtS8LrGkS4vLG4+vE2MM9pneVr5vO2hNPP0aO1MxMfUkmhldOMjv7Vd7CFylwwNcDg6R+wdU/ir0zScqFeyagNCdQHkYD53up1lvcJBZa+AwvbtItSFS9nic7F24JJ7KGUI+9jxjHZLZxHUDHh6i8RQAluBKvT6E/gX+8gkWqMFMFIR71gJ4dck=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4243.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(396003)(366004)(39860400002)(346002)(136003)(5660300002)(8936002)(478600001)(966005)(53546011)(186003)(26005)(6512007)(86362001)(2616005)(6486002)(66574015)(31696002)(2906002)(41300700001)(44832011)(6506007)(83380400001)(66946007)(36916002)(8676002)(4326008)(66556008)(38100700002)(36756003)(82960400001)(66476007)(6916009)(316002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azc3cy96T0I0L3Z1UTQ2dzdVQTQxY1crdWRkZC9zckdmbVd6RWo2QWlVTG40?=
 =?utf-8?B?akl6WTZnbUptT0VlaFIybnhRUUl4ZEtqT2RYaGZIeHVHN3Nld3JEVERvSVl4?=
 =?utf-8?B?bm82M1lSVkd4YzhzN204MENTNWE0R2ZacVZsZDJYeElibUtOZWczb1Z0NTJH?=
 =?utf-8?B?WXdsek9yaVlObVZXN0xBZVMwVHF3dWhPdDZnTnZwRTdrQnRmK1JLMW5xR2dM?=
 =?utf-8?B?MUJsVE5RVmdNT0M5YjBiU3JrZmozNXh3T3lJZHNnT1B0MVNPajBGbWlBVUNM?=
 =?utf-8?B?aUd6YzBuKzdUbm9iS3BZZk9SZ1VkZ2RUNk04bXJHS0RsYnBrWTF4bW5OeXo4?=
 =?utf-8?B?Z1J6amsyVXJBZ3JYOG5IL09MR2poSEk1eFduTXpVd3NPUmI1WVBOem1KV201?=
 =?utf-8?B?OUZOMHA2Y1BSRVlQb05EMU1CUldoQUZ3RDE1eU1jVk0wdXZicVNQSFBqbHZH?=
 =?utf-8?B?R01ZYXZMelJlVTNiMkE1dUtJQzhhSzcxN0ZaMytHeXR4SSt2ZEt0YlNxK1or?=
 =?utf-8?B?ODl2dkVDVEliQ3NYMjVHemFUbW9mNXRhY1lFWVZkZGhmSHBDT1N0RHBSMXND?=
 =?utf-8?B?SlhyeHJvY0pybnhjRXdtSGxyK2VhbVRCaHRVeUNZejkyV2FTNTFxcGJ2OHIw?=
 =?utf-8?B?K2l0NFpMclEvSzJPL09zV01rNUpDaDVzREVUVEdFU3p0djJxcnFIWWxEWU9H?=
 =?utf-8?B?N3R5UTY4UzI0OTlLcGYvTmxCTFNVSHNHL2xDS2N1aVhOWUZzdW8zZDlOZXZZ?=
 =?utf-8?B?b2ZqZW14SENQV05EU0NTL1dPekZqOGhUcTlPM3VxVU9oMmxxVGhJWGR4d2Jj?=
 =?utf-8?B?eE1jb084OFp1bmJ3bGI4ajB0QTZmL2NtT2JHWWJvaUVPYW82Qk1mMk9LSG9r?=
 =?utf-8?B?STllZ0plVnZMNzkvcmQ4Sm9ONjhNNmRSUDVvaEZoSzByN1B5MGxHODhndTdZ?=
 =?utf-8?B?ZWJ0NVBGajNEaTYzdXFWTnI0YWlFazBoa2p3RmdBMkprSmZDM0lKOFlqZklV?=
 =?utf-8?B?TTg0V01FWkk1cXUybHM2UDdweW0ramVTNUFyaHdYeHRiOTZpZHJ2dGhaOThD?=
 =?utf-8?B?bWF6SlRXSWxZYTQ1dTl4TnU0K1EwczNxNE16L2ZpTG5EZDBzS2k5Z1Y2SnN2?=
 =?utf-8?B?dWY5dmhNSWpwUUl5ejVoMUVIVjBhRDVoblErS2dCa1VwVnRCOTFUTkZ3UGdC?=
 =?utf-8?B?cVVWMDBUQUZQRWhZMWZXN3oxUVQ2ME5NVURkZG5Pbm1iWFVraFpnTWlsdFhq?=
 =?utf-8?B?WmZDUkxjR3BHMituZUpaVnNacndFNWhBZUluYWMyaHpMc3JacjhhU0dUY3hx?=
 =?utf-8?B?eXFEOWswd1ZXNlMzNzcrQnJLaC8reU9LZ1VmNGp4MjRKeWx2bldQQktyT1JJ?=
 =?utf-8?B?Q21rQU1SSmFPYlhvSkFMNWxadEJ6anJ3ckFUcHRNTWdOeUVyanhRSXBZR3Fp?=
 =?utf-8?B?MFVqRTVBdWJneUxMTkhMcUZSTzFQKzFSMmJEUnhKZzdITmI0eEZweFdzZ1lH?=
 =?utf-8?B?aTJKb09TYkZnd1NDdGxTbzUrZU80T3hURGFtTzJKVHU2dWh1SkRna1YwZklD?=
 =?utf-8?B?blJCcXlxdDN2N3RoOEo4bkxNY1dUbllta3JqSUJNSjNHVnl0OFErZ2x5ay9M?=
 =?utf-8?B?aW1BUkJVY3NuNU1QUjNvdlM3dTMwd25PVE9VSWdpS0pFTlFxSmpteEdqMVBY?=
 =?utf-8?B?SUVzd2k1amwrblRYR1NxSExEQXcyV0ZqaDRVbi9ERzhPejBaWkw0dEpMOWZI?=
 =?utf-8?B?eDU3azlBekhteXBDd2tGczl0NDNTRGZ0N2RlNUU2RmxZNFZMVVRHaHo0aHlZ?=
 =?utf-8?B?Ym5zL25NK0oxa3lleXAzS29JcE00bkZoaEV6VFhwY0JkcVBQOEJWdWFkWWxn?=
 =?utf-8?B?U2pOVytpVzhBSUxHOWhRWG9FcFNFcFVuTHlHS09WMEY4dnJvRDBCRFNKS0Vh?=
 =?utf-8?B?QjlUUUZNdTRBTW05NnlOU3NOWGhoVEM2RUs0NFd3ZXFTSHpFdG1vQm94YXFn?=
 =?utf-8?B?OTFFaUE3dDd5YkJ3S3dBREtsbEhSdWdycUhWMWYwMUNqTldSdW9pNklSWDcr?=
 =?utf-8?B?cVV3eDdwMFRwbjF3RlYrTTZ2NmxSTTRtVXkwRkk4c0VLK1Q0UTc0S1FhQnFq?=
 =?utf-8?B?eVVwNVI5enJxTmVMMnRlMVdJTzF5T3ZvWTljYUU4dXIwanp2WWJ3S1hPU0h0?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: be77f56e-227b-4b3e-abbc-08da6321e49c
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4243.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 09:44:04.7827
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e2NI99CCYc6rQNYx+Y+Zv3QTevCClPiaRH3AbAyXCFq4kW/g1o/zfQ6ebxUjbdi1JUyaklzXRmL1KAHnu4PWU+tNWt0n5INSl329Orf5ntA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3280
X-OriginatorOrg: intel.com
X-MailFrom: karolina.drobnik@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YVNPRU275NB7UOLEZC7I2C4TGTU2VF7Q
X-Message-ID-Hash: YVNPRU275NB7UOLEZC7I2C4TGTU2VF7Q
X-Mailman-Approved-At: Tue, 09 Aug 2022 13:19:02 +0000
CC: daniel@ffwll.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/5] dma-buf: return only unsignaled fences in dma_fence_unwrap_for_each v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YVNPRU275NB7UOLEZC7I2C4TGTU2VF7Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpJJ20gc29ycnkgZm9yIGRpZ2dpbmcgdGhpcyBvbmUgb3V0IHNvIGxh
dGUuDQoNCk9uIDA2LjA1LjIwMjIgMTY6MTAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+IGRt
YV9mZW5jZV9jaGFpbiBjb250YWluZXJzIGNsZWFudXAgc2lnbmFsZWQgZmVuY2VzIGF1dG9tYXRp
Y2FsbHksIHNvDQo+IGZpbHRlciB0aG9zZSBvdXQgZnJvbSBhcnJheXMgYXMgd2VsbC4NCj4gDQo+
IHYyOiBmaXggbWlzc2luZyB3YWxrIG92ZXIgdGhlIGFycmF5DQo+IHYzOiBtYXNzaXZlbHkgc2lt
cGxpZnkgdGhlIHBhdGNoIGFuZCBhY3R1YWxseSB1cGRhdGUgdGhlIGRlc2NyaXB0aW9uLg0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KPiAtLS0NCj4gICBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaCB8IDYgKysr
KystDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oIGIvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmgNCj4gaW5kZXggZTdjMjE5ZGE0ZWQ3Li5hNGQz
NDJmZWY4ZTAgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5o
DQo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQo+IEBAIC00Myw5ICs0
MywxMyBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfdW53cmFwX25leHQoc3RydWN0IGRt
YV9mZW5jZV91bndyYXAgKmN1cnNvcik7DQo+ICAgICogVW53cmFwIGRtYV9mZW5jZV9jaGFpbiBh
bmQgZG1hX2ZlbmNlX2FycmF5IGNvbnRhaW5lcnMgYW5kIGRlZXAgZGl2ZSBpbnRvIGFsbA0KPiAg
ICAqIHBvdGVudGlhbCBmZW5jZXMgaW4gdGhlbS4gSWYgQGhlYWQgaXMganVzdCBhIG5vcm1hbCBm
ZW5jZSBvbmx5IHRoYXQgb25lIGlzDQo+ICAgICogcmV0dXJuZWQuDQo+ICsgKg0KPiArICogTm90
ZSB0aGF0IHNpZ25hbGxlZCBmZW5jZXMgYXJlIG9wcG9ydHVuaXN0aWNhbGx5IGZpbHRlcmVkIG91
dCwgd2hpY2gNCj4gKyAqIG1lYW5zIHRoZSBpdGVyYXRpb24gaXMgcG90ZW50aWFsbHkgb3ZlciBu
byBmZW5jZSBhdCBhbGwuDQo+ICAgICovDQo+ICAgI2RlZmluZSBkbWFfZmVuY2VfdW53cmFwX2Zv
cl9lYWNoKGZlbmNlLCBjdXJzb3IsIGhlYWQpCQkJXA0KPiAgIAlmb3IgKGZlbmNlID0gZG1hX2Zl
bmNlX3Vud3JhcF9maXJzdChoZWFkLCBjdXJzb3IpOyBmZW5jZTsJXA0KPiAtCSAgICAgZmVuY2Ug
PSBkbWFfZmVuY2VfdW53cmFwX25leHQoY3Vyc29yKSkNCj4gKwkgICAgIGZlbmNlID0gZG1hX2Zl
bmNlX3Vud3JhcF9uZXh0KGN1cnNvcikpCQkJXA0KPiArCQlpZiAoIWRtYV9mZW5jZV9pc19zaWdu
YWxlZChmZW5jZSkpDQo+ICAgDQo+ICAgI2VuZGlmDQoNCkl0IGxvb2tzIGxpa2UgdGhpcyBwYXJ0
aWN1bGFyIHBhdGNoIGFmZmVjdHMgbWVyZ2luZyBTeW5jIEZlbmNlcywgd2hpY2ggDQppcyByZWZs
ZWN0ZWQgYnkgZmFpbGluZyBJR1QgdGVzdCAoaWd0QHN3X3N5bmMpWzFdLiBUaGUgZmFpbGluZyBz
dWJ0ZXN0cyBhcmU6DQogICAtIHN5bmNfbWVyZ2UgLSBtZXJnaW5nIGRpZmZlcmVudCBmZW5jZXMg
b24gdGhlIHNhbWUgdGltZWxpbmUsIG5laXRoZXINCgkJIHNpbmdsZSBub3IgbWVyZ2VkIGZlbmNl
cyBhcmUgc2lnbmFsZWQNCg0KICAgLSBzeW5jX21lcmdlX3NhbWUgLSBtZXJnaW5nIHRoZSBmZW5j
ZSB3aXRoIGl0c2VsZiBvbiB0aGUgc2FtZQ0KCQkgdGltZWxpbmUsIHRoZSBmZW5jZSBkaWRuJ3Qg
c2lnbmFsIGF0IGFsbA0KDQogICAtIHN5bmNfbXVsdGlfdGltZWxpbmVfd2FpdCAtIG1lcmdpbmcg
ZGlmZmVyZW50IGZlbmNlcyBvbiBkaWZmZXJlbnQNCgkJIHRpbWVsaW5lczsgdGhlIHN1YnRlc3Qg
Y2hlY2tzIGlmIGNvdW50aW5nIGZlbmNlcyBvZg0KCQkgdmFyaW91cyBzdGF0ZXMgd29ya3MuIEN1
cnJlbnRseSwgaXQgY2FuIG9ubHkgc2VlIDINCgkJIGFjdGl2ZSBmZW5jZXMsIDAgc2lnbmFsaW5n
IChzaG91bGQgYmUgMiBhY3RpdmUsDQoJCSAxIHNpZ25hbGluZykNCg0KUmV2ZXJ0aW5nIHRoaXMg
Y29tbWl0IG9uIHRoZSB0b3Agb2YgZHJtLXRpcCBmaXhlcyB0aGUgaXNzdWUsIGJ1dCBJJ20gbm90
IA0Kc3VyZSBpZiBpdCB3b3VsZG4ndCBpbXBhY3Qgb3RoZXIgcGxhY2VzIGluIHRoZSBjb2RlLiBQ
bGVhc2UgbGV0IG1lIGtub3cgDQppZiBJIGNhbiBiZSBvZiBhbnkgaGVscC4NCg0KQWxsIHRoZSBi
ZXN0LA0KS2Fyb2xpbmENCg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpbMV0gLSByZXByb2R1Y2li
bGUgbG9jYWxseSwgYnV0IGNhbiBiZSBhbHNvIHNlZW4gaW4gdGhlIENJOg0KaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9pbmRleC5odG1sP3Rlc3RmaWx0ZXI9aWd0QHN3
X3N5bmMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=

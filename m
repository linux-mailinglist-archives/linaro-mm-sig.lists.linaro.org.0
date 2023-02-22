Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BCF69F7C5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 16:29:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 994EC3EC75
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 15:29:09 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2068.outbound.protection.outlook.com [40.107.223.68])
	by lists.linaro.org (Postfix) with ESMTPS id 0D30C3EA27
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Feb 2023 15:28:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=HQC1zpbl;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.223.68 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7osOSepGuE/9w9/bBWjI83YsxdOHIjaHjwPTZCqvoC7NXwfmKU+jOd7jQdxq6xcepVLLDFX14vIxSjLF+LxKj/eOO/bHxluyBHMhI4SkOFcVOUQti3kceOcaIdBOWACNKZi1dPZczdMRHIEVbIMdJyExz55pYyEyiEGPhf3egGo4r1Wiz+s3kJkbs/y3Jsby/rpY/29iVWVjCFmkiFoFFnY7FZ1/F5motYVW3dMpco1cLgiBIMOpo+YfuFnJMI2RcsFBvduzGU+a/kgR4dFq3vWZIIe6p6Oh8DYdlgkTSTN7qRNUDMD5xO/wQ2AxgqYdQ/NL9qPB/2oiEO9aiO1ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f1jR+O8b046t7hiN0g/X0WPkUCDPTUm1nK7TmYintbk=;
 b=aaX1fPEF3yr7Wo6cQjxHI2Tx81I1MN+2w8rRcW2/iRMBFzU0QjUS2koWRJgITv11xOxlNeIP1TBHEFdc9kVg1b8wgY9YkBdE4aiAEn4hqup2fp+RCD0mVM0lnKWCMDVCMJcunUpP1vkXdJkmedOabShsQi2k5O5/x8n8Iwj//z/6bVeu7mTa3iJIHNuO6rMw9JjHpIINK8LRk30T2PAvAboIo/8vipqLAxTqTagcyqNzYskWlCA3AMmm/PeWqGjeiOQmr8D47n5M4iGJwpAsto+Rum74xGSS1GZGUcMuIn9z+oV0BWP8wcIInv3Xasyj5PzpcDiyr4GNFNq5uXbJpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f1jR+O8b046t7hiN0g/X0WPkUCDPTUm1nK7TmYintbk=;
 b=HQC1zpblxosiSSWMyTQhCoTjltm9KiQS/M0W6CzMTaWupyb9Q6yxJt88ykVddz7ShJ8t9C8e7AJthF3gIhnsiJw8zMi8L4iXXQeov/4LliCNnJwkf/LEuWODUiIXyMCKxThR/S8Ltp25lGIA0MiKch1jpIw8Y1eJB6ZRdLuF0+I=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SA1PR12MB6704.namprd12.prod.outlook.com (2603:10b6:806:254::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.20; Wed, 22 Feb
 2023 15:28:46 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::2e4f:4041:28be:ba7a]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::2e4f:4041:28be:ba7a%6]) with mapi id 15.20.6134.019; Wed, 22 Feb 2023
 15:28:46 +0000
Message-ID: <21f36640-3229-0b46-31a2-a47efc5be934@amd.com>
Date: Wed, 22 Feb 2023 16:28:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230218211608.1630586-1-robdclark@gmail.com>
 <20230218211608.1630586-2-robdclark@gmail.com>
 <b65a2fe2-6f68-2116-9599-2940e66d166b@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <b65a2fe2-6f68-2116-9599-2940e66d166b@linux.intel.com>
X-ClientProxiedBy: FR0P281CA0093.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::7) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|SA1PR12MB6704:EE_
X-MS-Office365-Filtering-Correlation-Id: 8404402b-733c-4e11-0ef4-08db14e97d45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	l7pdVerbWbt3UqZoINsZ5ya9PPB45UFk2Ef/6Lu1TMu2xE8g52s+wvlMzq+IWmFfWiYQkolHKcPGESPJxAYrynaoZFYaSgsaWFPk3i47lIw6PxP39O3Bu0HO6ZsOt7uuADXnA6F5WxLM9aZZhaUJE9bEBtT4Qck+0n1vpEiq+ha/W9P/cgdYcHoZP1f7CA49C5PP4ReMuL41uePsYpd7RKD4K1wBkc4IH/Nlzw1Fd8W+GMmkwtlm58WxX2+QI8OrM6JEG1RTTafmdnv2pmVeUdIG1BFE+FluDLzIQeBHrM8ovdEsMu4x7wIjcMBnc1U9Ui6khlZ0p1f6MYhWpbPxo0H4G/4+rDfJyaUwECy1gmI0HFJn9mV8WyXgA88eTNkfeqjshtG0Q0hyD219Zq3MNyyi2s3FaKWqHETa+df9UefEE0u4sC1Mrt2tkVeym2+8zfia9AxMw81We+kg8/Gk6Psq78l8yNz5n9oRq/7zMwEB9MBjA/cE6G+U1vd0YcBUphqOS0Naz1a07ZNmQm6coPzennUZpR5P7gADKG48qsVCWAcABcVZuVO73mpAc1sqHoPf6cG6r8hXKj9wpdfJXHwvH5XBlXB3mYrOsnfWMr5d03tpQyDgkcDawtPJr3dtbRIxOu3is8rbHkdsQyuE6DwtEvL27qgVKU6XEOH0DB8rv2iN547POXBbJxk+HX1LKCaLX2Nr8C1RcUbcJACTLbFA7aLdXxBL0/Yt6lcnzNk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(39860400002)(366004)(136003)(346002)(376002)(451199018)(6666004)(86362001)(6486002)(83380400001)(5660300002)(8936002)(66574015)(41300700001)(7416002)(316002)(53546011)(110136005)(2906002)(186003)(66946007)(4326008)(6512007)(66556008)(66476007)(54906003)(8676002)(2616005)(478600001)(6506007)(38100700002)(36756003)(31696002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WUhKR29FelBicWpsbW5kV05HRzdaV3NFdTZFQ2FtS3hOSFRyZHdRc2tURTNw?=
 =?utf-8?B?MHh1NHhRZ1JuUE41SmdVaWpkM1pXVW9IWXI5dzBIMFZLVVRHQ0NXVjJvaWJU?=
 =?utf-8?B?QkdlRGJXY1BIdTd6VjNtNWtjLyswUzJLK1R0RzVhRVNHbFEwS0dBTXcvelJF?=
 =?utf-8?B?RWc3aVh4SXRtM01mWTZSdWhyMlpWVXNUKzY5aTNlTjBBQWxGYXpoeFhRQUh2?=
 =?utf-8?B?ZVplSEErdHJrU0YxeEZmVVc0L1Z3ejJBekVrYzZScldXa1UwclpyM0Jqdm8x?=
 =?utf-8?B?MWNoTktLK2hRUDQyekZma3pxT0ZpakRjUDJ2ditRaTgyR092aVRDV0J3RGhn?=
 =?utf-8?B?SnRPOExucktvS2VUazFTN2k4UEU2a1RUQVVQckRST25NZ3laY1dzSWdVRUEv?=
 =?utf-8?B?SzVzb1RBbCtWblVXbFZlekJuT0hzcitYVUI5QnNZS3NjQ1Y5WXF0azAvVXMy?=
 =?utf-8?B?YWwzZmlEUitMemNqU09CRUFBNDZOUjNaanNXMTFzZEN0R0tCOG90Y3BRWWxw?=
 =?utf-8?B?QnFMSnh4YUJBY3pyM0tUWEtJNmJoSGJQbUhoWXMrREUrWDhSelVaeDZOVlVF?=
 =?utf-8?B?WTB5VXRPOE51bHNNWDZDemQ0SXpCdlFCSURzYmhaN1ZtOWUzRmorbmJqM3N4?=
 =?utf-8?B?QlVxbXdNK2g4N2V5b1c4a2s3eWJjRkJteGh2VnpaUUFDUjNITXhDWW5UcG8w?=
 =?utf-8?B?Y295WTAra1J3QS9vMExDVGVlRmRRbDBkcmpyZGhFSzl3ckZXUFVhTzR0UDYr?=
 =?utf-8?B?WHk3SHRvUEN4RWgvUDIwZDdNZC9SV1dBQVJMdU1TYk13KzhJYmVIUnB0V21j?=
 =?utf-8?B?QVByQ25xK1EvNjRkMTVqaE52NVV4YmFOK2Zpa2RnWFhIZlN4S09yazArY2F3?=
 =?utf-8?B?bWF1cjdtcFl4UmpPQTNUbXlsNVZ6ZU9RYkNScVNhazI2UnVLNmR1Ui9sN1Fp?=
 =?utf-8?B?eE05alVQOXM1NGcrbVVOQ2JjcjBHRW9McXEzUjRnRlJrbThFc1RNT1l1UXc1?=
 =?utf-8?B?KzBJRzE1VnRqZ05SMjFrU0JXeWxnU1h0UEpubXo0S05hSXlnZnBuVW1obWJm?=
 =?utf-8?B?Um5BYUdnelJBY2ZCdkxFL3dmK0xVeTJ1ZDRRUzBXVytKaGp0ekZxVE8wK0ZH?=
 =?utf-8?B?bEQrN0pkTy90N0ZKVmlyZGxRWUxXdUtiWGhlcUs0TllXMzZWUFJvMHVMQVpQ?=
 =?utf-8?B?WFdHQTJsTDJWNUtJUkpheWYrdkZiNERPN1RUYjhYcFRMZWlQaWhEWG81SE05?=
 =?utf-8?B?dDBtdm9LZktyYkNwbkFsTldlbjBUNVFZZzN6elBoNlhCSmYxTXBZNGU4bVMw?=
 =?utf-8?B?dlNRS0NNQVZzaW1zTkVqSFBmZVRJcy9MWGt6ZnlkZkNtYk5DN1I1aFJhQURB?=
 =?utf-8?B?TkJPODhDUGtzREQ5UnpHNjZhOVJLZnJaVUk5VGRORE9PdWxKa1l0VTJOQjla?=
 =?utf-8?B?OU1BMHlxc2szMWg4ZEZ3cXdDQ2p1aGQvQjl6NXFCcEhpaGJEb1ZIT2F2Y29F?=
 =?utf-8?B?TnVMblhKZ2RzcGwzdDMrUlAxdkVMOW9aUmwwLzFxZXBONWZpZG5pQW1QUUJo?=
 =?utf-8?B?cHpxem15dGZrZzZVQ056RCtPM1dJZmZhcVFKMGRxeTl5cEJOWld4Uk16bDRX?=
 =?utf-8?B?T0NxYmZUcWhKRWh3WGV0Mm0zb3YrMU8wek9Gd0xEM3JEVGRHY2RSZFo0WmYv?=
 =?utf-8?B?NkhQampXVnlqaDNldHdLemVXRFkyZG11aWRpWDYvVUtvRHVwZ3VQaHZ6VGFQ?=
 =?utf-8?B?VS8zWnJKZmlOYzl4bGFYWGhjUG9jSHB6R3BQd0tnVk9DQm9HalZFblZIeG1u?=
 =?utf-8?B?cGtoMjlzcWRGNVlZRndYR04wKzR4UDhpUTNOUy9pdUFPcCtuL2Vyb1dEMW1Y?=
 =?utf-8?B?d0lPWDYwUXdwODJub203QlNQZ0pWNzZYOXJ3YXlXTTBXcFZSblNaRWpGeG50?=
 =?utf-8?B?Y2RYbzg4Yzc5b2tvTGE2czJJL0kwN2o3bnBBd1pBUG1sVVRpSHhLTHcxMkJ6?=
 =?utf-8?B?SHlXRFZHMGJQb3hRUlBvcXlxMVBqNVBUZ2Y0T3hnWkJlbUF3alR0dS9vRy9p?=
 =?utf-8?B?c0tralUvTm5hcEpseVgwNHluZVhveTJYOXRuZ2pYYkFzVGtTWk9DSGxMbWxI?=
 =?utf-8?B?R2VRNmw1Y0M2NkdWaUhVbjlDYTAwZm13WGtVMkVYeUZyeWlWd01hV2E1aEZn?=
 =?utf-8?Q?9VeOCzRg3OOeu1UStEhE9zpbpoPjppc4UGLJpkaTUcCW?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8404402b-733c-4e11-0ef4-08db14e97d45
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 15:28:46.7482
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nx0BGPbFpmDHghJUC/eY2kVuAhTxC4E0j1Ks/GTB56h6AfsGsOmTFZQrB3gokbzm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6704
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0D30C3EA27
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_CC(0.00)[chromium.org,padovan.org,intel.com,daenzer.net,vger.kernel.org,linaro.org,lists.linaro.org,gmail.com,amd.com,lists.freedesktop.org];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,gmail.com,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.68:from];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: ZENRW6YXOWFF6DRHNACAWBA46YUSS7OD
X-Message-ID-Hash: ZENRW6YXOWFF6DRHNACAWBA46YUSS7OD
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 01/14] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZENRW6YXOWFF6DRHNACAWBA46YUSS7OD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjIuMDIuMjMgdW0gMTE6MjMgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoNCj4NCj4gT24gMTgv
MDIvMjAyMyAyMToxNSwgUm9iIENsYXJrIHdyb3RlOg0KPj4gRnJvbTogUm9iIENsYXJrIDxyb2Jk
Y2xhcmtAY2hyb21pdW0ub3JnPg0KPj4NCj4+IEFkZCBhIHdheSB0byBoaW50IHRvIHRoZSBmZW5j
ZSBzaWduYWxlciBvZiBhbiB1cGNvbWluZyBkZWFkbGluZSwgc3VjaCBhcw0KPj4gdmJsYW5rLCB3
aGljaCB0aGUgZmVuY2Ugd2FpdGVyIHdvdWxkIHByZWZlciBub3QgdG8gbWlzcy7CoCBUaGlzIGlz
IHRvIGFpZA0KPj4gdGhlIGZlbmNlIHNpZ25hbGVyIGluIG1ha2luZyBwb3dlciBtYW5hZ2VtZW50
IGRlY2lzaW9ucywgbGlrZSBib29zdGluZw0KPj4gZnJlcXVlbmN5IGFzIHRoZSBkZWFkbGluZSBh
cHByb2FjaGVzIGFuZCBhd2FyZW5lc3Mgb2YgbWlzc2luZyBkZWFkbGluZXMNCj4+IHNvIHRoYXQg
Y2FuIGJlIGZhY3RvcmVkIGluIHRvIHRoZSBmcmVxdWVuY3kgc2NhbGluZy4NCj4+DQo+PiB2Mjog
RHJvcCBkbWFfZmVuY2U6OmRlYWRsaW5lIGFuZCByZWxhdGVkIGxvZ2ljIHRvIGZpbHRlciBkdXBs
aWNhdGUNCj4+IMKgwqDCoMKgIGRlYWRsaW5lcywgdG8gYXZvaWQgaW5jcmVhc2luZyBkbWFfZmVu
Y2Ugc2l6ZS7CoCBUaGUgZmVuY2UtY29udGV4dA0KPj4gwqDCoMKgwqAgaW1wbGVtZW50YXRpb24g
d2lsbCBuZWVkIHNpbWlsYXIgbG9naWMgdG8gdHJhY2sgZGVhZGxpbmVzIG9mIGFsbA0KPj4gwqDC
oMKgwqAgdGhlIGZlbmNlcyBvbiB0aGUgc2FtZSB0aW1lbGluZS7CoCBbY2tvZW5pZ10NCj4+IHYz
OiBDbGFyaWZ5IGxvY2tpbmcgd3J0LiBzZXRfZGVhZGxpbmUgY2FsbGJhY2sNCj4+DQo+PiBTaWdu
ZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+PiBSZXZpZXdl
ZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gLS0t
DQo+PiDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAyMCArKysrKysrKysrKysrKysr
KysrKw0KPj4gwqAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaMKgwqAgfCAyMCArKysrKysrKysr
KysrKysrKysrKw0KPj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspDQo+Pg0K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UuYw0KPj4gaW5kZXggMGRlMDQ4MmNkMzZlLi43NjNiMzI2Mjc2ODQgMTAw
NjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4gQEAgLTkxMiw2ICs5MTIsMjYgQEAgZG1hX2ZlbmNl
X3dhaXRfYW55X3RpbWVvdXQoc3RydWN0IGRtYV9mZW5jZSANCj4+ICoqZmVuY2VzLCB1aW50MzJf
dCBjb3VudCwNCj4+IMKgIH0NCj4+IMKgIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX3dhaXRfYW55
X3RpbWVvdXQpOw0KPj4gwqAgKw0KPj4gKy8qKg0KPj4gKyAqIGRtYV9mZW5jZV9zZXRfZGVhZGxp
bmUgLSBzZXQgZGVzaXJlZCBmZW5jZS13YWl0IGRlYWRsaW5lDQo+PiArICogQGZlbmNlOsKgwqDC
oCB0aGUgZmVuY2UgdGhhdCBpcyB0byBiZSB3YWl0ZWQgb24NCj4+ICsgKiBAZGVhZGxpbmU6IHRo
ZSB0aW1lIGJ5IHdoaWNoIHRoZSB3YWl0ZXIgaG9wZXMgZm9yIHRoZSBmZW5jZSB0byBiZQ0KPj4g
KyAqwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaWduYWxlZA0KPj4gKyAqDQo+PiArICogSW5mb3Jt
IHRoZSBmZW5jZSBzaWduYWxlciBvZiBhbiB1cGNvbWluZyBkZWFkbGluZSwgc3VjaCBhcyANCj4+
IHZibGFuaywgYnkNCj4+ICsgKiB3aGljaCBwb2ludCB0aGUgd2FpdGVyIHdvdWxkIHByZWZlciB0
aGUgZmVuY2UgdG8gYmUgc2lnbmFsZWQgYnkuwqAgDQo+PiBUaGlzDQo+PiArICogaXMgaW50ZW5k
ZWQgdG8gZ2l2ZSBmZWVkYmFjayB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgdG8gYWlkIGluIHBvd2Vy
DQo+PiArICogbWFuYWdlbWVudCBkZWNpc2lvbnMsIHN1Y2ggYXMgYm9vc3RpbmcgR1BVIGZyZXF1
ZW5jeSBpZiBhIHBlcmlvZGljDQo+PiArICogdmJsYW5rIGRlYWRsaW5lIGlzIGFwcHJvYWNoaW5n
Lg0KPj4gKyAqLw0KPj4gK3ZvaWQgZG1hX2ZlbmNlX3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSwga3RpbWVfdCBkZWFkbGluZSkNCj4+ICt7DQo+PiArwqDCoMKgIGlmIChmZW5j
ZS0+b3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpDQo+
PiArwqDCoMKgwqDCoMKgwqAgZmVuY2UtPm9wcy0+c2V0X2RlYWRsaW5lKGZlbmNlLCBkZWFkbGlu
ZSk7DQo+PiArfQ0KPj4gK0VYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX3NldF9kZWFkbGluZSk7DQo+
PiArDQo+PiDCoCAvKioNCj4+IMKgwqAgKiBkbWFfZmVuY2VfZGVzY3JpYmUgLSBEdW1wIGZlbmNl
IGRlc2NyaWJ0aW9uIGludG8gc2VxX2ZpbGUNCj4+IMKgwqAgKiBAZmVuY2U6IHRoZSA2ZmVuY2Ug
dG8gZGVzY3JpYmUNCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPj4gaW5kZXggNzc1Y2RjMGI0ZjI0Li5kNzdmNjU5
MWM0NTMgMTAwNjQ0DQo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+PiArKysg
Yi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+PiBAQCAtOTksNiArOTksNyBAQCBlbnVtIGRt
YV9mZW5jZV9mbGFnX2JpdHMgew0KPj4gwqDCoMKgwqDCoCBETUFfRkVOQ0VfRkxBR19TSUdOQUxF
RF9CSVQsDQo+PiDCoMKgwqDCoMKgIERNQV9GRU5DRV9GTEFHX1RJTUVTVEFNUF9CSVQsDQo+PiDC
oMKgwqDCoMKgIERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULA0KPj4gK8KgwqDCoCBE
TUFfRkVOQ0VfRkxBR19IQVNfREVBRExJTkVfQklULA0KPg0KPiBXb3VsZCB0aGlzIGJpdCBiZSBi
ZXR0ZXIgbGVmdCBvdXQgZnJvbSBjb3JlIGltcGxlbWVudGF0aW9uLCBnaXZlbiBob3cgDQo+IHRo
ZSBhcHByb2FjaCBpcyB0aGUgY29tcG9uZW50IHdoaWNoIGltcGxlbWVudHMgZG1hLWZlbmNlIGhh
cyB0byB0cmFjayANCj4gdGhlIGFjdHVhbCBkZWFkbGluZSBhbmQgYWxsPw0KPg0KPiBBbHNvIHRh
a2luZyBhIHN0ZXAgYmFjayAtIGFyZSB3ZSBhbGwgb2theSB3aXRoIHN0YXJ0aW5nIHRvIGV4cGFu
ZCB0aGUgDQo+IHJlbGF0aXZlbHkgc2ltcGxlIGNvcmUgc3luY2hyb25pc2F0aW9uIHByaW1pdGl2
ZSB3aXRoIHNpZGUgY2hhbm5lbCANCj4gZGF0YSBsaWtlIHRoaXM/IFdoYXQgd291bGQgYmUgdGhl
IGNyaXRlcmlhIGZvciB3aGF0IHNpZGUgY2hhbm5lbCBkYXRhIA0KPiB3b3VsZCBiZSBhY2NlcHRh
YmxlPyBUYWtpbmcgbm90ZSB0aGUgdGhpbmcgbGl2ZXMgb3V0c2lkZSBkcml2ZXJzL2dwdS8uDQoN
CkkgaGFkIHNpbWlsYXIgY29uY2VybnMgYW5kIGl0IHRvb2sgbWUgYSBtb21lbnQgYXMgd2VsbCB0
byB1bmRlcnN0YW5kIHRoZSANCmJhY2tncm91bmQgd2h5IHRoaXMgaXMgbmVjZXNzYXJ5LiBJIGVz
c2VudGlhbGx5IGRvbid0IHNlZSBtdWNoIG90aGVyIA0KYXBwcm9hY2ggd2UgY291bGQgZG8uDQoN
ClllcywgdGhpcyBpcyBHUFUvQ1JUQyBzcGVjaWZpYywgYnV0IHdlIHNvbWVob3cgbmVlZCBhIGNv
bW1vbiBpbnRlcmZhY2UgDQpmb3IgY29tbXVuaWNhdGluZyBpdCBiZXR3ZWVuIGRyaXZlcnMgYW5k
IHRoYXQncyB0aGUgZG1hX2ZlbmNlIG9iamVjdCBhcyANCmZhciBhcyBJIGNhbiBzZWUuDQoNClJl
Z2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gUmVnYXJkcywNCj4NCj4gVHZydGtvDQo+DQo+PiDC
oMKgwqDCoMKgIERNQV9GRU5DRV9GTEFHX1VTRVJfQklUUywgLyogbXVzdCBhbHdheXMgYmUgbGFz
dCBtZW1iZXIgKi8NCj4+IMKgIH07DQo+PiDCoCBAQCAtMjU3LDYgKzI1OCwyMyBAQCBzdHJ1Y3Qg
ZG1hX2ZlbmNlX29wcyB7DQo+PiDCoMKgwqDCoMKgwqAgKi8NCj4+IMKgwqDCoMKgwqAgdm9pZCAo
KnRpbWVsaW5lX3ZhbHVlX3N0cikoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNoYXIgKnN0ciwgaW50IHNpemUpOw0K
Pj4gKw0KPj4gK8KgwqDCoCAvKioNCj4+ICvCoMKgwqDCoCAqIEBzZXRfZGVhZGxpbmU6DQo+PiAr
wqDCoMKgwqAgKg0KPj4gK8KgwqDCoMKgICogQ2FsbGJhY2sgdG8gYWxsb3cgYSBmZW5jZSB3YWl0
ZXIgdG8gaW5mb3JtIHRoZSBmZW5jZSBzaWduYWxlciBvZg0KPj4gK8KgwqDCoMKgICogYW4gdXBj
b21pbmcgZGVhZGxpbmUsIHN1Y2ggYXMgdmJsYW5rLCBieSB3aGljaCBwb2ludCB0aGUgd2FpdGVy
DQo+PiArwqDCoMKgwqAgKiB3b3VsZCBwcmVmZXIgdGhlIGZlbmNlIHRvIGJlIHNpZ25hbGVkIGJ5
LsKgIFRoaXMgaXMgaW50ZW5kZWQgdG8NCj4+ICvCoMKgwqDCoCAqIGdpdmUgZmVlZGJhY2sgdG8g
dGhlIGZlbmNlIHNpZ25hbGVyIHRvIGFpZCBpbiBwb3dlciBtYW5hZ2VtZW50DQo+PiArwqDCoMKg
wqAgKiBkZWNpc2lvbnMsIHN1Y2ggYXMgYm9vc3RpbmcgR1BVIGZyZXF1ZW5jeS4NCj4+ICvCoMKg
wqDCoCAqDQo+PiArwqDCoMKgwqAgKiBUaGlzIGlzIGNhbGxlZCB3aXRob3V0ICZkbWFfZmVuY2Uu
bG9jayBoZWxkLCBpdCBjYW4gYmUgY2FsbGVkDQo+PiArwqDCoMKgwqAgKiBtdWx0aXBsZSB0aW1l
cyBhbmQgZnJvbSBhbnkgY29udGV4dC7CoCBMb2NraW5nIGlzIHVwIHRvIHRoZSANCj4+IGNhbGxl
ZQ0KPj4gK8KgwqDCoMKgICogaWYgaXQgaGFzIHNvbWUgc3RhdGUgdG8gbWFuYWdlLg0KPj4gK8Kg
wqDCoMKgICoNCj4+ICvCoMKgwqDCoCAqIFRoaXMgY2FsbGJhY2sgaXMgb3B0aW9uYWwuDQo+PiAr
wqDCoMKgwqAgKi8NCj4+ICvCoMKgwqAgdm9pZCAoKnNldF9kZWFkbGluZSkoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxpbmUpOw0KPj4gwqAgfTsNCj4+IMKgIMKgIHZvaWQg
ZG1hX2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCANCj4+
IGRtYV9mZW5jZV9vcHMgKm9wcywNCj4+IEBAIC01ODMsNiArNjAxLDggQEAgc3RhdGljIGlubGlu
ZSBzaWduZWQgbG9uZyBkbWFfZmVuY2Vfd2FpdChzdHJ1Y3QgDQo+PiBkbWFfZmVuY2UgKmZlbmNl
LCBib29sIGludHIpDQo+PiDCoMKgwqDCoMKgIHJldHVybiByZXQgPCAwID8gcmV0IDogMDsNCj4+
IMKgIH0NCj4+IMKgICt2b2lkIGRtYV9mZW5jZV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2UsIGt0aW1lX3QgDQo+PiBkZWFkbGluZSk7DQo+PiArDQo+PiDCoCBzdHJ1Y3QgZG1h
X2ZlbmNlICpkbWFfZmVuY2VfZ2V0X3N0dWIodm9pZCk7DQo+PiDCoCBzdHJ1Y3QgZG1hX2ZlbmNl
ICpkbWFfZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKHZvaWQpOw0KPj4gwqAgdTY0IGRtYV9m
ZW5jZV9jb250ZXh0X2FsbG9jKHVuc2lnbmVkIG51bSk7DQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

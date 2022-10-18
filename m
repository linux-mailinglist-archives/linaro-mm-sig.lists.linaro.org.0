Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAF1602BD7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Oct 2022 14:35:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A2983F5E8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Oct 2022 12:35:22 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2089.outbound.protection.outlook.com [40.107.244.89])
	by lists.linaro.org (Postfix) with ESMTPS id E37933F0CD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Oct 2022 12:35:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=2lcWSVjy;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.89 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ABVas38FGpXpHsqjMvK0FVJYOhkaokCJyBL/uwVVZ76rWSDlOYlZxaJ6aS8k16WBN6cne3vHe4b54dutPL57grKbNe062xB/PRBuOKwun3M+hrrWT46YO3srj9yvh80HeHBWcVya2Zc5Grww+9QEUjyUnu9rfT1iOlM64p5jt9UX4bZw1r7hcg937oPjGWQ9M+cGt/vLzVKv8tdGcvrCNyiNO43MwPbGVs1XlhnnuXa0WyACGGdBWTJPLxhdu1p9olJ7aCw+LpvOxAdGJkQ5m9pAu/PhwbLVc8/b/Wdz0d0WUc+09L8xWUgJluXq2ieCLFa7FiQMAMKGKMDCrZCL2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5cXmm6N837j6IMNW2yNh22j+A5+qig4zbrmQn1OINLs=;
 b=KSshIbsfbu/CSIGcs9+BSm8YAbKhFJrQnmf+j/xNVjSs9iNcsDaW20tmlmLfLD2xbS8yaTHmzDWofSxvquoC5ElLae/ox5LUH3GwuRC92KqPcbgl4dbTS3L/24xhPGVvR//ZTtE5uPmXRCD2Q9UOUJPpJapwiY+o7aI769VPJduk9j0gayiTjsgTrieCxZhNY0q08dukmCA9A9pwCmEqiyOmulv6MwTNPr9K5Pj4MHCm5UpqhXdo2cl9ZSpe/NdesMinPFAMsY0Q0ePqoIncYIiL/GLk3wbPmvB2IC842i8HC8e0P4rWMp9f3y0jS/LYUko1+W00YktijQZ8ykC9tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5cXmm6N837j6IMNW2yNh22j+A5+qig4zbrmQn1OINLs=;
 b=2lcWSVjyooxKYbKyT1QyEMuSSoMUrWjHPI1j7N+SktH43iPtKgySfuefGQzWwT22FhlTX+dDaXcoARpmDYeydB/4ycZ1tix89CBYB11AwHpD9Yz5ovPQOp2AIp09BgOGlItet3c3y2eERwEPYfCzXruRwReKz3dfbcbBkccRl18=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MW3PR12MB4457.namprd12.prod.outlook.com (2603:10b6:303:2e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Tue, 18 Oct
 2022 12:35:02 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::805b:58b6:1f27:d644]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::805b:58b6:1f27:d644%6]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 12:35:02 +0000
Message-ID: <30927f4b-c7d7-1b03-2b9d-a9d6c362de23@amd.com>
Date: Tue, 18 Oct 2022 14:34:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Yadav, Arvind" <arvyadav@amd.com>, Arvind Yadav <Arvind.Yadav@amd.com>,
 andrey.grodzovsky@amd.com, shashank.sharma@amd.com,
 amaranath.somalapuram@amd.com, Arunpravin.PaneerSelvam@amd.com,
 sumit.semwal@linaro.org, gustavo@padovan.org, airlied@linux.ie,
 daniel@ffwll.ch, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org, steven.price@arm.com
References: <20221017143006.2419-1-Arvind.Yadav@amd.com>
 <f03c1b59-e024-40d8-5fee-02d8d660a058@amd.com>
 <32e4b5d7-940d-cc46-69e5-74f42baed160@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <32e4b5d7-940d-cc46-69e5-74f42baed160@amd.com>
X-ClientProxiedBy: FR0P281CA0101.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::19) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|MW3PR12MB4457:EE_
X-MS-Office365-Filtering-Correlation-Id: 66b84cf5-7dd2-44b2-e721-08dab1052d20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	u7orsgO+jyBim+yTkLRv6A/mKtOzsh5W1RLwUV88CVOwKhvJjWEQob3EuFkrE+I6tgp2TjL59ZxyRZedAnrZVX1ONuMZKpnqdSwCZNKoAhpZABG7ZHwF4bK+1GL1dxVMHXkB3DXa+1oJvxORX6VQfubEZ9W0sHIHetKPgu2sX4Y7F7llVpxyw7vTV7q4e189IgYvbTFrV5slSAyUI+Awxt5XrpLE/W9eTBcYLUcJq20BO8RGC9uCmAUe2jrMPXA1CCaUvhqcGTdG6cXEe/vP46fld+ypS27QZ9gMsoHjxXW+wDGbTZB1LnYqj8oxXwrXj+1N47vIFXoEayow56KwHUKE9C7or49zeMHxXf56/KMln4EQutVrTt3IX7mDxkQIp10KNiggOKsschqPkcO+LyTD6dr5xSMR3AjPZ5vfzSTpG52NXSwCgD1PtO1q9oKReYkSJqhdyRgG9hfx/i8bYZaLmqQh2sse7bw2EC0wQLABf0nm4jdvD9Z/2gPXD2Mu4wTcEmvouDKMVbTeYDKJrYGTaAON15D8y5OBEQ8Kbz8cKeF23DdE8SzVKC0f6RnJaBcUkrqcpi4Vv3gai4jLf5vl9MwXxxNFsHU7rWjsrqeqWgBbx2/J1Zu5mmappVZTEcLXQPXiJX0mF79ydU9F++eqVYy0h0VooIgRvdzwANaS2X3uDPyDiKgSMOBruw0JoyIhKw4z4lUHzDXw1w7EmI38NN78d4DwjrpbjdG2dksvdzuft1QsZncnZojQLNhC7mP/T1vElQ8EiPQsOa4M+Ytb4ULYBMh/LahF3wtKcDGJfONgBTkbA/rKbXTstLvR
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(346002)(396003)(366004)(376002)(136003)(451199015)(5660300002)(921005)(36756003)(6486002)(6506007)(66946007)(66556008)(66476007)(6666004)(31696002)(8676002)(8936002)(41300700001)(86362001)(6512007)(83380400001)(478600001)(110136005)(31686004)(2616005)(38100700002)(316002)(186003)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WGovMXhIOGozT2VYakt3ZWJJZG4yWXNEN2NmTmVqTmt1YnJrYjJDeG9RSU43?=
 =?utf-8?B?YUtxdEI1RVBhVEhXMmdGTXRvSC9ZRlhiQW5CZXg2RXdhc3lpc1NmTjJ3Mitm?=
 =?utf-8?B?MFJBcDE4WXZDNU96ZFVLbEZRdWpuMHR5ekhYTkZkVDJhTDduMzhTcGR0dFZm?=
 =?utf-8?B?cm1oUkNCY0Z6TnNTM0IxTUZrYllhTHRucGlTK1ZDY1RTSEdWRVRHV2F4ZFIw?=
 =?utf-8?B?RDJjcUo0RUU1MlJScHlPTjJTY3lGVTVDaGZERW5MWGc3Sk1tRkxLek1WTFk1?=
 =?utf-8?B?QmhZZnZ2Ris3SXpkdkNoQlplUkZaLyt6Q1lzSEhxNXkwY0NucW16TVVzQlNm?=
 =?utf-8?B?RHI3M1FEZzg5VHZUYmZKNjB0eHJTcThXTkg2V2VKOVhDVmViU2E1WGNmS01L?=
 =?utf-8?B?VFdacHN4YStWSVNGcGR1ODhma2xDeTJ1VnFCSGhZZUk5dlF2cWxjZFBtNUQr?=
 =?utf-8?B?a21MQlRFOWdVcG1naDN4a3hlNTZZTVlpTFF1NWpXUHlDeGNLZmVJaExabnlx?=
 =?utf-8?B?alhSeldqcFQxemNkWmJUZ0ptbWNXUGlYcHRPc1NOcHFWM0hBLzN2Y2JudlJ1?=
 =?utf-8?B?WEFWMWYvMjJtWFhkVysxaDlkSFE5eDBJZzVZeTRBbDh1MmFMei9uaTJqUFk3?=
 =?utf-8?B?N05vcDNoeUo2d1Rzb0NsOVlXQmpLVXVaN1hWOFp5Y0VINk5nbzFIQWdlcnll?=
 =?utf-8?B?SUEyY0k5QktmT2d4V0dnbnEvTk13MFhwSzFHbzdhUkFEczNBWEZ4SDd4bFNH?=
 =?utf-8?B?TldvS05Ua3pMSW5DTElpa1VHcll1bmtiS0lvQnIwRnVocFdXUGRFSG9zK3Vv?=
 =?utf-8?B?RlM5cHVmamxDVlc1cm10c3RwNCt1WEhzb1d6ODlWWkF5R0JXM0tPVmRiU0RY?=
 =?utf-8?B?eHRGTFdyZk9NNzlZanB3djZnc2oxd2hIMTFQd0VrR1Qybkg5QThQa1E0S0o3?=
 =?utf-8?B?RjhJQVR4YTI3TGVKblJhUFlWWDhwZUtuTnh4c3lxelBYc0Vuc3ZQZXZkcHNp?=
 =?utf-8?B?MFhWcnBBWDdpYzczK2wvOEtocHVMTEgycHdsS1phOHo5aDBmRC9vZlMwVWw5?=
 =?utf-8?B?VXR6enRBaTAzcUZSV05ST3NlbklEcCtYT2dVSzdTVzdmUmRqVm9GNDJGMnZv?=
 =?utf-8?B?aGR5a2s0dnJhSHZJUy9VajFFdWdpZ2FwcGQ0RHNMSnZab0hISndmR2J2dnJm?=
 =?utf-8?B?YVRHK242S2JXTVVHZzUwSGNOeUFneGw4NXBQQ1pBVEtucG1TRmhRcUQxKzg4?=
 =?utf-8?B?MTNBZy9nSUc3T0lMTUxJbzQ3TlYvaEI1MzliTUo3ZzUzdHQwOEdsQzdVS1RM?=
 =?utf-8?B?ZTFoK2JqSVViRXBBLzNCZS9vcFBRRSt1NC9YUWNtb2RvNDhyanR6RVJySDVi?=
 =?utf-8?B?TkJkRU9wbFFiWTFGM1R4NVh2N0s5QW1aa3lUVllZc0p0OXlGdG9ERVJoVVFv?=
 =?utf-8?B?Um1qd1hqTW55dms1d2VmMFJTNEdyNGtkeGVodFpFVzhDbklJcW03Unc1M09N?=
 =?utf-8?B?TWI4azc0Vmh6ZTNkdDc3UzVydTd5R0lWZTBIbHoyNFVSODh2MlhicHVPSkVu?=
 =?utf-8?B?ZkplME0vQ1RGTXcrS0FUMGRqV0NMbnRvQXZZc2lRZzBEVGFJT3NVRW5aS082?=
 =?utf-8?B?NEc1cEU0UU1naGc2Z2JhemxmT1lIS3pLcDFxUi93ekFGT1FoWGMveDRmS2JE?=
 =?utf-8?B?Z00wWWVNempMTlRDQ3JPanMwdnJPUjBMbEtrSUYrdld3NkRzZitxLzVwWi93?=
 =?utf-8?B?dXoyWFNONHhMT1k4TnVzeG5ZdVlPRFlGMkN5RVh3czRHSTBDR2ZiL0ViVE5W?=
 =?utf-8?B?L1ZFV2pJVlJXU3Yzb0tkR01RT3FLVGFwakh0TENtQkg4a1JaUXhnL0VMY2JT?=
 =?utf-8?B?S055YWJndGxvbFAvMFBGdXFuQXd3WWEyVWdNRTFPYTF3ODJJMWlCcXFXL3gr?=
 =?utf-8?B?SXVqWGdRaERKQ1E5L21XYi9kTUM4Um5tNng0ekNXMi8yRENCNEh1UjlEWTVr?=
 =?utf-8?B?bmVoNU1LWE1wbENxYU5DM3BPUGtVajliV0F6TXVtSU4wejlUNjdlOVdCbEpr?=
 =?utf-8?B?WXhXa1RTcGtZZTBVRVBOL3BBUDRuTXNBa2dxdVprU2VFNWErQzRKWjFobnl0?=
 =?utf-8?B?cVBSelNPRHRtZ0FmUlJqZnRreEt5Zjd4TjErUmRmdXl2d3NZQTM5YkxCQjRU?=
 =?utf-8?Q?Zx/duSb6MoCSMWZmk6MZQ0KDJIHkCA294M8h877hmVgK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66b84cf5-7dd2-44b2-e721-08dab1052d20
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 12:35:01.8617
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nGWXp615lB0AfHASkSsJdrUFuAb9GI4KYzDugmrYekAuivAR4AuCfqlL2VdftUFL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4457
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: E37933F0CD
X-Spamd-Result: default: False [-6.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[40.107.244.89:from];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.915];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.89:from];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: I2EAB5NVFYGO2MJCEXBJTOAYS7EVZFWC
X-Message-ID-Hash: I2EAB5NVFYGO2MJCEXBJTOAYS7EVZFWC
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/sched: Fix kernel NULL pointer dereference error
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I2EAB5NVFYGO2MJCEXBJTOAYS7EVZFWC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpBbSAxOC4xMC4yMiB1bSAxNDoyMCBzY2hyaWViIFlhZGF2LCBBcnZpbmQ6DQo+IFtTTklQXQ0K
Pj4NCj4+PiArwqDCoMKgIGRybV9zY2hlZF9mZW5jZV9maW5pc2hlZChzX2ZlbmNlKTsNCj4+PiAr
wqDCoMKgIGRtYV9mZW5jZV9wdXQoJnNfZmVuY2UtPmZpbmlzaGVkKTsNCj4+PiArwqDCoMKgIHdh
a2VfdXBfaW50ZXJydXB0aWJsZSgmc2NoZWQtPndha2VfdXBfd29ya2VyKTsNCj4+PiArfQ0KPj4+
ICsNCj4+PiAraW50IGRybV9zY2hlZF9mZW5jZV9hZGRfcGFyZW50X2NiKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlLA0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVj
dCBkcm1fc2NoZWRfZmVuY2UgKnNfZmVuY2UpDQo+Pj4gK3sNCj4+PiArwqDCoMKgIHJldHVybiBk
bWFfZmVuY2VfYWRkX2NhbGxiYWNrKGZlbmNlLCAmc19mZW5jZS0+Y2IsDQo+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fc2NoZWRfam9iX2RvbmVfY2Ip
Ow0KPj4+ICt9DQo+Pj4gKw0KPj4+ICtib29sIGRybV9zY2hlZF9mZW5jZV9yZW1vdmVfcGFyZW50
X2NiKHN0cnVjdCBkcm1fc2NoZWRfZmVuY2UgKnNfZmVuY2UpDQo+Pj4gK3sNCj4+PiArwqDCoMKg
IHJldHVybiBkbWFfZmVuY2VfcmVtb3ZlX2NhbGxiYWNrKHNfZmVuY2UtPnBhcmVudCwNCj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmc19mZW5jZS0+Y2IpOw0K
Pj4+ICt9DQo+Pg0KPj4gRG8gd2UgcmVhbGx5IG5lZWQgc2VwYXJhdGUgZnVuY3Rpb25zIGZvciB0
aGF0Pw0KPj4NCj4gV2UgY2FuIHVzZcKgICdkcm1fc2NoZWRfZmVuY2Vfc2V0X3BhcmVudCcgYnV0
IHdlIG5lZWQgdG8gYWRkIGV4dHJhIE5VTEwgDQo+IGNoZWNrIGJlZm9yZQ0KPg0KPiBhZGRpbmcg
aW4gdGhlIGNhbGxiYWNrIG90aGVyd2lzZSBhZGQtY2FsbGJhY2sgd2lsbCB0aHJvdyB0aGUgd2Fy
bmluZyANCj4gbWVzc2FnZSBldmVyeSB0aW1lLg0KPg0KPiBJZiBJIGFkZCBOVUxMIGNoZWNrIHRo
ZW4gd2lsbCBuZXZlciBnZXQgYW55IGNhbGxiYWNrIHdhcm5pbmcgbWVzc2FnZSANCj4gZm9yIHNl
dHRpbmcgTlVMTCBwYXJlbnQgZmVuY2UuDQo+DQo+IFNvIEkgaGF2ZSBrZXB0IHNlcGFyYXRlIGZ1
bmN0aW9ucy4NCg0KSSByYXRoZXIgcHJlZmVyIGhhdmluZyBhIHNpbmdsZSBmdW5jdGlvbiBhbmQg
YWxsb3dpbmcgdGhlIHBhcmVudCBmZW5jZSANCnRvIGJlIHNldCB0byBOVUxMLg0KDQpBbHRlcm5h
dGl2ZWx5IHdlIGNvdWxkIGhhdmUgYSBkcm1fc2NoZWRfZmVuY2Vfc2V0X3BhcmVudCgpIGFuZCAN
CmRybV9zY2hlZF9mZW5jZV9jbGVhcl9wYXJlbnQoKSBmdW5jdGlvbiBpZiB5b3UgcmVhbGx5IHRo
aW5rIGl0J3MgY2xlYW5lciANCnRoYXQgd2F5Lg0KDQo+Pj4gYXRvbWljX2RlYygmc2NoZWQtPmh3
X3JxX2NvdW50KTsNCj4+PiBAQCAtNTc2LDE1ICs1NjIsMTQgQEAgdm9pZCBkcm1fc2NoZWRfc3Rh
cnQoc3RydWN0IGRybV9ncHVfc2NoZWR1bGVyIA0KPj4+ICpzY2hlZCwgYm9vbCBmdWxsX3JlY292
ZXJ5KQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnRpbnVlOw0KPj4+IMKgIMKg
wqDCoMKgwqDCoMKgwqDCoCBpZiAoZmVuY2UpIHsNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCByID0gZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayhmZW5jZSwgJnNfam9iLT5jYiwNCj4+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fc2No
ZWRfam9iX2RvbmVfY2IpOw0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHIgPSBkcm1fc2No
ZWRfZmVuY2VfYWRkX3BhcmVudF9jYihmZW5jZSwgc19qb2ItPnNfZmVuY2UpOw0KPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyID09IC1FTk9FTlQpDQo+Pj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fc2NoZWRfam9iX2RvbmUoc19qb2IpOw0KPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX3NjaGVkX2pvYl9kb25lKHNfam9iLT5zX2Zl
bmNlKTsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlIGlmIChyKQ0KPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFJNX0RFVl9FUlJPUihzY2hlZC0+ZGV2
LCAiZmVuY2UgYWRkIGNhbGxiYWNrIA0KPj4+IGZhaWxlZCAoJWQpXG4iLA0KPj4NCj4+IENvbXBs
ZXRlbHkgbnVrZSB0aGF0IGhlcmUuIEFsbCBvZiB0aGlzIHNob3VsZCBiZSBkb25lIGluIHRoZSBz
aW5nbGUgDQo+PiBkcm1fc2NoZWRfZmVuY2Vfc2V0X3BhcmVudCgpIGZ1bmN0aW9uLg0KPj4NCj4+
IEFuZCBhbiBlcnJvciBtZXNzYWdlIGlzIGNvbXBsZXRlbHkgc3VwZXJmbHVvdXMuIFdlIGp1c3Qg
bmVlZCB0byANCj4+IGhhbmRsZSB0aGUgY2FzZSB0aGF0IHRoZSBjYWxsYmFjayBjYW4ndCBiZSBp
bnN0YWxsZWQgYmVjYXVzZSB0aGUgDQo+PiBmZW5jZSBpcyBhbHJlYWR5IHNpZ25hbGVkLg0KPj4N
Cj4gSSB3aWxsIGRvIHRoZSBjaGFuZ2VzIGFzIHBlciB5b3VyIHJldmlldyBjb21tZW50cywgVGhh
bmsgeW91IGZvciB0aGUgDQo+IHJldmlldy4NCg0KSnVzdCB0byBjbGFyaWZ5LCB5b3Ugc2hvdWxk
IG51a2UgdGhlIGVycm9yIG1lc3NhZ2UuIEVycm9yIGhhbmRsaW5nIGlzIA0KcmF0aGVyIHBvaW50
bGVzcyBoZXJlLg0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCj4NCj4gVGhhbmtzLA0KPg0KPiB+
QXJ2aW5kDQo+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHIpOw0KPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoCB9IGVsc2UNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fc2NoZWRfam9i
X2RvbmUoc19qb2IpOw0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRybV9zY2hlZF9qb2Jf
ZG9uZShzX2pvYi0+c19mZW5jZSk7DQo+Pj4gwqDCoMKgwqDCoCB9DQo+Pj4gwqAgwqDCoMKgwqDC
oCBpZiAoZnVsbF9yZWNvdmVyeSkgew0KPj4+IEBAIC0xMDQ5LDE0ICsxMDM0LDkgQEAgc3RhdGlj
IGludCBkcm1fc2NoZWRfbWFpbih2b2lkICpwYXJhbSkNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
ZHJtX3NjaGVkX2ZlbmNlX3NjaGVkdWxlZChzX2ZlbmNlKTsNCj4+PiDCoCDCoMKgwqDCoMKgwqDC
oMKgwqAgaWYgKCFJU19FUlJfT1JfTlVMTChmZW5jZSkpIHsNCj4+PiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBzX2ZlbmNlLT5wYXJlbnQgPSBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsNCj4+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBEcm9wIGZvciBvcmlnaW5hbCBrcmVmX2luaXQgb2YgdGhl
IGZlbmNlICovDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3B1dChmZW5j
ZSk7DQo+Pj4gLQ0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHIgPSBkbWFfZmVuY2VfYWRk
X2NhbGxiYWNrKGZlbmNlLCAmc2NoZWRfam9iLT5jYiwNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fc2NoZWRfam9iX2RvbmVfY2Ip
Ow0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHIgPSBkcm1fc2NoZWRfZmVuY2Vfc2V0X3Bh
cmVudChmZW5jZSwgc19mZW5jZSk7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYg
KHIgPT0gLUVOT0VOVCkNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRybV9z
Y2hlZF9qb2JfZG9uZShzY2hlZF9qb2IpOw0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZHJtX3NjaGVkX2pvYl9kb25lKHNfZmVuY2UpOw0KPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGVsc2UgaWYgKHIpDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBEUk1fREVWX0VSUk9SKHNjaGVkLT5kZXYsICJmZW5jZSBhZGQgY2FsbGJhY2sgDQo+Pj4g
ZmFpbGVkICglZClcbiIsDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByKTsNCj4+PiBAQCAtMTA2NCw3ICsxMDQ0LDcgQEAgc3RhdGljIGludCBkcm1f
c2NoZWRfbWFpbih2b2lkICpwYXJhbSkNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
ZiAoSVNfRVJSKGZlbmNlKSkNCj4+PiBkbWFfZmVuY2Vfc2V0X2Vycm9yKCZzX2ZlbmNlLT5maW5p
c2hlZCwgUFRSX0VSUihmZW5jZSkpOw0KPj4+IMKgIC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRy
bV9zY2hlZF9qb2JfZG9uZShzY2hlZF9qb2IpOw0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGRybV9zY2hlZF9qb2JfZG9uZShzX2ZlbmNlKTsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQ0K
Pj4+IMKgIMKgwqDCoMKgwqDCoMKgwqDCoCB3YWtlX3VwKCZzY2hlZC0+am9iX3NjaGVkdWxlZCk7
DQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaCBiL2luY2x1ZGUv
ZHJtL2dwdV9zY2hlZHVsZXIuaA0KPj4+IGluZGV4IDFmN2Q5ZGQxYTQ0NC4uNzI1OGUyZmExOTVm
IDEwMDY0NA0KPj4+IC0tLSBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KPj4+ICsrKyBi
L2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KPj4+IEBAIC0yODEsNiArMjgxLDEwIEBAIHN0
cnVjdCBkcm1fc2NoZWRfZmVuY2Ugew0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgICogQG93bmVy
OiBqb2Igb3duZXIgZm9yIGRlYnVnZ2luZw0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgICovDQo+
Pj4gwqDCoMKgwqDCoCB2b2lkwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICpvd25lcjsN
Cj4+PiArwqDCoMKgIC8qKg0KPj4+ICvCoMKgwqDCoCAqIEBjYjogY2FsbGJhY2sNCj4+PiArwqDC
oMKgwqAgKi8NCj4+PiArwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2VfY2IgY2I7DQo+Pj4gwqAgfTsN
Cj4+PiDCoCDCoCBzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICp0b19kcm1fc2NoZWRfZmVuY2Uoc3Ry
dWN0IGRtYV9mZW5jZSAqZik7DQo+Pj4gQEAgLTMwMCw3ICszMDQsNiBAQCBzdHJ1Y3QgZHJtX3Nj
aGVkX2ZlbmNlIA0KPj4+ICp0b19kcm1fc2NoZWRfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZik7
DQo+Pj4gwqDCoCAqwqDCoMKgwqDCoMKgwqDCoCBiZSBzY2hlZHVsZWQgZnVydGhlci4NCj4+PiDC
oMKgICogQHNfcHJpb3JpdHk6IHRoZSBwcmlvcml0eSBvZiB0aGUgam9iLg0KPj4+IMKgwqAgKiBA
ZW50aXR5OiB0aGUgZW50aXR5IHRvIHdoaWNoIHRoaXMgam9iIGJlbG9uZ3MuDQo+Pj4gLSAqIEBj
YjogdGhlIGNhbGxiYWNrIGZvciB0aGUgcGFyZW50IGZlbmNlIGluIHNfZmVuY2UuDQo+Pj4gwqDC
oCAqDQo+Pj4gwqDCoCAqIEEgam9iIGlzIGNyZWF0ZWQgYnkgdGhlIGRyaXZlciB1c2luZyBkcm1f
c2NoZWRfam9iX2luaXQoKSwgYW5kDQo+Pj4gwqDCoCAqIHNob3VsZCBjYWxsIGRybV9zY2hlZF9l
bnRpdHlfcHVzaF9qb2IoKSBvbmNlIGl0IHdhbnRzIHRoZSANCj4+PiBzY2hlZHVsZXINCj4+PiBA
QCAtMzI1LDcgKzMyOCw2IEBAIHN0cnVjdCBkcm1fc2NoZWRfam9iIHsNCj4+PiDCoMKgwqDCoMKg
IGF0b21pY190wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBrYXJtYTsNCj4+PiDCoMKgwqDCoMKgIGVu
dW0gZHJtX3NjaGVkX3ByaW9yaXR5wqDCoMKgwqDCoMKgwqAgc19wcmlvcml0eTsNCj4+PiDCoMKg
wqDCoMKgIHN0cnVjdCBkcm1fc2NoZWRfZW50aXR5wqDCoMKgwqDCoMKgwqDCoCAqZW50aXR5Ow0K
Pj4+IC3CoMKgwqAgc3RydWN0IGRtYV9mZW5jZV9jYsKgwqDCoMKgwqDCoMKgIGNiOw0KPj4+IMKg
wqDCoMKgwqAgLyoqDQo+Pj4gwqDCoMKgwqDCoMKgICogQGRlcGVuZGVuY2llczoNCj4+PiDCoMKg
wqDCoMKgwqAgKg0KPj4+IEBAIC01NTksNiArNTYxLDEyIEBAIHZvaWQgZHJtX3NjaGVkX2ZlbmNl
X2ZyZWUoc3RydWN0IA0KPj4+IGRybV9zY2hlZF9mZW5jZSAqZmVuY2UpOw0KPj4+IMKgIHZvaWQg
ZHJtX3NjaGVkX2ZlbmNlX3NjaGVkdWxlZChzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICpmZW5jZSk7
DQo+Pj4gwqAgdm9pZCBkcm1fc2NoZWRfZmVuY2VfZmluaXNoZWQoc3RydWN0IGRybV9zY2hlZF9m
ZW5jZSAqZmVuY2UpOw0KPj4+IMKgICtpbnQgZHJtX3NjaGVkX2ZlbmNlX2FkZF9wYXJlbnRfY2Io
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGRybV9zY2hlZF9mZW5jZSAqc19mZW5jZSk7DQo+Pj4gK2Jvb2wgZHJt
X3NjaGVkX2ZlbmNlX3JlbW92ZV9wYXJlbnRfY2Ioc3RydWN0IGRybV9zY2hlZF9mZW5jZSANCj4+
PiAqc19mZW5jZSk7DQo+Pj4gK2ludCBkcm1fc2NoZWRfZmVuY2Vfc2V0X3BhcmVudChzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSwNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0cnVjdCBkcm1fc2NoZWRfZmVuY2UgKnNfZmVuY2UpOw0KPj4+ICsNCj4+PiDCoCB1bnNp
Z25lZCBsb25nIGRybV9zY2hlZF9zdXNwZW5kX3RpbWVvdXQoc3RydWN0IGRybV9ncHVfc2NoZWR1
bGVyIA0KPj4+ICpzY2hlZCk7DQo+Pj4gwqAgdm9pZCBkcm1fc2NoZWRfcmVzdW1lX3RpbWVvdXQo
c3RydWN0IGRybV9ncHVfc2NoZWR1bGVyICpzY2hlZCwNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIHJlbWFpbmluZyk7
DQo+Pg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK

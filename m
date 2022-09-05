Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B9C60431B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:26:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 102CE3F5E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:26:00 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2084.outbound.protection.outlook.com [40.107.220.84])
	by lists.linaro.org (Postfix) with ESMTPS id 3C9EE3F93F
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Sep 2022 13:44:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kZn7vcvPqixnJdgWTIDFPiRf4DDC0/KLhR32Jnnt91376OMlXnudsKINM2B1dnkn8ztpW7RPZyCm3vzTFd/ZYOK+i8RP/mNnDhcHBFbOZBF7SlAbE0PIwhpbe861nQw/pdV7Lbhe8afQlU3M7od13IexqiG8JjzGGL3gBrxNYBNoJYuabays2REbDqeVDJczpfwkngcQeTs/JaYSG/qrbbJWwSCXs+n4wzlwdCsRMwySaRcP2o7U5C/Y6gM6baHVdLVHsJR1gc1R+biEnZlT6XPwq6fwBlC3BdDduuPhiy6010cQT4W5F8ECIKiwlAa+ei7dfLpZfdeMc8AxAh0+dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cid+8NWSvJ+eXJ6qlWu4YIkrdJL8/GvCc5XORUBydg4=;
 b=JNkW5o3uykZjoVWH0h4q0GpnwPAP5wip1c4eGPVtg/400XLAzEahymtrGYqup1ZevdBtLag2fSAS5SZg9EeIkkYNikjRH6h76mpjTt01p6Hx1LcM1+tH95/x4Zq0DrD2vR0u1E0CMG1uH+R0Lm8tkVtw5wc9Pl6uq4kXa8TkCG5au0MD6Psyvar8aUY0hZGWvgp8YreQKeMMRfE0NGBImoyqoviNFURlLsGXbav/yGIk9Y93eZONk1ckIB9eQm0moCGQmeZBjHzz+QHbqJnVW0pFamXNGDgP/LGlm0u+WCSKn0upv7Q73eC94PvWo40xIuFBbVaE5STy13WWVRzjuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cid+8NWSvJ+eXJ6qlWu4YIkrdJL8/GvCc5XORUBydg4=;
 b=Qlj5ZhyTapLYdiQEOaVPefQ6RhCwHrxq63uVsDMjJKgvXb3BIIB9wcnr7jSqPQElCkDknqxfLpZUDwFCD33Ae/7f8/labwHWf0MpZ9da+/EhHHoD6pJlnKVWUwOD9S9AdwQDODfV8Gng+h+oDhp6/mJW+z8Qy60drdbUjZK9vPc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB6000.namprd12.prod.outlook.com (2603:10b6:510:1dc::15)
 by MN0PR12MB6079.namprd12.prod.outlook.com (2603:10b6:208:3c9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Mon, 5 Sep
 2022 13:44:05 +0000
Received: from PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::2e8f:6161:3959:aa0c]) by PH7PR12MB6000.namprd12.prod.outlook.com
 ([fe80::2e8f:6161:3959:aa0c%5]) with mapi id 15.20.5588.015; Mon, 5 Sep 2022
 13:44:04 +0000
Message-ID: <f9042797-1c41-a4c2-fdd2-60feaf38e87a@amd.com>
Date: Mon, 5 Sep 2022 19:13:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220905105653.13670-1-Arvind.Yadav@amd.com>
 <20220905105653.13670-2-Arvind.Yadav@amd.com>
 <0038fcff-35f1-87e3-aa26-cdd104a13628@amd.com>
From: "Yadav, Arvind" <arvyadav@amd.com>
In-Reply-To: <0038fcff-35f1-87e3-aa26-cdd104a13628@amd.com>
X-ClientProxiedBy: PN2PR01CA0147.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::32) To PH7PR12MB6000.namprd12.prod.outlook.com
 (2603:10b6:510:1dc::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fb022abf-5b92-41c9-dc7d-08da8f44b2ac
X-MS-TrafficTypeDiagnostic: MN0PR12MB6079:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qeut4IHlVi0eoEqDpLklR2uZG4h+g8XrjwX70+Hypd3dfb7JuJrKuZxOMfNDMKiaZShObzLKEqJ8vMgvj4P5NfvBGPo1f684e2P5zRwHZOXZyXW5XSetUFHfxIws9ovtAipCdEplSl6Xsde4VDxNOhN2asuThenmkPZsUGe963JqHl71S7jgupk91JTO+X0GX3s6UXACDFmenKQUs1b/BV6bBW+v5xphkIrhJqAlk88ezl0u4iM6KrPRXgg0+Ee7FaBaqXDIJZvs0T5PggNQelpgP06dA4+/mZ5UlhIhYpRAdlABVakGf87uLJOEDwrYoRsATUyF1pxiZHJzA9LMARSkzHZkgQ2mN3pMBMyNIHPy2MQFoDuzbHhZJhCfa3fPRwnU7w9fLsOM21xAcrnDoBtdlSByyXwMT0S02qZXD4yLyQoHirPKBG6gEzCQv6c1qX17evlkv8V6skHPLMxTObzxDYEXzGu6xdqPZXe7xc3Ni/8QIbx431vHAMi19gnxTjle1k+hrsa5/L819tONhAAPEhyiwTRlY94qK/D5spY2NCJKGrZj1Bxi2ba73fyZWAZAixqrt9g2bIvtp5jK5Gy/kTezxbJrOiiEt+croRibgR4FqsyC49Wjjl1H9UXPEODkba+9fg+RATouNDwRuNzJT+TGYODNrcVm2vFt2hnu56m+i3n8/pc1VAKwGZwcNX+Iv+QTJ60xjeP5r+A9KN/HPVxFyZOFodnpNxoYy+SDJm5SgYe20RbYg6if4BOtDVh5qt4XMTtURoMn4qLIQy9mJEAwWnTFsqQfZidYfoxETV7odJZ2Em7mZXAYWEn6
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB6000.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(376002)(346002)(39860400002)(366004)(396003)(6506007)(31696002)(83380400001)(38100700002)(921005)(316002)(110136005)(66476007)(8676002)(2906002)(66946007)(2616005)(66556008)(6512007)(53546011)(66574015)(8936002)(186003)(478600001)(6486002)(5660300002)(41300700001)(36756003)(31686004)(26005)(6666004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OTNIai9xSk04RFcvVnlWdDBsbVcxUEU5dU5FVno0b09iWXlYWkpQWkdYckpF?=
 =?utf-8?B?endBdnF6ajk3QmRoOUtUclZ4Vmthcno5R1NVL0xaa25BcVZnRXREOG15Z0s3?=
 =?utf-8?B?YzFkUm1QSkszS0UyajJmYTNkcldNOG1WNjB6REQwL1JCa0hMMWl6cjM0a0JJ?=
 =?utf-8?B?MjlnZ291QVI2T0l3MXNkOHA4RlNFVTRWbytMZTJjWlp5aUhsRVBMY01hM3hL?=
 =?utf-8?B?UDlCUk9TRHp1em9rbzZ0YUgwUHVpMFQ1WE1tS0p5ZU9US01tbW11WWtKaVFr?=
 =?utf-8?B?MjJ1dVREYTc0dmEySUxuUUQ4Ynd5aGNYWElYZWJCcmpDYzBwa0FiTm5hMWlZ?=
 =?utf-8?B?SUdncTQ3NDJ6Z1ZRNitUcXY3S1F1Yzd4UWVOdFBCMTU0VGN0SDBtbjJRMmJi?=
 =?utf-8?B?aUkyaDhXM1dJcnBUVnZzT2dMcStDd09hNmRjSzBkQzhiK3FPN3hsd1lSc2Rz?=
 =?utf-8?B?N1BPR2h2TC9VckE4elRaY053NDdYbTllQTQ1bXo2TkpyV3FPUi9ld3dQWFNU?=
 =?utf-8?B?cnUrUEJqOEo5RDc2L00wQVZ4S3I5cjVsUEthQ0pDU05Ha01hSHNNWkgrVHpx?=
 =?utf-8?B?azF5YVNtS2RqaytFRkRGRjRjSVBqTndNTlduKzBRZW5nb2Z1VTEyMnFzSmMx?=
 =?utf-8?B?dk13V3FTMkJPT1RZWUVSd09veklwRFVYMFZZaXNiZ2UvcVJJaXNkb3VpZ3Jv?=
 =?utf-8?B?Yy9nUUJacXozdGJ3TURiMHVNRWZ2Zm5HNTdiak56aGZpSzJrZlBhdTJXOVgy?=
 =?utf-8?B?SS96bWpvZEg1K2crR2pBSGpNRk9WNWNnTnlmSkpWS1Fuc0JvVmNyaWRCd1Fs?=
 =?utf-8?B?R09ldTNYRE5lSzYycm11c0tEWWF6dVVpSjlldEZxVlZ4TTJYZHYxOGdBaGI2?=
 =?utf-8?B?WWg3alJWbDc2c3lrWkVyTGlyZG1qR3J1RTV0L0RUOENWYy9idE9KbktZZTVx?=
 =?utf-8?B?NjdNcmo2RWgyY29XSVhoNmVtaWwzWnRHcit2OVBzNjZSeU1qYXNudm5JS3FH?=
 =?utf-8?B?djM1Y3BDQzBmVHFkc0pVcS9uK1g4N2lpdjJwTmNJWllmM0wzUWU1RFZYS3Y3?=
 =?utf-8?B?aVZWeXdnUTh3dEJDZUR1RWY5by9Ha2Jtb0hyMzBvb0tPbXpXTllPSURVTG1W?=
 =?utf-8?B?OTJkdUtsR0EwNSs5YklrVkhTYkV6L2tIclluWVVNSm8zQTV0VG82dXJocU0y?=
 =?utf-8?B?TE1nMFkrQ214TjljclZTQllBNVEzblpRV0tIQU1MRUZkRHh3WTAwendadGhy?=
 =?utf-8?B?UVNTSkhOVXdJa3JBdUdKeWIrNmV6akFmN1NPckxuTWZTQ0FSVTB2NGFHcTlF?=
 =?utf-8?B?V1djMVdORmZCK0hZYU9PTGdpMHhaNEhiNFZETkdoanNVZ1hKSEpwMjZ6bFVK?=
 =?utf-8?B?NWZjM0crckNLL2grTmtCMm9BaG0xR3A2eU9sK2hHTjUwTFpsU3BCbzNHSDJO?=
 =?utf-8?B?S05RT0h4UDZWZncydUNWbTM0WXA3OXoweDBQMWVsb3ZKZWJzRXVXTm5WUWhz?=
 =?utf-8?B?NFRGVXNsMFFvSWZvOWVWNUVyRlZOa2FEZHcvb3BiTGxlREN2ditza25yYW0r?=
 =?utf-8?B?QmNLMmEydkFmT0RKVjlzZ1ljdzFXcVZiNEFrblFCNWhtMkkySlRzVW5SNWtz?=
 =?utf-8?B?UTNNL0o1ckxRbjJLZkpMdVJaOUowS3dpNUlQSWlRbk5DeEZXc1QxU1NsbU8v?=
 =?utf-8?B?QUhuMy9CalVZN21tTXgzSkp3ck9meWpVYTFTMnpQVVA1MHFlVk9xUmRjOGRE?=
 =?utf-8?B?NlExU2oyWGNSdHA2WnZ0N2lnVkw0bTR2VGtPSjc1U0FJbjZFS3FsMVM3UTd6?=
 =?utf-8?B?Mm5ZblBXWlBzWDRCMUFuYjhHcm1CbnpQSDVlWCtFaUJVc1oyY1Z5S1BaY0tM?=
 =?utf-8?B?RG1kZ3VXNWxoZDB4V0ZjQ0lsMDAyMDV2cDF0MkluM2xXZjN0VnlxWXYzRndh?=
 =?utf-8?B?WklUZlUrbWZLQ0IzbTU0RUpIaEo1TktpQkR2TmYxTGp2dHYwOEFpaG1GVGo0?=
 =?utf-8?B?Wk03VXR1WlRoQjh6d0t4K0F3ME9lSGRnTHAySE5SY2sxdStYV0FleGE4WnBV?=
 =?utf-8?B?TmczNUVZSkpBek9zT1NiN0F4ajlpektRb2FoM2VzcjN4NEJCbFdrVldrZTFu?=
 =?utf-8?Q?DWNF16cWEWYKPef5vN1YjQQxw?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb022abf-5b92-41c9-dc7d-08da8f44b2ac
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB6000.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2022 13:44:04.8004
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fKHDNm/l1qKe0cdS98ujoIJf5cyhgdhrPgf2fneRWJ66otueqohj3DuRDHXt6RfBDueldcEzedixb6znC4BzqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6079
X-MailFrom: Arvind.Yadav@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AK32VUQITDXK6VK5BR4OBPGJVXHPJ7NQ
X-Message-ID-Hash: AK32VUQITDXK6VK5BR4OBPGJVXHPJ7NQ
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:25:22 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AK32VUQITDXK6VK5BR4OBPGJVXHPJ7NQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiA5LzUvMjAyMiA0OjUxIFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBBbSAwNS4w
OS4yMiB1bSAxMjo1NiBzY2hyaWViIEFydmluZCBZYWRhdjoNCj4+IFRoZSBjb3JlIERNQS1idWYg
ZnJhbWV3b3JrIG5lZWRzIHRvIGVuYWJsZSBzaWduYWxpbmcNCj4+IGJlZm9yZSB0aGUgZmVuY2Ug
aXMgc2lnbmFsZWQuIFRoZSBjb3JlIERNQS1idWYgZnJhbWV3b3JrDQo+PiBjYW4gZm9yZ2V0IHRv
IGVuYWJsZSBzaWduYWxpbmcgYmVmb3JlIHRoZSBmZW5jZSBpcyBzaWduYWxlZC4NCj4+IFRvIGF2
b2lkIHRoaXMgc2NlbmFyaW8gb24gdGhlIGRlYnVnIGtlcm5lbCwgY2hlY2sgdGhlDQo+PiBETUFf
RkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCBzdGF0dXMgYml0IGJlZm9yZSBjaGVja2luZw0K
Pj4gdGhlIHNpZ25hbGluZyBiaXQgc3RhdHVzIHRvIGNvbmZpcm0gdGhhdCBlbmFibGVfc2lnbmFs
aW5nDQo+PiBpcyBlbmFibGVkLg0KPg0KPiBZb3UgbWlnaHQgd2FudCB0byBwdXQgdGhpcyBwYXRj
aCBhdCB0aGUgZW5kIG9mIHRoZSBzZXJpZXMgdG8gYXZvaWQgDQo+IGJyZWFraW5nIHRoZSBrZXJu
ZWwgaW4gYmV0d2Vlbi4NCj4NCnN1cmUsIEkgd2lsbCBhZGQgdGhpcyBwYXRjaCBhdCBlbmQuDQo+
Pg0KPj4gU2lnbmVkLW9mZi1ieTogQXJ2aW5kIFlhZGF2IDxBcnZpbmQuWWFkYXZAYW1kLmNvbT4N
Cj4+IC0tLQ0KPj4gwqAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCB8IDUgKysrKysNCj4+IMKg
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+IGlu
ZGV4IDc3NWNkYzBiNGYyNC4uNjBjMGU5MzVjMGI1IDEwMDY0NA0KPj4gLS0tIGEvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UuaA0KPj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPj4g
QEAgLTQyOCw2ICs0MjgsMTEgQEAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChzdHJ1Y3Qg
ZG1hX2ZlbmNlIA0KPj4gKmZlbmNlKQ0KPj4gwqAgc3RhdGljIGlubGluZSBib29sDQo+PiDCoCBk
bWFfZmVuY2VfaXNfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+PiDCoCB7DQo+
PiArI2lmZGVmIENPTkZJR19ERUJVR19GUw0KPg0KPiBDT05GSUdfREVCVUdfRlMgaXMgY2VydGFp
bmx5IHdyb25nLCBwcm9iYWJseSBiZXR0ZXIgdG8gY2hlY2sgZm9yIA0KPiBDT05GSUdfREVCVUdf
V1dfTVVURVhfU0xPV1BBVEggaGVyZS4NCj4NCj4gQXBhcnQgZnJvbSB0aGF0IGxvb2tzIGdvb2Qg
dG8gbWUsDQo+IENocmlzdGlhbi4NCj4NCkkgd2lsbCB1c2UgQ09ORklHX0RFQlVHX1dXX01VVEVY
X1NMT1dQQVRIIGluc3RlYWQgb2YgQ09ORklHX0RFQlVHX0ZTDQoNCn5hcnZpbmQNCg0KPj4gK8Kg
wqDCoCBpZiAoIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULCAmZmVu
Y2UtPmZsYWdzKSkNCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gZmFsc2U7DQo+PiArI2VuZGlm
DQo+PiArDQo+PiDCoMKgwqDCoMKgIGlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxF
RF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiB0cnVl
Ow0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==

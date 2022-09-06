Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EFF604339
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:32:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB0563F5BF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:32:27 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2040.outbound.protection.outlook.com [40.107.236.40])
	by lists.linaro.org (Postfix) with ESMTPS id E84303EE60
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Sep 2022 19:55:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mc9QvVAJTWLVsTUJLNPbDttEhsorTI0KD2NInmmD1bfaWpd45lHLCwEgsYYtcYv4uSOIytOsk4LF228UK7jDm5EPGYsJGuoYd7goMYbZ6hNVVbwYmY7P/Z5U8VoSZ+KW13xQwZsCa87elsfgMqpqs3eWu9fHFr28DrL5kNfIRuPBFD9TVGaqZykeAMuTJTQcWKwZ3EnWbFz/BH84+UhYyaGJ3X9/qgOWs8WelUX6p5LyqrlS3hBj7PD+XnPD5LRdC09JrFQUtfCwo4RRNY3Ss7KgFic1aaSiFoAKqVZL33UcmoYitAdH8936hyE9js7ex+vrIydPfciyTAewTuWu3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U03M9E2KRU4GeMhmuQXFBNx+TKr8J+1bvfXVILcyGVM=;
 b=RiLmOcmkIn5NuQX3VkTwx/+ecwvOTOgvFloOh0UzgiCsXQhbZMQ4iJrOP/ObH1Db84quhunMOeixTefkPmmUsTuMotMUkQxuhP0+6mkxrIZAKL6rGYeNLcS9+okzg8GaPbCVb+VTPGTZqcLU90jg/BFxqfWXraqmJSStV/Dkwdalnytc7SRxq4I1/Y5qrbp2JPVKwJGX0oxmXVeccvxs7+oVdSzGtm6dhNeZUou5quWeQI2Znte+l5/uGawKBIGzkEoWRx4Vne9iKQnSGnl1k1Ij2pQDNuUM0rckT/zFnvLh8spzaDZwArz9Ykrg62I4wEQEmm+Xfz4V+bxgNoCv8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U03M9E2KRU4GeMhmuQXFBNx+TKr8J+1bvfXVILcyGVM=;
 b=hPLp+OEvsuf38E5BvecYeu4CMQokqpJfKRZMe2J85Ph9nvPe/SafgpXwnCnZ4GDLod3qI3CvnB6oMHhTZmHNZnm7AYdTidjnnb6BS/QN3KXzzfWVx0mTkwLFCgQ7572dDfRQOd3tkqGiEsW/iY/NwOuAcxFieyme/oOsJUgqEaI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from DM5PR12MB1947.namprd12.prod.outlook.com (2603:10b6:3:111::23)
 by BL1PR12MB5173.namprd12.prod.outlook.com (2603:10b6:208:308::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.12; Tue, 6 Sep
 2022 19:55:47 +0000
Received: from DM5PR12MB1947.namprd12.prod.outlook.com
 ([fe80::80ca:c97:d395:1acf]) by DM5PR12MB1947.namprd12.prod.outlook.com
 ([fe80::80ca:c97:d395:1acf%6]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 19:55:47 +0000
Message-ID: <ffb5acca-7c20-4497-d7d0-25508a6566d2@amd.com>
Date: Tue, 6 Sep 2022 15:55:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Arvind Yadav <Arvind.Yadav@amd.com>, shashank.sharma@amd.com,
 amaranath.somalapuram@amd.com, Arunpravin.PaneerSelvam@amd.com,
 sumit.semwal@linaro.org, gustavo@padovan.org, airlied@linux.ie,
 daniel@ffwll.ch, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
References: <20220905163502.4032-1-Arvind.Yadav@amd.com>
 <20220905163502.4032-2-Arvind.Yadav@amd.com>
 <5568fad0-1503-a0f3-222e-c238fd4eefdd@amd.com>
From: Andrey Grodzovsky <andrey.grodzovsky@amd.com>
In-Reply-To: <5568fad0-1503-a0f3-222e-c238fd4eefdd@amd.com>
X-ClientProxiedBy: YT3PR01CA0112.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:85::30) To DM5PR12MB1947.namprd12.prod.outlook.com
 (2603:10b6:3:111::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 491c45b2-81a3-4ff4-9380-08da9041ca72
X-MS-TrafficTypeDiagnostic: BL1PR12MB5173:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tOhUGAlx0huHkgtCRHJNTpuu560ZYUDB8SCKdNlEyAbmK/vWqGuY97H0LnxDtKeOucE2FII4mDimkrtbKdrJdMc8vnifrIch3uGlHLXP37rySXNxSvYCJbzO1k7JfaBquLqx+dkJKAtUDt54HxZj269iz58mSpomiKr2vzJBhuaOvpTEFCQVCn7bCOcAa7cVcPEOSsAGmgMtqW59bhDZrmq/zMkusIRP3ZYOlGxX6lVlKvnmataL1oC4niNXBF/3sI1lmeXJo+CUTh0fNuhL6a4snut+yhx1LLGp0IA7PSjXQOq4zI0Cns4cszCTVg1vUvo0mcIFsyIl4UBS/O6C2AE70flUmGqVMIDkGKUpO1QE8mS7Fdf4NHZ+BaKOia5xllsuQUKVq7mMAcBjrn5WCAu3tQ4Jx/bYPfYeBqiY3huuo87c7ea2FlaWhGOY0ia7W+OcU5cdf8l3iJB7YlskletOVwhXaXklm7WgAB2c2FKJNlQpT0ugGJ7gQitjg/hPO30JF62PhXiVx5I4cKxaF22Ft7oitH0FHwYmeovJ4IMae2GEz7w98+pDhYu8xkHsbGk5cefCSfHeyVESzy+RsP8IUBr7UpsNp9I+jn+RhWY4W9JJEZIqnZKTdgVPzldNTLBaYzndCEsqInGeQSJSvpMxwulgw0b84LkvsmdUwC/GKHHeP3wCHXrNZBBK7I63yB8YH0PS8XnjTKnWf8dg6aMtwjB66qdMHh3GypmUMjCREq89k5QJQmLhV0Z+FviIRP0mbdl2ivAt4h1P1r8r1HJ3qu9Y1MAnPVoh445W7b0dr9tFbQwe73uzT+R9tcvs
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR12MB1947.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(39860400002)(376002)(396003)(366004)(346002)(2616005)(6512007)(6506007)(53546011)(8676002)(66476007)(66946007)(66556008)(31696002)(86362001)(6486002)(478600001)(44832011)(921005)(8936002)(5660300002)(41300700001)(6666004)(2906002)(316002)(31686004)(66574015)(110136005)(36756003)(186003)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?czhHQjNMcEZDT2o3UE5PNzlaNXVrNEcvMHh0RlB0RFlMQUNyZVdSTmNOa0lv?=
 =?utf-8?B?eXBPaWZZSjh3NTJmOXhOMElya0xFbXNnWFpvL0tvRWF4N05sNlVHZkIyUnN2?=
 =?utf-8?B?SEwyNFJXaEJYd04vRVdsc28zeitwWUdQRUp0U3AwaWlyNFJpVk85a2VIQlpQ?=
 =?utf-8?B?clQ1aThKemVaV0diclhyblNFNmZCaEowTnU0djRyc1kySkw2U2pKK0ZLdEYw?=
 =?utf-8?B?dk9KaGw3K01HVjkyTWYxWUxJcnlJNGx2NnZUTTdNM2ZXNlNDTEtNWmEweGc4?=
 =?utf-8?B?YkpKQVJPZkN6Z0ZPb001T3lnOW91clYxZnFsN3dRdEhHZnZHa0FUVWxqdVlB?=
 =?utf-8?B?bHMzbG5jY2ZhZk8zNHNPaDZTQmJuVlcyVEthQ3U3RGhOYy9CbmF5SUMvS3hB?=
 =?utf-8?B?Z0dFVlZTSTU0cUhYMnBvcm9yTWlxVjNiRkd4TWFORldsK3JhcGpya1ZMcmV2?=
 =?utf-8?B?bkhIRnZBYTlkNHFmYU1BcUVsZWNIL2ZYVUNJcDNmakQ1QlhsTlF0cXlxa20r?=
 =?utf-8?B?eGE2dVBMYXBnMG8vNy9qbVJrdHpQcnN4ZFgwQUljNjJQWE94ZlM5V3l5YW00?=
 =?utf-8?B?M1JHT1p6WjdNaW5JQnFUOHhBaWIxS0ZNdmFVeDBjMW0xMXgvbE9tVHZEdE1Q?=
 =?utf-8?B?T245d1AvSFpkbm44RC91R1RqTkF6aWIrbk9TUGowQ0I4bjdjNnYwY0RBWWZP?=
 =?utf-8?B?Q1dlZndiRERjNElKbUhtQ3QyUnV2b1FBSjFyNUQwZ3U3MU83ajcvN3JTdkNR?=
 =?utf-8?B?Ui9TcDRYTENrL1BaeUZQOGJMeEJuYlpJaHRXZDdqczYrY05PZ1dpVHA5dE84?=
 =?utf-8?B?ME40YlFGb3R6cDB2aTBvVUZ0V0o3dWNuaDA5RGFtdDF2bXBtZWxra0FYVXYy?=
 =?utf-8?B?UGFNSnJQMkNFSEdtQ1ErTlJ6VkNGeWlzMzFqZ3pPQkdHUCtaK1R1L2E4citm?=
 =?utf-8?B?UThDYU4wWmtBQ3lEUnAzYklvcmF5dHhhZ0RiZ1MwRk5vc01uSWNFR3UwKzcx?=
 =?utf-8?B?WWYyUW5RT05kNWZrbEpWdTBqTFFMV2svOEZveFVRa1RzYlhid1ljM29tOWVJ?=
 =?utf-8?B?N2JiS2lIWUNTUU05dlNjckZrRjk5MzFOSDJBc01zWUdYejljUUpYMWNjL1Bj?=
 =?utf-8?B?eWlNblhoZ0xGN2JVYUQyN3R4MFMvYTlQenlhbDZCSzVzR01OajQ4bUltSzEy?=
 =?utf-8?B?QXJ3SWZrWkZhUmJmL2NqQmFxdTNISjBPN1Rxcy92OGI3d2IydjAxN0h3UHBl?=
 =?utf-8?B?V3pSQ2FGSDRVVUplNVFKSmRtRFBoT3N1MTNPSk1IM09USENFQmZkc0psbTZH?=
 =?utf-8?B?Z2Vwb1IrazNBaHRIdi9FZzR4ejMzYjJJcFg0dkhoaURPNDJDeG5rOGFpZ2ZL?=
 =?utf-8?B?UjkwQ0cxNHc0M1duSisybEs3NFJqQy84czdjMnZiUEJma0h0QldWdTNCWkdo?=
 =?utf-8?B?VXVGdnZqdGQxdUEzS1RONjYwR0IySG95VFliSXVPK0dXdWovZFRQS3d3KzFI?=
 =?utf-8?B?ZGFGWmNuc2Rqby9mcVdVeWpTVGx0YUJ4UFBrOXR2dkVHY3lqN0Q4ZHl6NHg2?=
 =?utf-8?B?eTdPUEs2YUZuS3crSHcwbE4zSlVGYTFNNnlEbDVmUUpUWUdoNUdOS0hXWS9q?=
 =?utf-8?B?K0lRUDFBMU5HSUgxMmhqSUNQdXF4c3NHWS9wZVRHbDBuOXNPN2x4aUZUUU5i?=
 =?utf-8?B?bGtUNUpnRFNKQU0rSkluN0ZjL1ZjaEZ3S3hhakJ6U0VNcjl5M08xemNVZFhU?=
 =?utf-8?B?YnViYTFTM3BSYW9qQkdzc0FXcEpVemJSZnFoK1YyRWhIbVhwNVB6Z2RhRXl6?=
 =?utf-8?B?OGhtMUdmazJZcGRGM3VsSmZRaElycktrRWgyYyttdmJ2bmo4NnRJUW9CZkQ3?=
 =?utf-8?B?OUYvaHk0c1MyOUY5ZURka0M3RmEzNTF6OG9KVFVxYmxSa0g0em5DV3FKaGMx?=
 =?utf-8?B?M1lONS9QcFRVRUxUTENDZWJpbCtmZExoTGt0dWFJZXZnQy9mRmROQWN3OUpE?=
 =?utf-8?B?MFpUeU81RDFDc0JSTXdIL1RiWnFQOW9iL1p6NzRxaUFpUERta3BLbU55TkNM?=
 =?utf-8?B?YTU3NTd3OWpjd1hOeElta3NNQkRoclI2SEE4YmNMNWNBOGQ5Z05wKzJTeWd5?=
 =?utf-8?B?MTNDQUJMY1FNcDFkcGN6SDVQcnRzcGF0WmY0am1WSkE0b2J1UWN4bFJwMVc4?=
 =?utf-8?Q?3cIXffOX6L+HI8BF7wjA/dhJcVGWWjW22MTMYN/zpagJ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 491c45b2-81a3-4ff4-9380-08da9041ca72
X-MS-Exchange-CrossTenant-AuthSource: DM5PR12MB1947.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 19:55:47.1845
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Cn11IKrDZ8r+l7wu4kibxUZ2LqtxVOf3xPzEkngbkXpWtWjekouGFo2Xbf8cbpFLFmEEn2ElpHkOGBgzjFiOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5173
X-MailFrom: Andrey.Grodzovsky@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: J62TDEIXNVA3VILN37CC4ZAAMUWYIICH
X-Message-ID-Hash: J62TDEIXNVA3VILN37CC4ZAAMUWYIICH
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:32:01 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/4] drm/sched: Enable signaling for finished fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J62TDEIXNVA3VILN37CC4ZAAMUWYIICH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAyMDIyLTA5LTA2IDAyOjM0LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBBbSAwNS4w
OS4yMiB1bSAxODozNCBzY2hyaWViIEFydmluZCBZYWRhdjoNCj4+IEhlcmUncyBlbmFibGluZyBz
b2Z0d2FyZSBzaWduYWxpbmcgZm9yIGZpbmlzaGVkIGZlbmNlLg0KPj4NCj4+IFNpZ25lZC1vZmYt
Ynk6IEFydmluZCBZYWRhdiA8QXJ2aW5kLllhZGF2QGFtZC5jb20+DQo+PiAtLS0NCj4+DQo+PiBD
aGFuZ2VzIGluIHYxIDoNCj4+IDEtIEFkZHJlc3NpbmcgQ2hyaXN0aWFuJ3MgY29tbWVudCB0byBy
ZW1vdmUgQ09ORklHX0RFQlVHX0ZTIGNoZWNrIGZyb20NCj4+IHRoaXMgcGF0Y2guDQo+PiAyLSBU
aGUgdmVyc2lvbiBvZiB0aGlzIHBhdGNoIGlzIGFsc28gY2hhbmdlZCBhbmQgcHJldmlvdXNseQ0K
Pj4gaXQgd2FzIFtQQVRDSCAyLzRdDQo+Pg0KPj4gLS0tDQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0v
c2NoZWR1bGVyL3NjaGVkX21haW4uYyB8IDIgKysNCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9tYWluLmMgDQo+PiBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFp
bi5jDQo+PiBpbmRleCBlMGFiMTRlMGZiNmIuLmZlNzJkZTBlMjkxMSAxMDA2NDQNCj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYw0KPj4gQEAgLTk2Miw2ICs5NjIsOCBAQCBz
dGF0aWMgaW50IGRybV9zY2hlZF9tYWluKHZvaWQgKnBhcmFtKQ0KPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLyogRHJvcCBmb3Igb3JpZ2luYWwga3JlZl9pbml0IG9mIHRoZSBmZW5jZSAq
Lw0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQo+
PiDCoCArIGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKCZzX2ZlbmNlLT5maW5pc2hlZCk7
DQo+DQo+IE9rLCB0aGlzIG1ha2VzIGl0IGEgbG90IGNsZWFyZXIuIFByZXZpb3VzbHkgSSB0aG91
Z2ggdGhhdCB3ZSBoYXZlIHNvbWUgDQo+IGJ1ZyBpbiBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrKCku
DQo+DQo+IFRoaXMgaXMgZXNzZW50aWFsbHkgdGhlIHdyb25nIHBsYWNlIHRvIGNhbGwgdGhpcywg
dGhlIGZpbmlzaGVkIGZlbmNlIA0KPiBzaG91bGQgYmUgZW5hYmxlZCBieSB0aGUgY2FsbGVyIGFu
ZCBub3QgaGVyZS4NCj4NCj4gVGhlcmUgaXMgYWxzbyBhbm90aGVyIHByb2JsZW0gaW4gZG1hX2Zl
bmNlX2VuYWJsZV9zd19zaWduYWxpbmcoKSwgaXQgDQo+IHJldHVybnMgZWFybHkgd2hlbiB0aGUg
ZmVuY2UgaXMgYWxyZWFkeSBzaWduYWxlZDoNCj4NCj4gwqDCoMKgwqDCoMKgwqAgaWYgKHRlc3Rf
Yml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmZlbmNlLT5mbGFncykpDQo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47DQo+DQo+IFBsZWFzZSByZW1vdmUgdGhh
dCBvbmUgZmlyc3QuDQoNCg0KV2h5IHdlIGV2ZW4gbmVlZCB0aGlzIGV4cGxpY2l0IGNhbGwgaWYg
ZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayBjYWxscyANCl9fZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWxp
bmcgYW55d2F5ID8NCg0KQW5kcmV5DQoNCg0KPg0KPiBUaGFua3MsDQo+IENocmlzdGlhbi4NCj4N
Cj4NCj4+ICsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHIgPSBkbWFfZmVuY2VfYWRk
X2NhbGxiYWNrKGZlbmNlLCAmc2NoZWRfam9iLT5jYiwNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRybV9zY2hlZF9qb2JfZG9uZV9j
Yik7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAociA9PSAtRU5PRU5UKQ0KPg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==

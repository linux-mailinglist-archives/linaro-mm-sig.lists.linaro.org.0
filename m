Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 293F3508FC9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Apr 2022 20:50:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B49940496
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Apr 2022 18:50:07 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam07on2079.outbound.protection.outlook.com [40.107.95.79])
	by lists.linaro.org (Postfix) with ESMTPS id AE9DD402BD
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Apr 2022 18:50:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eKYEYbPAWIijNP01T0iHUFbGMcg5XXzUMTv04lpRyxwZMOHpSmhUKJfd8xljCUoOgg2mO9aNzQLvCQVUE19nqtgOzB37qCDPzw3pW+B0WYLF9U+mqSQSLXiROZci2SmfoCt8++zJ4iPkgj62R2Awee8rhM+GQQuXjflI9ICfFTd0KxhR57BEgRHxzfc1wqBzHFNs27h//mggIQpZtOJR2K1UDEPto7o5qlN6hxh0cQB6AmHSOgqNdpm9FthllwpqnCddfupnCZp2H4WVzPTCik6V1QUFkUmFGKqtQ9KYnSqXK9EVtfHR8itPJMLpRHyrGV+c9jSKawyxP6ACG+4cSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MZvzCibjrFi8oaBViBIR6iaRj4X6REwO3ZbIP16Yv/U=;
 b=f/YHzv6U4c9dGYZxe5IwJURsAokVxxp9O26fM10ll/41DjtxbH8pYSwKdLlKTiwi2RikIdMLWi8uewDXZCKuU7g1/Q4xsckPoTMAFu5XA6d0mG2GO4IneRsJ3/rQdhFYOdt5stzNNrk4qDHrhepvPSmGex+NtntajrPAyq6VjiKRQWexRRPzZuEniR8xst1PBHulTlGGCyrWlFG8OiTMbK2JgfnSQT9FwzcWHYKREYd1Q6tWhN8eyDvuHbB/ZEUk+APBnaLVtRmMKv2IsmYCfvoWF2177xnfAjDBdk7Yj1HIePISJ3KV9/Jc1YKmJmmfSpWddR/osMpeRmHjkvDhAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MZvzCibjrFi8oaBViBIR6iaRj4X6REwO3ZbIP16Yv/U=;
 b=qu5nDsvs/VcjiC6WMMsVmp8v0EjmI4/CYzrP9S6UCIppSR+6RQGpG+4jMtJebE7zzwJFoI6GQcVAqQ/kCTf1DrmmQrHBHxMcmmibyybPJphqqoUXwMGAOJN7WuhmfzTUUHRGysAw1vUfn31SUtbxPnNYqGffoajCNRvdrhiZPCI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BYAPR12MB2725.namprd12.prod.outlook.com (2603:10b6:a03:6b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Wed, 20 Apr
 2022 18:49:59 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a5fb:7137:5e64:cf8%5]) with mapi id 15.20.5164.026; Wed, 20 Apr 2022
 18:49:59 +0000
Message-ID: <baa19a2d-6ad9-63ea-20f4-284a794f8998@amd.com>
Date: Wed, 20 Apr 2022 20:49:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Zack Rusin <zackr@vmware.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "ckoenig.leichtzumerken@gmail.com" <ckoenig.leichtzumerken@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220407085946.744568-1-christian.koenig@amd.com>
 <20220407085946.744568-4-christian.koenig@amd.com>
 <60ab53ce1ce1333f5e6a15fc83c3c05cd9bd1084.camel@vmware.com>
 <4c2e9414-3926-c9d7-8482-0d6d9191c2ac@amd.com>
 <fe8916b53b0f0101e6616d23eb6896399b092d58.camel@vmware.com>
 <54d00af9-9384-5794-490c-7d4cafe086b6@gmail.com>
 <e1c60e2a1478c406f515d51608a751fdc9feff3a.camel@vmware.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <e1c60e2a1478c406f515d51608a751fdc9feff3a.camel@vmware.com>
X-ClientProxiedBy: AM6P192CA0074.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:8d::15) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 31b5c3f4-c2ba-4dfd-8330-08da22fe91ed
X-MS-TrafficTypeDiagnostic: BYAPR12MB2725:EE_
X-Microsoft-Antispam-PRVS: 
	<BYAPR12MB2725D3A49E8EC8C353909A6083F59@BYAPR12MB2725.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3wmhVe9mRT8qHcU9cu/bODx21vurTsNvxv63BvO021+98MJc/Y6JhRI5/LDawr1ApxvoXUGQlN585snu+mUn+Hc+/tCdPIhFm3IYjXETsjEwgp1P7wrwPd2fO8NMz6O46S4lKAP+nsVhyxTgaCo2RlozfOtB+pCkLv3jWr/1Lpz1fiQwaMytF1rDYPRlffVdCNiF6I1PbjDnnTzqPrghbd5ruALbsaqCVk4DtHSvx/N1v5d2a0zLqPvJhvhJVq4mxn/HORWP7nHQIohbz4MIJlrcimYVBbvXGS6dFYzVeR1cHHsmoyF5EhCYeZRgKNtvGPB/5LlTF3CWZk2sP29fF4FZZmDxdqdfTVAM+UciLnG9lepg8/Wf6diwLglG6btFX1oJnLLj2rFiaZ8NwQi97X6uNxeThvd36PVFzL6CimJomM7iGmTSOgciBnbSP1x5gDJSO2XI4iZ3nX9axk02GqUeRSrP313WS5K4YLcbRKrlXN/1kBan/Mr8W9dMPDtixI4tZ8pBfycEegYGPq3K5ho+6D5RX8MXxlRlXmPmkw3TZkKYs6fUEXxrWIsBmGorh6NyX9iDYkN2lt1AFA+HMzS5908iHkOXFqxaWaZAwlzcpfwDSpkFm3CsWXFo5bl9K2ertojpODqHIhxx/Cey7ONuIWM80ZuQxOzaTUrr1lq8GgCvPxx/3nn6ZIpNPfdyclq+zcREn33ovJXiZWdL8MGTwJ/+JeN6r6XDRKH6tv6qk5dvUHrtrRLH5uyMdg5P
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(36756003)(86362001)(316002)(8936002)(38100700002)(2906002)(6486002)(5660300002)(6512007)(66946007)(8676002)(110136005)(66476007)(508600001)(66556008)(4326008)(6506007)(6666004)(2616005)(31686004)(31696002)(83380400001)(186003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QVRpeDN1N1NYZ2NFUEt6SmVtbVF4bkN5Mm92LytVSTRjQnAzcEF0SUNBOVdO?=
 =?utf-8?B?U2JyK1dkNk1IWEphOUR4NzBJVkliUDJkTDgvYkNvTWtncnZPV2VjOTNOKzhJ?=
 =?utf-8?B?V0lGNC9aNzdWTS8vUGV4RnlxVnNkMHIzOVg1anV5NS95NnRHdEdGNkFqbXBZ?=
 =?utf-8?B?RUxmbWQxSGJrTUtjVnkvUllReFYxazk3TnV0bDFISys2dG5oY1FRWFA2TWtp?=
 =?utf-8?B?eXcvbWpPNjRGbDBOcFlvMVF0YjM3YkcwdHo2cDM5MWFmMjA4MkxHaVd3Wjdm?=
 =?utf-8?B?SWsxZTBmdE1iNmhOaUl0RzNBZnVVMXhiR2FFZUErOHNGSEJNaDB5eSt4ZWdJ?=
 =?utf-8?B?REpoWDV4K2JNVjRFVlBzN1VtM2xDU3MrcFpJcGpjU01OWC9CcDBtRzcrVGV4?=
 =?utf-8?B?QmJoU1Y0RHJtS2NkbFJQOERsK1NKZFVSU1BEcUFkRnBpZEEyWkRDaTV5Vk84?=
 =?utf-8?B?UUllUkRyMlkxN3ZKcHcvTXNkMytQVHFPZExVZk12bmdLQmhIRkxyMkY4aEJS?=
 =?utf-8?B?bTdRdGJJL09NOFNEdStvYW1wUHQvQmw2ZEcwWFRNalhjMXNjam1tOUNnU250?=
 =?utf-8?B?THc4V3Y4YWVxS01lZ3NSR1B4b1MwZ3YxUnhrVGZlakJyVUx5UFM1SkdTMXRy?=
 =?utf-8?B?YWQwMDFSaGpwa3UxWXgvZEVMN29FcnBQRkszUWRjREw4ZEE0WmZ5VzVreEtn?=
 =?utf-8?B?QjNaRTNUbEJXd1k4Qlp0MDMvekJrNEhLMGFHK0tvaXBJU0Zkdnh5ckVPdlFO?=
 =?utf-8?B?MnFkRDFacUpWbzhHcG5EeVJRVG1ZckFUNXZwRGxmSndsWWtJeGNZa2lJZStP?=
 =?utf-8?B?bXV3cEdGMXI4YlRLSFNnai9QalRqL2hNa0lmUGlnSVd5MU82WENyZnpOT0Jm?=
 =?utf-8?B?T1I3bXNuSDBVTXIxd3BKZ3FqR2R2RlJOOEx2NDJRc1A0WUVuSUozcXN4R09J?=
 =?utf-8?B?SkRSZW1UajlEV3JuVDJSL3RPU3Y5Z2NPSk1ENEFOWFBhQ1k4dTlCcE1OVDRD?=
 =?utf-8?B?OUdFdjVkZUc2QWhidzNqOWtxck1pQ1MwM2ZZc1VOVU1IZ0NEM3FzMk04VVpk?=
 =?utf-8?B?MU1Db0JqRmYwTmhCM1YxeEdUQXhtOEs2bk04elB1Q0xNTkV5VmlqREl4TmtO?=
 =?utf-8?B?SjFUL3VSMm02dktOZWRWZ1FURmw4Sld4VHVvSWZKbWtUS21lUnA5TjMzWk8v?=
 =?utf-8?B?ci9CRmxJazBnVGxLeURrdi9pN2RiWG40L2YwaDhiR0JGTm1Ua2dwUTNzZk5N?=
 =?utf-8?B?aVo2YjdXUGg2djlXYlRzOXFUbUV3dmdUWGdNcG9DK0FtSHc2bHJVL2w0d2V6?=
 =?utf-8?B?dmpFWVpEZ3lxclF5NkRvMzRVRDZiVDNGdEhBeEd6bG1RdHhIK1didVhndXVM?=
 =?utf-8?B?ZXErbVFOVTFtMzA0Sm05ZTBmT3BMMlBMaDdJeDByV2ZkM25lKzEyUnNROFlL?=
 =?utf-8?B?bUp2Z2s5YmJVa0R4MENrbVBucmsyNjlsdjYzdUUzVVFQalJGN0FmTEZ6SnJW?=
 =?utf-8?B?Ry95djhxTmxrR3Y2RHVqRStLME1zSWpkZy9SM1dUVi94OUtCdnM3bTZkbDhu?=
 =?utf-8?B?NmUzczZ6VkYvZ1granM0WXYyZEw4WExXZW5FS2JHUUxEMGxMcmlaRFl5Rm9S?=
 =?utf-8?B?NjVwcnhmdG5FdWtKYTAwdU50YTNvemc0cDNXeEpCbjhDS0ZWOCtsL3lRenVo?=
 =?utf-8?B?YisrK2VXMFlvbnc4QzVVZDFSd1Jkc0lETTRHdFFxTi9hTG9UK1daNGxBT3VR?=
 =?utf-8?B?MGtMSzFXWko2dXBYdzFmRWF4RHhCTDgzOFJzT3JJL2VKWnBoRkxiaFJwMW5a?=
 =?utf-8?B?WnJIT2hmN2VmUWNrZElJMlNUakx6TDNUSWh4NUEzQ01kN0hFVnNCcWhjSHhK?=
 =?utf-8?B?dG9BVUlWY3p5VERzbVFLbVhaNXhIS1lteEo1ZUZsWkJkS1dvRk1oM0dGOUdr?=
 =?utf-8?B?MGRGeGQyaW1kNTFzZVlON0ZPbEszamVwcjlQdG1qcWk5QTRRWnJlK2dneENC?=
 =?utf-8?B?bzZoRG1Lalk2M1ZTbzhscncyOG04VjJFbzlKS05HT0NteTNWSkg3OWEyb0VN?=
 =?utf-8?B?WDk1bVFEeWJCc09ma0U3akJQNVU1SEM4SlFlZk9sQUdWRGlXejI4N3hqYXZr?=
 =?utf-8?B?dXNtSVI2NTZFVmVYdGVVcEJJVWExL2xDQWljU0ErQWc0aHlFd1JZUjNRSVRl?=
 =?utf-8?B?bW1IYkdWRFpRWGlGY3FKamxVVGJ1T2xJRU5QOHY4NVZzNUVPTVcxaXd1Ynlo?=
 =?utf-8?B?Z3NXUC9KLzI2dUovU0Y2WXFKYjhBMlF4SkRKN3VrRlRFQWYyVVpZdjlGZy8z?=
 =?utf-8?B?WGFYYkhKWFMrVFk3ZjN4aDd1a0laaldJM3c2ZWJGVmoxdTZibGdZREp0QlBD?=
 =?utf-8?Q?A6J+0EKwO+fGwgUVZZptp19DNKSvFG8fhuA8PlQxfkpSR?=
X-MS-Exchange-AntiSpam-MessageData-1: 5bqitQnTNaKFhg==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31b5c3f4-c2ba-4dfd-8330-08da22fe91ed
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2022 18:49:59.4302
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: emkEjwsjlWwBq0d+ahFrgi0qC40HT6pTimkJ5Zj9u59+cHkBPyP3UJskKH4wYxog
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2725
Message-ID-Hash: RLCON67IS3CKNU33UMQ2OI7ZEQALP2KT
X-Message-ID-Hash: RLCON67IS3CKNU33UMQ2OI7ZEQALP2KT
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/15] dma-buf & drm/amdgpu: remove dma_resv workaround
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RLCON67IS3CKNU33UMQ2OI7ZEQALP2KT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAuMDQuMjIgdW0gMjA6NDEgc2NocmllYiBaYWNrIFJ1c2luOg0KPiBPbiBXZWQsIDIwMjIt
MDQtMjAgYXQgMTk6NDAgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBBbSAyMC4w
NC4yMiB1bSAxOTozOCBzY2hyaWViIFphY2sgUnVzaW46DQo+Pj4gT24gV2VkLCAyMDIyLTA0LTIw
IGF0IDA5OjM3ICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+PiDimqAgRXh0ZXJu
YWwgRW1haWwNCj4+Pj4NCj4+Pj4gSGkgWmFjaywNCj4+Pj4NCj4+Pj4gQW0gMjAuMDQuMjIgdW0g
MDU6NTYgc2NocmllYiBaYWNrIFJ1c2luOg0KPj4+Pj4gT24gVGh1LCAyMDIyLTA0LTA3IGF0IDEw
OjU5ICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+Pj4+IFJld29yayB0aGUgaW50
ZXJuYWxzIG9mIHRoZSBkbWFfcmVzdiBvYmplY3QgdG8gYWxsb3cgYWRkaW5nDQo+Pj4+Pj4gbW9y
ZQ0KPj4+Pj4+IHRoYW4NCj4+Pj4+PiBvbmUNCj4+Pj4+PiB3cml0ZSBmZW5jZSBhbmQgcmVtZW1i
ZXIgZm9yIGVhY2ggZmVuY2Ugd2hhdCBwdXJwb3NlIGl0IGhhZC4NCj4+Pj4+Pg0KPj4+Pj4+IFRo
aXMgYWxsb3dzIHJlbW92aW5nIHRoZSB3b3JrYXJvdW5kIGZyb20gYW1kZ3B1IHdoaWNoIHVzZWQg
YQ0KPj4+Pj4+IGNvbnRhaW5lcg0KPj4+Pj4+IGZvcg0KPj4+Pj4+IHRoaXMgaW5zdGVhZC4NCj4+
Pj4+Pg0KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCj4+Pj4+PiBSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBmZndsbC5jaD4NCj4+Pj4+PiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4+Pj4+IGFmYWljdCB0aGlzIGNoYW5nZSBicm9rZSB2bXdnZnggd2hpY2ggbm93IGtlcm5l
bCBvb3BzIHJpZ2h0DQo+Pj4+PiBhZnRlcg0KPj4+Pj4gYm9vdC4NCj4+Pj4+IEkgaGF2ZW4ndCBo
YWQgdGhlIHRpbWUgdG8gbG9vayBpbnRvIGl0IHlldCwgc28gSSdtIG5vdCBzdXJlDQo+Pj4+PiB3
aGF0J3MNCj4+Pj4+IHRoZQ0KPj4+Pj4gcHJvYmxlbS4gSSdsbCBsb29rIGF0IHRoaXMgdG9tb3Jy
b3csIGJ1dCBqdXN0IGluIGNhc2UgeW91IGhhdmUNCj4+Pj4+IHNvbWUNCj4+Pj4+IGNsdWVzLCB0
aGUgYmFja3RyYWNlIGZvbGxvd3M6DQo+Pj4+IHRoYXQncyBhIGtub3duIGlzc3VlIGFuZCBzaG91
bGQgYWxyZWFkeSBiZSBmaXhlZCB3aXRoOg0KPj4+Pg0KPj4+PiBjb21taXQgZDcyZGNiZTlmY2U1
MDUyMjhkYWU0M2JlZjlkYThmMmI3MDdkMWIzZA0KPj4+PiBBdXRob3I6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+Pj4gRGF0ZTrCoMKgIE1vbiBBcHIgMTEg
MTU6MjE6NTkgMjAyMiArMDIwMA0KPj4+IFVuZm9ydHVuYXRlbHkgdGhhdCBkb2Vzbid0IHNlZW0g
dG8gYmUgaXQuIFRoZSBiYWNrdHJhY2UgaXMgZnJvbSB0aGUNCj4+PiBjdXJyZW50IChhcyBvZiB0
aGUgdGltZSBvZiBzZW5kaW5nIG9mIHRoaXMgZW1haWwpIGRybS1taXNjLW5leHQsDQo+Pj4gd2hp
Y2gNCj4+PiBoYXMgdGhpcyBjaGFuZ2UsIHNvIGl0J3Mgc29tZXRoaW5nIGVsc2UuDQo+PiBPaywg
dGhhdCdzIHN0cmFuZ2UuIEluIHRoaXMgY2FzZSBJIG5lZWQgdG8gaW52ZXN0aWdhdGUgZnVydGhl
ci4NCj4+DQo+PiBNYXliZSBWTVdHRlggaXMgYWRkaW5nIG1vcmUgdGhhbiBvbmUgZmVuY2UgYW5k
IHdlIGFjdHVhbGx5IG5lZWQgdG8NCj4+IHJlc2VydmUgbXVsdGlwbGUgc2xvdHMuDQo+IFRoaXMg
bWlnaHQgYmUgaGVscGVyIGNvZGUgaXNzdWUgd2l0aCBDT05GSUdfREVCVUdfTVVURVhFUyBzZXQu
IE9uIHRoYXQgY29uZmlnDQo+IGRtYV9yZXN2X3Jlc2V0X21heF9mZW5jZXMgZG9lczoNCj4gICAg
IGZlbmNlcy0+bWF4X2ZlbmNlcyA9IGZlbmNlcy0+bnVtX2ZlbmNlczsNCj4gRm9yIHNvbWUgb2Jq
ZWN0cyBudW1fZmVuY2VzIGlzIDAgYW5kIHNvIGFmdGVyIG1heF9mZW5jZXMgYW5kIG51bV9mZW5j
ZXMgYXJlIGJvdGggMC4NCj4gQW5kIHRoZW4gQlVHX09OKG51bV9mZW5jZXMgPj0gbWF4X2ZlbmNl
cykgaXMgdHJpZ2dlcmVkLg0KDQpZZWFoLCBidXQgdGhhdCdzIGV4cGVjdGVkIGJlaGF2aW9yLg0K
DQpXaGF0J3Mgbm90IGV4cGVjdGVkIGlzIHRoYXQgbWF4X2ZlbmNlcyBpcyBzdGlsbCAwIChvciBl
cXVhbCB0byBvbGQgDQpudW1fZmVuY2VzKSB3aGVuIFZNV0dGWCB0cmllcyB0byBhZGQgYSBuZXcg
ZmVuY2UuIFRoZSBmdW5jdGlvbiANCnR0bV9ldV9yZXNlcnZlX2J1ZmZlcnMoKSBzaG91bGQgaGF2
ZSByZXNlcnZlZCBhdCBsZWFzdCBvbmUgZmVuY2Ugc2xvdC4NCg0KU28gdGhlIHVuZGVybHlpbmcg
cHJvYmxlbSBpcyB0aGF0IGVpdGhlciB0dG1fZXVfcmVzZXJ2ZV9idWZmZXJzKCkgd2FzIA0KbmV2
ZXIgY2FsbGVkIG9yIFZNV0dGWCB0cmllZCB0byBhZGQgbW9yZSB0aGFuIG9uZSBmZW5jZS4NCg0K
UmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiB6DQo+DQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

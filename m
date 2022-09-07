Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B61B360436C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:39:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5D853F2E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:39:10 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
	by lists.linaro.org (Postfix) with ESMTPS id E20553F572
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Sep 2022 16:18:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hTu5jveGTngdfBeo0KJwi1EQ7TGAJAmVifzkfU2/CeDigHWdFq9tTYF6MDNp4hXiqP66LbXfHo77Iuq+XTjwxqEf8kF4QNT7iO/5I3rbjJvHwU71iIHbFs6Lix6eAeQklmNvPIqokVAoV4nW12yBx/YshknoRNRtm68sMivCW7wgvcxqcu9/+tqPYhSF5+8v7w5qZUjKWamCuGGOY9gpXz3agBwrVJHJgnND6wwbkJ8yHaXqEMpuJH4p5K/ScbSrf+bVDDZgjv9vQWKg+22B52p/7WEdYjYzfqD65ThlpViS1MYJvAzU66b2t+3alVCFUUTi18iA8YRcruFZaVk3KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4woffgzYz5EiZjB+u8rBpdJf3XddeREq5x4RvD/3xus=;
 b=fCPiC0UcigxFBF6TXpbF4K92BmqrCuHlqUGgcqRFUF6FdBm7E5r7Nd6LgIFn9LHm1eZL6tGQd1V77f+i0YnQMpE97c1s6QEN/vJwlNq8v6+TYH5m8IooeQCVTi8iox2kwWQbduIa73wE4GQbO4d5yGAgeh3G6yrngVXB4S53Y2WYkxyEREoMuCvch3jS60Re/KfCnapfDpNyGlRY7ZKy2tJPwnVOfiYQM1+bzeuxKH1jKvkxohFPmwipFQGrMD7hiaNOmMr5gFwLF6M2eh+RBFpKsYjUS8sKCjCL6OPgf8pIGG457lacbGVKn2M1OEbcrpobKI8q6+ONee3+pgYpUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4woffgzYz5EiZjB+u8rBpdJf3XddeREq5x4RvD/3xus=;
 b=QrGhtC/z4Mu2G8kuv4Wx+tV5ENNMBApft+UXRSTtsN21t/Gokrr4NziuzkIWef0tSRbtVPMdxqnmF6rcwe9vWF9KSF7ljMJHGMyUsb89IC/vTj1AoqYHKb0b6w1x0Y7KcB8H3tCo0B44g6YD8NtM2lArMVF4a/1yaJzcjIRgpS0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from DM5PR12MB1947.namprd12.prod.outlook.com (2603:10b6:3:111::23)
 by MN0PR12MB5762.namprd12.prod.outlook.com (2603:10b6:208:375::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Wed, 7 Sep
 2022 16:18:40 +0000
Received: from DM5PR12MB1947.namprd12.prod.outlook.com
 ([fe80::80ca:c97:d395:1acf]) by DM5PR12MB1947.namprd12.prod.outlook.com
 ([fe80::80ca:c97:d395:1acf%6]) with mapi id 15.20.5612.014; Wed, 7 Sep 2022
 16:18:40 +0000
Message-ID: <f905c70e-b93d-5a26-cba9-c826a1fc21fe@amd.com>
Date: Wed, 7 Sep 2022 12:18:37 -0400
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
 <ffb5acca-7c20-4497-d7d0-25508a6566d2@amd.com>
 <9b57b254-8d67-9937-5cec-783e7a4d8f56@amd.com>
From: Andrey Grodzovsky <andrey.grodzovsky@amd.com>
In-Reply-To: <9b57b254-8d67-9937-5cec-783e7a4d8f56@amd.com>
X-ClientProxiedBy: YT3PR01CA0090.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:84::30) To DM5PR12MB1947.namprd12.prod.outlook.com
 (2603:10b6:3:111::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR12MB1947:EE_|MN0PR12MB5762:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a46d6da-d663-48d0-72ea-08da90eca01e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aM3+0poZjrJRAN0dTVeXUQfRrl0yr/Tn0i0OQY+TKuCd3eGYWAUAsNCA23q/1C3TpWgMyPyKDe1viY5APaBkd1zuvjjixTIBmuikWmcJOJthBI4NF7lMzpWO7ligsMiIGr+yqbCxqeqvadnCOqkPQaVMVw2+nrbB9pqDpgjlrMI6ba758Ka5QS1Ax/pKVWsIX+XsHw2Aa8UhDpPqARS+WGOlwwD5KkVFZYminyoTbiqsjsuKCOnrd01dGvGkaKbZf+9++vdOMYTba8SRbOMoQ/SGjxo+fmbIfNJ1fnhdxLKRi4yUuvy2vSNxnl+13x19nVRICeXgDGvp5VuaKESxgFRw88FL3Bw3JWztT4f7EhsrUt2FFbDgeQalf/E1uoNDDTvDqempHuarRaJK7Gfhikjpl6R3Y1Xj6Fw/H+GNx21xXkvY3Han8qRlMXmCOZD5la9M3WLeEMOhfVJ6nDezvfMIdEMSikueM+xA/04YTSI0d92XPX/6vRN15Ejq26yK2lRJq68lGg73RDMni5L5Z1SA7rdobQ1wrABZCIBoAIEi7J+xqtwAe8Bx3xh5S4OTTh/7fGD7MwokYyDrfIoiJ4gbL8wG2RB1fTAGUKupgOdxbk9jMbyzj6rWqOkhzOpGtgXdwoCEbPOc8KloXui2I205bXi96oQKRvAY3bYhyB/BfqWJlhE6pwVCP5OShosmkuwbcmtGepyU0lUkz0W0bFCXddDf/0wc9HMZiy4fCT5Dy1neHvS/dQ4rr2QVSzTzANKvLONPx6BFzoQUo/374qtMdA84OtlB7JrY1XfO8Qatp/zi32apFpwrST/RFiKB
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR12MB1947.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(136003)(376002)(366004)(396003)(346002)(66574015)(6506007)(86362001)(6486002)(8676002)(66946007)(186003)(31696002)(66476007)(66556008)(53546011)(478600001)(44832011)(41300700001)(2616005)(8936002)(6666004)(5660300002)(2906002)(316002)(31686004)(921005)(36756003)(110136005)(6512007)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bDFuZG5Bc2tONHYycWs0ekh4dlJ1dFBMWTM3SXhrei9yaG5mY2JJWlU0N2E1?=
 =?utf-8?B?TlBZOEFCR213UHExRXdzdlovQmxpc2NpUkNrUXEwVDZoMW05dlIzSktOeEhV?=
 =?utf-8?B?NGJ1bERoemVJNUQxQUx6WjZ2UTMxclZzek85MnZ2R0NKcXFiSDArTWNTelRU?=
 =?utf-8?B?QjJhckRWemMxaHYzenVydTVrVmV2SGc0UlAxNnJSQmNqOTllWjBvc05wT2ZE?=
 =?utf-8?B?ZVVkM0VkaUFYcjlBVGsvbjVTenNSb3pMS1RDZG5sUkVXdE1rTkhRRFo0M3hm?=
 =?utf-8?B?cWxQa3g2R05DOFVFU2RnM0xYcmRiRFZsTnBjc1pwbGEzZC9DVG5VUE5nS0Fv?=
 =?utf-8?B?VzJVajJEbzF3NWRaLy9kUUROZytqNmY3TjAzMENXOU5YWktGK2V6VkE1WkZp?=
 =?utf-8?B?Tzg0bWJPb3R4V0htRUt3L3JQd0QrYjRTNDk3NUJRN1JHOFdOL0sralFiVGdp?=
 =?utf-8?B?M08xeldzcjg4UkdiRjRZNkxZRWxuWmhTcG1YYlJUMGs5Wm5jcnZZRWZxQWVx?=
 =?utf-8?B?YVVmSjNFTXM1WjMzdmxFV3F4TjZhM2ZsSjFvWEtZWlpTMHppK2xRajdLaVpn?=
 =?utf-8?B?dmMrUVZLd3ZTaDRpeHBFbmJPNEhDTXlUL3hTZndMSGNsNGJMcGpXNzdNckY2?=
 =?utf-8?B?MmlGSVpUVUJLTWthb0JYNWp6TEpiS2lRcUJER0RQZXByWWRNVXlhbzNyOGYx?=
 =?utf-8?B?VnVkSlB3Q1VlUFRRVUR5TElESllRVmdsblQwM1NnUWJGK0paand2MnNpZWxZ?=
 =?utf-8?B?SmtZbVJxOHdvNnJOUEh6bU1WN2g0YWdhM3BpVjMxdnA1dW5OeTFsUnBIaXRQ?=
 =?utf-8?B?NHpVRkwvcFM1MXVkTjQrakZ5d0pubjdKWW1IZ3ozSFRsQUhRSzVBMWx5WnpS?=
 =?utf-8?B?eTdqUkhQSXFJb1VoZi9acDk1N1JZblNkUUo0cWlWMFV3Z1dRRldJMlVESjhu?=
 =?utf-8?B?U0VuUFJjZFRSRDNQZ0VLMUJncFVFRXRNU09waytpTXpYUmdPOVdNZVpWWmpo?=
 =?utf-8?B?cEd6UUNIaE5EekxWR3d1dXJnOHFwTW5HZWg0OFp1VlM4L0tkVnBOTEpTOHZ3?=
 =?utf-8?B?L3dWZlNSb2loNFZMSDlkV1V0UWtwRSt6TU1kUEFWazFwZVI1bFFnWGZlU0Mx?=
 =?utf-8?B?YU00bVREc2NBbm0zWUZtOFp3aWQ1dkdzYnFUeWU1dE1QNVNZY2ZEU1p6ZUJ5?=
 =?utf-8?B?dE4xVFI0Mk0xYmFoWHY0RHM0OE9JeG9iNGJ4MDUwNTBPQVNzU3ZSOUcwS3Yy?=
 =?utf-8?B?ZUxrYXNTcG90ZWRkZ1hxY09mdUZwR0doNTRZcVZ3Z2dMb2ZtWlVoSVVueGlG?=
 =?utf-8?B?RVZQYUo5TmIrcC85a3VSUE43WXZSYVJyR2dxNzZ4STMyUVEyNXE5SHhrL3dh?=
 =?utf-8?B?czdWMy9CY01CeWkrclNPWmFaTGQ2N1Y0Qjk2ZWtLTk1ad2ZabDl4OVUvRGhQ?=
 =?utf-8?B?V3FiWG5qUGhSMENoNnJxWlZSSExBSzdnMittVXpGSDMvNnA4SWI2VXhjbWZt?=
 =?utf-8?B?blNhVVdnNk1NSUhSUEZqVEtHWm8wMDVTMjJacnlMMTlTd2wyRmsyL1VEbHdz?=
 =?utf-8?B?cytBdkxRNXNOak5RMElFQndTZGRXUVYzWGRLWjdnMVFKWVVuOXNnWFQ4N1Ex?=
 =?utf-8?B?Vi9DZzRrV2w2Y3RCNXRaT1ZjWDR4cFVxNjRvRG14cnp0cHlKOFY4VlBTNVpX?=
 =?utf-8?B?emdRY2pxU2ZWQVZ5b0F3SVlDVC9USGNodnZ3L3d0eFhuTXFqU2RnSUJRQ0NL?=
 =?utf-8?B?UDJETFd4a2UrTUtEdTJBT0pObkZEUUZOQlFYWGFSMlIrQXV3TTJ1ZmdyZFJ2?=
 =?utf-8?B?Y2ZkTGp3dmc3WTRPQ005YkRzL1UrclFWMjZ3dnQ0TmhlbUVhZTgyZy9oTjli?=
 =?utf-8?B?dHpoYTVxUXZUaEc2ak55K3BzOCtaRDU3SWxNaEg5OVBkUTFqdkFJTEphaFow?=
 =?utf-8?B?M2gxY0ppNGZmYU9SaEUzbFRrY1pxVTkraFh2T2JjOW9xaUZnbzRpTTd6TDNj?=
 =?utf-8?B?anExMldnaS9kc0x6aHEvbVl5bHZaVTVmUkVrQ1oxTWU5VExKS0l0VEMrTXdC?=
 =?utf-8?B?MGJkZjk4empMZXZNUXIwakt5WldnTGZsOXQ3U3NhTGlYYzNHSVNrOTZMTjAv?=
 =?utf-8?B?bGVGOHB2enFmM2pDckJpYk5IV1JGRDhGRW1PZC9kSVRFSDdxdmk4V2RXdm80?=
 =?utf-8?Q?Sl5I5fMMIWeezwcIDTO3JBvOEzQAUqcZZk1FQec+koHa?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a46d6da-d663-48d0-72ea-08da90eca01e
X-MS-Exchange-CrossTenant-AuthSource: DM5PR12MB1947.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2022 16:18:40.0940
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E1t7haCHM3M/HF/X5GEkzvC2s/BcGUiovV9pEYE2OV7SKkHWYmQsKcqL3bdz0J6pxxMYtUCDniVwrMt4WSTgRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB5762
X-MailFrom: Andrey.Grodzovsky@amd.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OPXPMP5255R3DFYE5CXF34CGSPXYD2DI
X-Message-ID-Hash: OPXPMP5255R3DFYE5CXF34CGSPXYD2DI
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:38:13 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/4] drm/sched: Enable signaling for finished fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OPXPMP5255R3DFYE5CXF34CGSPXYD2DI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAyMDIyLTA5LTA3IDAyOjM3LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBBbSAwNi4w
OS4yMiB1bSAyMTo1NSBzY2hyaWViIEFuZHJleSBHcm9kem92c2t5Og0KPj4NCj4+IE9uIDIwMjIt
MDktMDYgMDI6MzQsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gQW0gMDUuMDkuMjIgdW0g
MTg6MzQgc2NocmllYiBBcnZpbmQgWWFkYXY6DQo+Pj4+IEhlcmUncyBlbmFibGluZyBzb2Z0d2Fy
ZSBzaWduYWxpbmcgZm9yIGZpbmlzaGVkIGZlbmNlLg0KPj4+Pg0KPj4+PiBTaWduZWQtb2ZmLWJ5
OiBBcnZpbmQgWWFkYXYgPEFydmluZC5ZYWRhdkBhbWQuY29tPg0KPj4+PiAtLS0NCj4+Pj4NCj4+
Pj4gQ2hhbmdlcyBpbiB2MSA6DQo+Pj4+IDEtIEFkZHJlc3NpbmcgQ2hyaXN0aWFuJ3MgY29tbWVu
dCB0byByZW1vdmUgQ09ORklHX0RFQlVHX0ZTIGNoZWNrIGZyb20NCj4+Pj4gdGhpcyBwYXRjaC4N
Cj4+Pj4gMi0gVGhlIHZlcnNpb24gb2YgdGhpcyBwYXRjaCBpcyBhbHNvIGNoYW5nZWQgYW5kIHBy
ZXZpb3VzbHkNCj4+Pj4gaXQgd2FzIFtQQVRDSCAyLzRdDQo+Pj4+DQo+Pj4+IC0tLQ0KPj4+PiDC
oCBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyB8IDIgKysNCj4+Pj4gwqAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPj4+Pg0KPj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgDQo+Pj4+IGIvZHJpdmVycy9n
cHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMNCj4+Pj4gaW5kZXggZTBhYjE0ZTBmYjZiLi5m
ZTcyZGUwZTI5MTEgMTAwNjQ0DQo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIv
c2NoZWRfbWFpbi5jDQo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRf
bWFpbi5jDQo+Pj4+IEBAIC05NjIsNiArOTYyLDggQEAgc3RhdGljIGludCBkcm1fc2NoZWRfbWFp
bih2b2lkICpwYXJhbSkNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogRHJvcCBm
b3Igb3JpZ2luYWwga3JlZl9pbml0IG9mIHRoZSBmZW5jZSAqLw0KPj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KGZlbmNlKTsNCj4+Pj4gwqAgKyBkbWFfZmVuY2Vf
ZW5hYmxlX3N3X3NpZ25hbGluZygmc19mZW5jZS0+ZmluaXNoZWQpOw0KPj4+DQo+Pj4gT2ssIHRo
aXMgbWFrZXMgaXQgYSBsb3QgY2xlYXJlci4gUHJldmlvdXNseSBJIHRob3VnaCB0aGF0IHdlIGhh
dmUgDQo+Pj4gc29tZSBidWcgaW4gZG1hX2ZlbmNlX2FkZF9jYWxsYmFjaygpLg0KPj4+DQo+Pj4g
VGhpcyBpcyBlc3NlbnRpYWxseSB0aGUgd3JvbmcgcGxhY2UgdG8gY2FsbCB0aGlzLCB0aGUgZmlu
aXNoZWQgZmVuY2UgDQo+Pj4gc2hvdWxkIGJlIGVuYWJsZWQgYnkgdGhlIGNhbGxlciBhbmQgbm90
IGhlcmUuDQo+Pj4NCj4+PiBUaGVyZSBpcyBhbHNvIGFub3RoZXIgcHJvYmxlbSBpbiBkbWFfZmVu
Y2VfZW5hYmxlX3N3X3NpZ25hbGluZygpLCBpdCANCj4+PiByZXR1cm5zIGVhcmx5IHdoZW4gdGhl
IGZlbmNlIGlzIGFscmVhZHkgc2lnbmFsZWQ6DQo+Pj4NCj4+PiDCoMKgwqDCoMKgwqDCoCBpZiAo
dGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZmVuY2UtPmZsYWdzKSkNCj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOw0KPj4+DQo+Pj4gUGxlYXNl
IHJlbW92ZSB0aGF0IG9uZSBmaXJzdC4NCj4+DQo+Pg0KPj4gV2h5IHdlIGV2ZW4gbmVlZCB0aGlz
IGV4cGxpY2l0IGNhbGwgaWYgZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayBjYWxscyANCj4+IF9fZG1h
X2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcgYW55d2F5ID8NCj4NCj4gVHdvIGRpZmZlcmVudCBmZW5j
ZSBvYmplY3RzLg0KPg0KPiBUaGUgZG1hX2ZlbmNlX2FkZF9jYWxsYmFjaygpIGlzIGRvbmUgb24g
dGhlIGh3IGZlbmNlIHdlIGdldCBpbiByZXR1cm4gDQo+IG9mIHN1Ym1pdHRpbmcgdGhlIGpvYi4N
Cj4NCj4gVGhlIGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKCkgaGVyZSBpcyBkb25lIG9u
IHRoZSBmaW5pc2hlZCBmZW5jZSANCj4gd2UgdXNlIHRvIHNpZ25hbCB0aGUgY29tcGxldGlvbiBl
eHRlcm5hbGx5Lg0KPg0KPiBLZXkgcG9pbnQgaXMgdGhlIGZpbmlzaGVkIGZlbmNlIHNob3VsZCBi
ZSB1c2VkIGJ5IHRoZSBmcm9udGVuZCBkcml2ZXJzIA0KPiB3aGljaCB1c2VzIHRoZSBzY2hlZHVs
ZXIgYW5kIG5vdCBieSB0aGUgc2NoZWR1bGVyIGl0c2VsZi4NCj4NCj4gQ2hyaXN0aWFuLg0KDQoN
Ck9oLCBzbyB3ZSBuZWVkIHRvIGV4cGxpY2l0bHkgY2FsbCB0aGlzIGJlY2F1c2UgZG1hX2ZlbmNl
X2FkZF9jYWxsYmFjayBpcyANCm5vdCBhbHdheXMgdXNlZCBmb3IgZmluaXNoZWQgZmVuY2Ugcmln
aHQgPw0KDQpZZWEsIHRoZW4gaXQgbWFrZXMgc2Vuc2UgdGhhdCB0aGUgY2xpZW50IG5lZWRzIHRv
IG1hbmFnZSB0aGlzIHNpbmNlIGVhY2ggDQpvbmUgaGFzIGhpcyBvd24gbG9naWMgd2hhdCB0byBk
byB3aXRoIGl0Lg0KDQpBbmRyZXkNCg0KDQo+DQo+Pg0KPj4gQW5kcmV5DQo+Pg0KPj4NCj4+Pg0K
Pj4+IFRoYW5rcywNCj4+PiBDaHJpc3RpYW4uDQo+Pj4NCj4+Pg0KPj4+PiArDQo+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHIgPSBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrKGZlbmNlLCAm
c2NoZWRfam9iLT5jYiwNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX3NjaGVkX2pvYl9kb25lX2NiKTsNCj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHIgPT0gLUVOT0VOVCkNCj4+Pg0KPg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

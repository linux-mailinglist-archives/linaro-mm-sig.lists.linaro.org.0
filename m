Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DEC494B8B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 11:22:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06C593EDFB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 10:22:22 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2076.outbound.protection.outlook.com [40.107.237.76])
	by lists.linaro.org (Postfix) with ESMTPS id 2360E3ED7E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 10:22:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LuUJqUO+SkkiFrJ5UmJbTIwLkFy0qWa93/MbwxjKSwDLRllH74BdGxy426sF7moI7fZAiUCU9NOlhR/aW75vy7z6U9zQvj+O1V9H9fFXsl+098xk3MDVYRh2EO/SA3GRN8U7goOm0azKfmhNN1+VKhJh/hfyS5j3C0MZYUU3e1oRPSNyTn6R9GMMSHNvg8cu2fpn/EbfJWXUXbI1/meaQD4emWSPhru/A56gskewwwCEBHFaFZnnUTZokmELtPiNDf7rGljSX+8JiOPRRjz86OEwNs4WZgk7pNLTEHM0dlowAn+Bkro/4vhhgM73KF7cygQAsyD1UlSmQUwakEGEQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bj8Thr5BLOakDAxlIyQ5Y7HrJw/O7mA+mFWOJl8AowY=;
 b=L7DksRZb/prQqS1Mhp6tK7k/z56wH7sk6cso5WH2f11zVG7msSqXl/ezFdo714Du5ohR0wAv04qKqONQ0cFZlRt1Ktak1tGL1iKlgGpiluGAP5mxRXuLcKdLTpuUPESo/lg+Z4/bQq8mfWvlHRjwEgRjtMnss1obViVd0cwpFBXr9ZCJp0RFlaOsCytYKQbnQKwwvAZaHmzudndyEwsxMjx6m+vlJOSCoM3wworZ9vhfmtK3nmCON33K3nsB1iuPi/ngi5+cSqtp7snQWj5vmNev6YYbHYIAPKfH/3z9ynF/rJo+yNVGxPzgO5pVhNJUAAm2AZIIEK9ERV6hpSXiGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bj8Thr5BLOakDAxlIyQ5Y7HrJw/O7mA+mFWOJl8AowY=;
 b=LkXINhJOtpBdlSsI2NJtVZCXmkTiuo891Pjq0inh1NRoeb1sLkdnRX6jpQuaZU2+gavNESK/YvdtkYqUoS81o7HqocpbBob+9DM2zUxCngZAuHABJCdD04GlB1KZoZmSuw5liMw1T8Fo6LDwUx/BG8uEzhOObJPI1CznLf15Bzs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SN6PR12MB4672.namprd12.prod.outlook.com (2603:10b6:805:12::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.12; Thu, 20 Jan
 2022 10:22:18 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::b03b:7df9:d733:13b2]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::b03b:7df9:d733:13b2%5]) with mapi id 15.20.4888.014; Thu, 20 Jan 2022
 10:22:18 +0000
To: guangming.cao@mediatek.com
References: <20220120085259.98147-1-guangming.cao@mediatek.com>
 <20220120100036.99867-1-guangming.cao@mediatek.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <90bf495d-dbf6-cb0d-f54f-e0080b810f8d@amd.com>
Date: Thu, 20 Jan 2022 11:22:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20220120100036.99867-1-guangming.cao@mediatek.com>
Content-Language: en-US
X-ClientProxiedBy: AM6P192CA0078.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:8d::19) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 32982818-4275-453d-e497-08d9dbfebc61
X-MS-TrafficTypeDiagnostic: SN6PR12MB4672:EE_
X-Microsoft-Antispam-PRVS: 
	<SN6PR12MB46721D4AA0AEA708F45C23CD835A9@SN6PR12MB4672.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lqxzcFZc476bU/RzM/BjtPOlIDIBWCUtU+iJi6+8sZO7usmEOTHcbW3xWD9DDoJ+d3WeOeimtSAQSMEtUw369cspHMsZykpTTdd7WTMK7zJ2rvI5RSSSHdSAuB6LJSVDReQW9Ub9zGWD59B01riA8LUrn+bPvBsRhpjnuR3zo5gEtWqDsXFq44CrFvolQjfo9Go52r8Tu80hasv9xu6kRD6x9oi0+sG0dLDMdPZ/mVOHR8RjFK2x7epJopLDcEQjpELNlI4fOkApB1xG6bHQIfYJyjuBtlvxBCJUkg80/+CWIXzQ9ifEb6NfvNgNJRx7uruB9H7Srw67TbFGLNCz+wKys1tzJRIy7gXl2NnY2NN4H73jyU7gTV2LMkV9r8Zidht6xV3XFgkinkuMUM8Bl2eU6/ZILruujtcRhsQ463RKutLpLsVU0LAht9cvsOdCgNfin6+7ayrFLdqQDlKYTXKCwuM1/NbcS/k1YS2WjBEc6RMmB68KFB5PUbwzIcgbSP8QjILU5nL3Dy7REKYij7w07Nuo2mEW5R1SHTdLlcrHk6huO3aMn868/EGRmmat1cxKRc3UBeiyBRk48U4bv0fuZfZQe3IBbHlFYPDQZK/J0J2VG6DLfSVr3mEnOgj7TUAox/IoUPeUANknMWxtjbfkDmkKFPLDhkaMsHOeW3Or/+wvs0rOzQx8f7LTFpLYdbD77zJqOLyqiIsex/fXl2U7I51XMNktnalY3Qxaf3pbyrk7/1Th5lXwrWxhxBCf
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6916009)(36756003)(6506007)(6486002)(6512007)(8936002)(316002)(8676002)(508600001)(4326008)(186003)(7416002)(86362001)(31696002)(26005)(38100700002)(6666004)(66556008)(5660300002)(31686004)(66946007)(2906002)(2616005)(66476007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y0J2ZGdEZHhOb0dLaVhlTkJ3c0M0NzRMNTNKZ3JkSktUK2ppemV3MktURVVK?=
 =?utf-8?B?cW14VDZYVmt1eXYveW55TGpTR2Qvb0JkWWZySWdtK3lEdHh6ekVqSm5WM2or?=
 =?utf-8?B?Q3FhL2VQampxb1BqRVdkT0N1Z25OVktsZmwzWmpEemZqVGsrNk9MLzlic1dI?=
 =?utf-8?B?L3ZnUUdnR0U2TU1EUzljVUxiNnVWOEdFemNheXFodkZQTCsrRWhLS1dkTnB5?=
 =?utf-8?B?VTFVUGdXeVUrbjhmZk5YaHM1YlZjWWJCYW1pUUs0U2J3ZW1NcFBYRlhjcVZk?=
 =?utf-8?B?R0NLNkFFNHl6a3BrMDNuTjN5bUtEcWduOVp0SGJxRkhkQ1cvcEFwLysxQ01F?=
 =?utf-8?B?cldPdzdJSlRTTUw1Z2hOakVSblI1S2pDMW84Q2QwUjd2WHdWSm9pOXZ0Z3ls?=
 =?utf-8?B?dHNPdTYwR0RWa3BHQ3Q3VHpJeUFIZENueGNWTWhHZEVLTjc3bUJyeUZrNWt3?=
 =?utf-8?B?dzd4Q29KTlhONW0zc211Y1MwNkd1L0hmZEFFVmVXOFhVSEJRVGZvOHNvVHhh?=
 =?utf-8?B?aGkyTVpZMmFmOWpYR2h2MnExU0g2ejRnV1ZiTVRSZjd5TTZKbGFLZDBjdjh3?=
 =?utf-8?B?bDRPTm95VXhyV25lMzVNMEJXd2lCMDR1NnNVYUZYYWRxRXFab0tRL1BhWlN2?=
 =?utf-8?B?b3F2Q3RWZ2dheUp1a1JvdlhFMkI3TXh2ZFdlNmgvaWpmclRvcUpvcmpzVy9Q?=
 =?utf-8?B?R09kZFBzOUhrVjNlNHhFeTZ2NFZUcnhZQS9ySlcxZ1RhZGdWWEpkNTJsbUlM?=
 =?utf-8?B?azJ6Vk0ySUFpNGY3Vjc2MGpWRytKbERNK01kSCtUOEhzcTFiSWV6NjNSOFRp?=
 =?utf-8?B?clVXVXdObWFMY3pCM3I3eEl0Y2hhMU9LZHdjN2w1MFduUmhRZHNwbUEyL2pS?=
 =?utf-8?B?cFo0Z2p4NEgyVEk2cktkZkNDU1NwT2J3eU5PS0piODFPQ0VnVG1lOVF3OEgy?=
 =?utf-8?B?ZjlGTVU3MjduY3d1c08zaG0yZHdsek1ZSmZnWjNEbWg5RkVQSHFYOEU2WDVp?=
 =?utf-8?B?MXFUeHV4MnpwNXQ3UmlwRkd5N0FoQUNwZFc4bmxnaCtnOEVISGZUcDJnRklC?=
 =?utf-8?B?V1ZBQWRkVTk2K2JRYWRtZEdSdzM1RlJvU09SVSszYjljVnNsS0F6ZVp6S1gw?=
 =?utf-8?B?Rnk5Qmp6OHh5QVZxRU9ON1RUeEpobXhrV2ZEdDRydExyTHdKV2p4ZUtVQXow?=
 =?utf-8?B?dmVhWXB3YjRYVFNFZVE4YmVVNkRiSC9TYlljejY4T2dXNTA2M1ovQ2Z3c0pN?=
 =?utf-8?B?QVQrQVdqR3JpeFNTRitYK0JrWWQ5UDMydlpZYTAzYlhHdUtPK2pqZWNzYnNz?=
 =?utf-8?B?dkZwbjI5NjBBN3AwbEFqRDNSaUV6Tm1VN09mcVNyTzNrM1VOWU1qdE9YV3dU?=
 =?utf-8?B?TkdBU2lFSGxEa0k4ZnNHN3V3RGpCS1lXQTB3OUZBMWw3aTlnUXNhZW9iWlEy?=
 =?utf-8?B?N2JmdWoxTHFxZ1c2ZklOUE9pb2FBUy9ZTmZVVmllM1o4QVpNT0J5VHNVcEVL?=
 =?utf-8?B?ZFlzUUNESVF6WEhYUUJoUWxpMHZVbXFGTHNEcWRQRkZ6Z01ZNkx3bTRXRzFN?=
 =?utf-8?B?RjNlNkU1WGVDbjlVcjRyRDQzZVBndjFnZW5RWmxvYU5VNnRBa2xhMnkvaHRH?=
 =?utf-8?B?a2RnSCtLNjFxdGp4T3hqLzV6WFJ1YitnQ2tGZGVuREFtMEk3Yk55Yys3aWY5?=
 =?utf-8?B?TzRUeklWeUhaeGFFeHZrK0FhZjZtcDRIc0ZqblVpQzJhNk1ydEZkU2VlQ0xN?=
 =?utf-8?B?QTFibTAwZzBuNHZ1V1pEb0hsR0pQZWR2MkcyU0JFZllmTGdOc0NOMU1ya240?=
 =?utf-8?B?bTlXT1A0NmhrMUNQYitMWklEVkJmdnNxc0hjeU1DZHc5eUlKUTdaV3VOZzZo?=
 =?utf-8?B?T2pET3VnYzUzaEJCVlFvOEk1S2RjdkpuOHVWVXZSamtkNTFxS0VZeE5WOTdm?=
 =?utf-8?B?TjVSOU5vWG52Zk9IWEhBYmZTZTRCeXcwZ2YwSmgxajdOaWlmTjBRc2lYelN4?=
 =?utf-8?B?YW42bTBRM3gxclFGdmRNa0RKUE5CUGl6ckg0UjZ4d3BhalRSVnNuUjEzUFlV?=
 =?utf-8?B?T2dnV3hhL3FaYXM5T2lLM05MaUJtU3FjcWtYaGlaRHJtaUJVNkpHbzVlb2do?=
 =?utf-8?Q?BSNE=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32982818-4275-453d-e497-08d9dbfebc61
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2022 10:22:18.2093
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ms1hohte1qwfdHRYIOA6Iws6bP6AlOhJ7XcIFzZvCTHivIJlR/u5fxriQARp5LfW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB4672
Message-ID-Hash: CGLLVMAVBTQH5TKY3G5YNHXKKZ25PM6U
X-Message-ID-Hash: CGLLVMAVBTQH5TKY3G5YNHXKKZ25PM6U
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: benjamin.gaignard@linaro.org, bo.song@mediatek.com, caoguangming34@gmail.com, dri-devel@lists.freedesktop.org, jianjiao.zeng@mediatek.com, john.stultz@linaro.org, labbott@redhat.com, libo.kang@mediatek.com, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org, lmark@codeaurora.org, matthias.bgg@gmail.com, michael.j.ruhl@intel.com, mingyuan.ma@mediatek.com, wsd_upstream@mediatek.com, yf.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 RESEND] dma-buf: system_heap: Add a size check for allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CGLLVMAVBTQH5TKY3G5YNHXKKZ25PM6U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAuMDEuMjIgdW0gMTE6MDAgc2NocmllYiBndWFuZ21pbmcuY2FvQG1lZGlhdGVrLmNvbToN
Cj4gRnJvbTogR3VhbmdtaW5nIDxHdWFuZ21pbmcuQ2FvQG1lZGlhdGVrLmNvbT4NCj4NCj4gQWRk
IGEgc2l6ZSBjaGVjayBmb3IgYWxsb2NhdGlvbiBzaW5jZSB0aGUgYWxsb2NhdGlvbiBzaXplIHNo
b3VsZCBiZQ0KPiBhbHdheXMgbGVzcyB0aGFuIHRoZSB0b3RhbCBEUkFNIHNpemUgb24gc3lzdGVt
IGhlYXAuDQo+IEFkZGluZyB0aGlzIGNoZWNrIGNhbiBwcmV2ZW50IGNvbXN1bWluZyB0b28gbXVj
aCB0aW1lIGZvciBpbnZhbGlkIGFsbG9jYXRpb25zLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBHdWFu
Z21pbmcgPEd1YW5nbWluZy5DYW9AbWVkaWF0ZWsuY29tPg0KPiBBY2tlZC1ieTogSm9obiBTdHVs
dHogPGpvaG4uc3R1bHR6QGxpbmFyby5vcmc+DQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4gLS0tDQo+ICAgZHJpdmVycy9kbWEtYnVm
L2hlYXBzL3N5c3RlbV9oZWFwLmMgfCA4ICsrKysrKysrDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5
c3RlbV9oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYw0KPiBpbmRl
eCAyM2E3ZTc0ZWY5NjYuLmI2NWU1OTdhNzQyZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEt
YnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5
c3RlbV9oZWFwLmMNCj4gQEAgLTM0Nyw2ICszNDcsMTQgQEAgc3RhdGljIHN0cnVjdCBkbWFfYnVm
ICpzeXN0ZW1faGVhcF9hbGxvY2F0ZShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAsDQo+ICAgCXN0cnVj
dCBwYWdlICpwYWdlLCAqdG1wX3BhZ2U7DQo+ICAgCWludCBpLCByZXQgPSAtRU5PTUVNOw0KPiAg
IA0KPiArCS8qDQo+ICsJICogU2l6ZSBjaGVjay4gVGhlICJsZW4iIHNob3VsZCBiZSBsZXNzIHRo
YW4gdG90YWxyYW0gc2luY2Ugc3lzdGVtX2hlYXANCj4gKwkgKiBtZW1vcnkgaXMgY29tZXMgZnJv
bSBzeXN0ZW0uIEFkZGluZyBjaGVjayBoZXJlIGNhbiBwcmV2ZW50IGNvbXN1bWluZw0KPiArCSAq
IHRvbyBtdWNoIHRpbWUgZm9yIGludmFsaWQgYWxsb2NhdGlvbnMuDQo+ICsJICovDQo+ICsJaWYg
KFBGTl9ET1dOKGxlbikgPiB0b3RhbHJhbV9wYWdlcygpKQ0KPiArCQlyZXR1cm4gRVJSX1BUUigt
RUlOVkFMKTsNCj4gKw0KPiAgIAlidWZmZXIgPSBremFsbG9jKHNpemVvZigqYnVmZmVyKSwgR0ZQ
X0tFUk5FTCk7DQo+ICAgCWlmICghYnVmZmVyKQ0KPiAgIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01F
TSk7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=

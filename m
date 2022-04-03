Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E84F4F0A8E
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  3 Apr 2022 17:15:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33AD1402C6
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  3 Apr 2022 15:15:33 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2086.outbound.protection.outlook.com [40.107.92.86])
	by lists.linaro.org (Postfix) with ESMTPS id 674673EA2F
	for <linaro-mm-sig@lists.linaro.org>; Sun,  3 Apr 2022 15:15:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iWWpRvy+pd6tiSn8KXiut6L11Jgor9GikbztYJi2bG+ymX+hs3xlCO26uR0PnqPhBQ6yIrCeWenbyN7AX2L8f21VBbDOdgNU6pUnxJ0K5wHLDrTnnvCuZ/cbLS6I/wBoSwcovOB61XOCExL+TIhYoqNACLEb+n8HAAmUnm9vR5rCf5AnfMiJlEbb6kXBr5l74sU91/lP/2GEhEUZ6Yqv67Fp/joVTLb0YaJnjRSj1kYNJtBfvWcqkpLtED5OFSMevvdjPXVm35wNSZsWeTrklEXsiLADPJrb4YVw7cOFKo8JZkoC9EQv7ASchvQS6qGqgUwngwaZT/21gZ7GNRLKgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oSHBkU+uipFvU/YNZ7T67PZG/MNDrA0gnLuDOpLr0zk=;
 b=VvwHEdhqNSidHl6I28imPpoAhKoPDq3o3/ETz1B4DaxPsocEFJxz9aKJF8SAZJQDLQtcptGmNUSxnBmWk6k0BpXscssyNyfMrl7aqOMDBNaCq+OzHv4SGrl18fAuvjJs19vXsWYCrwfGOcLUrR3OsGaG8Xu8hvLwYDoDsdGUisa/irPDByJ3lqnpm8LR6CQ9jb1HijJOf31dxpdWr0gJs5mGtnPJtRvOuRhJUPArio0tTtZ+I9Al6Lme1e3X6BDBK08OmERNEf0ODPKUR/Q9XfpVVsRz6ptA8Qp3+OISDbGE3v81j94Cjjz25HWlr+/x+MDk15ZOyKYNMEDLLDtOQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oSHBkU+uipFvU/YNZ7T67PZG/MNDrA0gnLuDOpLr0zk=;
 b=OtFa17s/j4aopFVYn/wf9mCMxUm1Mn+qtTnQno1EcDD+3ynnzD7PON/TDCgrh6URkId/2mgkaG1qd632LiGofa0KjLDvjiwPU5A0+hiZXGqrM0CUmLdtwTDgNksR3sMhdsOkAcODrEqKGtQ0vIzRLGVpunaXakocc1jnGsMouEA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM4PR12MB5167.namprd12.prod.outlook.com (2603:10b6:5:396::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Sun, 3 Apr
 2022 15:15:28 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::404f:1fc8:9f4c:f185]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::404f:1fc8:9f4c:f185%6]) with mapi id 15.20.5123.031; Sun, 3 Apr 2022
 15:15:28 +0000
Message-ID: <f2291f9b-4480-9dea-7d8e-e9eb1ba6a1a2@amd.com>
Date: Sun, 3 Apr 2022 17:15:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Sui Jingfeng <15330273260@189.cn>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20220402134413.1705246-1-15330273260@189.cn>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220402134413.1705246-1-15330273260@189.cn>
X-ClientProxiedBy: AM6P192CA0024.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:83::37) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 782a4b00-43b1-4ed9-62ad-08da1584c80b
X-MS-TrafficTypeDiagnostic: DM4PR12MB5167:EE_
X-Microsoft-Antispam-PRVS: 
	<DM4PR12MB51676750369DBC538C17994E83E29@DM4PR12MB5167.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	u/00uTfLd44j621a0foBuLSNuA2UR29LSe7sX0xbHquSKrwJG+OixvdTOOjw3K44NF168XgxgCm3yzGxsredv+T6E93M8K/dQRFcQLyYqBUHXQwQ7L1US5Er5jxJFj003YhCDS8oJ19YOZz3jofAYbi2djsIzqc3S4hYvEZrReSozaAUWr+xA9roBzvv+kiyWrSqwUu0a6n03kHTqxkXgsCR0gnCj72c2HZo5CqV1OQDHBdp6qHhuj0ixR7wiOpbNeWufuv9UsZ19FD5KhTDtMRzy2ZYiDZ9Lm/Bkuzziz3hWoFz/l3Io/dSAldFHn0G3ulgWzD67yQKxzLUkVm4fkle64Ws8qBe7bdlUeKYgRYa3ydeTsfpA9km0Z2G4biFD3YeI5NMSb1h2jYcmIKF/79Biv0xIpYXi5d/snzdnhmXnZq0p7LsnLrV/95fTXANNKESUV+eDhPxKvRI2Sv9a3CRyBsKHehjXTTAvz1je1aQXVCq1x0IawWIhgDnm7ovaZ7Z5j0tpDH928eI8IcdODWe3AjITZMHjgcnVDYU4UNSpbPTkYBsCBxrasQGG4IxDm1eS8K0LIBigBnS8/Y//BoncXxguX9GiATNLAz4eEOO0DxfnGt2oD1iEUv95AxdY6R6QNsITza5koFgTLjLtP6L5UWCFLDqDFIhMpfBpENAvDbRs1QPKHD8Dlo69A/3SaDC+K1TElGicHQKJp+KdmL138FW1M/izLGc6qlK5Fw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6506007)(2906002)(316002)(110136005)(6666004)(31686004)(36756003)(8676002)(4326008)(66946007)(6512007)(66556008)(66476007)(83380400001)(5660300002)(66574015)(2616005)(38100700002)(4744005)(6486002)(86362001)(186003)(508600001)(8936002)(31696002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QmdTa2w3YUZxanAwd29CVFd1WUZ0UVVCME0wa3VMb0tLZ1ErNHBvOWN1R0la?=
 =?utf-8?B?SkQ5RTBTZ05JSjBYcEFydFU1UkdORWRUNW5BYVllN3IyK3FKSmhkNmh6T2I1?=
 =?utf-8?B?R1F1NkJNV1JrenI0ekcyN3c3MXZaRHRMK2dtbGo4L3hwSkgwZGR0MFJOUUJo?=
 =?utf-8?B?RkxGdHE0QkdyWGUzbzRTcDJZemFuall1R1RFU1VvcVhPOThZbTd2VnFVUmlJ?=
 =?utf-8?B?RmNXTVBiTk9sQk5MRTFKMjhPd2pCOWZMTU5ROHo3Yk9TdFZ5L0RyeW4zVnFP?=
 =?utf-8?B?TjU1ekk0MklPOSt6eUZTbW0zVFEvK1FldmhncjRUbzh4N0M0UHhCc3o3dk9s?=
 =?utf-8?B?NGNISXowNGlUYmlVNWJNYnNYc216WGJ6bTd5L1dDcDRhUVZHcUhhRTVob0Nk?=
 =?utf-8?B?cWh0MXNGdGx0bGxOSzFYSnBwL2g5eGhkUDJRRU9VWjJFejFxelZtaWNvVnAz?=
 =?utf-8?B?RWkrcmFqYjBKenUxNmVUTW42eU5iOENXSTVHRy9pMHh2STcyL0VvUFRvcXhK?=
 =?utf-8?B?M2xKUUVzMkZVOEQyWW5vVENTWUlUQUJKUWRIMjU3eXVYaFhFWFRHWXhrT0Fm?=
 =?utf-8?B?QkVWNGRqSWJaeEtVOFFMUDROSzdPSTA3SUxFRjMyUGwxQ1RuMTduS1BZaW9N?=
 =?utf-8?B?LzBsN0hsVnNkdTdxZ2tUSytPZTMwaUYvZUFPNUxnZzIycWpRbXVMR0gyQ3Bl?=
 =?utf-8?B?cUg1RkJWamh4NDZJUStPb29BNGQ5ZmJtMnA0Zml1NjdYdnF1WkI4ZnVPMWVR?=
 =?utf-8?B?TzBjNHR1OGtRR0ZzN2V4bnZBK1F0YmJYZ1Q4cHNRNzZLYTBYeldwS1dXb3NX?=
 =?utf-8?B?L1hNNTZSZmg4U1NMUTZqamEwOTFmSXk1VFYwTVFqdGNTblVBK1FSNEppL0lS?=
 =?utf-8?B?SkhPREhnbGFLZ1ZtdkE1WHdHbVk3WTl2MjQyZWMxMXIyelhEc0d4b1N6bmpw?=
 =?utf-8?B?Ni9MUUxHeTFqM0kzdDVETFlpSm96MDdVaDhrK3FieDAzMUI3SjUrVzUxK2Jv?=
 =?utf-8?B?OVk3RllBLzNDcGk5TFdtanFoVUorOXQ4VHgvYVJWY0tMRVM0VU9mNXgzc3dV?=
 =?utf-8?B?eWRpbnVQRU51NUtUYXMwS2VQMFF2SVhIRmF3WVdIMTNxMEgvYjJpSlRqQUdO?=
 =?utf-8?B?OGNHTzBxaXNULy8wZjZ0RkJEWVE5Vmx1T0cxVUZZK0Z3dW5GaVBodWwxN1Fq?=
 =?utf-8?B?MEI3dXZwQ2lkejlyWXhMdElJNzNLaDQzSEU0R1IxS0Q0K0xYeUozOE1QcHV6?=
 =?utf-8?B?czNCSDNNN3c5d3FucGJkR29LemRYdWJwbndxTHRkT2J4ZVZ1UVhqRnFrck45?=
 =?utf-8?B?T2tnUE41UGJqRUV4UXBhdVd1VEVoakxSN0ZQOThSTGZxRkVuRE9KWW93NlRp?=
 =?utf-8?B?UWM0YWYxY2cvbW1vdWc1Q0I4WDEyZnpIT2JIZ1psSFNoVEtCZ0NsRFFlWXVt?=
 =?utf-8?B?dEFORkI1MnJ0TWMzdDEwdGdta1RpS0plRzhaZ3dYSG9zc1hnMHJNYzh3TUVz?=
 =?utf-8?B?U3Y2RHVaVi9mTEVVSjYwZDlCY3ptWThSZ0RPM2NVL0l1bDg2YkhQdUpWMmhC?=
 =?utf-8?B?TmEwVkZZQnRhRU11THlaK0xza3VRRWRCcXVpRjZPamtmRmtDc1FJUFhJRjN3?=
 =?utf-8?B?QXlodmZtQmFiMVVjTkJCRHhNQlNjTFg1SmZFY0F1cmFZbkpvcVNsUmlxWWM2?=
 =?utf-8?B?TytUYmY5MzVQalcwclZUSktaYXJvRjNZRXpPYjlMdzZGdWlhNWUzU0ZLQ0Iw?=
 =?utf-8?B?L08zdmdCY21mMjFnSkdKMk1SczVNVU9zMlpPTUdLd21jTnVuSGZ1SWhTZXBp?=
 =?utf-8?B?Qlo0bEV1RmZ6VHViNWtDS01ocHZVYmlxK0FNSEE0Mi9jSHhaWGdmSWYxTjBq?=
 =?utf-8?B?Ujl6Z1UraHFWMWhCTzZHcEJyam40UFE5UmVqckVoRVc3bkcya3U1VVdyZ0Vo?=
 =?utf-8?B?djdpcXBnM3FWRHpLNkpISnFlSG5PM0FVdXRldTcwVmpIZXFUeXBwc2toSjFh?=
 =?utf-8?B?TzhwSG8vOFIxdGhkV2R2SU45dnZhUjlmcWJWcjdZVUppaHRlT0JFVGlJOW1t?=
 =?utf-8?B?SmNrdXVXYkx6d2JpTE1aeEZrcHYxbDE0WVlEVVhiMmJYdEJNRi9mb3BubG9t?=
 =?utf-8?B?U3RLbXc3TlIrYUVxZWp6RVFSQWVMOFAwM0h1emFCeXBMTkpDdEx6M01Jalcv?=
 =?utf-8?B?ZXdYL0ZBRkg1Rk1TOXlRWXFEUUlTamtJZytSUkRFNU1KOWVId1E3UmJnS0RU?=
 =?utf-8?B?ekNRNG05VDV6ZlE0WmJsa3IvQzNwa0w5ZHBoVEN6amdWVU90elBFdFV5S20x?=
 =?utf-8?B?bmNrcWhGa0svSUVQSmpjaW5OUHM4cHBKbU44NlZtaXd0QWtqdFhzeEpKd2U2?=
 =?utf-8?Q?ETRG7eUR/cukp3cGfoOI3WWXO8ZMd4Gcsl/hw/PfrdrTt?=
X-MS-Exchange-AntiSpam-MessageData-1: 6Cd97T9pC5U3+Q==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 782a4b00-43b1-4ed9-62ad-08da1584c80b
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2022 15:15:27.8651
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MFVLHzn54XknI6ySA6eI+cQKeY9EmW0jneWQ2/7mF3nlLizlmku+20FqUaOkaBwQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5167
Message-ID-Hash: IF2VQQN2DUEWVZKT3YZOZ4X6GGPWTIYH
X-Message-ID-Hash: IF2VQQN2DUEWVZKT3YZOZ4X6GGPWTIYH
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drivers/dma-buf: dma-buf.c: fix a typo
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IF2VQQN2DUEWVZKT3YZOZ4X6GGPWTIYH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDIuMDQuMjIgdW0gMTU6NDQgc2NocmllYiBTdWkgSmluZ2Zlbmc6DQo+IFNpZ25lZC1vZmYt
Ynk6IFN1aSBKaW5nZmVuZyA8MTUzMzAyNzMyNjBAMTg5LmNuPg0KDQpSZXZpZXdlZC1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiBhbmQgcHVzaGVkIHRvIA0K
ZHJtLW1pc2MtbmV4dC4NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+IC0tLQ0KPiAgIGRyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiBpbmRleCBkZjIzMjM5YjA0
ZmMuLjc3NWQzYWZiNDE2OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
Yw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+IEBAIC00NDMsNyArNDQzLDcg
QEAgc3RhdGljIHN0cnVjdCBmaWxlICpkbWFfYnVmX2dldGZpbGUoc3RydWN0IGRtYV9idWYgKmRt
YWJ1ZiwgaW50IGZsYWdzKQ0KPiAgICAqICAgIGFzIGEgZmlsZSBkZXNjcmlwdG9yIGJ5IGNhbGxp
bmcgZG1hX2J1Zl9mZCgpLg0KPiAgICAqDQo+ICAgICogMi4gVXNlcnNwYWNlIHBhc3NlcyB0aGlz
IGZpbGUtZGVzY3JpcHRvcnMgdG8gYWxsIGRyaXZlcnMgaXQgd2FudHMgdGhpcyBidWZmZXINCj4g
LSAqICAgIHRvIHNoYXJlIHdpdGg6IEZpcnN0IHRoZSBmaWxlZGVzY3JpcHRvciBpcyBjb252ZXJ0
ZWQgdG8gYSAmZG1hX2J1ZiB1c2luZw0KPiArICogICAgdG8gc2hhcmUgd2l0aDogRmlyc3QgdGhl
IGZpbGUgZGVzY3JpcHRvciBpcyBjb252ZXJ0ZWQgdG8gYSAmZG1hX2J1ZiB1c2luZw0KPiAgICAq
ICAgIGRtYV9idWZfZ2V0KCkuIFRoZW4gdGhlIGJ1ZmZlciBpcyBhdHRhY2hlZCB0byB0aGUgZGV2
aWNlIHVzaW5nDQo+ICAgICogICAgZG1hX2J1Zl9hdHRhY2goKS4NCj4gICAgKg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 786A6361E85
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Apr 2021 13:21:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8BE3D667C3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Apr 2021 11:21:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7D46D667C5; Fri, 16 Apr 2021 11:21:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,RCVD_IN_DNSWL_HI,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CC47667C4;
	Fri, 16 Apr 2021 11:20:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5C811667BD
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Apr 2021 11:20:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 50BBC667C4; Fri, 16 Apr 2021 11:20:37 +0000 (UTC)
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-eopbgr760042.outbound.protection.outlook.com [40.107.76.42])
 by lists.linaro.org (Postfix) with ESMTPS id AC984667BD
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Apr 2021 11:20:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AuB05X1p8GnmUN3AKixbetRjCfMjTXpyF2nK4Zny2PW9Cdqwvml39FkXNhqQ1Z6OvjMFDe+/pJYrBb22k9USKkhkFkHZ0OChDPhZ1IoDfyfWI6tkOIcIL6PQhKGjReWZEPa+fAbtpg3RH5G3jk4UD7wQQ2zEB96CKeUyzOVlzKM/gwzWFkWRy6Ziqdzzx7fu7XTo22P4wOdhVTESodLpRfXKMe5/QLnkWzbIPVVXBbSe+iLd7SibTKqIJTws1pZz3NGDXbB36X7USxVySWljCVias9K8AM6i+RlMGiI4xGmmHhYOEalb3yWl66LgKkX0XWUV1D+145oNtfh69ZzdWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6mzaq5SeSQBT5kv4GH+0TEnHBYy73Gx2xYZhGu5Kixk=;
 b=M/ww9RywIo61AkU9ns51AkXr3VN1/U51sPynDknyn/An1ttDzHHosf6KXIrBz3oskjoUSfQ5c5Mm26QibfyjTkGGguto6TMx4Gjt4h3UE+pa5NZGtXYq3CsV93As/c59GcXS1esAjWplcEHV7JV+ksxFaZnxIpJATEGCgn5svrpVspjb0/+i3Jwztcx8YCS+KTaL72sJN8AkN4A5c355xk8+Bcg8KMkk79t6aD6zWYGQ9Y7QKMglJv79CwjaxWZld0fNj6ZXkihi7L7sb7jh6IRUv2vKCmr+KYAGz+Zx0cQIrGT37mn08NjmG46wb8t5r//M3f2MLDXZGbD89aO9Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4061.namprd12.prod.outlook.com (2603:10b6:208:19a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.18; Fri, 16 Apr
 2021 11:20:33 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4020.025; Fri, 16 Apr 2021
 11:20:33 +0000
To: Peter Enderborg <peter.enderborg@sony.com>, linux-kernel@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Muchun Song <songmuchun@bytedance.com>, Roman Gushchin <guro@fb.com>,
 Shakeel Butt <shakeelb@google.com>, Michal Hocko <mhocko@suse.com>,
 NeilBrown <neilb@suse.de>, Sami Tolvanen <samitolvanen@google.com>,
 Mike Rapoport <rppt@kernel.org>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20210416093719.6197-1-peter.enderborg@sony.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <8287166c-6899-e723-ac2c-fa49f5a69a5a@amd.com>
Date: Fri, 16 Apr 2021 13:20:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210416093719.6197-1-peter.enderborg@sony.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:7856:2ddb:903a:d51a]
X-ClientProxiedBy: FR3P281CA0041.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::17) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:7856:2ddb:903a:d51a]
 (2a02:908:1252:fb60:7856:2ddb:903a:d51a) by
 FR3P281CA0041.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:4a::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.6 via Frontend Transport; Fri, 16 Apr 2021 11:20:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f8ae867c-150d-47cf-ceeb-08d900c9a668
X-MS-TrafficTypeDiagnostic: MN2PR12MB4061:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4061970851174207E4BB0BCB834C9@MN2PR12MB4061.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G5khstJqHPlAvdbbkdLR9XBzvi4CGwwqsDHJ5lbDnxLQJZFsc0KLgCK7mS/H4TK4eSyh76olwWf8FKU4NzhBXQer6jimsy3MRT9oqXPPtPsyPy+OFtFVmmnUE6iPLwL2DkacSmKWmblKZ5QkJZiIE4IAFv6KY8KZ0kdCnFiS7ngvtHhCh3tFZ7sIREwbbb/hfX3M80Y4EaliuCOe3hYwY2cW4KS4lmdz7XXezSDysS/sJXW8tgTNNOiOgu1VjSPIKmOYcLF9caLY6JCDusIFzRCWoJ+BB8TcWb0PxOMx0/50F89d1bYJne+CJ76HEqMkiOy7Zs6HDqPl6hA7e4oLMRmJuLmgK3RREy76G16mRsiAv6rDWpZyMtSe2G/lMb9+TXOinBZJYzapxOLYQrnII3gj72aHmoIGmBJO2C+Iv1ODx5WKSnp54jUz2hw6cV7vbeLug1eiLjswLGC/I69ud7Fzaj+FJvSyFiUQiFgPhEFZOeO6Nk4YoajvnSwCVwvfC9iyoGjBFV3xX5mrxUOQ2IdUj2qpvazraYij7o5w1DmE0BnLM19+I3x+/Rby2qTRvg0/RHdLssn5I9tGQOJnH753vFFFM4WvxhPxZHqyArxIGTlNG0nN4issiXKw9ETMgslgDoVDl1uVh6nULTKko4ISiEnUp4q35GYVw12SzEnJwy5SL02MAhdfppqZEKZ4T1+hlTucY3d5htV4NwvYKw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(346002)(366004)(39860400002)(136003)(6486002)(2616005)(8936002)(66556008)(16526019)(31686004)(2906002)(110136005)(478600001)(66946007)(8676002)(66476007)(6666004)(83380400001)(31696002)(5660300002)(36756003)(7416002)(52116002)(38100700002)(86362001)(921005)(186003)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?SWFjL0tIZnZibk1GNXNnOEQ5R3Y0bkY0KzJkeFdIbDdkamdDZFpidyt2L0lr?=
 =?utf-8?B?eitzVlhlaEdSakp6SWdsN1NzYUhocW8vN2JDU1RLK0JaTU1wbENxaTJYQkQy?=
 =?utf-8?B?dkNoaGwxMmpCRzIwL0RoVVZ4dHZDbGQ1c09iajFGc1JtVHd4MXFSaDllZHAz?=
 =?utf-8?B?cFpxZjc2d3ZOVjN0VW9mYUt5SFZNUVZxSXVsUU8wU0FaRGhTbkIvN2ptL1c1?=
 =?utf-8?B?Mmo4cjJVcVVOQmx5RklSblBFUDRtVDY5RXRrOTYyejQ0RU8zdXpoSnpjeWRK?=
 =?utf-8?B?cGNFSFJZS21uV2hTZFhzYUN0ZHFWRE9sTzBOcCtPYWFYUDhqdlFuUG5VQ3NT?=
 =?utf-8?B?MUdmSHpubEcrK014WTYrS2RUcmlLdUR5MUVkRW5Fc2RlT3d2djBYZ1dmTTRw?=
 =?utf-8?B?czFoQU90ckpEQjF6YkRJOUpjbDcxYjE1TTV3UFZzWXpiRVBFU29QNTlTMDBQ?=
 =?utf-8?B?QVFFazlvbzZQNjFmcU1JUGNWZ0I4WldkcDcyZDBzcGdLVlY4dXZmd2YzRXIx?=
 =?utf-8?B?cXlEbTJyeDJjOVlnK3Rva2xhYUFWSkhYOFREd1lWVFBJZjRvNVVQZllTZ0JL?=
 =?utf-8?B?NWZiUGZyMHNhQU9JRG9YNEt6L2REbzIxTlFINDdVQWdYZUhIOVdTNWhWRTI1?=
 =?utf-8?B?NzJZaXJxV2VGOXExcnQ0a2ZhbnhlTGtjTE81bElvVUtVMDM2QTZIMHBRNmZU?=
 =?utf-8?B?eFZJS1ZlTURyUG13RlFQMjVIMkdlQmZOWGlHem11TE1HbEczakRuOHB3QzBF?=
 =?utf-8?B?MHA3TVNXci9CTjdLQmoxWStaeFRjYWRXTUphTlg4OThWZmtkRUVCSlpTYzZP?=
 =?utf-8?B?a0N0anlDRGpDQXdCRFJuOXhqelpyZVhuOE5sWlZCQ2t3eU5IVWFXL0xTclBm?=
 =?utf-8?B?c21OQ0JjaTJvYnd3UmRKKzVuZmdoSEtwazAzQTE0d05EWjE3MEpoQThEN2lL?=
 =?utf-8?B?d0JVTjRBZHNOOVZ3TkJla083cytIb1ZQUHB6bXRTRkd5dmd0c3Q0aEhCSUNR?=
 =?utf-8?B?bEZIMUZhM0lvTWdzV0FkWnJLN2VKbjRFWEt1UlBnbVFRYWViTWdKVk9PU1hu?=
 =?utf-8?B?S2hmbkk1Y2dmeW1Uclo5VTRVc0k1ZkRlU1ZXSFdza2V2WExTTkFXNWZHQ3F6?=
 =?utf-8?B?TWhGMlQ3bkdOYlNRYlB6ZC83UXpiZ3JlcDRTTHMyc2d6MkRYUXBTK0UyeG1v?=
 =?utf-8?B?S1U1a0hkdjVVYUhvQytmSDhmUjBLTDJNQ0JKYkRXR0ptQ3VhbWlrbGs5UWZW?=
 =?utf-8?B?RDQzNUZNSDB5VXB3U0dCWWFVUnd2TGQ4UGlPT3YyNXl6T1lmVFNSQ3pQaHFB?=
 =?utf-8?B?dzFzNDdiVHpSK09uVDF6QWQ4M0hpcFB2ZmlQRFFWOVpuRzVWYlRVU2tId3VL?=
 =?utf-8?B?WG4xSkRrYlArRzVvUWwyTS9IYVJWYmlIWllEZEszZy9XRStHOXErdjBGT0xQ?=
 =?utf-8?B?UzUwN3diQVJQRmJtK2xZaTFNZ0NjUTFJQ3ltM2RQdEUzMGlmMk9PM29oOWc3?=
 =?utf-8?B?UHdta0xjM0ZHT2VidkEyN3I5UkZ1VWpPNXlBeTNnRW5wakttUzY1ekZGVWxQ?=
 =?utf-8?B?T3B5a0ptK0VjRk1jc1RTZEZlUXdUVWFjQTB0VXIwMXlvbTBuY3VzV3I4eWpB?=
 =?utf-8?B?bHByUkhkRCs3aGJBUGZRWTVMRHBwbytTTDFpb2RCelZmZHVrSllVaGdNNUFk?=
 =?utf-8?B?amNMVkF6ZUR5cnhuS0FYNjNDcGpkcHFFSUtLUFY0ZWtVZmIxeWhYbkNiNXNO?=
 =?utf-8?B?TzAvUTVEMVRETkhuQWJUZU1sQkxhaUdCNjZFSU04MCt4YytNNG9QY0ZSQm5F?=
 =?utf-8?B?YWQxcTBmUHVsSXVrWllMNzY5N1ZuWC81ekNXL0hxZFExRXg4UUNNZGRkWWxj?=
 =?utf-8?Q?2cZAxZZCl+uFp?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8ae867c-150d-47cf-ceeb-08d900c9a668
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2021 11:20:33.1547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 51kcxp732LwamsuH57SFigPXxKyYiAm2fAalxVgXuj0FFVlyp7zyiJMDBG/K2oAX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4061
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Add DmaBufTotal counter in
	meminfo
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTYuMDQuMjEgdW0gMTE6Mzcgc2NocmllYiBQZXRlciBFbmRlcmJvcmc6Cj4gVGhpcyBhZGRz
IGEgdG90YWwgdXNlZCBkbWEtYnVmIG1lbW9yeS4gRGV0YWlscwo+IGNhbiBiZSBmb3VuZCBpbiBk
ZWJ1Z2ZzLCBob3dldmVyIGl0IGlzIG5vdCBmb3IgZXZlcnlvbmUKPiBhbmQgbm90IGFsd2F5cyBh
dmFpbGFibGUuCgpXZWxsIHlvdSBhcmUga2luZCBvZiBtaXNzaW5nIHRoZSBpbnRlbnRpb24gaGVy
ZS4KCkkgbWVhbiBrbm93aW5nIHRoaXMgaXMgY2VydGFpbmx5IHVzZWZ1bCBpbiBzb21lIGNhc2Us
IGJ1dCB5b3UgbmVlZCB0byAKZGVzY3JpYmUgd2hpY2ggY2FzZXMgdGhhdCBhcmUuCgpDaHJpc3Rp
YW4uCgo+Cj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgRW5kZXJib3JnIDxwZXRlci5lbmRlcmJvcmdA
c29ueS5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMTIgKysrKysr
KysrKysrCj4gICBmcy9wcm9jL21lbWluZm8uYyAgICAgICAgIHwgIDIgKysKPiAgIGluY2x1ZGUv
bGludXgvZG1hLWJ1Zi5oICAgfCAgMSArCj4gICAzIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlv
bnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYwo+IGluZGV4IGYyNjRiNzBjMzgzZS4uOWY4ODE3MWIzOTRjIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiArKysgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jCj4gQEAgLTM3LDYgKzM3LDcgQEAgc3RydWN0IGRtYV9idWZfbGlzdCB7
Cj4gICB9Owo+ICAgCj4gICBzdGF0aWMgc3RydWN0IGRtYV9idWZfbGlzdCBkYl9saXN0Owo+ICtz
dGF0aWMgYXRvbWljX2xvbmdfdCBkbWFfYnVmX3NpemU7Cj4gICAKPiAgIHN0YXRpYyBjaGFyICpk
bWFidWZmc19kbmFtZShzdHJ1Y3QgZGVudHJ5ICpkZW50cnksIGNoYXIgKmJ1ZmZlciwgaW50IGJ1
ZmxlbikKPiAgIHsKPiBAQCAtNzksNiArODAsNyBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3JlbGVh
c2Uoc3RydWN0IGRlbnRyeSAqZGVudHJ5KQo+ICAgCWlmIChkbWFidWYtPnJlc3YgPT0gKHN0cnVj
dCBkbWFfcmVzdiAqKSZkbWFidWZbMV0pCj4gICAJCWRtYV9yZXN2X2ZpbmkoZG1hYnVmLT5yZXN2
KTsKPiAgIAo+ICsJYXRvbWljX2xvbmdfc3ViKGRtYWJ1Zi0+c2l6ZSwgJmRtYV9idWZfc2l6ZSk7
Cj4gICAJbW9kdWxlX3B1dChkbWFidWYtPm93bmVyKTsKPiAgIAlrZnJlZShkbWFidWYtPm5hbWUp
Owo+ICAgCWtmcmVlKGRtYWJ1Zik7Cj4gQEAgLTU4Niw2ICs1ODgsNyBAQCBzdHJ1Y3QgZG1hX2J1
ZiAqZG1hX2J1Zl9leHBvcnQoY29uc3Qgc3RydWN0IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4cF9p
bmZvKQo+ICAgCW11dGV4X2xvY2soJmRiX2xpc3QubG9jayk7Cj4gICAJbGlzdF9hZGQoJmRtYWJ1
Zi0+bGlzdF9ub2RlLCAmZGJfbGlzdC5oZWFkKTsKPiAgIAltdXRleF91bmxvY2soJmRiX2xpc3Qu
bG9jayk7Cj4gKwlhdG9taWNfbG9uZ19hZGQoZG1hYnVmLT5zaXplLCAmZG1hX2J1Zl9zaXplKTsK
PiAgIAo+ICAgCXJldHVybiBkbWFidWY7Cj4gICAKPiBAQCAtMTM0Niw2ICsxMzQ5LDE1IEBAIHZv
aWQgZG1hX2J1Zl92dW5tYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRtYV9idWZf
bWFwICptYXApCj4gICB9Cj4gICBFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX3Z1bm1hcCk7Cj4g
ICAKPiArLyoqCj4gKyAqIGRtYV9idWZfZ2V0X3NpemUgLSBSZXR1cm4gdGhlIHVzZWQgbnIgcGFn
ZXMgYnkgZG1hLWJ1Zgo+ICsgKi8KPiArbG9uZyBkbWFfYnVmX2dldF9zaXplKHZvaWQpCj4gK3sK
PiArCXJldHVybiBhdG9taWNfbG9uZ19yZWFkKCZkbWFfYnVmX3NpemUpID4+IFBBR0VfU0hJRlQ7
Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2J1Zl9nZXRfc2l6ZSk7Cj4gKwo+ICAgI2lm
ZGVmIENPTkZJR19ERUJVR19GUwo+ICAgc3RhdGljIGludCBkbWFfYnVmX2RlYnVnX3Nob3coc3Ry
dWN0IHNlcV9maWxlICpzLCB2b2lkICp1bnVzZWQpCj4gICB7Cj4gZGlmZiAtLWdpdCBhL2ZzL3By
b2MvbWVtaW5mby5jIGIvZnMvcHJvYy9tZW1pbmZvLmMKPiBpbmRleCA2ZmE3NjFjOWNjNzguLjNj
MWE4MmI1MWE2ZiAxMDA2NDQKPiAtLS0gYS9mcy9wcm9jL21lbWluZm8uYwo+ICsrKyBiL2ZzL3By
b2MvbWVtaW5mby5jCj4gQEAgLTE2LDYgKzE2LDcgQEAKPiAgICNpZmRlZiBDT05GSUdfQ01BCj4g
ICAjaW5jbHVkZSA8bGludXgvY21hLmg+Cj4gICAjZW5kaWYKPiArI2luY2x1ZGUgPGxpbnV4L2Rt
YS1idWYuaD4KPiAgICNpbmNsdWRlIDxhc20vcGFnZS5oPgo+ICAgI2luY2x1ZGUgImludGVybmFs
LmgiCj4gICAKPiBAQCAtMTQ1LDYgKzE0Niw3IEBAIHN0YXRpYyBpbnQgbWVtaW5mb19wcm9jX3No
b3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp2KQo+ICAgCXNob3dfdmFsX2tiKG0sICJDbWFG
cmVlOiAgICAgICAgIiwKPiAgIAkJICAgIGdsb2JhbF96b25lX3BhZ2Vfc3RhdGUoTlJfRlJFRV9D
TUFfUEFHRVMpKTsKPiAgICNlbmRpZgo+ICsJc2hvd192YWxfa2IobSwgIkRtYUJ1ZlRvdGFsOiAg
ICAiLCBkbWFfYnVmX2dldF9zaXplKCkpOwo+ICAgCj4gICAJaHVnZXRsYl9yZXBvcnRfbWVtaW5m
byhtKTsKPiAgIAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1
ZGUvbGludXgvZG1hLWJ1Zi5oCj4gaW5kZXggZWZkYzU2YjlkOTVmLi5mNjQ4MTMxNWEzNzcgMTAw
NjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4
L2RtYS1idWYuaAo+IEBAIC01MDcsNCArNTA3LDUgQEAgaW50IGRtYV9idWZfbW1hcChzdHJ1Y3Qg
ZG1hX2J1ZiAqLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKiwKPiAgIAkJIHVuc2lnbmVkIGxvbmcp
Owo+ICAgaW50IGRtYV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1h
X2J1Zl9tYXAgKm1hcCk7Cj4gICB2b2lkIGRtYV9idWZfdnVubWFwKHN0cnVjdCBkbWFfYnVmICpk
bWFidWYsIHN0cnVjdCBkbWFfYnVmX21hcCAqbWFwKTsKPiArbG9uZyBkbWFfYnVmX2dldF9zaXpl
KHZvaWQpOwo+ICAgI2VuZGlmIC8qIF9fRE1BX0JVRl9IX18gKi8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

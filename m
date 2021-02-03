Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6887330D4A0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 09:06:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E781609A8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 08:06:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 20C8C60C34; Wed,  3 Feb 2021 08:06:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8585061081;
	Wed,  3 Feb 2021 08:06:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 54CDF609A8
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 08:06:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3839A61081; Wed,  3 Feb 2021 08:06:13 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2076.outbound.protection.outlook.com [40.107.94.76])
 by lists.linaro.org (Postfix) with ESMTPS id 36D4F609A8
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 08:06:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TFKyI7ITqPi1c2Lh1oHWlzGlp29fH7qHFHflQLPJ2W64baMO9YJK0g5SgSyYaOgf8yD1nIHsPPMT7o7yRV9YSzHjATz4piL6aEvvTiRxsO3O5X4Kizlsv1nWR4NPfqFrvYqa46e1AuVUGKdQh8Jdv+2+JHUTFlE70x1JhxQLqVQGzMa81MUJ2lmkfV/v/vLQ9LV4aSJHqJf3I6f8vYuA7tnQ0aL6jZkzhCrqCUxcs1xeXVKKRc45b16gum1ix2hWdAHmvyFHZt85jHvMj1lNAETjpesHMgQubkPpTqPf9U+lFW/XKMDJspto5VR3JDa4zKt/Lxc02MoAkpCFukwhJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e8CeD//g3xEEY+xtR5NSL5rmoGxSpgvSTVlSIold9HM=;
 b=YyUM21kjusPHq4Fy96HYvP1Z6N60YOziuQ2CNY3VKnQYAZhSZaYMAstvXVU8+VFISEd+5DPfX36dBzpgF+OCiCISkocn/HRCY5rCumcaBBtkgVEnnTjCHYM68djQWXe609Ap+kTr7g29ro1hYvwxMG1DcNg8/fk9NjbOvNUim1pCqd2XqquNxAPTzeWWpx6WzKyhTuowE17yXBe28YTNQuNQOyIpUAv1kIagMAve7vMA9eZmUSzLVZczNM+0UEzM2kI8qsB4eXHEK/gokDvkt0ZVfCAou407FwnXj/DbR5Q74YFKHsAnp2ZvWfXaOidfZdgxwRE/1ZOBQ2GmUgo0JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (10.255.86.19) by
 MN2PR12MB3840.namprd12.prod.outlook.com (10.255.239.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3805.21; Wed, 3 Feb 2021 08:06:05 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::44f:9f01:ece7:f0e5]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::44f:9f01:ece7:f0e5%3]) with mapi id 15.20.3805.024; Wed, 3 Feb 2021
 08:06:05 +0000
To: Suren Baghdasaryan <surenb@google.com>, Minchan Kim <minchan@kernel.org>
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203003134.2422308-2-surenb@google.com> <YBn+yWIE9eXbgQ2K@google.com>
 <CAJuCfpHCCD6ruxQAZP8pTZxz44F7pDKY59QznxFv0nQ+-9VaQA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <1ea3d79a-2413-bba5-147e-e24df3f91ce0@amd.com>
Date: Wed, 3 Feb 2021 09:05:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAJuCfpHCCD6ruxQAZP8pTZxz44F7pDKY59QznxFv0nQ+-9VaQA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-ClientProxiedBy: AM0PR10CA0002.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:17c::12) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM0PR10CA0002.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:17c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.17 via Frontend
 Transport; Wed, 3 Feb 2021 08:06:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 189a3e28-837a-494f-d0b3-08d8c81a8e19
X-MS-TrafficTypeDiagnostic: MN2PR12MB3840:
X-Microsoft-Antispam-PRVS: <MN2PR12MB3840CC7322A157ABA3043B4F83B49@MN2PR12MB3840.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zq5djfQMdsAyOoZE0F2X20KBgZ5i9Madmu/lnsa2ioccPSo+HkYb93JNTSzQT0L6yahZFo+oPQn39ecm96p3yrieGeuqyFM7aY29Y/NQu6HseGwrBpDdZTGd1GRe1Dh+wom1XVWchR6BeAager7Lf250kh2A6x6FtrclkqhXprlovrRbzYThzEcHfb/Tn6exIYhfePDddv9pTKtycGSGsnAI7o51m0+ZUTqjwTJVg/7nLf/DkBANOYIQ66/8Ssqz8mQcvYhA158NukTQWZFGGMqH1vLQiJPCCYsnof2Rz6KC6T73cI+NRESBZi3aO353s1QeBC5G4/fQgl5JigQDE5PB4D+lPOFhedOzDz7hpDv+XUKkABorLX+jB0uY0/gsTgm12XYgDE0578FCjKnCVr++rYKw7dQbLTdMHfzbVaBvq3i5snrw+lKaeZXwheTwiijxBRnQ25uwSJxzXGsjs2EshmaGPEVP++v1WD6M22/qCVgMRdJHt5kDX0RubKvvwI8f+PvDOULT/aNbIARFugQHmvwjMWn2KA6cXwMpEO+tkiRl1civqXhD5dLRcQmA89c5iAV4mnyDVAmF5Wh7FtEb0QN480X2Efs0Kagc282qLdohCN5fWCwfCOQscV4O6+WT2Wudo2tPPwhfk8G/tKc3EQ2h8Szah6fNuBJ2hXrzZK52FfMQi/BipUX5hYrk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39860400002)(136003)(346002)(366004)(396003)(6666004)(16526019)(31696002)(53546011)(186003)(66476007)(86362001)(5660300002)(316002)(54906003)(110136005)(7416002)(31686004)(6486002)(45080400002)(2906002)(478600001)(966005)(4326008)(2616005)(8936002)(66946007)(36756003)(52116002)(8676002)(66556008)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?Sjk0RHJHRzhoWFNnT1BoSFBMR2VQb25IeXpJSzIwVk41emh0MkYwV2xJcHFz?=
 =?utf-8?B?VE1GU3FkcW81V3diQVZ0a2FDOC9RQ3FKeE01WHI0MVFqNFBxM3BxallTYTlr?=
 =?utf-8?B?OE1mS2YrM1dnSGtNcGZkVWNyQktaN3VEcjViZ0JESFFKQWwwV29DOEZrQzRa?=
 =?utf-8?B?UnVNazBOZzFGQkVFNkpVcnp2aHQrK3F4NzV0T05LckhXME9SbktoRnY5Rzdn?=
 =?utf-8?B?ZmNtaW9MQ1B2Z1BPRXVFaTIyV21iK0pFYWpPTEppWG8zamZzOFI5TXhTalRL?=
 =?utf-8?B?RmJXa0ZUcTVub0pmQ21RZDRsRGpSdVFKeFBEWTgrbnVKT084bXNnVWlvelFI?=
 =?utf-8?B?ZWhyVU8xVEkwWEJUNHZoNUJXVW82cDNaR2t1ckg3Y0pGMUducVJ3VFlwMVF4?=
 =?utf-8?B?c283UDBkbjhVTm1yeWZMaFl2NG4rdGZFOERyZHFibGVzTmkveWdYNmN1K0Jv?=
 =?utf-8?B?eDkrdTFCOWNXWDh6NFBETEFydjJtVmRYWlR4NTNsS0RSc041M3JOT1JvNFJV?=
 =?utf-8?B?TGNDbGtNa3ZZeGZ5RGtqTmlRS3VWL2puN3hKN1JjZklvenBLbkxuZTk0RTV2?=
 =?utf-8?B?Zm5FckRicjdXR3cxeVhOZmhCbmJnZ1hLYXNLUHZSNTFLRFdSM1B5MU5hWmRk?=
 =?utf-8?B?Sk5LTGo5SSttL2VSUWZLaW5uSkJqU2VHZmRCL0UzbTlLRk9HNEtNSjM0NmFv?=
 =?utf-8?B?VG5EcWV1bTZmSmpUajY5SjZua3ZGWVNSOUN3WjBFZk5FWDBhOXdJeDNSRUJ0?=
 =?utf-8?B?MkhNSGhUbFpHVkxJV0s5bDV4eElmbDExbFpqejduc2YyWnlmSWJoL3JlSUlL?=
 =?utf-8?B?cjIwVDBEeFNERFFrbmlra3ZuUjVpQytQRWZTdDZXYVkwSHUzWmlHVzFmQldK?=
 =?utf-8?B?eVlkaGpQY3pXVlFJYWFLamhZOVZHTEdGNHVFanRQeFlLRG56dGVMdHkvRkc3?=
 =?utf-8?B?T1gvSjg4VmUzaWJIdHBtNWFURnZoQmk0SGZ2ZUJ5VDdBTmNYayt0MGtUVDg5?=
 =?utf-8?B?Y25nNnd1K1NSL1BuWTQ1ak9hN0FOSFVITXE0N3l0ZXNFaEVEcDM5Sk9FUVBS?=
 =?utf-8?B?djRubFgvV0hWU2ZpMXovV09sY041UlBKZ1NweHBLb2dKalVqZFJVelFER2t5?=
 =?utf-8?B?OElkNi91dUh6YUt5R3plRDNCd1dveDcrV3hXOTFuTWJwcGl4WlJEa1ZCMU43?=
 =?utf-8?B?b1hQL1BpMmdaMzJNeHNsRWZYWHR6eU80dVY0V25SM1cxNy9QUWdKN0NxYVFF?=
 =?utf-8?B?STk4N2E0SWV2V3lLeDZlVVJJR0VaZFB2cm1OMUh5UWZCL1ZpSlp4RzdRWksx?=
 =?utf-8?B?SThyRU8rSkpZaEZ0VXBDVTBNdDNUNThaSHI4T3pDVkt6L3FRWEMxRmlyT3ZT?=
 =?utf-8?B?enlZeUhkQmptU0lyYVdyNGRBZVNKQk9TMGZ4OEVMcEdkYTYwanVOUGRuS0NJ?=
 =?utf-8?B?dk1RRHZ1WHpmcHVpSURaaThRbkEzV0FSU0JPejNYbEJSTVdOWTNaSUI3NE5N?=
 =?utf-8?B?OUpOTWJ4clp3WHlNajRzd2RsRnVlR0ZoVmFhT2piYzZRa0lkZUJEOHZmZHN4?=
 =?utf-8?B?b051ZHpZUE1aOVVSeS9sY0NCZWNFMWhyRklvaDlTZUVPOTUxYlU1ZEtWdTVL?=
 =?utf-8?B?Nk5sVXN1dkZxbjNoK0lDck95eXpSTzNnekdhd2dtWEM5V1M4V05Pa0R0UHlL?=
 =?utf-8?B?V2dNN3VtN0FBamNObnI5MXgvYjhGenlCTExXODJLb0ZCcWVGWVlFU2gyRlo2?=
 =?utf-8?B?cisvc25TMk5SWXk1THkzMTZRS2N4dGpudDZsUDhCbHQ1dzJxS28xVVBaQ093?=
 =?utf-8?B?VUx3UFdTK2xOM3g2TytOTklOaTZ6UWEwU0RFTnZpVDk0L1JOemNsQnpvd1Nv?=
 =?utf-8?Q?W7YVtXuC7fG03?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 189a3e28-837a-494f-d0b3-08d8c81a8e19
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2021 08:06:05.5304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vVKY6FGP9DhQgU76gqH0t+7inF6HhvL+8D3r0C5rFHpu8m+SUfNCc13ZVcWL5Kro
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3840
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Sandeep Patil <sspatil@google.com>,
 kernel-team <kernel-team@android.com>, James Jones <jajones@nvidia.com>,
 LKML <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 Brian Starkey <Brian.Starkey@arm.com>, Christoph Hellwig <hch@infradead.org>,
 linux-mm <linux-mm@kvack.org>, John Stultz <john.stultz@linaro.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v2 2/2] dma-buf: heaps: Map system heap
 pages as managed by linux vm
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

QW0gMDMuMDIuMjEgdW0gMDM6MDIgc2NocmllYiBTdXJlbiBCYWdoZGFzYXJ5YW46Cj4gT24gVHVl
LCBGZWIgMiwgMjAyMSBhdCA1OjM5IFBNIE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+
IHdyb3RlOgo+PiBPbiBUdWUsIEZlYiAwMiwgMjAyMSBhdCAwNDozMTozNFBNIC0wODAwLCBTdXJl
biBCYWdoZGFzYXJ5YW4gd3JvdGU6Cj4+PiBDdXJyZW50bHkgc3lzdGVtIGhlYXAgbWFwcyBpdHMg
YnVmZmVycyB3aXRoIFZNX1BGTk1BUCBmbGFnIHVzaW5nCj4+PiByZW1hcF9wZm5fcmFuZ2UuIFRo
aXMgcmVzdWx0cyBpbiBzdWNoIGJ1ZmZlcnMgbm90IGJlaW5nIGFjY291bnRlZAo+Pj4gZm9yIGlu
IFBTUyBjYWxjdWxhdGlvbnMgYmVjYXVzZSB2bSB0cmVhdHMgdGhpcyBtZW1vcnkgYXMgaGF2aW5n
IG5vCj4+PiBwYWdlIHN0cnVjdHMuIFdpdGhvdXQgcGFnZSBzdHJ1Y3RzIHRoZXJlIGFyZSBubyBj
b3VudGVycyByZXByZXNlbnRpbmcKPj4+IGhvdyBtYW55IHByb2Nlc3NlcyBhcmUgbWFwcGluZyBh
IHBhZ2UgYW5kIHRoZXJlZm9yZSBQU1MgY2FsY3VsYXRpb24KPj4+IGlzIGltcG9zc2libGUuCj4+
PiBIaXN0b3JpY2FsbHksIElPTiBkcml2ZXIgdXNlZCB0byBtYXAgaXRzIGJ1ZmZlcnMgYXMgVk1f
UEZOTUFQIGFyZWFzCj4+PiBkdWUgdG8gbWVtb3J5IGNhcnZlb3V0cyB0aGF0IGRpZCBub3QgaGF2
ZSBwYWdlIHN0cnVjdHMgWzFdLiBUaGF0Cj4+PiBpcyBub3QgdGhlIGNhc2UgYW55bW9yZSBhbmQg
aXQgc2VlbXMgdGhlcmUgd2FzIGRlc2lyZSB0byBtb3ZlIGF3YXkKPj4+IGZyb20gcmVtYXBfcGZu
X3JhbmdlIFsyXS4KPj4+IERtYWJ1ZiBzeXN0ZW0gaGVhcCBkZXNpZ24gaW5oZXJpdHMgdGhpcyBJ
T04gYmVoYXZpb3IgYW5kIG1hcHMgaXRzCj4+PiBwYWdlcyB1c2luZyByZW1hcF9wZm5fcmFuZ2Ug
ZXZlbiB0aG91Z2ggYWxsb2NhdGVkIHBhZ2VzIGFyZSBiYWNrZWQKPj4+IGJ5IHBhZ2Ugc3RydWN0
cy4KPj4+IFJlcGxhY2UgcmVtYXBfcGZuX3JhbmdlIHdpdGggdm1faW5zZXJ0X3BhZ2UsIGZvbGxv
d2luZyBMYXVyYSdzIHN1Z2dlc3Rpb24KPj4+IGluIFsxXS4gVGhpcyB3b3VsZCBhbGxvdyBjb3Jy
ZWN0IFBTUyBjYWxjdWxhdGlvbiBmb3IgZG1hYnVmcy4KPj4+Cj4+PiBbMV0gaHR0cHM6Ly9uYW0x
MS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGZHJp
dmVyZGV2LWRldmVsLmxpbnV4ZHJpdmVycHJvamVjdC5uYXJraXZlLmNvbSUyRnYwZkpHcGFEJTJG
dXNpbmctaW9uLW1lbW9yeS1mb3ItZGlyZWN0LWlvJmFtcDtkYXRhPTA0JTdDMDElN0NjaHJpc3Rp
YW4ua29lbmlnJTQwYW1kLmNvbSU3Q2I0YzE0NWI4NmRkMDQ3MmM5NDNjMDhkOGM3ZTdiYTRiJTdD
M2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzQ3OTE0NTM4OTE2
MDM1MyU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9p
VjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MxMDAwJmFtcDtzZGF0YT1X
MU4lMkIlMkJsY0ZEYVJTdlhkU1BlNWhQTk1SQnlIZkdrVTdVYzNjbU0zRkNUVSUzRCZhbXA7cmVz
ZXJ2ZWQ9MAo+Pj4gWzJdIGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9v
ay5jb20vP3VybD1odHRwJTNBJTJGJTJGZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcl
MkZwaXBlcm1haWwlMkZkcml2ZXJkZXYtZGV2ZWwlMkYyMDE4LU9jdG9iZXIlMkYxMjc1MTkuaHRt
bCZhbXA7ZGF0YT0wNCU3QzAxJTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0NiNGMxNDVi
ODZkZDA0NzJjOTQzYzA4ZDhjN2U3YmE0YiU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUx
ODNkJTdDMCU3QzAlN0M2Mzc0NzkxNDUzODkxNjAzNTMlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4
ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhW
Q0k2TW4wJTNEJTdDMTAwMCZhbXA7c2RhdGE9alF4U3pLRXI1MmxVY0FJeCUyRnVCSE1KN3lPZ29m
JTJGVk1sVzklMkJCMmYlMkZvUyUyRkUlM0QmYW1wO3Jlc2VydmVkPTAKPj4+IChzb3JyeSwgY291
bGQgbm90IGZpbmQgbG9yZSBsaW5rcyBmb3IgdGhlc2UgZGlzY3Vzc2lvbnMpCj4+Pgo+Pj4gU3Vn
Z2VzdGVkLWJ5OiBMYXVyYSBBYmJvdHQgPGxhYmJvdHRAa2VybmVsLm9yZz4KPj4+IFNpZ25lZC1v
ZmYtYnk6IFN1cmVuIEJhZ2hkYXNhcnlhbiA8c3VyZW5iQGdvb2dsZS5jb20+Cj4+IFJldmlld2Vk
LWJ5OiBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJuZWwub3JnPgo+Pgo+PiBBIG5vdGU6IFRoaXMg
cGF0Y2ggbWFrZXMgZG1hYnVmIHN5c3RlbSBoZWFwIGFjY291bnRlZCBhcyBQU1Mgc28KPj4gaWYg
c29tZW9uZSBoYXMgcmVsaWVzIG9uIHRoZSBzaXplLCB0aGV5IHdpbGwgc2VlIHRoZSBibG9hdC4K
Pj4gSUlSQywgdGhlcmUgd2FzIHNvbWUgZGViYXRlIHdoZXRoZXIgUFNTIGFjY291bnRpbmcgZm9y
IHRoZWlyCj4+IGJ1ZmZlciBpcyBjb3JyZWN0IG9yIG5vdC4gSWYgaXQnZCBiZSBhIHByb2JsZW0s
IHdlIG5lZWQgdG8KPj4gZGlzY3VzcyBob3cgdG8gc29sdmUgaXQobWF5YmUsIHZtYS0+dm1fZmxh
Z3MgYW5kIHJlaW50cm9kdWNlCj4+IHJlbWFwX3Bmbl9yYW5nZSBmb3IgdGhlbSB0byBiZSByZXNw
ZWN0ZWQpLgo+IEkgZGlkIG5vdCBzZWUgZGViYXRlcyBhYm91dCBub3QgaW5jbHVkaW5nICptYXBw
ZWQqIGRtYWJ1ZnMgaW50byBQU1MKPiBjYWxjdWxhdGlvbi4gSSByZW1lbWJlciBwZW9wbGUgd2Vy
ZSBkaXNjdXNzaW5nIGhvdyB0byBhY2NvdW50IGRtYWJ1ZnMKPiByZWZlcnJlZCBvbmx5IGJ5IHRo
ZSBGRCBidXQgdGhhdCBpcyBhIGRpZmZlcmVudCBkaXNjdXNzaW9uLiBJZiB0aGUKPiBidWZmZXIg
aXMgbWFwcGVkIGludG8gdGhlIGFkZHJlc3Mgc3BhY2Ugb2YgYSBwcm9jZXNzIHRoZW4gSU1ITwo+
IGluY2x1ZGluZyBpdCBpbnRvIFBTUyBvZiB0aGF0IHByb2Nlc3MgaXMgbm90IGNvbnRyb3ZlcnNp
YWwuCgpXZWxsLCBJIHRoaW5rIGl0IGlzLiBBbmQgdG8gYmUgaG9uZXN0IHRoaXMgZG9lc24ndCBs
b29rcyBsaWtlIGEgZ29vZCAKaWRlYSB0byBtZSBzaW5jZSBpdCB3aWxsIGV2ZW50dWFsbHkgbGVh
ZCB0byBkb3VibGUgYWNjb3VudGluZyBvZiBzeXN0ZW0gCmhlYXAgRE1BLWJ1ZnMuCgpBcyBkaXNj
dXNzZWQgbXVsdGlwbGUgdGltZXMgaXQgaXMgaWxsZWdhbCB0byB1c2UgdGhlIHN0cnVjdCBwYWdl
IG9mIGEgCkRNQS1idWYuIFRoaXMgY2FzZSBoZXJlIGlzIGEgYml0IHNwZWNpYWwgc2luY2UgaXQg
aXMgdGhlIG93bmVyIG9mIHRoZSAKcGFnZXMgd2hpY2ggZG9lcyB0aGF0LCBidXQgSSdtIG5vdCBz
dXJlIGlmIHRoaXMgd29uJ3QgY2F1c2UgcHJvYmxlbXMgCmVsc2V3aGVyZSBhcyB3ZWxsLgoKQSBt
b3JlIGFwcHJvcHJpYXRlIHNvbHV0aW9uIHdvdWxkIGJlIHRvIGhlbGQgcHJvY2Vzc2VzIGFjY291
bnRhYmxlIGZvciAKcmVzb3VyY2VzIHRoZXkgaGF2ZSBhbGxvY2F0ZWQgdGhyb3VnaCBkZXZpY2Ug
ZHJpdmVycy4KClJlZ2FyZHMsCkNocmlzdGlhbi4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK

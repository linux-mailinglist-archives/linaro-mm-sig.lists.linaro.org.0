Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B00357CED
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Apr 2021 09:05:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BED8065F83
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Apr 2021 07:05:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8CEEC609BB; Thu,  8 Apr 2021 07:05:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 82D496248D;
	Thu,  8 Apr 2021 07:04:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2258160733
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Apr 2021 07:03:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 130C06248D; Thu,  8 Apr 2021 07:03:06 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2042.outbound.protection.outlook.com [40.107.236.42])
 by lists.linaro.org (Postfix) with ESMTPS id 49D6B60733
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Apr 2021 07:03:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lLvFkJQvSBivqcv4+lH3/DWYyMVYLk0AQzyAMlTd/kCdYxj9xJSOLFaqpIP3EYz0ReXfHfI6VEzxT6NOIdtFKZJMVv47NRoJSA1ZNDFt+UOe/AgnCFXkPQ189z3gxxeTzk/Tg1HDi4iyovctFYOUqtlDk2dg2HT+UPHrlPteD4Vs3YTPDjYKU8Y1Ay7D/7S9/Mg4NNDf7XRvjNRyly6NQNc4a7CQBHIFEtC4PTILo0Q8no+jGTQSAE+PJFX2psXdfLXRSylHj99V09HLZCLQl6x3GX5bbJ3FE7Qga9O02lhOhNqYgqHNXhJXPW99dnYd7vfYCaig3iBf8Nr8SCptGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9qhthWB4S+6/SbMTzVdA/jlsakJkx9AqrLe1se0moU0=;
 b=IkqDKJsHOlLNZUOv5kICn1wsTs8KOXw6CA/3cBd1jc3uFKOZ4U+8GoipJ/sk34aTmQBXr1q6H2IJT/gA7HTwL8YtiKqBT/y/HFMpRQlO9w8hp9/5T6iArqzHD91dFS2+YVOZru+ZdQqF6Ibo58IRukShZBOt/T6gHdzkdKwCPzIgNZrS6OmBjtignN1BlA17lz1Eb8FmIRAL7UW1ns0OZnKtztOpq4xLPeUbL21pArROGV5D4pYXpS5/1/XTvaO2Dw7L9aSb+5fpSmfrt7wYdKMeTL3mGnPWMtZLzOTpnCVLG/AnXe9aIw9t1QDZF1qq8KVrZEWKD06O/aowxpFYXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4739.namprd12.prod.outlook.com (2603:10b6:208:81::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27; Thu, 8 Apr
 2021 07:03:00 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6d4d:4674:1cf6:8d34%6]) with mapi id 15.20.4020.017; Thu, 8 Apr 2021
 07:03:00 +0000
To: David Stevens <stevensd@chromium.org>
References: <20210408045926.3202160-1-stevensd@google.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <7f22ac22-dbe0-f056-b7db-24fa60f9724e@amd.com>
Date: Thu, 8 Apr 2021 09:02:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210408045926.3202160-1-stevensd@google.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:38f:e031:7d24:433b]
X-ClientProxiedBy: AM0PR02CA0139.eurprd02.prod.outlook.com
 (2603:10a6:20b:28d::6) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:38f:e031:7d24:433b]
 (2a02:908:1252:fb60:38f:e031:7d24:433b) by
 AM0PR02CA0139.eurprd02.prod.outlook.com (2603:10a6:20b:28d::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.17 via Frontend Transport; Thu, 8 Apr 2021 07:02:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 78be2d5b-25c9-457b-1c10-08d8fa5c5851
X-MS-TrafficTypeDiagnostic: BL0PR12MB4739:
X-Microsoft-Antispam-PRVS: <BL0PR12MB4739EB6908E7AAE5BB81539483749@BL0PR12MB4739.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mytIJbp0cN5Px4BbT8NmTtd9sPug/NXH+WBb+nqBE3mwAgXMJ+1qWDEe/yW1bkBBTAEEFO9tpwDiBRCUiNOnUgk0M05IRoXeYTKkrUC74bQ1c0nhjFu8p1JZdGzs7oeVnJVAp9CUS0RvEC5gAbzc283E08REciYMvUGPTsELVgeHjByl3zdDVJOfj1ilhIBl2yHwI7T2Ro3dY+9aimBofkFtXFy2+teBMCxxcNen4XWFD370vb+bP7J8JJ02HwPMMo656vWshpL7ZwYCAytJEAsNcwK95fYgGJ+sgeG+xwBXfU9lSKrAhCyfd1x/Vh7QLKvNW1yvDRKPhgB69D7jAslI9EOWMANBTym466fYO1w0ThnpFOsVr/BC1UVeIxFl88iUcCtzMaa19eBo6rnGtFF3xCux/+qmH2/tCphpqdMzaeGg/mek1jcQAZdX6h1yC9dUwBF5NhJycpQIn2cphSVYo5Ldk9Jb1EtK14uRUvchP8h9kaZJhdRdcddNwiaHqei7Q+DG/jybLAIUJmCzCN5PtVDWlH0TChFwCjXD4TFNx0w4eenTiA6cuBF5NaPcrzLMczAObFRkFby80L/VtVRwg+CaRPnB/b8C/Yf7tolOByXjdeMzSo0vZY1nkHGSr7JQchTwc/td0ohDjKIkZUrUVGb/GbjA4QzLRczchyG+Prumor2AMzDh4JKcSFJMlD03aggYXu0iqii24BxY/qrQyEcsgKbstvA6XRbfIOQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(376002)(39860400002)(136003)(346002)(52116002)(31696002)(31686004)(36756003)(8676002)(66556008)(83380400001)(66476007)(478600001)(6486002)(6916009)(16526019)(2616005)(316002)(38100700001)(5660300002)(7416002)(6666004)(2906002)(4326008)(186003)(8936002)(66946007)(86362001)(54906003)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?aE00MEZwQTUzd1lxdm5MclJoTC9td1phUTBieE5tcDh2bHlURlkrekJpNUF5?=
 =?utf-8?B?bzc2Q0FvaS9OY1NXdFh4NGxDZGtXbUluTk5BeG9nMjVFUmpudTlhTm80VnJm?=
 =?utf-8?B?aDRrcWhhdDU2YXV3ZVJYL3RJTUkzMXlpeXl0bGJCeVNJd2pIakJrL3RCeGdM?=
 =?utf-8?B?WVFzaTlRN1NCdkFMK3NLNHJ3ZE1iYURpdzFhaHpuaWJIY05RaEsveHphc0lt?=
 =?utf-8?B?K1hnSWZxYklEVVk3a2NsaWRzN3VXTU1zN2wxZGFlNHhsU1Mrd2twU0JpUVJp?=
 =?utf-8?B?UldJL3o4N1RHdjJ2djdjVFo1bmNXQVE2aGRISWZ2djV6SHk2VVZ3d2VxTU9T?=
 =?utf-8?B?eGV2VGlBMmdhQUx3c0s0UzkvcmpkUVRYOWQzd015VlBLeiticTFWb3ZNbm53?=
 =?utf-8?B?ekZVWWdaUUUxck40OVc5T1k1MFRtZm5iUWswZ3NESVl5WFN6eU1TWVd1Tm1s?=
 =?utf-8?B?SmtydVpRaS9oSkRQSUU5SklKUzB2cGV6TkZYeUZub01xOW5adHBxNVRlK05H?=
 =?utf-8?B?ZnU5QWhFNjhMZzliMHI1YVB1a0x4eHdyOTM3akxwK3RFR0tDRXlLUSswOUtU?=
 =?utf-8?B?M0l5SktSNE44bE5sSU5hUElpTExQSlVONmJ4b3dJd2RSSmZlMlE2RnM3N0F5?=
 =?utf-8?B?Wk1IVUNRTXJNT2VBZWdvMmQ4Umw1N3BKME80VkV5RE9UaGpQWVBhbm5lSVBR?=
 =?utf-8?B?ZDNLU3Vxb1FpQnkzcW5wSk5uL0M3TUhXbnd4bWRMQVJ3bkQ3RTRjK0Y5SHBr?=
 =?utf-8?B?Z0JocGpRT3F6VlBoNlVjZnZnYzBJZUppb2JyaUNsNTBlamVIVVFFbFVldnlE?=
 =?utf-8?B?bGM3Y0hLcHNsTzc0aDVKR2VoZFp1N0RLZ0VzZWppL1pTRFRiVHZYbUphSEdQ?=
 =?utf-8?B?K3l6bjB5c1NtOTU5LzJOZ0FwMzdKVC9pZlRXaFYrcXF6MDFMYWRTMEFod2tO?=
 =?utf-8?B?aGZJWEhvbzJ4QnUxdlFIeFBmS3lTTUVQTndRZnpPN3FwVkVXSnRaSVdtVUpL?=
 =?utf-8?B?SERhTGxSZzNYWVJHN1ZJUWl4UkhjbFlXeXoyUXMwSzBsWUlOanFVN0lBclVv?=
 =?utf-8?B?MUNvNXVMRHVIbnZGZjZ6S0V1cDk1c1pCZ04rSjNvRlp5WE1RbkdWd25mK0tX?=
 =?utf-8?B?NTVUT1owRDB3ZTE2OFVrV1FTbGYzNkRGdS96dW5acDF4Wk0wbWZ5eGpmaDNx?=
 =?utf-8?B?dFJOTGV6R0xuZnA3TVBya0t2WGlSTlVQUXNtSStmWTFnQjhBVEo5Q3ZweHFz?=
 =?utf-8?B?OEFoZ3M0MERiRjF6RERnWXk3YUF1VmVVcm5xWHJKTDhId3N6dGl5SUdubUpL?=
 =?utf-8?B?U0c3eTQzZTBKSkxnTjJPTzNPdXhQUzRvT1pRK3FUMmVuajZvZXNJSEFyaTdv?=
 =?utf-8?B?YndaZHl0REFTdDJFOWRFZWN3S3BmamRna0lvdVRjUWxXTVRhdkVzc25RU1VT?=
 =?utf-8?B?TmMyVTY1Uml2WnJYVWpzbndXT1phRElyUFloeDJkcTNpVWlVUnpPRDZlN2p1?=
 =?utf-8?B?TmZ5SHA0UWNxSGVqVHlFWDRBenF6WkZLOEFTNG8yemMrUHpQY21BL1RSRzFP?=
 =?utf-8?B?RGJCZnFteUlyZGM4YmVCV05TYkI0eHNpRG1OR2JXUWNJT3U5bjB5RXp5anY1?=
 =?utf-8?B?M0hIRUNOMkNhSituakZIdXlQdy9GZXREaCsvdDRqVzlKWDB0cEUvYVNidVQ2?=
 =?utf-8?B?bDB5N0QyTG1lQkN0MkRZUlVYUHNkRFJxSVBjNFVWd2V4ak1SNkJUMjVmN0RL?=
 =?utf-8?B?WmxJOXg1TVQySjlwYi9JQ3h6d2RPaEZwSkhBZEIxdGR5Um9kNTFqTTJhUFFE?=
 =?utf-8?B?TDVCTlNrMUlsY2RsUDVEUDEyckgzdUJHSHdvMWlyQmNvNzRWblJOdUJxV25G?=
 =?utf-8?Q?noFFI0zBfOHe7?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78be2d5b-25c9-457b-1c10-08d8fa5c5851
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2021 07:03:00.3808 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5idLa3e+2Ueb7SJZX/SUGKXYgRXp1pzGR/xIf1CcyZkaghG+TC6Dbv0PWlccdNUV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4739
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] Revert "drm/syncobj: use
	dma_fence_get_stub"
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

QW0gMDguMDQuMjEgdW0gMDY6NTkgc2NocmllYiBEYXZpZCBTdGV2ZW5zOgo+IEZyb206IERhdmlk
IFN0ZXZlbnMgPHN0ZXZlbnNkQGNocm9taXVtLm9yZz4KPgo+IFRoaXMgcmV2ZXJ0cyBjb21taXQg
ODZiYmQ4OWQ1ZGE2NmZlNzYwMDQ5YWQzZjA0YWRjNDA3ZWMwYzRkNi4KPgo+IFVzaW5nIHRoZSBz
aW5nbGV0b24gc3R1YiBmZW5jZSBpbiBkcm1fc3luY29ial9hc3NpZ25fbnVsbF9oYW5kbGUgbWVh
bnMKPiB0aGF0IGFsbCBzeW5jb2JqcyBjcmVhdGVkIGluIGFuIGFscmVhZHkgc2lnbmFsZWQgc3Rh
dGUgb3IgYW55IHN5bmNvYmpzCj4gc2lnbmFsZWQgYnkgdXNlcnNwYWNlIHdpbGwgcmVmZXJlbmNl
IHRoZSBzaW5nbGV0b24gZmVuY2Ugd2hlbiBleHBvcnRlZAo+IHRvIGEgc3luY19maWxlLiBJZiB0
aG9zZSBzeW5jX2ZpbGVzIGFyZSBxdWVyaWVkIHdpdGggU1lOQ19JT0NfRklMRV9JTkZPLAo+IHRo
ZW4gdGhlIHRpbWVzdGFtcF9ucyB2YWx1ZSByZXR1cm5lZCB3aWxsIGNvcnJlc3BvbmQgdG8gd2hl
bmV2ZXIgdGhlCj4gc2luZ2xldG9uIHN0dWIgZmVuY2Ugd2FzIGZpcnN0IGluaXRpYWxpemVkLiBU
aGlzIGNhbiBicmVhayB0aGUgYWJpbGl0eQo+IG9mIHVzZXJzcGFjZSB0byB1c2UgdGltZXN0YW1w
cyBvZiB0aGVzZSBmZW5jZXMsIGFzIHRoZSBzaW5nbGV0b24gc3R1Ygo+IGZlbmNlJ3MgdGltZXN0
YW1wIGJlYXJzIG5vIHJlbGF0aW9uc2hpcCB0byBhbnkgbWVhbmluZ2Z1bCBldmVudC4KCkFuZCB3
aHkgZXhhY3RseSBpcyBoYXZpbmcgdGhlIHRpbWVzdGFtcCBvZiB0aGUgY2FsbCB0byAKZHJtX3N5
bmNvYmpfYXNzaWduX251bGxfaGFuZGxlKCkgYmV0dGVyPwoKQWRkaXRpb25hbCBpZiB5b3UgcmVh
bGx5IG5lZWQgdGhhdCBwbGVhc2UgZG9uJ3QgcmV2ZXJ0IHRoZSBwYXRjaC4gCkluc3RlYWQgcHJv
dmlkZSBhIGZ1bmN0aW9uIHdoaWNoIHJldHVybnMgYSBuZXdseSBpbml0aWFsaXplZCBzdHViIGZl
bmNlIAppbiB0aGUgZG1hX2ZlbmNlLmMgY29kZS4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiBT
aWduZWQtb2ZmLWJ5OiBEYXZpZCBTdGV2ZW5zIDxzdGV2ZW5zZEBjaHJvbWl1bS5vcmc+Cj4gLS0t
Cj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYyB8IDU4ICsrKysrKysrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKSwg
MTQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5j
b2JqLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYwo+IGluZGV4IDM0OTE0NjA0OTg0
OS4uN2NjMTFmMWE4M2Y0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29i
ai5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMKPiBAQCAtMjExLDYgKzIx
MSwyMSBAQCBzdHJ1Y3Qgc3luY29ial93YWl0X2VudHJ5IHsKPiAgIHN0YXRpYyB2b2lkIHN5bmNv
Ympfd2FpdF9zeW5jb2JqX2Z1bmMoc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqLAo+ICAgCQkJ
CSAgICAgIHN0cnVjdCBzeW5jb2JqX3dhaXRfZW50cnkgKndhaXQpOwo+ICAgCj4gK3N0cnVjdCBk
cm1fc3luY29ial9zdHViX2ZlbmNlIHsKPiArCXN0cnVjdCBkbWFfZmVuY2UgYmFzZTsKPiArCXNw
aW5sb2NrX3QgbG9jazsKPiArfTsKPiArCj4gK3N0YXRpYyBjb25zdCBjaGFyICpkcm1fc3luY29i
al9zdHViX2ZlbmNlX2dldF9uYW1lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQo+ICt7Cj4gKwly
ZXR1cm4gInN5bmNvYmpzdHViIjsKPiArfQo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFf
ZmVuY2Vfb3BzIGRybV9zeW5jb2JqX3N0dWJfZmVuY2Vfb3BzID0gewo+ICsJLmdldF9kcml2ZXJf
bmFtZSA9IGRybV9zeW5jb2JqX3N0dWJfZmVuY2VfZ2V0X25hbWUsCj4gKwkuZ2V0X3RpbWVsaW5l
X25hbWUgPSBkcm1fc3luY29ial9zdHViX2ZlbmNlX2dldF9uYW1lLAo+ICt9Owo+ICsKPiAgIC8q
Kgo+ICAgICogZHJtX3N5bmNvYmpfZmluZCAtIGxvb2t1cCBhbmQgcmVmZXJlbmNlIGEgc3luYyBv
YmplY3QuCj4gICAgKiBAZmlsZV9wcml2YXRlOiBkcm0gZmlsZSBwcml2YXRlIHBvaW50ZXIKPiBA
QCAtMzQ0LDE4ICszNTksMjQgQEAgdm9pZCBkcm1fc3luY29ial9yZXBsYWNlX2ZlbmNlKHN0cnVj
dCBkcm1fc3luY29iaiAqc3luY29iaiwKPiAgIH0KPiAgIEVYUE9SVF9TWU1CT0woZHJtX3N5bmNv
YmpfcmVwbGFjZV9mZW5jZSk7Cj4gICAKPiAtLyoqCj4gLSAqIGRybV9zeW5jb2JqX2Fzc2lnbl9u
dWxsX2hhbmRsZSAtIGFzc2lnbiBhIHN0dWIgZmVuY2UgdG8gdGhlIHN5bmMgb2JqZWN0Cj4gLSAq
IEBzeW5jb2JqOiBzeW5jIG9iamVjdCB0byBhc3NpZ24gdGhlIGZlbmNlIG9uCj4gLSAqCj4gLSAq
IEFzc2lnbiBhIGFscmVhZHkgc2lnbmFsZWQgc3R1YiBmZW5jZSB0byB0aGUgc3luYyBvYmplY3Qu
Cj4gLSAqLwo+IC1zdGF0aWMgdm9pZCBkcm1fc3luY29ial9hc3NpZ25fbnVsbF9oYW5kbGUoc3Ry
dWN0IGRybV9zeW5jb2JqICpzeW5jb2JqKQo+ICtzdGF0aWMgaW50IGRybV9zeW5jb2JqX2Fzc2ln
bl9udWxsX2hhbmRsZShzdHJ1Y3QgZHJtX3N5bmNvYmogKnN5bmNvYmopCj4gICB7Cj4gLQlzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSA9IGRtYV9mZW5jZV9nZXRfc3R1YigpOwo+ICsJc3RydWN0IGRy
bV9zeW5jb2JqX3N0dWJfZmVuY2UgKmZlbmNlOwo+ICAgCj4gLQlkcm1fc3luY29ial9yZXBsYWNl
X2ZlbmNlKHN5bmNvYmosIGZlbmNlKTsKPiAtCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwo+ICsJZmVu
Y2UgPSBremFsbG9jKHNpemVvZigqZmVuY2UpLCBHRlBfS0VSTkVMKTsKPiArCWlmIChmZW5jZSA9
PSBOVUxMKQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsKPiArCXNwaW5fbG9ja19pbml0KCZmZW5j
ZS0+bG9jayk7Cj4gKwlkbWFfZmVuY2VfaW5pdCgmZmVuY2UtPmJhc2UsICZkcm1fc3luY29ial9z
dHViX2ZlbmNlX29wcywKPiArCQkgICAgICAgJmZlbmNlLT5sb2NrLCAwLCAwKTsKPiArCWRtYV9m
ZW5jZV9zaWduYWwoJmZlbmNlLT5iYXNlKTsKPiArCj4gKwlkcm1fc3luY29ial9yZXBsYWNlX2Zl
bmNlKHN5bmNvYmosICZmZW5jZS0+YmFzZSk7Cj4gKwo+ICsJZG1hX2ZlbmNlX3B1dCgmZmVuY2Ut
PmJhc2UpOwo+ICsKPiArCXJldHVybiAwOwo+ICAgfQo+ICAgCj4gICAvKiA1cyBkZWZhdWx0IGZv
ciB3YWl0IHN1Ym1pc3Npb24gKi8KPiBAQCAtNDY5LDYgKzQ5MCw3IEBAIEVYUE9SVF9TWU1CT0wo
ZHJtX3N5bmNvYmpfZnJlZSk7Cj4gICBpbnQgZHJtX3N5bmNvYmpfY3JlYXRlKHN0cnVjdCBkcm1f
c3luY29iaiAqKm91dF9zeW5jb2JqLCB1aW50MzJfdCBmbGFncywKPiAgIAkJICAgICAgIHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlKQo+ICAgewo+ICsJaW50IHJldDsKPiAgIAlzdHJ1Y3QgZHJtX3N5
bmNvYmogKnN5bmNvYmo7Cj4gICAKPiAgIAlzeW5jb2JqID0ga3phbGxvYyhzaXplb2Yoc3RydWN0
IGRybV9zeW5jb2JqKSwgR0ZQX0tFUk5FTCk7Cj4gQEAgLTQ3OSw4ICs1MDEsMTMgQEAgaW50IGRy
bV9zeW5jb2JqX2NyZWF0ZShzdHJ1Y3QgZHJtX3N5bmNvYmogKipvdXRfc3luY29iaiwgdWludDMy
X3QgZmxhZ3MsCj4gICAJSU5JVF9MSVNUX0hFQUQoJnN5bmNvYmotPmNiX2xpc3QpOwo+ICAgCXNw
aW5fbG9ja19pbml0KCZzeW5jb2JqLT5sb2NrKTsKPiAgIAo+IC0JaWYgKGZsYWdzICYgRFJNX1NZ
TkNPQkpfQ1JFQVRFX1NJR05BTEVEKQo+IC0JCWRybV9zeW5jb2JqX2Fzc2lnbl9udWxsX2hhbmRs
ZShzeW5jb2JqKTsKPiArCWlmIChmbGFncyAmIERSTV9TWU5DT0JKX0NSRUFURV9TSUdOQUxFRCkg
ewo+ICsJCXJldCA9IGRybV9zeW5jb2JqX2Fzc2lnbl9udWxsX2hhbmRsZShzeW5jb2JqKTsKPiAr
CQlpZiAocmV0IDwgMCkgewo+ICsJCQlkcm1fc3luY29ial9wdXQoc3luY29iaik7Cj4gKwkJCXJl
dHVybiByZXQ7Cj4gKwkJfQo+ICsJfQo+ICAgCj4gICAJaWYgKGZlbmNlKQo+ICAgCQlkcm1fc3lu
Y29ial9yZXBsYWNlX2ZlbmNlKHN5bmNvYmosIGZlbmNlKTsKPiBAQCAtMTMyMiw4ICsxMzQ5LDEx
IEBAIGRybV9zeW5jb2JqX3NpZ25hbF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lk
ICpkYXRhLAo+ICAgCWlmIChyZXQgPCAwKQo+ICAgCQlyZXR1cm4gcmV0Owo+ICAgCj4gLQlmb3Ig
KGkgPSAwOyBpIDwgYXJncy0+Y291bnRfaGFuZGxlczsgaSsrKQo+IC0JCWRybV9zeW5jb2JqX2Fz
c2lnbl9udWxsX2hhbmRsZShzeW5jb2Jqc1tpXSk7Cj4gKwlmb3IgKGkgPSAwOyBpIDwgYXJncy0+
Y291bnRfaGFuZGxlczsgaSsrKSB7Cj4gKwkJcmV0ID0gZHJtX3N5bmNvYmpfYXNzaWduX251bGxf
aGFuZGxlKHN5bmNvYmpzW2ldKTsKPiArCQlpZiAocmV0IDwgMCkKPiArCQkJYnJlYWs7Cj4gKwl9
Cj4gICAKPiAgIAlkcm1fc3luY29ial9hcnJheV9mcmVlKHN5bmNvYmpzLCBhcmdzLT5jb3VudF9o
YW5kbGVzKTsKPiAgIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK

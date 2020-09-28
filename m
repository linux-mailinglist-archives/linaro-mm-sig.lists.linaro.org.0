Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 356BE27A7E7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Sep 2020 08:51:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 642E6617B6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Sep 2020 06:51:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 569BC618F4; Mon, 28 Sep 2020 06:51:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33505617D4;
	Mon, 28 Sep 2020 06:50:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AFF8760E41
 for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Sep 2020 06:50:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 97777617D4; Mon, 28 Sep 2020 06:50:48 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2052.outbound.protection.outlook.com [40.107.236.52])
 by lists.linaro.org (Postfix) with ESMTPS id 382A360E41
 for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Sep 2020 06:50:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L7bGtQE0xggG4ZIgApP3dyrBzhhxnFcCie64/3YEQa8zpa/HfdH73fWmtR/nHqKBiCllf/NxFjkkpB2M7bO7pDTXRY8FTrpH9JcjesDDC3cf2Dvrvqg8BIICITlPM7rBSP5GLg/O0jLI9pO40AVQfvNncgPhkrYFjGwufzuaj0MZadgMAkJs+J4FSFfHO9BF2bBEDlWqadzxooCTNU4VQKkLGI59fcmzklROomXtDshZqi7PrHbcKSWcTBk4KHiU6AHbMIrPwEwwB23Y0rSi90B+9fYPmvL/+DO4711DeqYBJpn/merH4Cpinf+O6lpRFV60/r0EW7KttG7xG3rUyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ftfPyK2QiwP8U4uWpbXw7JZVcVkZ4Ljqk4X0LAeVhGo=;
 b=OfBZ7L4a8z0pQNq6o655uf4rpWuVfFLfIsLjz/7L3+P7RhCbtASa92Ws5IBXA4lV2L7dJBYdN23kYUeLvCf6+gRM59jjjwZp+3uoQu/2uj51wcpAgto61M5WtQ1/Z5wsschWyEn57iCYJhxRauLgquYlpvkFiVoXN5d1cMCN2ruyhiboSlZC/vVxGcnpJW83hpT0XkJ3Z9ZTyAnxDSxkbVd3otw+FiCcpXXI97Fdv58nxovDXt2PMd1j9vJ63270cVJ+oTSYGU/DW5Z2/CM+fuMwCnPq1/5g1YS1YJR77tG2wcDgpSmbP8RpkNcgNAGBF2zbFJ7HrRKqMfOnHIcMqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3901.namprd12.prod.outlook.com (2603:10b6:208:16c::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.23; Mon, 28 Sep
 2020 06:50:39 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::f8f7:7403:1c92:3a60]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::f8f7:7403:1c92:3a60%6]) with mapi id 15.20.3412.029; Mon, 28 Sep 2020
 06:50:39 +0000
To: Sam Ravnborg <sam@ravnborg.org>, Thomas Zimmermann <tzimmermann@suse.de>
References: <20200925115601.23955-1-tzimmermann@suse.de>
 <20200926071334.GA42915@ravnborg.org>
 <8761e0dd-569e-0ea0-7bc5-25e4f7cb67cc@suse.de>
 <20200927191605.GA237178@ravnborg.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <3f703297-7b4f-dcca-ea56-70b2413a1e3d@amd.com>
Date: Mon, 28 Sep 2020 08:50:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20200927191605.GA237178@ravnborg.org>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-ClientProxiedBy: AM3PR05CA0092.eurprd05.prod.outlook.com
 (2603:10a6:207:1::18) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM3PR05CA0092.eurprd05.prod.outlook.com (2603:10a6:207:1::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3412.22 via Frontend Transport; Mon, 28 Sep 2020 06:50:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 90e8fe3c-2fb9-4d9f-d4c7-08d8637acf4c
X-MS-TrafficTypeDiagnostic: MN2PR12MB3901:
X-Microsoft-Antispam-PRVS: <MN2PR12MB3901950ECAD626023E8C289383350@MN2PR12MB3901.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OrC3AG0vjlaa7toKvgRe22NR3IxPxIDIX6Myv8OPC8YkVjH28mB4zlzVG90g1gcA8GchPvFDKFTcXVyrVd1y7ygiNKeqbBoDX+42uAyXis1O0RdSdQBmwERqoOfyEcI4XCJCdbcSRyVsTGZGNBSg18cZFmnj/xe24mTFi9nqsZ1jzcNvJ/ZLfLrmmPdBeSpv+cGow4rhzR1l0mqSnPe+Z/ZVmDBFQed/a/A8zzI522JNY5/T1EN+b/8iBtnkhGu2Wo02A8y4+qgkarnCXzv0N4Z++WuBMZCQqseYhnPxWo1P/5Z+sTb0hwqyd6hmYGLVC5B0f1UhYuC8RcVkqw/YfKvvaOuN2vX641Hja+OlDjr94FdT9MNmseJTJSdo+EgHKY1yozVs0/l2DOcKnqFwBPM3U2GD+RrQ9x8YMkFfrFbmd/KLpoRZj+2vbF97ca5z
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(376002)(366004)(136003)(396003)(7416002)(52116002)(66946007)(83380400001)(5660300002)(31686004)(36756003)(6666004)(110136005)(4326008)(8676002)(31696002)(316002)(16526019)(186003)(6486002)(86362001)(8936002)(2616005)(478600001)(2906002)(66476007)(66556008)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: O+Y0FV2AonwhTb2FTg/L59LjSgF2tLHHcc/FRi4nBCkplmvOrxkjeJo6PE0Zp8m4ylS6hqa5PBYCtZRPakqbvJ4EdircPrWPSiibUcXhrt5rlGg/TBM6c66BoIoPtB8qAKwNL+/pL+HbCCDx+/oQHIsIu0J85RWwFYCeJwAGuVtPT5mTbTk3G1HQJkzcDiaQs83Ohtdp9TEh9hif9b0pJshBDDU1YM+FX6rZv4F6IMktrXhLbQqEmL9me2RZnhIhYxJT7ii4KGrwn7vBEDvDvcEte6TlD7ayznlqJNpSyhLx5bI/rD2JJpiQPq8/o4Bf+rYo/sq1eXWDlU58K0o4nvHxMPffN2JOvSIPKJPhViH8pzdS3vpw/ptCF8b0HewAq+7+L9g8GZFjDxMnXwIto5xLGTxNEw5sl1ViBytitBJJ6+UwktYsuLZ0CIHyF8uN4+L5oP3l4RG5O3POZeeUaIcmJUJ88k9PdVg60kRWykIYf9Sd+rkd5UhSmrtQrl/94lYWgjJUtl232jCT/gc3uP/C8Oo/lMN7cfPxS1XlhI3wH4FY+77WUzO96xrK4jJUtr0hOZMarxBWimL1OPelUPICAppDRYkyxGNjiIqLRIlh/AonVnOul32vmxca5jnbQNyZ2QEhsM7Ro+FHgp1esJqqq2Usoyub3yauxEIUu1pM8vUKaziHRzoD4ZFhtkmEHEWzr7+U4OOds5fV6gHCLQ==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90e8fe3c-2fb9-4d9f-d4c7-08d8637acf4c
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2020 06:50:39.1731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y3qVd9zs4iWZBIJuqWgUjOy8glCnqbsoepUdvVX8yNOisW56sMX29eqC6rHlmxHk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3901
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-doc@vger.kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, thierry.reding@gmail.com, kraxel@redhat.com,
 afd@ti.com, arnd@arndb.de, corbet@lwn.net, jonathanh@nvidia.com,
 matthew.auld@intel.com, linux+etnaviv@armlinux.org.uk,
 linux-media@vger.kernel.org, pawel@osciak.com, intel-gfx@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 thomas.hellstrom@intel.com, rodrigo.vivi@intel.com,
 linux-tegra@vger.kernel.org, mchehab@kernel.org, gregkh@linuxfoundation.org,
 lmark@codeaurora.org, tfiga@chromium.org, kyungmin.park@samsung.com,
 robin.murphy@arm.com
Subject: Re: [Linaro-mm-sig] [PATCH v3 0/4] dma-buf: Flag vmap'ed memory as
 system or I/O memory
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

QW0gMjcuMDkuMjAgdW0gMjE6MTYgc2NocmllYiBTYW0gUmF2bmJvcmc6Cj4gSGkgVGhvbWFzLgo+
Cj4+PiBzdHJ1Y3Qgc2ltYXAgewo+Pj4gICAgICAgICB1bmlvbiB7Cj4+PiAgICAgICAgICAgICAg
ICAgdm9pZCBfX2lvbWVtICp2YWRkcl9pb21lbTsKPj4+ICAgICAgICAgICAgICAgICB2b2lkICp2
YWRkcjsKPj4+ICAgICAgICAgfTsKPj4+ICAgICAgICAgYm9vbCBpc19pb21lbTsKPj4+IH07Cj4+
Pgo+Pj4gV2hlcmUgc2ltYXAgaXMgYSBzaG9ydGhhbmQgZm9yIHN5c3RlbV9pb21lbV9tYXAKPj4+
IEFuZCBpdCBjb3VsZCBhbCBiZSBzdHVmZmVkIGludG8gYSBpbmNsdWRlL2xpbnV4L3NpbWFwLmgg
ZmlsZS4KPj4+Cj4+PiBOb3QgdG90YWxseSBzb2xkIG9uIHRoZSBzaW1hcCBuYW1lIC0gYnV0IHdh
bnRlZCB0byBjb21lIHVwIHdpdGgKPj4+IHNvbWV0aGluZy4KPj4gWWVzLiBPdGhlcnMsIG15c2Vs
ZiBpbmNsdWRlZCwgaGF2ZSBzdWdnZXN0ZWQgdG8gdXNlIGEgbmFtZSB0aGF0IGRvZXMgbm90Cj4+
IGltcGx5IGEgY29ubmVjdGlvbiB0byB0aGUgZG1hLWJ1ZiBmcmFtZXdvcmssIGJ1dCBubyBvbmUg
aGFzIGNvbWUgdXAgd2l0aAo+PiAgIGEgZ29vZCBuYW1lLgo+Pgo+PiBJIHN0cm9uZ2x5IGRpc2xp
a2Ugc2ltYXAsIGFzIGl0J3MgZW50aXJlbHkgbm9uLW9idmlvdXMgd2hhdCBpdCBkb2VzLgo+PiBk
bWEtYnVmLW1hcCBpcyBub3QgYWN0dWFsbHkgd3JvbmcuIFRoZSBzdHJ1Y3R1cmVzIHJlcHJlc2Vu
dHMgdGhlIG1hcHBpbmcKPj4gb2YgYSBkbWEtYWJsZSBidWZmZXIgaW4gbW9zdCBjYXNlcy4KPj4K
Pj4+IFdpdGggdGhpcyBhcHByb2FjaCB1c2VycyBkbyBub3QgaGF2ZSB0byBwdWxsIGluIGRtYS1i
dWYgdG8gdXNlIGl0IGFuZAo+Pj4gdXNlcnMgd2lsbCBub3QgY29uZnVzZSB0aGF0IHRoaXMgaXMg
b25seSBmb3IgZG1hLWJ1ZiB1c2FnZS4KPj4gVGhlcmUncyBubyBuZWVkIHRvIGVuYWJsZSBkbWEt
YnVmLiBJdCdzIGFsbCBpbiB0aGUgaGVhZGVyIGZpbGUgd2l0aG91dAo+PiBkZXBlbmRlbmNpZXMg
b24gZG1hLWJ1Zi4gSXQncyByZWFsbHkganVzdCB0aGUgbmFtZS4KPj4KPj4gQnV0IHRoZXJlJ3Mg
c29tZXRoaW5nIGVsc2UgdG8gdGFrZSBpbnRvIGFjY291bnQuIFRoZSB3aG9sZSBpc3N1ZSBoZXJl
IGlzCj4+IHRoYXQgdGhlIGJ1ZmZlciBpcyBkaXNjb25uZWN0ZWQgZnJvbSBpdHMgb3JpZ2luYXRp
bmcgZHJpdmVyLCBzbyB3ZSBkb24ndAo+PiBrbm93IHdoaWNoIGtpbmQgb2YgbWVtb3J5IG9wcyB3
ZSBoYXZlIHRvIHVzZS4gVGhpbmtpbmcgYWJvdXQgaXQsIEkKPj4gcmVhbGl6ZWQgdGhhdCBubyBv
bmUgZWxzZSBzZWVtZWQgdG8gaGF2ZSB0aGlzIHByb2JsZW0gdW50aWwgbm93Lgo+PiBPdGhlcndp
c2UgdGhlcmUgd291bGQgYmUgYSBzb2x1dGlvbiBhbHJlYWR5LiBTbyBtYXliZSB0aGUgZG1hLWJ1
Zgo+PiBmcmFtZXdvcmsgKmlzKiB0aGUgbmF0aXZlIHVzZSBjYXNlIGZvciB0aGlzIGRhdGEgc3Ry
dWN0dXJlLgo+IFdlIGhhdmUgYXQgbGVhc3Q6Cj4gbGludXgvZmIuaDoKPiAJdW5pb24gewo+IAkJ
Y2hhciBfX2lvbWVtICpzY3JlZW5fYmFzZTsgICAgICAvKiBWaXJ0dWFsIGFkZHJlc3MgKi8KPiAJ
CWNoYXIgKnNjcmVlbl9idWZmZXI7Cj4gCX07Cj4KPiBXaGljaCBzb2x2ZSBtb3JlIG9yIGxlc3Mg
dGhlIHNhbWUgcHJvYmxlbS4KCkkgYWxzbyBhbHJlYWR5IG5vdGVkIHRoYXQgaW4gVFRNIHdlIGhh
dmUgZXhhY3RseSB0aGUgc2FtZSBwcm9ibGVtIGFuZCBhIAp3aG9sZSBidW5jaCBvZiBoZWxwZXJz
IHRvIGFsbG93IG9wZXJhdGlvbnMgb24gdGhvc2UgcG9pbnRlcnMuCgpDaHJpc3RpYW4uCgo+Cj4g
ICAKPj4gQW55d2F5LCBpZiBhIGJldHRlciBuYW1lIHRoYW4gZG1hLWJ1Zi1tYXAgY29tZXMgaW4s
IEknbSB3aWxsaW5nIHRvCj4+IHJlbmFtZSB0aGUgdGhpbmcuIE90aGVyd2lzZSBJIGludGVuZCB0
byBtZXJnZSB0aGUgcGF0Y2hzZXQgYnkgdGhlIGVuZCBvZgo+PiB0aGUgd2Vlay4KPiBXZWxsLCB0
aGUgbWFpbiB0aGluZyBpcyB0aGF0IEkgdGhpbmsgdGhpcyBzaG91ZCBiZSBtb3ZlZCBhd2F5IGZy
b20KPiBkbWEtYnVmLiBCdXQgaWYgaW5kZWVkIGRtYS1idWYgaXMgdGhlIG9ubHkgcmVsZXZhbnQg
dXNlciBpbiBkcm0gdGhlbgo+IEkgYW0gdG90YWxseSBmaW5lIHdpdGggdGhlIGN1cnJlbnQgbmFt
aW5nLgo+Cj4gT25lIGFsdGVybmF0aXZlIG5hbWVkIHRoYXQgcG9wcGVkIHVwIGluIG15IGhlYWQ6
IHN0cnVjdCBzeXNfaW9fbWFwIHt9Cj4gQnV0IGFnYWluLCBpZiB0aGlzIGlzIGtlcHQgaW4gZG1h
LWJ1ZiB0aGVuIEkgYW0gZmluZSB3aXRoIHRoZSBjdXJyZW50Cj4gbmFtaW5nLgo+Cj4gSW4gb3Ro
ZXIgd29yZHMsIGlmIHlvdSBjb250aW51ZSB0byB0aGluayB0aGlzIGlzIG1vc3RseSBhIGRtYS1i
dWYKPiB0aGluZyBhbGwgdGhyZWUgcGF0Y2hlcyBhcmU6Cj4gQWNrZWQtYnk6IFNhbSBSYXZuYm9y
ZyA8c2FtQHJhdm5ib3JnLm9yZz4KPgo+IAlTYW0KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==

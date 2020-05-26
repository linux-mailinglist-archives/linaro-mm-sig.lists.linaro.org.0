Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0F31E1BB3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 May 2020 09:01:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 77D5D65F82
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 May 2020 07:01:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6901A618F4; Tue, 26 May 2020 07:01:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B49A61810;
	Tue, 26 May 2020 07:01:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4873D6164D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 May 2020 07:01:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3953861810; Tue, 26 May 2020 07:01:23 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 32D556164D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 May 2020 07:01:16 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200526070114euoutp01194aca878766f0bfaf581514bca2151f~Sge1HWBSq2315123151euoutp01-
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 May 2020 07:01:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200526070114euoutp01194aca878766f0bfaf581514bca2151f~Sge1HWBSq2315123151euoutp01-
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200526070114eucas1p1b21e7d81a2b80bed13fce326d04b8fa4~Sge0v3Mwc0579305793eucas1p1C;
 Tue, 26 May 2020 07:01:14 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id AD.1F.60698.9BEBCCE5; Tue, 26
 May 2020 08:01:14 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200526070113eucas1p1257c0e7ff6b0c11799b9e597c5f6b003~Sge0Z0u0a0565905659eucas1p1d;
 Tue, 26 May 2020 07:01:13 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200526070113eusmtrp14496b0af1b30c286212fd7472a072830~Sge0ZHP8Z3257232572eusmtrp1h;
 Tue, 26 May 2020 07:01:13 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-e1-5eccbeb959b9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C7.69.07950.9BEBCCE5; Tue, 26
 May 2020 08:01:13 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200526070113eusmtip1691e79cbdd9856fa111356479cb767ac~Sgez0JoOV0550105501eusmtip1H;
 Tue, 26 May 2020 07:01:13 +0000 (GMT)
To: Christoph Hellwig <hch@lst.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <83d04017-c6f2-d714-963c-ffa9c7248790@samsung.com>
Date: Tue, 26 May 2020 09:01:15 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200513134741.GA12712@lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTYRTHee69m9fR5HEaHrQMFkkv9iIJXTLUXqj7qYQiyHB1czet3Izd
 1AwqsZBaK62BbkvKrDBtak6ZZmSk6LI5WxmRFpmpH7LESh2YoW27Wn77/8/5nfN/Djw0qXgl
 CaePaU/xOi2XoZTKKHvH1Ku1zS1dqg3VHHO1u5Ng6ky1EmbWfp1k3k6OSZnKh+0EU/Ysjpl4
 O0AwtsF3EqanuVTKPP8xJEmUsdZbVsQ+9ZRRbKPns4Ttv+Ig2Pp759kPM4Mka3xfgdgnvXlS
 9lpDFWLHbZFJsmTZFjWfcSyb162PPyxLt1jxyWnJ6Ut9diIPfaP0KJAGHAvWi79IPZLRCvwA
 wY/CwjkzgaDW2Un6KAUeR+D4Gj0/Me16TIlQBQJ3x6c5M4agZvK6fyIE74Pi3krCp0OxEoZH
 XMgHkbibAEvhG3+4FMeAflQv9Wk5joex4WH/MIVXQFvedz+zGKeA8249Eplg6DQP+euBOBo8
 A3a/JvEyaBwtJUUdBn1DtwlfGOAvAVAydd/boL1mBzj7BfGEEBhxNASIegk4jQZK5C8gGOiu
 DhCNAUFPvgmJVBx87P4t9S0i8SqobV4vlrfCz4ZGQtwfBO9Hg8U3BMENe8lcrBwuFShEOgos
 jpp/sc/db8gipLQsuMyy4BrLgmss/3PLEFWFwvgsQZPGCxu1fM46gdMIWdq0damZGhvyfjPn
 jGOyCbX8OdKKMI2Ui+SM1alSSLhsIVfTioAmlaHybS5vSa7mcs/wusxDuqwMXmhFETSlDJNv
 LP+aosBp3Cn+BM+f5HXzXYIODM9DBVG6Vm2Ku8wUvelG4vLX5qpqvGvyAOMxqe+Y25wq487N
 bZeTV9Ln7qtzMq11hqby40F3PB+Mla4Id+RUfLsGjl61vdi+xtx78/isfk95Js51nz5YMpJg
 NOyVh49YVna15T9KYvicsQvcUlVuf2rDKPHCHbv77Mvqfen7ixKKlZSQzsWsJnUC9xfB9hoZ
 YgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEIsWRmVeSWpSXmKPExsVy+t/xu7o7952JM1j2Ud2i99xJJouNM9az
 WvzfNpHZ4srX92wWK1cfZbJYsN/a4suVh0wWmx5fY7W4vGsOm8XBD09YHbg81sxbw+ix99sC
 Fo/t3x6wetzvPs7ksXlJvcftf4+ZPSbfWM7osftmA5tH35ZVjB6fN8kFcEXp2RTll5akKmTk
 F5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZcxaI1Dwm7Wi49Y2pgbG
 1yxdjJwcEgImEr/P7gSzhQSWMkr8naQIEZeRODmtgRXCFpb4c62LrYuRC6jmLaPE6W17mUAS
 wgIhEtNurgSzRQSUJJ6+OssIUsQscIFJ4sbOo8wQUzcxSux8A2azCRhKdL0FmcTJwStgJ/H+
 6VOwOIuAqsThhjdgV4gKxEqsvtbKCFEjKHFy5hOwOKeAjsS3h9vAbGYBM4l5mx8yQ9jyEtvf
 zoGyxSVuPZnPNIFRaBaS9llIWmYhaZmFpGUBI8sqRpHU0uLc9NxiI73ixNzi0rx0veT83E2M
 wPjdduznlh2MXe+CDzEKcDAq8fBarDkdJ8SaWFZcmXuIUYKDWUmE1+ksUIg3JbGyKrUoP76o
 NCe1+BCjKdBzE5mlRJPzgaklryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFM
 HxMHp1QDo9Y28WDXjQIHpyo7aEYfe1b3X8TZf+5vg+BdtzeVPEm93d2xVT3/i3MW60MD1gJL
 y6r2n8ed5pvcK36tc+J/095ty1L5/rQ8z5n00H/ryz9qB+TvJeVtD/vJe34hj1FTSEGhEXc4
 Yyxj6J7zuz1MN9f8ZNLhP3WNd2GNv2zN4XM/XUqDBKv6lFiKMxINtZiLihMBzmXRsPUCAAA=
X-CMS-MailID: 20200526070113eucas1p1257c0e7ff6b0c11799b9e597c5f6b003
X-Msg-Generator: CA
X-RootMTR: 20200513132127eucas1p23f6be10bbd627e69e36d2451068b3204
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513132127eucas1p23f6be10bbd627e69e36d2451068b3204
References: <CGME20200513132127eucas1p23f6be10bbd627e69e36d2451068b3204@eucas1p2.samsung.com>
 <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513134741.GA12712@lst.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v5 00/38] DRM: fix struct sg_table nents
 vs. orig_nents misuse
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGkKCk9uIDEzLjA1LjIwMjAgMTU6NDcsIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IEkndmUg
cHVzaGVkIG91dCBhIGJyYW5jaCB3aXRoIHRoZSBmaXJzdCB0aHJlZSBwYXRjaGVzIGhlcmU6Cj4K
PiAgICAgZ2l0Oi8vZ2l0LmluZnJhZGVhZC5vcmcvdXNlcnMvaGNoL2RtYS1tYXBwaW5nLmdpdCBk
bWEtc2dfdGFibGUtaGVscGVyCj4KPiBHaXR3ZWI6Cj4KPiAgICAgaHR0cDovL2dpdC5pbmZyYWRl
YWQub3JnL3VzZXJzL2hjaC9kbWEtbWFwcGluZy5naXQvc2hvcnRsb2cvcmVmcy9oZWFkcy9kbWEt
c2dfdGFibGUtaGVscGVyCj4KPiBhbmQgbWVyZ2VkIGl0IGludG8gdGhlIGRtYS1tYXBwaW5nIGZv
ci1uZXh0IHRyZWUuICBVbmxlc3Mgc29tZW9uZSBzaG91dHMKPiB0aGUgYnJhbmNoIHNob3VsZCBi
ZSBjb25zaWRlcmVkIGltbXV0YWJsZSBpbiAyNCBob3Vycy4KCkRhdmlkICYgRGFuaWVsOiBjb3Vs
ZCB5b3UgbWVyZ2UgYWxsIHRoZSBEUk0gcmVsYXRlZCBjaGFuZ2VzIG9uIHRvcCBvZiAKdGhlIHBy
b3ZpZGVkIGJyYW5jaD8gTWVyZ2luZyB0aG9zZSBjaGFuZ2VzIHNlcGFyYXRlbHkgd291bGQgdGFr
ZSBhIGxvdHMgCm9mIHRpbWUgYmVjYXVzZSBvZiB0aGUgZGVwZW5kZW5jaWVzIG9uIHRoZSBzZ3Rh
YmxlIGhlbHBlcnMgYW5kIGNoYW5nZXMgCmluIHRoZSBEUk0gY29yZS4KCkJlc3QgcmVnYXJkcwot
LSAKTWFyZWsgU3p5cHJvd3NraSwgUGhEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

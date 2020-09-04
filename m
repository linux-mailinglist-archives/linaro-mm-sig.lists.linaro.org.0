Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F1D25DA28
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:42:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 395006675C
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:42:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 288A066785; Fri,  4 Sep 2020 13:42:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BD2466762;
	Fri,  4 Sep 2020 13:35:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C174D6660D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B16BD6674E; Fri,  4 Sep 2020 13:35:07 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id C8D7C6660D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:58 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133458euoutp012134221a5f8a99a0b37142212bb35ef2~xmAbkp4ZV0721507215euoutp01X
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200904133458euoutp012134221a5f8a99a0b37142212bb35ef2~xmAbkp4ZV0721507215euoutp01X
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200904133457eucas1p1058cf2b68d182f31cbfbeceea7957319~xmAbFDaFL1681116811eucas1p1b;
 Fri,  4 Sep 2020 13:34:57 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 12.66.05997.182425F5; Fri,  4
 Sep 2020 14:34:57 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200904133457eucas1p24d73bb3e4aa921cb76dc03b309ad5632~xmAauOTvi1446414464eucas1p2N;
 Fri,  4 Sep 2020 13:34:57 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133457eusmtrp2a28ab62b459b3dd2dccde1bca8d8a4db~xmAatbq4P0905709057eusmtrp2d;
 Fri,  4 Sep 2020 13:34:57 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-4e-5f52428144c8
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id BF.90.06017.082425F5; Fri,  4
 Sep 2020 14:34:57 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133456eusmtip1181679675ed5d882c788a0eff35a5877~xmAZ7SJtr1932019320eusmtip1O;
 Fri,  4 Sep 2020 13:34:56 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:47 +0200
Message-Id: <20200904131711.12950-7-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa1BMYRj2ndueXS2nrZm+YsQOzQglmvHNpOQy48zww/SPGbJ0VNRmdm1k
 xlhbUutaDVZuXRC7XbYtRZRqlkW1G7XZkNQWFQ2jNOMWu87Kv+d9nuf9nmfe+Whc0k4G0Iny
 fZxCLkuSUiKi5tE325Ija2Jil1b0zEInrU8wVKmrINHvmhwcdX79RKFbhocYyu09Q6CCBxFo
 6M0zAp12fsCRzWYUoDbNRwEa7+zDkMnZRaKOuksU0tkaMFRm7hGgps8DJNLlDVPRErb0Silg
 6ycKCNakz6bY2om3JNt73IKxVdcOs68mnTib5ygB7L1uNcWeqtYDdsw0Z9P0LaKVcVxSYiqn
 CI3aLkoYPOsU7C30OtA1ZqfUIE+kBUIaMuHwtq4b0wIRLWFuAnjDkSvgh3EAbbXtHmUMwItF
 54h/K8Xl4x6hBMDBx3Z8asXQfYxyuygmDGpHtX+xL3MUwMcnvdwmnCkh4GXDL1ILaNqH2Qaz
 exa7PQSzAD6qacfdWMxEwsIT50g+LRAajI1/eSET5So7QLrfgcyoAI5Y7QLetA4OlWfgPPaB
 I5ZqDz8b/r57FeMX0gHss5YJ+OEEgB0aHeBdEfC19TvlboQzC2FFXShPr4Yv9VWYm4bMDOgY
 9XbTuAvm1pzHeVoMszIlvDsI5lvKp2Kb2p976rDQMmT33DTHddPWp9gZEJj/P6wAAD3w41TK
 5HhOuUzO7Q9RypKVKnl8yM6UZBNw/bOWScv4HVD3c0czYGgg9RJPWxUTKyFlqcq05GYAaVzq
 K17T1rJNIo6TpR3kFCmxClUSp2wGs2hC6ideXjS8VcLEy/ZxezhuL6f4p2K0MEANwtTOi42O
 J8J5nc8qsPtdGnPCoiut6cVzBxqMGxZVhvRbM9L7J9rY2cPTxoSGp/J3qqwVVzVBZv/XiZuD
 uzaKU8OLqPcHZmbudpod3r1fLvgHal7akPzHelUTtTbTtzeHYI19Pj3S6JmFkYda/Oc3SkID
 668ndt5/ITZ3H1/2apeUUCbIwoJxhVL2B90DlvljAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIIsWRmVeSWpSXmKPExsVy+t/xu7qNTkHxBrtbmCx6z51kstg4Yz2r
 xf9tE5ktrnx9z2axcvVRJotJ9yewWCzYb23x4t5FFov+x6+ZLc6f38BucbbpDbvFlysPmSw2
 Pb7GanF51xw2ixnn9zFZrD1yl93i4IcnrBYzJr9kcxDyWDNvDaPH3m8LWDw2repk89j+7QGr
 x/3u40wem5fUe9z+95jZY/KN5Yweu282sHn0bVnF6PF5k1wAd5SeTVF+aUmqQkZ+cYmtUrSh
 hZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJextOpj9kLFvJUXPt8la2BcTJXFyMn
 h4SAicTidV+Yuhi5OIQEljJK3Fm0hwUiISNxcloDK4QtLPHnWhcbRNEnRom2f6/YQBJsAoYS
 XW8hEiICnYwS07o/soM4zAKbWST+rX8C5HBwCAvESCyeogHSwCKgKnFs2wVmEJtXwFZiYc80
 qA3yEqs3HACLcwrYSWyd8QQsLgRU82HOYpYJjHwLGBlWMYqklhbnpucWG+kVJ+YWl+al6yXn
 525iBEbXtmM/t+xg7HoXfIhRgINRiYeXwT4oXog1say4MvcQowQHs5IIr9PZ03FCvCmJlVWp
 RfnxRaU5qcWHGE2BjprILCWanA+M/LySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2amp
 BalFMH1MHJxSDYyGPxu7Jr5W7Wk0PXffjXufSI7liX0dc7qfibjEb9/q0hnP99Tr9Dm94i0b
 rj4NOiHrYsxXMj1PJNP+Wf/a0+p3zl3f+f6ufsV255L3j64Frl3R7qa38PH1eQaznopovV5s
 sPCMRi1jjKmn9vVbk81K7JOqvjDNXP0obZd+m0jR+vzXO3/4XF2mxFKckWioxVxUnAgAX2IH
 OMQCAAA=
X-CMS-MailID: 20200904133457eucas1p24d73bb3e4aa921cb76dc03b309ad5632
X-Msg-Generator: CA
X-RootMTR: 20200904133457eucas1p24d73bb3e4aa921cb76dc03b309ad5632
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133457eucas1p24d73bb3e4aa921cb76dc03b309ad5632
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133457eucas1p24d73bb3e4aa921cb76dc03b309ad5632@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 06/30] drm: exynos: use common helper
 for a scatterlist contiguity check
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VXNlIGNvbW1vbiBoZWxwZXIgZm9yIGNoZWNraW5nIHRoZSBjb250aWd1aXR5IG9mIHRoZSBpbXBv
cnRlZCBkbWEtYnVmLgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93
c2tpQHNhbXN1bmcuY29tPgpSZXZpZXdlZC1ieTogQW5kcnplaiBIYWpkYSA8YS5oYWpkYUBzYW1z
dW5nLmNvbT4KQWNrZWQtYnkgOiBJbmtpIERhZSA8aW5raS5kYWVAc2Ftc3VuZy5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2dlbS5jIHwgMjMgKysrLS0tLS0tLS0t
LS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nZW0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nZW0uYwppbmRleCBlZmE0NzY4
NThkYjUuLjE3MTZhMDIzYmNhMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9l
eHlub3NfZHJtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9n
ZW0uYwpAQCAtNDMxLDI3ICs0MzEsMTAgQEAgZXh5bm9zX2RybV9nZW1fcHJpbWVfaW1wb3J0X3Nn
X3RhYmxlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiB7CiAJc3RydWN0IGV4eW5vc19kcm1fZ2Vt
ICpleHlub3NfZ2VtOwogCi0JaWYgKHNndC0+bmVudHMgPCAxKQorCS8qIGNoZWNrIGlmIHRoZSBl
bnRyaWVzIGluIHRoZSBzZ190YWJsZSBhcmUgY29udGlndW91cyAqLworCWlmIChkcm1fcHJpbWVf
Z2V0X2NvbnRpZ3VvdXNfc2l6ZShzZ3QpIDwgYXR0YWNoLT5kbWFidWYtPnNpemUpIHsKKwkJRFJN
X0VSUk9SKCJidWZmZXIgY2h1bmtzIG11c3QgYmUgbWFwcGVkIGNvbnRpZ3VvdXNseSIpOwogCQly
ZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKLQotCS8qCi0JICogQ2hlY2sgaWYgdGhlIHByb3ZpZGVk
IGJ1ZmZlciBoYXMgYmVlbiBtYXBwZWQgYXMgY29udGlndW91cwotCSAqIGludG8gRE1BIGFkZHJl
c3Mgc3BhY2UuCi0JICovCi0JaWYgKHNndC0+bmVudHMgPiAxKSB7Ci0JCWRtYV9hZGRyX3QgbmV4
dF9hZGRyID0gc2dfZG1hX2FkZHJlc3Moc2d0LT5zZ2wpOwotCQlzdHJ1Y3Qgc2NhdHRlcmxpc3Qg
KnM7Ci0JCXVuc2lnbmVkIGludCBpOwotCi0JCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzLCBzZ3Qt
Pm5lbnRzLCBpKSB7Ci0JCQlpZiAoIXNnX2RtYV9sZW4ocykpCi0JCQkJYnJlYWs7Ci0JCQlpZiAo
c2dfZG1hX2FkZHJlc3MocykgIT0gbmV4dF9hZGRyKSB7Ci0JCQkJRFJNX0VSUk9SKCJidWZmZXIg
Y2h1bmtzIG11c3QgYmUgbWFwcGVkIGNvbnRpZ3VvdXNseSIpOwotCQkJCXJldHVybiBFUlJfUFRS
KC1FSU5WQUwpOwotCQkJfQotCQkJbmV4dF9hZGRyID0gc2dfZG1hX2FkZHJlc3MocykgKyBzZ19k
bWFfbGVuKHMpOwotCQl9CiAJfQogCiAJZXh5bm9zX2dlbSA9IGV4eW5vc19kcm1fZ2VtX2luaXQo
ZGV2LCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSk7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

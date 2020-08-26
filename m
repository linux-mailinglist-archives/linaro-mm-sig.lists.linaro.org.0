Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B25BC252780
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:39:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA7B1619AC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:39:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CBACA619B1; Wed, 26 Aug 2020 06:39:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0A6561873;
	Wed, 26 Aug 2020 06:35:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CC7F36186A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BE39E60749; Wed, 26 Aug 2020 06:35:35 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 7BF9860749
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:32 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063531euoutp02c16ac8eb97412277fd992743ecfa6747~uvepKhJFz1443214432euoutp02s
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200826063531euoutp02c16ac8eb97412277fd992743ecfa6747~uvepKhJFz1443214432euoutp02s
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063531eucas1p248ebe392029fc6a0fd4a1b8c8288bab3~uveo5b_lz0402804028eucas1p2e;
 Wed, 26 Aug 2020 06:35:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id CC.23.06456.3B2064F5; Wed, 26
 Aug 2020 07:35:31 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063531eucas1p21c9277fe2a91e632e40822fb04a2c095~uveog6mDa0403504035eucas1p2o;
 Wed, 26 Aug 2020 06:35:31 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063531eusmtrp133d833530b3a2b770231736ad24afb9e~uveogH7nN1091110911eusmtrp1L;
 Wed, 26 Aug 2020 06:35:31 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-b7-5f4602b344c9
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 8C.C0.06314.2B2064F5; Wed, 26
 Aug 2020 07:35:30 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063530eusmtip247af081d1930d5e275f6f52617cdf1d2~uvenw-tS40092200922eusmtip2x;
 Wed, 26 Aug 2020 06:35:30 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:50 +0200
Message-Id: <20200826063316.23486-7-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+XbOzs6Wy9M0/LKLMMhQUpOivkhNw+xEElGEGZTOPKipU87U
 sn8ahpmb5mpdRNTUSs17W6wwvOaaYrryhpJ5YRlajswbFGS5Hcv/fu/7Ps/3vLx8JCbp4buS
 cfIUhpXLEqSECDe8/Wn20vNCIva8VG9Bub1dPPQ8v56P/hjuYGhg6TuBnlUbeejuuAZHJS2H
 0PTYBxzlWb5hyGxuEKCejFkBWhyY5CGdZYiP+hsLCZRvbuah2o5PAtQ295mP8rUzRKCErimu
 AXTTcglO66qyCfrl8gSfHlebeLT+yXX644oFo7XDFYB+PaIk6NsvqgC9oNtxasN5kV80kxCX
 xrA+AZGi2Kn7FkFyqcPVoYVBQgm0IhUgSUjtg4NGRxUQkRKqEsCsAT3gikUAjT+Ma8UCgHlZ
 mYQKCO0OVUUWwQ0qAFSOGdctk7oHfJuKoHyhyqqyO5ypTAA7cx1sIoyqwGFR9W+7yIm6AO+Z
 y4GNcWonnC3twmwspvyhUTm1FucGqxta7X0hFQBN6ry1/owAFs35cxwMO2ZzAcdO8KvphYDj
 bbBbm4PbgiF1Y3W73loBV+QA2J+Rv+Y4BEd7fxG2c2CUB6xv9OEuEwTv6f043AiHrZtsYmwV
 7xoeYlxbDG/dlHBvuMMCU93/1Lb3fRjHNCysUdtzJNQdAB81e2iAW8F6VAkAVcCFSVUkxjAK
 XzlzxVshS1SkymO8LyUl6sDqJ+teMc2/Akt9Ue2AIoHUQVxCHI2Q8GVpivTEdgBJTOosPtLT
 fVEijpalX2PYpAg2NYFRtIOtJC51Ee8tm7kgoWJkKUw8wyQz7L8pjxS6KkF93JHTAVc6QtwB
 W7BbExXy5pi/u3f0jGbu7HIh3YCFnmnVlD2eXhi5Vb5ffcxPaCjyDmQK3b+4Xj4ujXZsi2TC
 paxz04HMyODt4WFVoUNs2eHRIqt1s8uZ7BO410TY0zqtl774dmVUkKG9M/5pXUvX1vKWcy7z
 u6Y8Tx5893yiWYorYmW+nhirkP0FEPcxe2ADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEIsWRmVeSWpSXmKPExsVy+t/xe7qbmNziDRZ8trHoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwm3Z/AYrFgv7XFi3sXWSz6H79mtjh/fgO7xdmmN+wWX648ZLLY
 9Pgaq8XlXXPYLGac38dksfbIXXaLgx+esFrMmPySzUHIY828NYwee78tYPHYtKqTzWP7twes
 Hve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObRt2UVo8fnTXIB3FF6NkX5pSWpChn5xSW2StGG
 FkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GU+nPmYvWMhTce3zVbYGxslcXYyc
 HBICJhJdy9vZuhi5OIQEljJK7DzSww6RkJE4Oa2BFcIWlvhzrQuq6BOjxIyr69lAEmwChhJd
 byESIgKdjBLTuj+ygzjMAptZJP6tfwI2SlggWmL10qPMIDaLgKrEm4UnwWxeAVuJow1P2SBW
 yEus3nAALM4pYCdxvLsfLC4EVHN67QzmCYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+du
 YgTG17ZjPzfvYLy0MfgQowAHoxIP7wI213gh1sSy4srcQ4wSHMxKIrxOZ0/HCfGmJFZWpRbl
 xxeV5qQWH2I0BTpqIrOUaHI+MPbzSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphak
 FsH0MXFwSjUwGq5vejPD8X7PrqZbxsqLvrg55WnMP3jAqq3FvbsgKuX974at358++DCD6WTO
 pEbWKde00ktsl5eUf/g0/52FrPOt+jcxd/yklm/vfL15m/jKqPeHfy9epHr23hOeRk8OfZ/t
 cX8OHeQued28K/qzjrn8lNNNijM1LjRcq/7EIZQ850NtqNfXGCWW4oxEQy3mouJEABxpr6LF
 AgAA
X-CMS-MailID: 20200826063531eucas1p21c9277fe2a91e632e40822fb04a2c095
X-Msg-Generator: CA
X-RootMTR: 20200826063531eucas1p21c9277fe2a91e632e40822fb04a2c095
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063531eucas1p21c9277fe2a91e632e40822fb04a2c095
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063531eucas1p21c9277fe2a91e632e40822fb04a2c095@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 06/32] drm: exynos: use common helper for
 a scatterlist contiguity check
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

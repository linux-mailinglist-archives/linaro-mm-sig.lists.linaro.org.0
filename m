Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B25C1D162C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:44:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C437465F93
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:44:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AE9C065FAD; Wed, 13 May 2020 13:44:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A0E666047;
	Wed, 13 May 2020 13:33:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6F6E465F87
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 614C565F8D; Wed, 13 May 2020 13:33:12 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 02FA865F8E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:05 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133304euoutp01f2eaa7fa3243e309a8ed000645f645aa~OmcOppQ3Q2269422694euoutp01D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133304euoutp01f2eaa7fa3243e309a8ed000645f645aa~OmcOppQ3Q2269422694euoutp01D
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133303eucas1p1b8a3a0a9825af31ba19b0341f328aa56~OmcOQJc492350723507eucas1p1q;
 Wed, 13 May 2020 13:33:03 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 65.01.60679.F07FBBE5; Wed, 13
 May 2020 14:33:03 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133303eucas1p1e3ede8aa38f730d2be317dff27c03019~OmcN8Gns52350623506eucas1p15;
 Wed, 13 May 2020 13:33:03 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133303eusmtrp1d098a14ab77d5bb25a786d9565f5798c~OmcN7ZvPR1011910119eusmtrp17;
 Wed, 13 May 2020 13:33:03 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-2f-5ebbf70f6d6b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 10.1A.08375.F07FBBE5; Wed, 13
 May 2020 14:33:03 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133302eusmtip19bb2d9f6ce9d2ea12ae27f03f3db0dee~OmcNQj13R0693406934eusmtip1P;
 Wed, 13 May 2020 13:33:02 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:17 +0200
Message-Id: <20200513133245.6408-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKKsWRmVeSWpSXmKPExsWy7djP87r833fHGUy5rm7Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCuKyyYlNSezLLVI3y6BK2PHz39MBbd5Ko7dOsHcwHiIq4uRk0NCwERi3Y9j
 TF2MXBxCAisYJY6fvMAO4XxhlPg/dxo7SJWQwGdGiaUvarsYOcA6fq8ogahZziixoPEiC1zD
 xwfHWEEa2AQMJbredrGB2CICrYwSJ3p5QIqYBTqYJa5NnM8IkhAWiJW43/yZGcRmEVCVWHy6
 B6yBV8BWYvrBj6wQ98lLrN5wAKyGEyj+6s5+sG0SAsfYJY7t6GeGOMlFYsVBBYh6YYlXx7ew
 Q9gyEqcn90DVNzNKPDy3lh3C6WGUuNw0gxGiylrizrlfbCCDmAU0Jdbv0ocIO0pc3feDEWI+
 n8SNt4IgYWYgc9K26VBreSU62oQgqtUkZh1fB7f24IVLzBC2h0TP9Q5WSAAdZpS4s7ubcQKj
 /CyEZQsYGVcxiqeWFuempxYb5aWW6xUn5haX5qXrJefnbmIEJqbT/45/2cG460/SIUYBDkYl
 Hl6LW7vjhFgTy4orcw8xSnAwK4nw+q0HCvGmJFZWpRblxxeV5qQWH2KU5mBREuc1XvQyVkgg
 PbEkNTs1tSC1CCbLxMEp1cDYfjZ075W/Ys5+Hk+9eHb9FZ6xR/srn9jkaVOX7eT74GomeqrU
 8p31wa0d2ZpsWesdT12Kfxqcr+LylXvn49Jao8gLS3p4/I0mNMXaTuRcc4lpinTjh+fntx+4
 eO/L80TJOYwvRN8IK0zRWXmD+QvPT2u3+5l7Ol+uqzT5XO6XsnvVBi/zqRzdSizFGYmGWsxF
 xYkAHrQEOEgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7r833fHGUxZIGrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL2PHz39MBbd5Ko7dOsHcwHiIq4uRg0NCwETi94qSLkYuDiGBpYwS7SeXsHYxcgLF
 ZSROTmuAsoUl/lzrYoMo+sQocfHrarAEm4ChRNdbiISIQCejxLTuj+wgDrPABGaJ+y2rGUGq
 hAWiJQ6sOg3WwSKgKrH4dA8biM0rYCsx/eBHqBXyEqs3HGAGsTmB4q/u7GcBsYUE8iX2Lt7H
 NoGRbwEjwypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzAWNl27OfmHYyXNgYfYhTgYFTi4bW4
 tTtOiDWxrLgy9xCjBAezkgiv33qgEG9KYmVValF+fFFpTmrxIUZToKMmMkuJJucD4zivJN7Q
 1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOjN5eoR8x/Q9WP9zUnuin/
 nlWzszzq4NwLW3fuiirZYV+SVze7+WfchitFXM1ypR7ai9s7CxRf7rxYWqvQnfhmn8fHi/qL
 YhzLBWXXXZy8zHwm/6k800/C7a/XH/h2z+zduwPvbkekLLz77cWTV7tNnj7VOPV/ZkawjhQD
 65k81rmHL/yUrlc6qcRSnJFoqMVcVJwIAGK75XWrAgAA
X-CMS-MailID: 20200513133303eucas1p1e3ede8aa38f730d2be317dff27c03019
X-Msg-Generator: CA
X-RootMTR: 20200513133303eucas1p1e3ede8aa38f730d2be317dff27c03019
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133303eucas1p1e3ede8aa38f730d2be317dff27c03019
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133303eucas1p1e3ede8aa38f730d2be317dff27c03019@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Inki Dae <inki.dae@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 10/38] drm: exynos: use common helper for
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
c2tpQHNhbXN1bmcuY29tPgotLS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNlZSAnW1BBVENIIHY1
IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9yaWdfbmVudHMgbWlz
dXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlvbW11LzIwMjAwNTEz
MTMyMTE0LjYwNDYtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZ2VtLmMgfCAyMyArKystLS0tLS0tLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2dlbS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2dlbS5jCmluZGV4IDBkZjU3ZWUuLmE0OWE4ZWEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nZW0uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZ2VtLmMKQEAgLTQzMSwyNyArNDMx
LDEwIEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqCiB7CiAJc3RydWN0IGV4eW5vc19kcm1fZ2Vt
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
ZGV2LCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSk7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

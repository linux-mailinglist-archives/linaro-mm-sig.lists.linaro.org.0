Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D1E25DA87
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:53:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EBE766768
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:53:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8008C6676B; Fri,  4 Sep 2020 13:53:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A10D266780;
	Fri,  4 Sep 2020 13:36:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8AC57665AA
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:36:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 78CCE66775; Fri,  4 Sep 2020 13:36:21 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 183A56674D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:08 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133507euoutp02665685b2414f7ef6885f4a445a12b9a7~xmAkN2Qla2842328423euoutp02E
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200904133507euoutp02665685b2414f7ef6885f4a445a12b9a7~xmAkN2Qla2842328423euoutp02E
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200904133506eucas1p16f875fb1a1d79b21dfd37ea6cc11a0ff~xmAjujuXO1156611566eucas1p1K;
 Fri,  4 Sep 2020 13:35:06 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 0D.39.06318.A82425F5; Fri,  4
 Sep 2020 14:35:06 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133506eucas1p170dd4d393f12bf79c9ba4a3c9532c29f~xmAjaoAAZ0117201172eucas1p1y;
 Fri,  4 Sep 2020 13:35:06 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133506eusmtrp2d63e1b01372524ece3713ef834439e25~xmAjZ9k5q0977109771eusmtrp2J;
 Fri,  4 Sep 2020 13:35:06 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-b1-5f52428aa09e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8E.A0.06017.A82425F5; Fri,  4
 Sep 2020 14:35:06 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133505eusmtip163609e20523e3ff142d855a3f0b8eaa4~xmAiz6CsY1932019320eusmtip1S;
 Fri,  4 Sep 2020 13:35:05 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:17:02 +0200
Message-Id: <20200904131711.12950-22-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfSxVcRjH+51zz73HzbHTJX5RsbvVqg0Zf5zlTrHWzj9tprU2ltvFCcWl
 e1DMMMrL9TJiCIuFvFO6EUrIa3IZMm8NsRnztrwU85LTQf99n8/3++x59uzBUUkDZox7KwMY
 lVLhIxWKBTXtm73magcn+eXGCksqUduFUG8zqzBqryYFpQbXl4VUSVkbQuV9tqXWBqcQqnp6
 CKMG6nOEVEXrDxG1UraMUc0rMxj1W5OKXCPo8pflgB4vrAP0p408AV27MYnRE/EdCP2uIJwe
 251G6dThIkB/WRkU0A0jEUI6SVMK6NXqs466zmKZB+PjHcSoLO3uib1yS9uBf5Lek5jdcRAB
 Fo+rgQ4OSRuYtLAiUgMxLiGLAVztTBbwxRqA9W2jKF+sApi29wI5bEkYikZ4owjAzZwicNRS
 3b8LuJSQtILqRbWQ0wbkMwA7E3W5EEr+QaD2daeIM/RJR7gW24SpAY4LyHMwr8eDwwRpB0uK
 p0T8NFNY9qYJ5bTOPn+fOYPxXCuC6RsyXl+HE0sLB3l9ON+hOdCn4V5d7r9NIRkF4JS2QsQX
 CQAORGYCPmULx7VbQm4JlLwIq+oteWwP4yNrBByGpB4cXjzBYXRfPq/JQHlMwNhoCZ8+D7M6
 Ko/GNvf1o7ymYUll/8FJU/bPMLEpSgamWf+H5QFQCoyYQNbXk2GtlcxjC1bhywYqPS3c/Xyr
 wf5Lde92rH8AjdtuLYDEgVSXOHbVSS7BFEFssG8LgDgqNSAcerpdJYSHIjiEUfnJVYE+DNsC
 THCB1IiwfjV3V0J6KgKYhwzjz6gOXQTXMY4AITvu2XoDGtd58/xbUbRh3Pf0EKMLJz+2C0+F
 a9c2escXikeXXB4k22blGzWa6c3P0cTtgZ4r2yOzoTfCCsesSqU7X72UT+8vnXG702RmUtn1
 KzotTGa4VTApaw1KrmD7bL45yzJu/oyTx+S7aOxDzQ2JbNnmbKshVe82XSsXP5IKWC+F1SVU
 xSr+AqiFDBtOAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xu7pdTkHxBse3S1j0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xYfV71ktDn54wmrx
 fctkJgdejzXz1jB63Fm6k9Fj77cFLB7bvz1g9bjffZzJY/OSeo/b/x4ze0y+sZzR4/CHKywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexvxVxxgL+vgq2v/dYWxgfMvdxcjJISFgItFzrY2pi5GLQ0hgKaNEX+MU
 NoiEjMTJaQ2sELawxJ9rXWwQRZ8YJfY0PmcBSbAJGEp0vYVIiAh0MkpM6/7IDuIwC/xjkjix
 dzsTSJWwgJ/E1u9XGbsYOThYBFQlFpxNAQnzCthJrFzxkB1ig7zE6g0HmEFsTqD41hlPwDYL
 CdhKfJizmGUCI98CRoZVjCKppcW56bnFRnrFibnFpXnpesn5uZsYgVGz7djPLTsYu94FH2IU
 4GBU4uFlsA+KF2JNLCuuzD3EKMHBrCTC63T2dJwQb0piZVVqUX58UWlOavEhRlOgmyYyS4km
 5wMjOq8k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA6NZYzFDSrT+
 zEYH20lhl1sVs9t9z81h2F3m6iVk8K3lgOffF6wS1WH3/t2Pn5H8mKPzesEVxdblAt2tPhqM
 UmZcT1V2b+T4dmKebaoJm6mZi98WBTX1ZcmFMh/O/edUiS8/v7z+0Ml9P1p/fdsk/2ReqVTa
 kYvJOZf7vA9XtsqpFLx7u//+ESWW4oxEQy3mouJEAH4u/TOwAgAA
X-CMS-MailID: 20200904133506eucas1p170dd4d393f12bf79c9ba4a3c9532c29f
X-Msg-Generator: CA
X-RootMTR: 20200904133506eucas1p170dd4d393f12bf79c9ba4a3c9532c29f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133506eucas1p170dd4d393f12bf79c9ba4a3c9532c29f
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133506eucas1p170dd4d393f12bf79c9ba4a3c9532c29f@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Daniel Vetter <daniel@ffwll.ch>, xen-devel@lists.xenproject.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 21/30] drm: xen: fix common struct
 sg_table related issues
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRtYV9t
YXBfc2coKSBmdW5jdGlvbgpyZXR1cm5zIHRoZSBudW1iZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmll
cyBpbiB0aGUgRE1BIGFkZHJlc3Mgc3BhY2UuCkhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMg
dG8gdGhlIGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKZG1hX3VubWFwX3NnIG11
c3QgYmUgY2FsbGVkIHdpdGggdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwpwYXNz
ZWQgdG8gdGhlIGRtYV9tYXBfc2coKS4KCnN0cnVjdCBzZ190YWJsZSBpcyBhIGNvbW1vbiBzdHJ1
Y3R1cmUgdXNlZCBmb3IgZGVzY3JpYmluZyBhIG5vbi1jb250aWd1b3VzCm1lbW9yeSBidWZmZXIs
IHVzZWQgY29tbW9ubHkgaW4gdGhlIERSTSBhbmQgZ3JhcGhpY3Mgc3Vic3lzdGVtcy4gSXQKY29u
c2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nl
cyAoc2dsIGVudHJ5KSwKYXMgd2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJp
ZXM6IENQVSBwYWdlcyAob3JpZ19uZW50cyBlbnRyeSkKYW5kIERNQSBtYXBwZWQgcGFnZXMgKG5l
bnRzIGVudHJ5KS4KCkl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0
byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKZW50cmllcywgY2FsbGluZyBETUEtbWFwcGlu
ZyBmdW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRyaWVzIG9yCmlnbm9yaW5nIHRo
ZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkgdGhlIGRtYV9tYXBfc2coKQpm
dW5jdGlvbi4KCkZpeCB0aGUgY29kZSB0byByZWZlciB0byBwcm9wZXIgbmVudHMgb3Igb3JpZ19u
ZW50cyBlbnRyaWVzLiBUaGlzIGRyaXZlcgpyZXBvcnRzIHRoZSBudW1iZXIgb2YgdGhlIHBhZ2Vz
IGluIHRoZSBpbXBvcnRlZCBzY2F0dGVybGlzdCwgc28gaXQgc2hvdWxkCnJlZmVyIHRvIHNnX3Rh
YmxlLT5vcmlnX25lbnRzIGVudHJ5LgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8
bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgpBY2tlZC1ieTogT2xla3NhbmRyIEFuZHJ1c2hjaGVu
a28gPG9sZWtzYW5kcl9hbmRydXNoY2hlbmtvQGVwYW0uY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS94ZW4veGVuX2RybV9mcm9udF9nZW0uYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZW4v
eGVuX2RybV9mcm9udF9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS94ZW4veGVuX2RybV9mcm9udF9n
ZW0uYwppbmRleCAzOWZmOTViNzUzNTcuLjBlNTdjODAwNThiMiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3hlbi94ZW5fZHJtX2Zyb250X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS94
ZW4veGVuX2RybV9mcm9udF9nZW0uYwpAQCAtMjE2LDcgKzIxNiw3IEBAIHhlbl9kcm1fZnJvbnRf
Z2VtX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQlyZXR1cm4gRVJS
X1BUUihyZXQpOwogCiAJRFJNX0RFQlVHKCJJbXBvcnRlZCBidWZmZXIgb2Ygc2l6ZSAlenUgd2l0
aCBuZW50cyAldVxuIiwKLQkJICBzaXplLCBzZ3QtPm5lbnRzKTsKKwkJICBzaXplLCBzZ3QtPm9y
aWdfbmVudHMpOwogCiAJcmV0dXJuICZ4ZW5fb2JqLT5iYXNlOwogfQotLSAKMi4xNy4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EB52527A2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:46:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4388B619B7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:46:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 368A2665AA; Wed, 26 Aug 2020 06:46:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7FDC666DD;
	Wed, 26 Aug 2020 06:36:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9D698617B9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8BCF7665CB; Wed, 26 Aug 2020 06:35:47 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 93BB9617B9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:37 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063536euoutp01ee4576ef6e72a4888fcf672cc7347fb6~uvet9vCoo1717217172euoutp01h
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063536euoutp01ee4576ef6e72a4888fcf672cc7347fb6~uvet9vCoo1717217172euoutp01h
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063536eucas1p2741f59a0cf7cf468363f1150636ccd2f~uvetjyZrL0402704027eucas1p2m;
 Wed, 26 Aug 2020 06:35:36 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id D0.5D.06318.8B2064F5; Wed, 26
 Aug 2020 07:35:36 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063536eucas1p2e29d2b061b8b74c06c9ea61ad6737ba2~uvetOUzT_0399203992eucas1p2Y;
 Wed, 26 Aug 2020 06:35:36 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063536eusmtrp162a36d6d92e08db6ac5cbf5729940a4d~uvetNua1W1091110911eusmtrp1X;
 Wed, 26 Aug 2020 06:35:36 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-df-5f4602b8400d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 23.D0.06314.8B2064F5; Wed, 26
 Aug 2020 07:35:36 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063535eusmtip2fbf9685e6d4915ac09421e3641e645a1~uvestpX-S0474104741eusmtip2U;
 Wed, 26 Aug 2020 06:35:35 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:58 +0200
Message-Id: <20200826063316.23486-15-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+87Zzs7MyWka+9TIWhjYRfOCnDCkO4cIi+yfhNKVx0ttKpta
 KqEmRsx5VxIx02l5T10yh+JtaMuG5i1Rs1K0zGgZTo3StM0z7b/f+7zP874vHx+O8lVsBzw8
 IpqWRojEQsyKpX71++1RDXI+8Fhepj2Z3t+LkI0F9WxyQ52NkiPLCxhZVdODkCUdPuTSyDRC
 qmZG2eRwSxFG1nV/4JBdP2fZZP3TCeykNVVbXAuotpUSFtW8MsWmPqXpEOpleSL1fn0GpXLH
 KgDVOp6EURlN1YDSjTUjlFG19/LOAKsTwbQ4PJaWuvkGWYXVfEnhRBlt72UX3E8CSkIOuDgk
 vOCcZpotB1Y4n6gEMEnZizDFEoD5aoWlMAI4oFllbUU2GmpQplEB4GJpJ9iOTBiebbowwh3K
 DXLMzHZEKoCv063NJpTQIrAp9d2myZbwh8kLSo6ZWYQzXCh6zjYzj/CFxvx1wKxzgjUNnaiZ
 uSZdl5aJmQdBooUDZzY+W0xnYcPHIgvbwm+6Jg7De6A+V8FiAikATvfXcZhCAeDwgwJLwgdO
 9v8xjcVN97nA+hY3Rj4FlbpSjlmGhA0cM+wyy6gJc9SPUUbmwUcP+Yz7ICzUvdhe2zUwhDJM
 QXn6G8sLZQP4NWsIzQJOhf+XlQBQDQR0jEwSSss8I+i7rjKRRBYTEep6K1KiAqafpF/XLWtA
 +9pNLSBwILTmlWDnAvlsUawsTqIFEEeFdrzTffobfF6wKC6elkYGSmPEtEwLHHGWUMDzVM5f
 5xOhomj6Dk1H0dKtLoJzHZKAh/iA4xOu05Vld3WjRt/dsW9BxT9sc9ve26+pvPWSIJYu7hkc
 rewTZsWDuKmQMW7ZZEaV146UEI2TIPnC4FWF5qLAmzvP8f011/439HhGQJlnUF78eN7+tmL/
 td2rRYtijyPwO9cl9ZriTE+CMWY+x3n0h0E/kTibIPErnMZpIUsWJnI/hEplon9h6bMFRQMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xe7o7mNziDXZ/Z7boPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4MfnrBarJ9/i82B
 x2PNvDWMHnu/LWDx2P7tAavH/e7jTB6bl9R73P73mNlj8o3ljB67bzawefRtWcXocfzGdiaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DJWP2tmL/gsXDFxRm0D4yKBLkZODgkBE4n/G1YzdzFycQgJLGWUmPBoHjNEQkbi5LQGVghb
 WOLPtS42iKJPQEX7r7CBJNgEDCW63kIkRAQ6GSWmdX9kB3GYBU4wSdzbO58RpEpYIFDi2cR5
 YKNYBFQl3s9ZBmbzCthJfJ76jxFihbzE6g0HwFZzAsWPd/eDbRASsJU4vXYG8wRGvgWMDKsY
 RVJLi3PTc4sN9YoTc4tL89L1kvNzNzECI2TbsZ+bdzBe2hh8iFGAg1GJh3cBm2u8EGtiWXFl
 7iFGCQ5mJRFep7On44R4UxIrq1KL8uOLSnNSiw8xmgIdNZFZSjQ5Hxi9eSXxhqaG5haWhubG
 5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGK2eptUb3rzAHpS8hleh6EGE/9YHrTMP
 eZTm7DWVcVThujzVvYj5jtWdtxVTSp5rb6ter81xlsNoXpGT19oF+re/8cxbZaLSKVooonn/
 Y0hyvxPD9gVqzDwq87Zwri2fFu5369M3RalXkUZzZkS05Eb3FncstWTyt1vbG8SrrGNwal6s
 a9plJZbijERDLeai4kQAAhsJXqYCAAA=
X-CMS-MailID: 20200826063536eucas1p2e29d2b061b8b74c06c9ea61ad6737ba2
X-Msg-Generator: CA
X-RootMTR: 20200826063536eucas1p2e29d2b061b8b74c06c9ea61ad6737ba2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063536eucas1p2e29d2b061b8b74c06c9ea61ad6737ba2
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063536eucas1p2e29d2b061b8b74c06c9ea61ad6737ba2@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 14/32] drm: omapdrm: fix common struct
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
ZW50cyBlbnRyaWVzLiBUaGlzIGRyaXZlcgpjaGVja3MgZm9yIGEgYnVmZmVyIGNvbnRpZ3VpdHkg
aW4gRE1BIGFkZHJlc3Mgc3BhY2UsIHNvIGl0IHNob3VsZCB0ZXN0CnNnX3RhYmxlLT5uZW50cyBl
bnRyeS4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1z
dW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dlbS5jIHwgNiArKyst
LS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9nZW0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9vbWFwZHJtL29tYXBfZ2VtLmMKaW5kZXggZmYwYzRiMGMzZmQwLi5hN2E5YTBhZmUyYjYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9nZW0uYwpAQCAtNDgsNyArNDgsNyBAQCBzdHJ1Y3Qg
b21hcF9nZW1fb2JqZWN0IHsKIAkgKiAgIE9NQVBfQk9fTUVNX0RNQV9BUEkgZmxhZyBzZXQpCiAJ
ICoKIAkgKiAtIGJ1ZmZlcnMgaW1wb3J0ZWQgZnJvbSBkbWFidWYgKHdpdGggdGhlIE9NQVBfQk9f
TUVNX0RNQUJVRiBmbGFnIHNldCkKLQkgKiAgIGlmIHRoZXkgYXJlIHBoeXNpY2FsbHkgY29udGln
dW91cyAod2hlbiBzZ3QtPm9yaWdfbmVudHMgPT0gMSkKKwkgKiAgIGlmIHRoZXkgYXJlIHBoeXNp
Y2FsbHkgY29udGlndW91cyAod2hlbiBzZ3QtPm5lbnRzID09IDEpCiAJICoKIAkgKiAtIGJ1ZmZl
cnMgbWFwcGVkIHRocm91Z2ggdGhlIFRJTEVSIHdoZW4gZG1hX2FkZHJfY250IGlzIG5vdCB6ZXJv
LCBpbgogCSAqICAgd2hpY2ggY2FzZSB0aGUgRE1BIGFkZHJlc3MgcG9pbnRzIHRvIHRoZSBUSUxF
UiBhcGVydHVyZQpAQCAtMTI3OSw3ICsxMjc5LDcgQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpv
bWFwX2dlbV9uZXdfZG1hYnVmKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHNpemVfdCBzaXplLAog
CXVuaW9uIG9tYXBfZ2VtX3NpemUgZ3NpemU7CiAKIAkvKiBXaXRob3V0IGEgRE1NIG9ubHkgcGh5
c2ljYWxseSBjb250aWd1b3VzIGJ1ZmZlcnMgY2FuIGJlIHN1cHBvcnRlZC4gKi8KLQlpZiAoc2d0
LT5vcmlnX25lbnRzICE9IDEgJiYgIXByaXYtPmhhc19kbW0pCisJaWYgKHNndC0+bmVudHMgIT0g
MSAmJiAhcHJpdi0+aGFzX2RtbSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7CiAKIAlnc2l6
ZS5ieXRlcyA9IFBBR0VfQUxJR04oc2l6ZSk7CkBAIC0xMjkzLDcgKzEyOTMsNyBAQCBzdHJ1Y3Qg
ZHJtX2dlbV9vYmplY3QgKm9tYXBfZ2VtX25ld19kbWFidWYoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgc2l6ZV90IHNpemUsCiAKIAlvbWFwX29iai0+c2d0ID0gc2d0OwogCi0JaWYgKHNndC0+b3Jp
Z19uZW50cyA9PSAxKSB7CisJaWYgKHNndC0+bmVudHMgPT0gMSkgewogCQlvbWFwX29iai0+ZG1h
X2FkZHIgPSBzZ19kbWFfYWRkcmVzcyhzZ3QtPnNnbCk7CiAJfSBlbHNlIHsKIAkJLyogQ3JlYXRl
IHBhZ2VzIGxpc3QgZnJvbSBzZ3QgKi8KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

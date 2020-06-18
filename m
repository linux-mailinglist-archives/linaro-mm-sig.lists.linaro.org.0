Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5741FF834
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:54:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31BD36013A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:54:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 22D3E6659D; Thu, 18 Jun 2020 15:54:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 285F4665FA;
	Thu, 18 Jun 2020 15:41:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B10C3665A1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A4001665BB; Thu, 18 Jun 2020 15:40:38 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id AB48B665A1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:25 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154024euoutp02a163e004240de32cab1c4aeb649c9b26~ZrZsb_8Gr1314813148euoutp02A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154024euoutp02a163e004240de32cab1c4aeb649c9b26~ZrZsb_8Gr1314813148euoutp02A
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154024eucas1p1f33e944e515a02431b4b75fd40324de1~ZrZsIYXz21545515455eucas1p1X;
 Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id F1.DE.60679.8EA8BEE5; Thu, 18
 Jun 2020 16:40:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154024eucas1p103fa1a3752801874ae883d366639f233~ZrZr0HH3c1543415434eucas1p1V;
 Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154024eusmtrp25249819e8665fc100847ad755d879c13~ZrZrzgH6s0399203992eusmtrp2b;
 Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-35-5eeb8ae888af
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 9C.EE.08375.8EA8BEE5; Thu, 18
 Jun 2020 16:40:24 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154023eusmtip1ea5fd9024a12670cb8e53473be74f031~ZrZrMuxB90864308643eusmtip1J;
 Thu, 18 Jun 2020 15:40:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:36 +0200
Message-Id: <20200618153956.29558-16-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHKsWRmVeSWpSXmKPExsWy7djP87ovul7HGdy/rmLRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBHcdmkpOZklqUW6dslcGWsftbMXvBZuGLijNoGxkUCXYycHBICJhJ35u9lA7GFBFYw
 Ssz8ldLFyAVkf2GU2L14LTuE85lRYvPdCawwHdeuTmGC6FjOKLFlji5cx5cnb8GK2AQMJbre
 doGNFRFoZZQ40csDUsQscIhJYkvrVRaQhLBAsMSKJS1gk1gEVCU2resHa+AVsJOYP3EVI8Q2
 eYnVGw4wg9icQPHTx1uhrtjHLrH3YS2E7SLxd3IPE4QtLPHq+BZ2CFtG4v/O+UwgiyUEmhkl
 Hp6D+EdCoIdR4nLTDKgN1hJ3zv0C2swBdJ6mxPpd+hBhR4lJrz6ygIQlBPgkbrwVBAkzA5mT
 tk1nhgjzSnS0CUFUq0nMOr4Obu3BC5egSjwk7s52hoTPREaJtlez2Ccwys9C2LWAkXEVo3hq
 aXFuemqxUV5quV5xYm5xaV66XnJ+7iZGYCo6/e/4lx2Mu/4kHWIU4GBU4uF9EfI6Tog1say4
 MvcQowQHs5IIr9PZ03FCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeY0XvYwVEkhPLEnNTk0tSC2C
 yTJxcEo1MCrzvV1Trl2yOdLLIfAl+7zZRxednic0593+lMcyisemsbZz7mUP2F7is97xwM64
 ulc+C/yMj7HLBzv8N9y7tK9lX+d+83W+kxYckLklY/rE+RrnsyUHwzk0P+7V9+VJuqA/wT95
 Tn3iFo5PF23X27daR+UWnQ7p+87n4Pg7Pv/m558bE7b4fVdiKc5INNRiLipOBAAJdHuuQQMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEIsWRmVeSWpSXmKPExsVy+t/xu7ovul7HGfzYwWPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GWsftbMXvBZuGLijNoGxkUCXYycHBICJhLXrk5hArGFBJYySnw4xQ0Rl5E4Oa2BFcIWlvhz
 rYuti5ELqOYTo8TpTTvAEmwChhJdbyESIgKdjBLTuj+ygzjMAieYJO7tnc8IUiUsECjRM+sB
 M4jNIqAqsWldPxuIzStgJzF/4ipGiBXyEqs3HACr4QSKnz7eygpxkq3E8w9tbBMY+RYwMqxi
 FEktLc5Nzy021CtOzC0uzUvXS87P3cQIjI9tx35u3sF4aWPwIUYBDkYlHt4XIa/jhFgTy4or
 cw8xSnAwK4nwOp09HSfEm5JYWZValB9fVJqTWnyI0RToqInMUqLJ+cDYzSuJNzQ1NLewNDQ3
 Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwDhB+WhKx9yW9pA9YXsPCDwp89545fKF
 Ganvkivnsh+e847tV1zkYafq6iW/rhpmXU+J2X/CZ3oj791zHs9zGP9L+q7SFmxz7l6zZe6n
 /mOWrfpfJc6Ksa7f7hyt7/t1rvGPOYwXZMUit2+62NS9c+sK0Z225rmzGPSLun1XXwx4MNMm
 leNRiKASS3FGoqEWc1FxIgD84oXCpQIAAA==
X-CMS-MailID: 20200618154024eucas1p103fa1a3752801874ae883d366639f233
X-Msg-Generator: CA
X-RootMTR: 20200618154024eucas1p103fa1a3752801874ae883d366639f233
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154024eucas1p103fa1a3752801874ae883d366639f233
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154024eucas1p103fa1a3752801874ae883d366639f233@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 15/36] drm: omapdrm: fix common struct
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

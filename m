Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A80020073F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:49:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 746DE665DA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:49:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 66A24665DF; Fri, 19 Jun 2020 10:49:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 01637666C8;
	Fri, 19 Jun 2020 10:38:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DEBF166597
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D18B7665D0; Fri, 19 Jun 2020 10:37:15 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id E293A66597
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:04 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103704euoutp021c252d231eca82e2809513ed66fe7181~Z66H4-1wc2242122421euoutp02X
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103704euoutp021c252d231eca82e2809513ed66fe7181~Z66H4-1wc2242122421euoutp02X
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103703eucas1p2a6de3403444cc76831be949c86929684~Z66Hi9qP42888828888eucas1p2g;
 Fri, 19 Jun 2020 10:37:03 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id EE.9C.06456.F459CEE5; Fri, 19
 Jun 2020 11:37:03 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103703eucas1p14faa1cec371efb0bf98ae696d58da64d~Z66HGfl-L0704707047eucas1p1z;
 Fri, 19 Jun 2020 10:37:03 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103703eusmtrp1f65f59b8394a616b7eefe3893e8956ec~Z66HF6dJU0959609596eusmtrp1D;
 Fri, 19 Jun 2020 10:37:03 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-50-5eec954f1632
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 0B.0B.06017.F459CEE5; Fri, 19
 Jun 2020 11:37:03 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103702eusmtip2c9a66de0fc7e6b67e7cf74d72c0fd427~Z66GcUi2h3164531645eusmtip2X;
 Fri, 19 Jun 2020 10:37:02 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:15 +0200
Message-Id: <20200619103636.11974-16-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRmVeSWpSXmKPExsWy7djP87r+U9/EGXRu1LboPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4MfnrBarJ9/i82B
 x2PNvDWMHnu/LWDx2P7tAavH/e7jTB6bl9R73P73mNlj8o3ljB67bzawefRtWcXocfzGdiaP
 z5vkArijuGxSUnMyy1KL9O0SuDJWP2tmL/gsXDFxRm0D4yKBLkZODgkBE4n1vd0sXYxcHEIC
 Kxglll+bBOV8YZRonfqVDcL5zChxeNNeVpiW7dNAbJDEckaJ/10b2OBa9n+aCVbFJmAo0fW2
 iw3EFhFoZZQ40csDUsQscIhJYkvrVRaQhLBAsMSCVd3MIDaLgKrE4+unwGxeATuJHVeXM0Gs
 k5dYveEAWJwTKP665SDYagmBfewSv8/vYoQocpFov34cqkFY4tXxLewQtozE6ck9LBANzYwS
 D8+tZYdwehglLjfNgOq2lrhz7hfQrRxA92lKrN+lDxF2lOie8Y0RJCwhwCdx460gSJgZyJy0
 bTozRJhXoqNNCKJaTWLW8XVwaw9euMQMYXtITJr6kgkSQhMZJU5PmcY0gVF+FsKyBYyMqxjF
 U0uLc9NTiw3zUsv1ihNzi0vz0vWS83M3MQJT0ul/xz/tYPx6KekQowAHoxIPr0P46zgh1sSy
 4srcQ4wSHMxKIrxOZ0/HCfGmJFZWpRblxxeV5qQWH2KU5mBREuc1XvQyVkggPbEkNTs1tSC1
 CCbLxMEp1cA4/X3wj1ajxqW8nx8erv6z4YqufuLP30s8/f/PWbdE0/jzVdapZ1pFD/ObH707
 c5WaaN3UA2+/LzM3+e/oelB5TTibzxy7L7f97Zu+ijRUuPTNPnRNrMFUgeXvbDZHxY3f7BNP
 5hvY7L77WCtnYlDUHpFJvxK+RMzl1vui+7bg+4zN+x6eznaxUGIpzkg01GIuKk4EAC8cT6RF
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xe7r+U9/EGXx/y2XRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgc/PGG1WD//FpsD
 j8eaeWsYPfZ+W8Disf3bA1aP+93HmTw2L6n3uP3vMbPH5BvLGT1232xg8+jbsorR4/iN7Uwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GWsftbMXvBZuGLijNoGxkUCXYycHBICJhLbp+1l7WLk4hASWMoocef5IhaIhIzEyWkNrBC2
 sMSfa11sEEWfGCWef7zDDpJgEzCU6HoLkRAR6GSUmNb9kR3EYRY4wSRxb+98RpAqYYFAiV3/
 f4ONZRFQlXh8/RQziM0rYCex4+pyJogV8hKrNxwAi3MCxV+3HARbLSRgK7F8wXvmCYx8CxgZ
 VjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgRGyLZjP7fsYOx6F3yIUYCDUYmH90XI6zgh1sSy
 4srcQ4wSHMxKIrxOZ0/HCfGmJFZWpRblxxeV5qQWH2I0BTpqIrOUaHI+MHrzSuINTQ3NLSwN
 zY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwpp2PEJnK2JXRcLB+5ttv2z03He3l
 8ohR1+kV3P5cklXFpEpW0uvKcbkerQLtazYxBV16ndcK1y4UUBS+yBRycjHTqb+mN8qXl4dl
 n22bb2F3SknvlEqPcN7SP7vPWsYfjck8kbbtQoTersKnbltfZGUeZfuxx2Uuj5ZfavHVvhyJ
 Jbu9395TYinOSDTUYi4qTgQAYsARaaYCAAA=
X-CMS-MailID: 20200619103703eucas1p14faa1cec371efb0bf98ae696d58da64d
X-Msg-Generator: CA
X-RootMTR: 20200619103703eucas1p14faa1cec371efb0bf98ae696d58da64d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103703eucas1p14faa1cec371efb0bf98ae696d58da64d
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103703eucas1p14faa1cec371efb0bf98ae696d58da64d@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 15/36] drm: omapdrm: fix common struct
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

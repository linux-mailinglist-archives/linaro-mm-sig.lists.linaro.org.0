Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FE91FF76D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:41:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6986665E9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:41:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D9DD8665EE; Thu, 18 Jun 2020 15:41:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78611665AF;
	Thu, 18 Jun 2020 15:40:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9687C6654B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6E05F66597; Thu, 18 Jun 2020 15:40:20 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id AB3B96654B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:18 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154016euoutp01572ea8715719eb17eb9947bc8404cb11~ZrZkT-Xj_1835418354euoutp010
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154016euoutp01572ea8715719eb17eb9947bc8404cb11~ZrZkT-Xj_1835418354euoutp010
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154015eucas1p2086f7bc0fc19e4b43be669a34c4aec8e~ZrZjyd5Jv2945829458eucas1p2h;
 Thu, 18 Jun 2020 15:40:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 3B.CE.60679.FDA8BEE5; Thu, 18
 Jun 2020 16:40:15 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154015eucas1p24598496fde5e7ae9039095f3cd6677b1~ZrZjgd-gf2924929249eucas1p2-;
 Thu, 18 Jun 2020 15:40:15 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154015eusmtrp2bed1856be0855e9d4de0e8f555bc97c1~ZrZjfyct80399203992eusmtrp2Q;
 Thu, 18 Jun 2020 15:40:15 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-1a-5eeb8adfa1d1
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A0.EE.08375.FDA8BEE5; Thu, 18
 Jun 2020 16:40:15 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154014eusmtip1a58607d1e016a1160c461a136f152a0f~ZrZi3UCgB0709107091eusmtip1o;
 Thu, 18 Jun 2020 15:40:14 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:23 +0200
Message-Id: <20200618153956.29558-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURiFczsLA9IyFCIXFIhNJAqRxSUZREEMD/OgUYIvkIhWGJYIhbTs
 JopiCRRQkAeJabAQEC1LoaxSUEqqlTRS2QwCggQXEKUQlgQUlHYQ377zn/Pn3Py5BMLXYS5E
 vCiFEYuECQLcBm17vW48MiWbj/Q1FnhQRf19HKqpTIVRf9pKEGp41YRTz2pfcSjFywBqZXia
 Q6ln3mPUUKccp+p1H62oiqVWlMrNf4JR2sXPGNXyowQ7w6PryusA3b2mQGm1Mh+n29c+YXR5
 Xyg9VaDn0M1Vt+jxrRmELh2tAbTmQzZO32tRArrZcINeVrtd5EbYnIpmEuLTGLFP4FWbuJau
 bk6y0SFDPqvDssGEnQwQBCSPw44lngzYEHzyKYB5k3McVqwAaLz/HmXFMoAmpVlYWzZUOTkY
 a9QA2FE5iO6uSKXrlhRO+kHZTxluZkdSCuCbIltzCCEVCFxfzgVmw4GMgvIZk4VR8iAs/GW0
 MJc8Daun+xG2zh3WNvZY2JoMhAa91FINyTErONYq3wmFwEZDKc6yA/yub7FieT/88/wxh13I
 AXC6v96KFYUADt0pA2wqAE70b+DmeyDkYajq9GHHwVCq0iHsmXhw9Ke9eYxs44O2hztjLszL
 5bNpD/hI37Bbq303uPM0GjaoqnbOVQLgSIUCFAP3R//LFAAogROTKkmMZSRHRUy6t0SYKEkV
 xXpHJSWqwfbfMmzpVzpA5+9rvYAkgMCWO3tpPpKPCdMkmYm9ABKIwJF79q0hks+NFmZmMeKk
 K+LUBEbSC/YRqMCJe6xy7jKfjBWmMNcZJpkR/3M5hLVLNlDfxU76e2Xdc3YNCjRqwiNOCMLs
 Dt2vFjkmO4Uf0DYrN3jiAvqb9DSpdeEVt+8xed78shysGRietL09kBdo0mx15XvZp4849+S6
 yZtCFhY2+85d4PvqQpuH9m6uxmhinF9sOfmFfXUbdj2XUbfYm4/E+QT1cMej4vzLzwud0VYB
 KokT+nkiYonwL/2M9b1XAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7r3u17HGWzfLWLRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyN
 zWOtjEyV9O1sUlJzMstSi/TtEvQytuzZy1RwXrhizosjrA2Md/i7GDk5JARMJNY3N7N2MXJx
 CAksZZRY/GcBE0RCRuLktAZWCFtY4s+1LjaIok+MEr1fG8ESbAKGEl1vIRIiAp2MEtO6P7KD
 OMwCK5glXu2bywJSJSyQKHHy1nZ2EJtFQFWi5/d5RhCbV8BWYunDc8wQK+QlVm84AGZzCthJ
 nD7eCrZBCKjm+Yc2tgmMfAsYGVYxiqSWFuem5xYb6hUn5haX5qXrJefnbmIExtG2Yz8372C8
 tDH4EKMAB6MSD++LkNdxQqyJZcWVuYcYJTiYlUR4nc6ejhPiTUmsrEotyo8vKs1JLT7EaAp0
 1ERmKdHkfGCM55XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYLSf
 /sS7/UZJ29WKbBGTr27r/9ycyLD+E3v99CtNsy5eFNH/3lFqdFKiYLrsvtZFrHu3XuPR9XDb
 bXGqT/WKtPT2tS6K+67cXWm56XRwtmC85PNP4da9fv3s0xz2nug6LK65sLFcSZzr1Zwy9mKt
 448emoXPFd97vPCZb3vNLvM3f37dWzaBK0eJpTgj0VCLuag4EQBAyFVduQIAAA==
X-CMS-MailID: 20200618154015eucas1p24598496fde5e7ae9039095f3cd6677b1
X-Msg-Generator: CA
X-RootMTR: 20200618154015eucas1p24598496fde5e7ae9039095f3cd6677b1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154015eucas1p24598496fde5e7ae9039095f3cd6677b1
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154015eucas1p24598496fde5e7ae9039095f3cd6677b1@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 02/36] drm: prime: use sgtable iterators
 in drm_prime_sg_to_page_addr_arrays()
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

UmVwbGFjZSB0aGUgY3VycmVudCBoYW5kLWNyYWZ0ZWQgY29kZSBmb3IgZXh0cmFjdGluZyBwYWdl
cyBhbmQgRE1BCmFkZHJlc3NlcyBmcm9tIHRoZSBnaXZlbiBzY2F0dGVybGlzdCBieSB0aGUgbXVj
aCBtb3JlIHJvYnVzdApjb2RlIGJhc2VkIG9uIHRoZSBnZW5lcmljIHNjYXR0ZXJsaXN0IGl0ZXJh
dG9ycyBhbmQgcmVjZW50bHkKaW50cm9kdWNlZCBzZ190YWJsZS1iYXNlZCB3cmFwcGVycy4gVGhl
IHJlc3VsdGluZyBjb2RlIGlzIHNpbXBsZSBhbmQKZWFzeSB0byB1bmRlcnN0YW5kLCBzbyB0aGUg
Y29tbWVudCBkZXNjcmliaW5nIHRoZSBvbGQgY29kZSBpcyBubwpsb25nZXIgbmVlZGVkLgoKU2ln
bmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyB8IDQ3ICsrKysrKysrKysrLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAzMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKaW5kZXggMDc4NDk2OTg5NGMxLi4yMjk1M2VlMWUy
YmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX3ByaW1lLmMKQEAgLTk4NSw0NSArOTg1LDI2IEBAIEVYUE9SVF9TWU1CT0wo
ZHJtX2dlbV9wcmltZV9pbXBvcnQpOwogaW50IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJy
YXlzKHN0cnVjdCBzZ190YWJsZSAqc2d0LCBzdHJ1Y3QgcGFnZSAqKnBhZ2VzLAogCQkJCSAgICAg
ZG1hX2FkZHJfdCAqYWRkcnMsIGludCBtYXhfZW50cmllcykKIHsKLQl1bnNpZ25lZCBjb3VudDsK
LQlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnOwotCXN0cnVjdCBwYWdlICpwYWdlOwotCXUzMiBwYWdl
X2xlbiwgcGFnZV9pbmRleDsKLQlkbWFfYWRkcl90IGFkZHI7Ci0JdTMyIGRtYV9sZW4sIGRtYV9p
bmRleDsKKwlzdHJ1Y3Qgc2dfZG1hX3BhZ2VfaXRlciBkbWFfaXRlcjsKKwlzdHJ1Y3Qgc2dfcGFn
ZV9pdGVyIHBhZ2VfaXRlcjsKKwlzdHJ1Y3QgcGFnZSAqKnAgPSBwYWdlczsKKwlkbWFfYWRkcl90
ICphID0gYWRkcnM7CiAKLQkvKgotCSAqIFNjYXR0ZXJsaXN0IGVsZW1lbnRzIGNvbnRhaW5zIGJv
dGggcGFnZXMgYW5kIERNQSBhZGRyZXNzZXMsIGJ1dAotCSAqIG9uZSBzaG91ZCBub3QgYXNzdW1l
IDE6MSByZWxhdGlvbiBiZXR3ZWVuIHRoZW0uIFRoZSBzZy0+bGVuZ3RoIGlzCi0JICogdGhlIHNp
emUgb2YgdGhlIHBoeXNpY2FsIG1lbW9yeSBjaHVuayBkZXNjcmliZWQgYnkgdGhlIHNnLT5wYWdl
LAotCSAqIHdoaWxlIHNnX2RtYV9sZW4oc2cpIGlzIHRoZSBzaXplIG9mIHRoZSBETUEgKElPIHZp
cnR1YWwpIGNodW5rCi0JICogZGVzY3JpYmVkIGJ5IHRoZSBzZ19kbWFfYWRkcmVzcyhzZykuCi0J
ICovCi0JcGFnZV9pbmRleCA9IDA7Ci0JZG1hX2luZGV4ID0gMDsKLQlmb3JfZWFjaF9zZyhzZ3Qt
PnNnbCwgc2csIHNndC0+bmVudHMsIGNvdW50KSB7Ci0JCXBhZ2VfbGVuID0gc2ctPmxlbmd0aDsK
LQkJcGFnZSA9IHNnX3BhZ2Uoc2cpOwotCQlkbWFfbGVuID0gc2dfZG1hX2xlbihzZyk7Ci0JCWFk
ZHIgPSBzZ19kbWFfYWRkcmVzcyhzZyk7Ci0KLQkJd2hpbGUgKHBhZ2VzICYmIHBhZ2VfbGVuID4g
MCkgewotCQkJaWYgKFdBUk5fT04ocGFnZV9pbmRleCA+PSBtYXhfZW50cmllcykpCisJaWYgKHBh
Z2VzKSB7CisJCWZvcl9lYWNoX3NndGFibGVfcGFnZShzZ3QsICZwYWdlX2l0ZXIsIDApIHsKKwkJ
CWlmIChwIC0gcGFnZXMgPj0gbWF4X2VudHJpZXMpCiAJCQkJcmV0dXJuIC0xOwotCQkJcGFnZXNb
cGFnZV9pbmRleF0gPSBwYWdlOwotCQkJcGFnZSsrOwotCQkJcGFnZV9sZW4gLT0gUEFHRV9TSVpF
OwotCQkJcGFnZV9pbmRleCsrOworCQkJKnArKyA9IHNnX3BhZ2VfaXRlcl9wYWdlKCZwYWdlX2l0
ZXIpOwogCQl9Ci0JCXdoaWxlIChhZGRycyAmJiBkbWFfbGVuID4gMCkgewotCQkJaWYgKFdBUk5f
T04oZG1hX2luZGV4ID49IG1heF9lbnRyaWVzKSkKKwl9CisJaWYgKGFkZHJzKSB7CisJCWZvcl9l
YWNoX3NndGFibGVfZG1hX3BhZ2Uoc2d0LCAmZG1hX2l0ZXIsIDApIHsKKwkJCWlmIChhIC0gYWRk
cnMgPj0gbWF4X2VudHJpZXMpCiAJCQkJcmV0dXJuIC0xOwotCQkJYWRkcnNbZG1hX2luZGV4XSA9
IGFkZHI7Ci0JCQlhZGRyICs9IFBBR0VfU0laRTsKLQkJCWRtYV9sZW4gLT0gUEFHRV9TSVpFOwot
CQkJZG1hX2luZGV4Kys7CisJCQkqYSsrID0gc2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNzKCZkbWFf
aXRlcik7CiAJCX0KIAl9CisKIAlyZXR1cm4gMDsKIH0KIEVYUE9SVF9TWU1CT0woZHJtX3ByaW1l
X3NnX3RvX3BhZ2VfYWRkcl9hcnJheXMpOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

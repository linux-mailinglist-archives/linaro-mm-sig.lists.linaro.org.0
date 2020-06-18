Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D12E1FF79B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:43:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2AED6666EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:43:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1D422666F7; Thu, 18 Jun 2020 15:43:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 544526658C;
	Thu, 18 Jun 2020 15:40:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3370066576
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2399D665A6; Thu, 18 Jun 2020 15:40:26 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id B1EBD66576
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:18 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154015euoutp015f51bd44bbd2a7fcb843f16e6dd3d181~ZrZja8d-o1844218442euoutp01q
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154015euoutp015f51bd44bbd2a7fcb843f16e6dd3d181~ZrZja8d-o1844218442euoutp01q
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154014eucas1p1d5858721ceb67f05f442e556e60f66cb~ZrZjGWyPO1545815458eucas1p1G;
 Thu, 18 Jun 2020 15:40:14 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 5B.0F.61286.EDA8BEE5; Thu, 18
 Jun 2020 16:40:14 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154014eucas1p12812b08c65f53bb216f8ac8751a309de~ZrZi3la2C2603726037eucas1p1J;
 Thu, 18 Jun 2020 15:40:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154014eusmtrp2b0aba09f053b39f98fb0cc065068ba6a~ZrZi27Ogw0370403704eusmtrp2X;
 Thu, 18 Jun 2020 15:40:14 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-b5-5eeb8adeecd1
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 6F.DE.08375.EDA8BEE5; Thu, 18
 Jun 2020 16:40:14 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154013eusmtip18a1a0a7ab10b25a1c4100d8648dc8cdf~ZrZiOVUuZ0701207012eusmtip15;
 Thu, 18 Jun 2020 15:40:13 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:22 +0200
Message-Id: <20200618153956.29558-2-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjuO2dnOw5npyn5oZawSCjwLnJAE2f9OCSh4Q/RyFp5mqKbsnkt
 KDE0nU4y89JQm2LezTaXlhHet2xppSZWXhL7kS3RvIws1DaP1r/nfS7v8/Hx4ii/F3PC46Up
 tEwqShSwuaxO/eao+6zCFOM1NO5PKkeHEVJT0Y6RO53FKDmxscwmm1qGEFLdE0CuT8wjpHZh
 EiPHuyvZZNvgDIes+fmURebm12Nk38pXjNT9KMaC7ajW6lZAvTSrWZS2OZ9NdZm/YFT18Hlq
 rsCAUB11t6jP2wsoVTLVAKgXH7PYVJGuGVAdxhvUmvZoOC+aGxhLJ8an0TLPoMvcuPrsLiRZ
 5ZzRlD2AZIGewwpgg0PCDw78GkAUgIvziUYATT2TqFXgE+sAtn1wZ4Q1ALUja9h+otTUgjJC
 A4CLVf17gyWh0uh3XWzCGyqWFGwrdiByAHyltLWaUEKNws21XGAV7IkoOP1o3RLAcRZxHK6a
 kqyQR5yC+Z03mTJX2PKkd/dFNkQQNBpyMOsaSExy4ODwfQ5jOgMLyrUIg+3hd4Nuj3eBO88f
 IkzgNoDzo20cZigEcDy7AjCuADg9+pttbUaJE7C925OhhVBjfrNLQ8IOTi0dstKoBd7rLEcZ
 mgfzcvmM2w2qDI//1fa9G9uzUFDR4Mh8aDGA32qT7wJX1f8qNQDNwJFOlUvEtNxbSqd7yEUS
 eapU7HE1SaIFlrsybhtWn4GNsSv9gMCBwJYXHGmK4WOiNHmmpB9AHBU48EJGjDF8Xqwo8zot
 S7okS02k5f3AGWcJHHm+tYsX+YRYlEIn0HQyLdtXEdzGKQu0C0OXA82zF3ziTHmavub3tVEl
 qoNYaGHZtZkVL2/PaZuwrQzoU5d8LN3P31zTeKBsqjVBGMjTva7W6DuKFv22qs/ySyPEd6bO
 neYIuJF+uj/RFS6hlW2fpBHr4o5W3G1OuOq65BFSN692bIwJO1L1IMPLSfBWqV721UvDlWkC
 ljxO5H0SlclFfwGpuhNOUwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCIsWRmVeSWpSXmKPExsVy+t/xu7r3ul7HGVycrW7Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyN
 zWOtjEyV9O1sUlJzMstSi/TtEvQyljVtZyqYJV2xsukwUwPjfrEuRk4OCQETiamvVzN3MXJx
 CAksZZS4cWgGK0RCRuLktAYoW1jiz7UuNoiiT4wSP9dMZQFJsAkYSnS9hUiICHQySkzr/sgO
 4jALrGCWeLVvLliVsEC4xN6nt4FsDg4WAVWJT6/zQUxeAVuJzm11EAvkJVZvOMAMYnMK2Emc
 Pt4KtlgIqOT5hza2CYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgTG0LZjPzfvYLy0
 MfgQowAHoxIP74uQ13FCrIllxZW5hxglOJiVRHidzp6OE+JNSaysSi3Kjy8qzUktPsRoCnTS
 RGYp0eR8YHznlcQbmhqaW1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpgTCqo
 uLsg1XhO+OOlU25YVh8pVtzntrGyzJlt7+5/NS8W2HmflUuziNzUdXxVb+H0c2I/5y19t/en
 tEBQpOcK72W/atWlVMu1j/Snl+VNLi2Yo35piegVs2dV3r5qT750HF4eHv7i2GbTppM6Uzec
 Xflr7WlRJzOnO4++/nJdt20Ni3B+nKruCyWW4oxEQy3mouJEANmh6x+3AgAA
X-CMS-MailID: 20200618154014eucas1p12812b08c65f53bb216f8ac8751a309de
X-Msg-Generator: CA
X-RootMTR: 20200618154014eucas1p12812b08c65f53bb216f8ac8751a309de
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154014eucas1p12812b08c65f53bb216f8ac8751a309de
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154014eucas1p12812b08c65f53bb216f8ac8751a309de@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 01/36] drm: prime: add common helper to
 check scatterlist contiguity
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

SXQgaXMgYSBjb21tb24gb3BlcmF0aW9uIGRvbmUgYnkgRFJNIGRyaXZlcnMgdG8gY2hlY2sgdGhl
IGNvbnRpZ3VpdHkKb2YgdGhlIERNQS1tYXBwZWQgYnVmZmVyIGRlc2NyaWJlZCBieSBhIHNjYXR0
ZXJsaXN0IGluIHRoZQpzZ190YWJsZSBvYmplY3QuIExldCdzIGFkZCBhIGNvbW1vbiBoZWxwZXIg
Zm9yIHRoaXMgb3BlcmF0aW9uLgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5z
enlwcm93c2tpQHNhbXN1bmcuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2NtYV9o
ZWxwZXIuYyB8IDIzICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJt
X3ByaW1lLmMgICAgICAgICAgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVk
ZS9kcm0vZHJtX3ByaW1lLmggICAgICAgICAgICAgIHwgIDIgKysKIDMgZmlsZXMgY2hhbmdlZCwg
MzEgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2RybV9nZW1fY21hX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fY21h
X2hlbHBlci5jCmluZGV4IDA2YTViOWVlMWZlMC4uNDE1NjZhMTVkYWJkIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9nZW1fY21hX2hlbHBlci5jCkBAIC00NzEsMjYgKzQ3MSw5IEBAIGRybV9nZW1fY21hX3By
aW1lX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogewogCXN0cnVjdCBk
cm1fZ2VtX2NtYV9vYmplY3QgKmNtYV9vYmo7CiAKLQlpZiAoc2d0LT5uZW50cyAhPSAxKSB7Ci0J
CS8qIGNoZWNrIGlmIHRoZSBlbnRyaWVzIGluIHRoZSBzZ190YWJsZSBhcmUgY29udGlndW91cyAq
LwotCQlkbWFfYWRkcl90IG5leHRfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNndC0+c2dsKTsKLQkJ
c3RydWN0IHNjYXR0ZXJsaXN0ICpzOwotCQl1bnNpZ25lZCBpbnQgaTsKLQotCQlmb3JfZWFjaF9z
ZyhzZ3QtPnNnbCwgcywgc2d0LT5uZW50cywgaSkgewotCQkJLyoKLQkJCSAqIHNnX2RtYV9hZGRy
ZXNzKHMpIGlzIG9ubHkgdmFsaWQgZm9yIGVudHJpZXMKLQkJCSAqIHRoYXQgaGF2ZSBzZ19kbWFf
bGVuKHMpICE9IDAKLQkJCSAqLwotCQkJaWYgKCFzZ19kbWFfbGVuKHMpKQotCQkJCWNvbnRpbnVl
OwotCi0JCQlpZiAoc2dfZG1hX2FkZHJlc3MocykgIT0gbmV4dF9hZGRyKQotCQkJCXJldHVybiBF
UlJfUFRSKC1FSU5WQUwpOwotCi0JCQluZXh0X2FkZHIgPSBzZ19kbWFfYWRkcmVzcyhzKSArIHNn
X2RtYV9sZW4ocyk7Ci0JCX0KLQl9CisJLyogY2hlY2sgaWYgdGhlIGVudHJpZXMgaW4gdGhlIHNn
X3RhYmxlIGFyZSBjb250aWd1b3VzICovCisJaWYgKGRybV9wcmltZV9nZXRfY29udGlndW91c19z
aXplKHNndCkgPCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSkKKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZB
TCk7CiAKIAkvKiBDcmVhdGUgYSBDTUEgR0VNIGJ1ZmZlci4gKi8KIAljbWFfb2JqID0gX19kcm1f
Z2VtX2NtYV9jcmVhdGUoZGV2LCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSk7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMK
aW5kZXggYmJmYzcxM2JmZGMzLi4wNzg0OTY5ODk0YzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fcHJpbWUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKQEAgLTgy
NSw2ICs4MjUsMzIgQEAgc3RydWN0IHNnX3RhYmxlICpkcm1fcHJpbWVfcGFnZXNfdG9fc2coc3Ry
dWN0IHBhZ2UgKipwYWdlcywgdW5zaWduZWQgaW50IG5yX3BhZ2UKIH0KIEVYUE9SVF9TWU1CT0wo
ZHJtX3ByaW1lX3BhZ2VzX3RvX3NnKTsKIAorLyoqCisgKiBkcm1fcHJpbWVfZ2V0X2NvbnRpZ3Vv
dXNfc2l6ZSAtIHJldHVybnMgdGhlIGNvbnRpZ3VvdXMgc2l6ZSBvZiB0aGUgYnVmZmVyCisgKiBA
c2d0OiBzZ190YWJsZSBkZXNjcmliaW5nIHRoZSBidWZmZXIgdG8gY2hlY2sKKyAqCisgKiBUaGlz
IGhlbHBlciBjYWxjdWxhdGVzIHRoZSBjb250aWd1b3VzIHNpemUgaW4gdGhlIERNQSBhZGRyZXNz
IHNwYWNlCisgKiBvZiB0aGUgdGhlIGJ1ZmZlciBkZXNjcmliZWQgYnkgdGhlIHByb3ZpZGVkIHNn
X3RhYmxlLgorICoKKyAqIFRoaXMgaXMgdXNlZnVsIGZvciBpbXBsZW1lbnRpbmcKKyAqICZkcm1f
Z2VtX29iamVjdF9mdW5jcy5nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlLgorICovCit1bnNpZ25l
ZCBsb25nIGRybV9wcmltZV9nZXRfY29udGlndW91c19zaXplKHN0cnVjdCBzZ190YWJsZSAqc2d0
KQoreworCWRtYV9hZGRyX3QgZXhwZWN0ZWQgPSBzZ19kbWFfYWRkcmVzcyhzZ3QtPnNnbCk7CisJ
c3RydWN0IHNnX2RtYV9wYWdlX2l0ZXIgZG1hX2l0ZXI7CisJdW5zaWduZWQgbG9uZyBzaXplID0g
MDsKKworCWZvcl9lYWNoX3NndGFibGVfZG1hX3BhZ2Uoc2d0LCAmZG1hX2l0ZXIsIDApIHsKKwkJ
aWYgKHNnX3BhZ2VfaXRlcl9kbWFfYWRkcmVzcygmZG1hX2l0ZXIpICE9IGV4cGVjdGVkKQorCQkJ
YnJlYWs7CisJCWV4cGVjdGVkICs9IFBBR0VfU0laRTsKKwkJc2l6ZSArPSBQQUdFX1NJWkU7CisJ
fQorCXJldHVybiBzaXplOworfQorRVhQT1JUX1NZTUJPTChkcm1fcHJpbWVfZ2V0X2NvbnRpZ3Vv
dXNfc2l6ZSk7CisKIC8qKgogICogZHJtX2dlbV9wcmltZV9leHBvcnQgLSBoZWxwZXIgbGlicmFy
eSBpbXBsZW1lbnRhdGlvbiBvZiB0aGUgZXhwb3J0IGNhbGxiYWNrCiAgKiBAb2JqOiBHRU0gb2Jq
ZWN0IHRvIGV4cG9ydApkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX3ByaW1lLmggYi9pbmNs
dWRlL2RybS9kcm1fcHJpbWUuaAppbmRleCA5YWY3NDIyYjQ0Y2YuLjQ3ZWYxMTYxNDYyNyAxMDA2
NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX3ByaW1lLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX3By
aW1lLmgKQEAgLTkyLDYgKzkyLDggQEAgc3RydWN0IHNnX3RhYmxlICpkcm1fcHJpbWVfcGFnZXNf
dG9fc2coc3RydWN0IHBhZ2UgKipwYWdlcywgdW5zaWduZWQgaW50IG5yX3BhZ2UKIHN0cnVjdCBk
bWFfYnVmICpkcm1fZ2VtX3ByaW1lX2V4cG9ydChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwK
IAkJCQkgICAgIGludCBmbGFncyk7CiAKK3Vuc2lnbmVkIGxvbmcgZHJtX3ByaW1lX2dldF9jb250
aWd1b3VzX3NpemUoc3RydWN0IHNnX3RhYmxlICpzZ3QpOworCiAvKiBoZWxwZXIgZnVuY3Rpb25z
IGZvciBpbXBvcnRpbmcgKi8KIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZHJtX2dlbV9wcmltZV9p
bXBvcnRfZGV2KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCQkJCQlzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hX2J1ZiwKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK

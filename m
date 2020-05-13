Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ACA1D15C0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:38:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07F2B65F8B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:38:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E6DDB66079; Wed, 13 May 2020 13:38:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B69BC65FAA;
	Wed, 13 May 2020 13:33:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 13CBE65F89
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E410B65F92; Wed, 13 May 2020 13:33:05 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 67CDA65F89
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:00 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133259euoutp01e64222c6fbe4af8096adfec1cf3c8b7f~OmcKdSGvP2196321963euoutp01W
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:32:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133259euoutp01e64222c6fbe4af8096adfec1cf3c8b7f~OmcKdSGvP2196321963euoutp01W
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133259eucas1p2818fb6d2768faf81ec6dbb912e61afaf~OmcKGU44v1009510095eucas1p27;
 Wed, 13 May 2020 13:32:59 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id B2.C5.61286.B07FBBE5; Wed, 13
 May 2020 14:32:59 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133258eucas1p1eba6e0ced0c749655f028206d5f84b7a~OmcJxzEQx0874908749eucas1p1W;
 Wed, 13 May 2020 13:32:58 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133258eusmtrp1fd7bd53644225fb7e2283a8cb47db7b5~OmcJweEPK0994509945eusmtrp1c;
 Wed, 13 May 2020 13:32:58 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-2f-5ebbf70b24b7
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DC.27.07950.A07FBBE5; Wed, 13
 May 2020 14:32:58 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133258eusmtip172311bd51bf138cd3fe3bd47bfeadb30~OmcJC-20L2932629326eusmtip1b;
 Wed, 13 May 2020 13:32:58 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:11 +0200
Message-Id: <20200513133245.6408-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSeyyVcRjud77L+Y4c+zosv0mx02ppi0Tr2+iitfZZ1uS/2siHb1jOYecg
 8gdLGccllykz6VDL7XByHNSRO52wUciQlHSZ2yi3Ueh8PtV/z/s8z/s+7969BCJpx2yIUHkk
 q5AzYVLcDK17tdZ7bPdqg9/x6jQLKr23S0BV52kxaqsuC6EGl+dxqqyiU0Cpm92opcEJAaWb
 HMKoAUMBTlV2fBBSRT9qUSop5SlGtS58wSj9bBZ2zoLWFGoA3biiRmldeQpO1698wujCriv0
 x1SjgK55Ek+/35xE6JzhEkA3jCTgdIa+HNA1PXH0ou6At/iamXsQGxYazSqczvibhXQPlKAR
 DbYx37+WChOA0VoFCAKSrjBjWqQCZoSELAVwrNOAqIDIVCwBuJxpwQuLABpatEJO4BryOyaF
 vFACYGfPOMIXpo7fQ/dRzoWTzlA1p8I5bEXeBfB1ujlnQkg1AtcWkwAnWJJX4UJZ/fZYlDwE
 XxZqMQ6LSXeYOlMg4OPsYMWzlu2dRORpOD3WjHKDIDkqhDMjWRhvugB1s1k7+1nCaaN+B9vC
 npy0nYZEACd6K4V8kQbgwO08wLvc4FjvOs6dAyEdoNbgxNMecO5dE+CvZAGH5/ZwNGKC2XUP
 EJ4Ww+QkCe8+DPONVf9iW9/0IzymYWJ7FcpfqB3At8WleCawy/8fpgagHFizUUpZMKt0lrM3
 HZWMTBklD3YMDJfpgOm1ejaNP5+D5f6ANkASQGoupkYb/CQYE62MlbUBSCBSK/FlrYkSBzGx
 t1hF+HVFVBirbAP7CFRqLXYpnvKVkMFMJHuDZSNYxV9VQIhsEoBP4v4WKoVxGNqKqW1M/9U1
 dqKq/fJD3yh7RrCXPFlsn9unDqgv8xevnu/zSne5py+a8z67Udnm4TPlsL45/Pig3sv9YrCl
 uavNPDaV46mraop9FB53qj52OPXzzK7M5BeSom8akYtGrjni6WI9fqkyuTs+N9Bgt7iRfWeo
 TuacIEWVIYzzUUShZP4AF1lGHVYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7pc33fHGZzZaGTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyN
 zWOtjEyV9O1sUlJzMstSi/TtEvQyTl1ezlKwW6bi+dMV7A2Mx8W7GDk5JARMJGYdeczexcjF
 ISSwlFFiyvn97BAJGYmT0xpYIWxhiT/Xutggij4xStyYuIwJJMEmYCjR9RYiISLQySgxrfsj
 2ChmgRXMEq/2zWUBqRIWCJf4v2UJM4jNIqAqsWfeerCxvAI2Et2v5zBBrJCXWL3hAFgNp4Ct
 xKs7+8F6hQTyJfYu3sc2gZFvASPDKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMA42nbs55Yd
 jF3vgg8xCnAwKvHwWtzaHSfEmlhWXJl7iFGCg1lJhNdvPVCINyWxsiq1KD++qDQntfgQoynQ
 UROZpUST84ExnlcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgXGN
 jcHkaUdvfBT6Ejxv997jWb+WnH7DNeVkrXS6e88f70keBtMN1574aCzOfa9PmH27teX9paeL
 lUQikrZusdBheOX4/EY1k6iWzSz9Gne1F9V2e344KV5bszHh27k32zkNlHYkm0Q6pJ9J8sw6
 47TWp/V72KkpP5r0nL2VPSNaxWd7q8tyPFdiKc5INNRiLipOBAALtjL0uQIAAA==
X-CMS-MailID: 20200513133258eucas1p1eba6e0ced0c749655f028206d5f84b7a
X-Msg-Generator: CA
X-RootMTR: 20200513133258eucas1p1eba6e0ced0c749655f028206d5f84b7a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133258eucas1p1eba6e0ced0c749655f028206d5f84b7a
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133258eucas1p1eba6e0ced0c749655f028206d5f84b7a@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 04/38] drm: prime: add common helper to
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
enlwcm93c2tpQHNhbXN1bmcuY29tPgotLS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNlZSAnW1BB
VENIIHY1IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9yaWdfbmVu
dHMgbWlzdXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlvbW11LzIw
MjAwNTEzMTMyMTE0LjYwNDYtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMgfCAyMyArKystLS0tLS0tLS0tLS0tLS0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jICAgICAgICAgIHwgMjYgKysrKysrKysr
KysrKysrKysrKysrKysrKysKIGluY2x1ZGUvZHJtL2RybV9wcmltZS5oICAgICAgICAgICAgICB8
ICAyICsrCiAzIGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuYwppbmRleCAxMmU5OGZiLi45ZjJkMTNl
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fY21hX2hlbHBlci5jCkBAIC00NzEsMjYgKzQ3MSw5IEBA
IHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqCiB7CiAJc3RydWN0IGRybV9nZW1fY21hX29iamVjdCAq
Y21hX29iajsKIAotCWlmIChzZ3QtPm5lbnRzICE9IDEpIHsKLQkJLyogY2hlY2sgaWYgdGhlIGVu
dHJpZXMgaW4gdGhlIHNnX3RhYmxlIGFyZSBjb250aWd1b3VzICovCi0JCWRtYV9hZGRyX3QgbmV4
dF9hZGRyID0gc2dfZG1hX2FkZHJlc3Moc2d0LT5zZ2wpOwotCQlzdHJ1Y3Qgc2NhdHRlcmxpc3Qg
KnM7Ci0JCXVuc2lnbmVkIGludCBpOwotCi0JCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzLCBzZ3Qt
Pm5lbnRzLCBpKSB7Ci0JCQkvKgotCQkJICogc2dfZG1hX2FkZHJlc3MocykgaXMgb25seSB2YWxp
ZCBmb3IgZW50cmllcwotCQkJICogdGhhdCBoYXZlIHNnX2RtYV9sZW4ocykgIT0gMAotCQkJICov
Ci0JCQlpZiAoIXNnX2RtYV9sZW4ocykpCi0JCQkJY29udGludWU7Ci0KLQkJCWlmIChzZ19kbWFf
YWRkcmVzcyhzKSAhPSBuZXh0X2FkZHIpCi0JCQkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Ci0K
LQkJCW5leHRfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHMpICsgc2dfZG1hX2xlbihzKTsKLQkJfQot
CX0KKwkvKiBjaGVjayBpZiB0aGUgZW50cmllcyBpbiB0aGUgc2dfdGFibGUgYXJlIGNvbnRpZ3Vv
dXMgKi8KKwlpZiAoZHJtX3ByaW1lX2dldF9jb250aWd1b3VzX3NpemUoc2d0KSA8IGF0dGFjaC0+
ZG1hYnVmLT5zaXplKQorCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKIAogCS8qIENyZWF0ZSBh
IENNQSBHRU0gYnVmZmVyLiAqLwogCWNtYV9vYmogPSBfX2RybV9nZW1fY21hX2NyZWF0ZShkZXYs
IGF0dGFjaC0+ZG1hYnVmLT5zaXplKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
cHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYwppbmRleCAyODI3NzRlLi4xZDJl
NWZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9wcmltZS5jCkBAIC04MjYsNiArODI2LDMyIEBAIHN0cnVjdCBzZ190YWJs
ZSAqZHJtX3ByaW1lX3BhZ2VzX3RvX3NnKHN0cnVjdCBwYWdlICoqcGFnZXMsIHVuc2lnbmVkIGlu
dCBucl9wYWdlCiBFWFBPUlRfU1lNQk9MKGRybV9wcmltZV9wYWdlc190b19zZyk7CiAKIC8qKgor
ICogZHJtX3ByaW1lX2dldF9jb250aWd1b3VzX3NpemUgLSByZXR1cm5zIHRoZSBjb250aWd1b3Vz
IHNpemUgb2YgdGhlIGJ1ZmZlcgorICogQHNndDogc2dfdGFibGUgZGVzY3JpYmluZyB0aGUgYnVm
ZmVyIHRvIGNoZWNrCisgKgorICogVGhpcyBoZWxwZXIgY2FsY3VsYXRlcyB0aGUgY29udGlndW91
cyBzaXplIGluIHRoZSBETUEgYWRkcmVzcyBzcGFjZQorICogb2YgdGhlIHRoZSBidWZmZXIgZGVz
Y3JpYmVkIGJ5IHRoZSBwcm92aWRlZCBzZ190YWJsZS4KKyAqCisgKiBUaGlzIGlzIHVzZWZ1bCBm
b3IgaW1wbGVtZW50aW5nCisgKiAmZHJtX2dlbV9vYmplY3RfZnVuY3MuZ2VtX3ByaW1lX2ltcG9y
dF9zZ190YWJsZS4KKyAqLwordW5zaWduZWQgbG9uZyBkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNf
c2l6ZShzdHJ1Y3Qgc2dfdGFibGUgKnNndCkKK3sKKwlkbWFfYWRkcl90IGV4cGVjdGVkID0gc2df
ZG1hX2FkZHJlc3Moc2d0LT5zZ2wpOworCXN0cnVjdCBzZ19kbWFfcGFnZV9pdGVyIGRtYV9pdGVy
OworCXVuc2lnbmVkIGxvbmcgc2l6ZSA9IDA7CisKKwlmb3JfZWFjaF9zZ3RhYmxlX2RtYV9wYWdl
KHNndCwgJmRtYV9pdGVyLCAwKSB7CisJCWlmIChzZ19wYWdlX2l0ZXJfZG1hX2FkZHJlc3MoJmRt
YV9pdGVyKSAhPSBleHBlY3RlZCkKKwkJCWJyZWFrOworCQlleHBlY3RlZCArPSBQQUdFX1NJWkU7
CisJCXNpemUgKz0gUEFHRV9TSVpFOworCX0KKwlyZXR1cm4gc2l6ZTsKK30KK0VYUE9SVF9TWU1C
T0woZHJtX3ByaW1lX2dldF9jb250aWd1b3VzX3NpemUpOworCisvKioKICAqIGRybV9nZW1fcHJp
bWVfZXhwb3J0IC0gaGVscGVyIGxpYnJhcnkgaW1wbGVtZW50YXRpb24gb2YgdGhlIGV4cG9ydCBj
YWxsYmFjawogICogQG9iajogR0VNIG9iamVjdCB0byBleHBvcnQKICAqIEBmbGFnczogZmxhZ3Mg
bGlrZSBEUk1fQ0xPRVhFQyBhbmQgRFJNX1JEV1IKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2Ry
bV9wcmltZS5oIGIvaW5jbHVkZS9kcm0vZHJtX3ByaW1lLmgKaW5kZXggOWFmNzQyMi4uNDdlZjEx
NiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX3ByaW1lLmgKKysrIGIvaW5jbHVkZS9kcm0v
ZHJtX3ByaW1lLmgKQEAgLTkyLDYgKzkyLDggQEAgdm9pZCBkcm1fZ2VtX3VubWFwX2RtYV9idWYo
c3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogc3RydWN0IGRtYV9idWYgKmRybV9n
ZW1fcHJpbWVfZXhwb3J0KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLAogCQkJCSAgICAgaW50
IGZsYWdzKTsKIAordW5zaWduZWQgbG9uZyBkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShz
dHJ1Y3Qgc2dfdGFibGUgKnNndCk7CisKIC8qIGhlbHBlciBmdW5jdGlvbnMgZm9yIGltcG9ydGlu
ZyAqLwogc3RydWN0IGRybV9nZW1fb2JqZWN0ICpkcm1fZ2VtX3ByaW1lX2ltcG9ydF9kZXYoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwKIAkJCQkJCXN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLAotLSAK
MS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

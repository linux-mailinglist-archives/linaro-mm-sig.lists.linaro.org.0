Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD5B2006BE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:38:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FA5966626
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:38:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 80E80666C8; Fri, 19 Jun 2020 10:38:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C3B3665AF;
	Fri, 19 Jun 2020 10:37:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 217B966597
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 06FDB665AA; Fri, 19 Jun 2020 10:36:58 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id B3AA266597
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:55 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103654euoutp01e6803f31a44ed2137615c81012ceb385~Z65-W7sZq1849918499euoutp01C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103654euoutp01e6803f31a44ed2137615c81012ceb385~Z65-W7sZq1849918499euoutp01C
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103654eucas1p2b1e82aeed90dc505b8674182cf4e6b2c~Z65_iKbzW3081430814eucas1p2e;
 Fri, 19 Jun 2020 10:36:54 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 7B.8D.05997.5459CEE5; Fri, 19
 Jun 2020 11:36:54 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103653eucas1p2542a7f42db61b22a43919666368dbbfa~Z65_KR6Ud3082330823eucas1p2U;
 Fri, 19 Jun 2020 10:36:53 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103653eusmtrp1e102b21ed115fafca9de4e940308d7f2~Z65_JbSAS0959609596eusmtrp1p;
 Fri, 19 Jun 2020 10:36:53 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-cc-5eec954560c6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1E.FA.06017.5459CEE5; Fri, 19
 Jun 2020 11:36:53 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103652eusmtip2208c0c7093c1b30d8d3abf29423a32dd~Z659cWTey0246802468eusmtip2d;
 Fri, 19 Jun 2020 10:36:52 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:01 +0200
Message-Id: <20200619103636.11974-2-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSeUhTYQDve9eew8nzKe3LonBQkaF2GDwx7aDkkRWJURRorXxp5JbuqWUH
 WpumS6PltaJ0RWTN1DxaolhtlMtGo1JSy+hYh6Z2zQ4rNV8v67/f+f0+Pj4SpW/hfuROdSqn
 USuTFIQUs7QOOwMjiwfi5pVoAVPgbEOYWmMNzoxZDCjT8eUDwVyqvI0wphthzFDHC4Spcz3C
 mfam0wRTdeuphDn76SrG5ORdwBnrx1c40zBgwJd6sZfLLgO25asJY+vMeQR77etznC1ri2af
 HbUjbP35TPbJqAtlC7sqANvcnUWwxxrMgK137GfdddPXyTZLF8dzSTvTOU1wxFZp4rOiJiS5
 cepeR+kHJAvcnqwHHiSkQqBudATogZSkqYsAPno7IhHJEIDdT7owkbgBdHTeRCYqr78dR0Wj
 AsCS3uvEv8qLs7m4kCKo+VA/qCcE7EtlA3inwFMIoZQJhcPuHCAYPtQmqK9x/Slg1Ex4pi1r
 fJwkZVQ4rLorF9dmwMorN1EBe1ARsF9nxYVzIPVYAnM+t0rE0ApoHPtOiNgHvrM3/NWnQUdh
 PiYWtOO3c1ZJRJIPYPthIxBTYbDH+YMQllFqDqxpChblZfCB7R4uyJDygl2D3oKMjsMTllJU
 lGUwN4cW07PgKXv1v1nr/YeoiFlYWGzExQcyADh4xEAcBzNO/R8zAWAGci6NVyVw/AI1tyeI
 V6r4NHVC0Pbdqjow/rcco/ahRtD0a5sNUCRQeMp61/fH0bgync9Q2QAkUYWvbPk9Rxwti1dm
 7OM0u7do0pI43gamkphCLlt4ri+WphKUqdwujkvmNBMuQnr4ZYHkTp9YT0YXsdKdjdcHVIOi
 PELuX5v6M9DqquTo8pUeXcXoarVEao1hQumF/t3NG74/jJ7S0v7qvC7fsgTjqLmrzJne8p7M
 KOOi8sUxKdr0l2b3sUlglmHdoU06kz1KtfEk7FuTopE6D6xtJ4tCG2lt+JvZIe/XHizbEdkT
 osD4ROX8AFTDK38DH1qgtlcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xe7quU9/EGRx+p2zRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyN
 zWOtjEyV9O1sUlJzMstSi/TtEvQy7k/ZxVSwQ7ri9PT3TA2MR8W6GDk5JARMJJ5+n8DcxcjF
 ISSwlFFi7ew1rBAJGYmT0xqgbGGJP9e62CCKPjFK7JxynQkkwSZgKNH1FiIhItDJKDGt+yM7
 iMMssIJZ4tW+uSwgVcIC4RJ98xsZQWwWAVWJuScbgIo4OHgFbCXWnhKH2CAvsXrDAWYQm1PA
 TuJ1y0GwzUJAJcsXvGeewMi3gJFhFaNIamlxbnpusZFecWJucWleul5yfu4mRmAUbTv2c8sO
 xq53wYcYBTgYlXh4X4S8jhNiTSwrrsw9xCjBwawkwut09nScEG9KYmVValF+fFFpTmrxIUZT
 oJsmMkuJJucDIzyvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOj
 lEG7RnH0r5br5meqU2ee+yl7Ovz24beN+46sc11zfe5aRs8Q3WfPyjPP6lzNVlFhfjbxdyyr
 5zbTmkcTnyye7uMy077Qo9JE974Ke/CyH2xz8zxLN22aq7+o5b7EAne+j+uM9u9/2nq/5OIv
 3hfFTjXxhQXqPLIaugpuu+6sc7hWrrTvbF2NEktxRqKhFnNRcSIAzwAV7rgCAAA=
X-CMS-MailID: 20200619103653eucas1p2542a7f42db61b22a43919666368dbbfa
X-Msg-Generator: CA
X-RootMTR: 20200619103653eucas1p2542a7f42db61b22a43919666368dbbfa
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103653eucas1p2542a7f42db61b22a43919666368dbbfa
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103653eucas1p2542a7f42db61b22a43919666368dbbfa@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 01/36] drm: prime: add common helper to
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
ZWxwZXIuYyB8IDIzICsrKy0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9w
cmltZS5jICAgICAgICAgIHwgMzEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVk
ZS9kcm0vZHJtX3ByaW1lLmggICAgICAgICAgICAgIHwgIDIgKysKIDMgZmlsZXMgY2hhbmdlZCwg
MzYgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
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
aW5kZXggYmJmYzcxM2JmZGMzLi4yMjZjZDZhZDM5ODUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fcHJpbWUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKQEAgLTgy
NSw2ICs4MjUsMzcgQEAgc3RydWN0IHNnX3RhYmxlICpkcm1fcHJpbWVfcGFnZXNfdG9fc2coc3Ry
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
c3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsKKwl1bnNpZ25lZCBsb25nIHNpemUgPSAwOworCWludCBp
OworCisJZm9yX2VhY2hfc2d0YWJsZV9kbWFfc2coc2d0LCBzZywgaSkgeworCQl1bnNpZ25lZCBp
bnQgbGVuID0gc2dfZG1hX2xlbihzZyk7CisKKwkJaWYgKCFsZW4pCisJCQlicmVhazsKKwkJaWYg
KHNnX2RtYV9hZGRyZXNzKHNnKSAhPSBleHBlY3RlZCkKKwkJCWJyZWFrOworCQlleHBlY3RlZCAr
PSBsZW47CisJCXNpemUgKz0gbGVuOworCX0KKwlyZXR1cm4gc2l6ZTsKK30KK0VYUE9SVF9TWU1C
T0woZHJtX3ByaW1lX2dldF9jb250aWd1b3VzX3NpemUpOworCiAvKioKICAqIGRybV9nZW1fcHJp
bWVfZXhwb3J0IC0gaGVscGVyIGxpYnJhcnkgaW1wbGVtZW50YXRpb24gb2YgdGhlIGV4cG9ydCBj
YWxsYmFjawogICogQG9iajogR0VNIG9iamVjdCB0byBleHBvcnQKZGlmZiAtLWdpdCBhL2luY2x1
ZGUvZHJtL2RybV9wcmltZS5oIGIvaW5jbHVkZS9kcm0vZHJtX3ByaW1lLmgKaW5kZXggOWFmNzQy
MmI0NGNmLi40N2VmMTE2MTQ2MjcgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9wcmltZS5o
CisrKyBiL2luY2x1ZGUvZHJtL2RybV9wcmltZS5oCkBAIC05Miw2ICs5Miw4IEBAIHN0cnVjdCBz
Z190YWJsZSAqZHJtX3ByaW1lX3BhZ2VzX3RvX3NnKHN0cnVjdCBwYWdlICoqcGFnZXMsIHVuc2ln
bmVkIGludCBucl9wYWdlCiBzdHJ1Y3QgZG1hX2J1ZiAqZHJtX2dlbV9wcmltZV9leHBvcnQoc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICpvYmosCiAJCQkJICAgICBpbnQgZmxhZ3MpOwogCit1bnNpZ25l
ZCBsb25nIGRybV9wcmltZV9nZXRfY29udGlndW91c19zaXplKHN0cnVjdCBzZ190YWJsZSAqc2d0
KTsKKwogLyogaGVscGVyIGZ1bmN0aW9ucyBmb3IgaW1wb3J0aW5nICovCiBzdHJ1Y3QgZHJtX2dl
bV9vYmplY3QgKmRybV9nZW1fcHJpbWVfaW1wb3J0X2RldihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LAogCQkJCQkJc3RydWN0IGRtYV9idWYgKmRtYV9idWYsCi0tIAoyLjE3LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

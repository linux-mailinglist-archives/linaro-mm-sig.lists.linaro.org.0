Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 132761C513E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:50:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34E5466098
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:50:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 27CC86615F; Tue,  5 May 2020 08:50:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F08F66169;
	Tue,  5 May 2020 08:46:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7F0D361999
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 702756615F; Tue,  5 May 2020 08:46:33 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 6C8EE60B02
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:29 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084628euoutp02332f33c73aa24b97c22698cda7c799ad~MFXt8rMC42636626366euoutp02N
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084628euoutp02332f33c73aa24b97c22698cda7c799ad~MFXt8rMC42636626366euoutp02N
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084628eucas1p10e8d07790bd21dca4b43534d0a702244~MFXtrfBvf2430324303eucas1p17;
 Tue,  5 May 2020 08:46:28 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 3C.01.60698.4E721BE5; Tue,  5
 May 2020 09:46:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084627eucas1p199eed52198b4409da1fa8e2256f5bb62~MFXtQFxhC2423024230eucas1p15;
 Tue,  5 May 2020 08:46:27 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084627eusmtrp17da4e92b7e55c6d0d9bbcf02396b2e1a~MFXtPTOPv0942309423eusmtrp1R;
 Tue,  5 May 2020 08:46:27 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-30-5eb127e46587
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F4.14.08375.3E721BE5; Tue,  5
 May 2020 09:46:27 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084627eusmtip11b18811493c682f5d5ad483359babc32~MFXsmhYsG0686606866eusmtip1I;
 Tue,  5 May 2020 08:46:27 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:45:56 +0200
Message-Id: <20200505084614.30424-7-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHe8/Zzs7Wlqep+GaWMUgpUBP7cMi0JD8cCMqKIqLUmYdpeWPH
 WRrp0ixbXlYLvCRjZbi8zlteMy9pcy7U1NTIMlEsMzHyQomtnMfs2//5Pf/n+T+8vDgqbuM6
 4uFRsbQ8ShohwQSc2le/etwmXSsD973U2pMZPSaErMwxcMk/tfdQcnBxDiOLSjoR8qG6GiF1
 Ld6kfsAAyOZHCLkwOI6QVRNDXHKgMR8jyzo+8Mi275NcsiVviHfYhirVlgKqeUnHoQqeTyNU
 3dInLqU1naDG7hoRqvpJEvXeMoFSmhE9oJreKTEqs6YYUPNVOwOE5wQHQ+mI8Dha7uEbLAib
 mlPzYvq2XR1vKkSVoMJeBfg4JPbDwbQOTAUEuJh4CmCe/g7KFgsAaup/r3fmASxe1PJUAF8b
 6c69xHL9Ks81cTYmUoqGuda9GOEJVbMqzKrtiFQAuzKEVhNKdKCwXzcErA1bIgAmG16jVs0h
 dsPZrC5gTRARPlDdm8je5wxLKlrXLHzCF070j2Is/8iDX5bi2YP8YbZZymJb+NVYw2O1EzRr
 0tdug0QKgOM9ZTy2SAdwIDkHsC5vONqzjFkXocQeaGj0YLEfzEr+hrL7t8CR2a1WjK7K+7XZ
 61gE026JWbcLzDOWb8S29fWjrKZg949uHvs8nQCmqjWYGjjn/Q/TAVAMHGgFEymjGa8o+oo7
 I41kFFEy94vRkVVg9WOZLcbFevBiJaQdEDiQCEVn5w2BYq40jomPbAcQRyV2osKfFYFiUag0
 PoGWRwfJFRE00w624xyJg8jr8fQFMSGTxtKXaTqGlv/rIjjfUQlsAOIvCPV5mxMsqWl1rz3d
 NZNkafhcgL7Z7OZ389CkIQg/esC2sWk2OIZ7/NiYUmDutTmi672Oet3Y1XCy+5SHSdgwxc/v
 Ww50KlLzV+oKFmrmGndUKjJn6tyM+sRnLp3nTeFnHiR4K53lcaU+w7fLZSt2FuC6SRaSOMhQ
 1ywSDhMm9dyLyhnpX7GPxbFUAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsVy+t/xu7qP1TfGGVxYYGTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlnMnrCZyWLBfmuL5ZfXM1rsXchk8eXKQyaLTY+vsVpc3jWHzWLt
 kbvsFgc/PGG12D/rGrsDv8eaeWsYPfZ+W8DisXjPSyaP7d8esHrMOxnocb/7OJPH5iX1Hrf/
 PWb2mHxjOaPH7psNbB59W1YxenzeJBfAE6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdo
 bB5rZWSqpG9nk5Kak1mWWqRvl6CX8ez9BPaCC5IVD3cvY25g3CDaxcjBISFgInFqZlYXIxeH
 kMBSRolrLztYuxg5geIyEienNUDZwhJ/rnWxQRR9YpRYcvgaG0iCTcBQoustREJEoJNRYlr3
 R3aQBLPAGWaJ3xu8QWxhAT+Jnjk3GUFsFgFVibf9JxhBNvMK2EpMOF8HsUBeYvWGA8wgNqeA
 ncTjS3fA5gsJFEp8OP+ddQIj3wJGhlWMIqmlxbnpucWGesWJucWleel6yfm5mxiBEbTt2M/N
 OxgvbQw+xCjAwajEwxvxeX2cEGtiWXFl7iFGCQ5mJRHeZT82xAnxpiRWVqUW5ccXleakFh9i
 NAW6aSKzlGhyPjC680riDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1
 MGZtX787T2vOhHfvpxXOT/t69Hxfd7jH/i9c4VENia6Wf09+vP5vw7U6uyVszT1X3oT1h+XH
 bwjqz1q0mWfhsePs2Sc8PD5b2WaWu6feFJM68ni2v80Xz/R1RXrJnNahJ25NfPeDfc4Bk0yv
 jm++mY0LVxyXqlD5MCtwMu+FoHX3uueJnJ9db6TEUpyRaKjFXFScCACtogsvtgIAAA==
X-CMS-MailID: 20200505084627eucas1p199eed52198b4409da1fa8e2256f5bb62
X-Msg-Generator: CA
X-RootMTR: 20200505084627eucas1p199eed52198b4409da1fa8e2256f5bb62
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084627eucas1p199eed52198b4409da1fa8e2256f5bb62
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084627eucas1p199eed52198b4409da1fa8e2256f5bb62@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 07/25] drm: i915: fix common struct
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9z
ZyByZXR1cm5zIHRoZQpudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRk
cmVzcyBzcGFjZS4gSG93ZXZlciB0aGUKc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19m
b3Jfe2RldmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQpjYWxsZWQgd2l0aCB0aGUg
b3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBlbnRyaWVzIHBhc3NlZCB0byBkbWFfbWFwX3NnLiBUaGUK
c2dfdGFibGUtPm5lbnRzIGluIHR1cm4gaG9sZHMgdGhlIHJlc3VsdCBvZiB0aGUgZG1hX21hcF9z
ZyBjYWxsIGFzIHN0YXRlZAppbiBpbmNsdWRlL2xpbnV4L3NjYXR0ZXJsaXN0LmguCgpUaGlzIGRy
aXZlciBjcmVhdGl2ZWx5IHVzZXMgc2dfdGFibGUtPm9yaWdfbmVudHMgdG8gc3RvcmUgdGhlIHNp
emUgb2YgdGhlCmFsbG9jYXRlIHNjYXR0ZXJsaXN0IGFuZCBpZ25vcmVzIHRoZSBudW1iZXIgb2Yg
dGhlIGVudHJpZXMgcmV0dXJuZWQgYnkKZG1hX21hcF9zZyBmdW5jdGlvbi4gVGhlIHNnX3RhYmxl
LT5vcmlnX25lbnRzIGlzIChtaXMpdXNlZCB0byBwcm9wZXJseQpmcmVlIHRoZSAob3ZlcilhbGxv
Y2F0ZWQgc2NhdHRlcmxpc3QuCgpUaGlzIHBhdGNoIG9ubHkgaW50cm9kdWNlcyBjb21tb24gZG1h
LW1hcHBpbmcgd3JhcHBlcnMgb3BlcmF0aW5nIGRpcmVjdGx5Cm9uIHRoZSBzdHJ1Y3Qgc2dfdGFi
bGUgb2JqZWN0cyB0byB0aGUgZG1hYnVmIHJlbGF0ZWQgZnVuY3Rpb25zLCBzbyB0aGUKb3RoZXIg
ZHJpdmVycywgd2hpY2ggbWlnaHQgc2hhcmUgYnVmZmVycyB3aXRoIGk5MTUgY291bGQgcmVseSBv
biB0aGUKcHJvcGVybHkgc2V0IG5lbnRzIGFuZCBvcmlnX25lbnRzIHZhbHVlcy4KClNpZ25lZC1v
ZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZv
ciBtb3JlIGluZm9ybWF0aW9uLCBzZWUgJ1tQQVRDSCB2MyAwMC8yNV0gRFJNOiBmaXggc3RydWN0
IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmlnX25lbnRzIG1pc3VzZScgdGhyZWFkOiBodHRwczovL2xr
bWwub3JnL2xrbWwvMjAyMC81LzUvMTg3Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2RtYWJ1Zi5jICAgICAgIHwgMTMgKysrKystLS0tLS0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2RtYWJ1Zi5jIHwgIDcgKysrLS0tLQogMiBmaWxlcyBj
aGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwppbmRleCA3ZGI1YTc5Li43ZTg1ODNlIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCkBAIC00OCwxMiArNDgs
MTAgQEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAqaTkxNV9nZW1fbWFwX2RtYV9idWYoc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWUKIAkJc3JjID0gc2dfbmV4dChzcmMpOwogCX0K
IAotCWlmICghZG1hX21hcF9zZ19hdHRycyhhdHRhY2htZW50LT5kZXYsCi0JCQkgICAgICBzdC0+
c2dsLCBzdC0+bmVudHMsIGRpciwKLQkJCSAgICAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpKSB7
Ci0JCXJldCA9IC1FTk9NRU07CisJcmV0ID0gZG1hX21hcF9zZ3RhYmxlX2F0dHJzKGF0dGFjaG1l
bnQtPmRldiwgc3QsIGRpciwKKwkJCQkgICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CisJaWYg
KHJldCkKIAkJZ290byBlcnJfZnJlZV9zZzsKLQl9CiAKIAlyZXR1cm4gc3Q7CiAKQEAgLTczLDkg
KzcxLDggQEAgc3RhdGljIHZvaWQgaTkxNV9nZW1fdW5tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1
Zl9hdHRhY2htZW50ICphdHRhY2htZW50LAogewogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmogPSBkbWFfYnVmX3RvX29iaihhdHRhY2htZW50LT5kbWFidWYpOwogCi0JZG1hX3VubWFw
X3NnX2F0dHJzKGF0dGFjaG1lbnQtPmRldiwKLQkJCSAgIHNnLT5zZ2wsIHNnLT5uZW50cywgZGly
LAotCQkJICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CisJZG1hX3VubWFwX3NndGFibGVfYXR0
cnMoYXR0YWNobWVudC0+ZGV2LCBzZywgZGlyLAorCQkJCURNQV9BVFRSX1NLSVBfQ1BVX1NZTkMp
OwogCXNnX2ZyZWVfdGFibGUoc2cpOwogCWtmcmVlKHNnKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2RtYWJ1Zi5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2RtYWJ1Zi5jCmluZGV4IGRlYmFmN2IuLjc1NmNi
NzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19k
bWFidWYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfZG1h
YnVmLmMKQEAgLTI4LDEwICsyOCw5IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKm1vY2tfbWFw
X2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKIAkJc2cgPSBz
Z19uZXh0KHNnKTsKIAl9CiAKLQlpZiAoIWRtYV9tYXBfc2coYXR0YWNobWVudC0+ZGV2LCBzdC0+
c2dsLCBzdC0+bmVudHMsIGRpcikpIHsKLQkJZXJyID0gLUVOT01FTTsKKwllcnIgPSBkbWFfbWFw
X3NndGFibGUoYXR0YWNobWVudC0+ZGV2LCBzdCwgZGlyKTsKKwlpZiAoZXJyKQogCQlnb3RvIGVy
cl9zdDsKLQl9CiAKIAlyZXR1cm4gc3Q7CiAKQEAgLTQ2LDcgKzQ1LDcgQEAgc3RhdGljIHZvaWQg
bW9ja191bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQs
CiAJCQkgICAgICAgc3RydWN0IHNnX3RhYmxlICpzdCwKIAkJCSAgICAgICBlbnVtIGRtYV9kYXRh
X2RpcmVjdGlvbiBkaXIpCiB7Ci0JZG1hX3VubWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgc3QtPnNn
bCwgc3QtPm5lbnRzLCBkaXIpOworCWRtYV91bm1hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwg
c3QsIGRpcik7CiAJc2dfZnJlZV90YWJsZShzdCk7CiAJa2ZyZWUoc3QpOwogfQotLSAKMS45LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

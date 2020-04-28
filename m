Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ACE1BBFAC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:36:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4EC161997
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:36:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B5B8661994; Tue, 28 Apr 2020 13:36:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B47EE66052;
	Tue, 28 Apr 2020 13:22:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 111E161868
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:21:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0205861997; Tue, 28 Apr 2020 13:21:44 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id EEABA61999
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:33 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132033euoutp01160b8a35aa4f26fb903b3f980af57321~J-mBP0a6c2044120441euoutp01H
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132033euoutp01160b8a35aa4f26fb903b3f980af57321~J-mBP0a6c2044120441euoutp01H
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200428132032eucas1p2488259606ff3e4dad28e7de81cfe4baa~J-mA2SEnw2653326533eucas1p2S;
 Tue, 28 Apr 2020 13:20:32 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id AE.26.60698.0AD28AE5; Tue, 28
 Apr 2020 14:20:32 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132032eucas1p17c2b93daf91c95c41650e75b251d525c~J-mAm0ZZa1368113681eucas1p1R;
 Tue, 28 Apr 2020 13:20:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132032eusmtrp2a527f876c3f2d680c57d874708de8d31~J-mAmDBus2140221402eusmtrp2b;
 Tue, 28 Apr 2020 13:20:32 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-9d-5ea82da01ffa
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A7.E3.07950.0AD28AE5; Tue, 28
 Apr 2020 14:20:32 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132031eusmtip2b5690c9c67116c2ec0e00c4bc3216f63~J-mACdxOH1116911169eusmtip2b;
 Tue, 28 Apr 2020 13:20:31 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:20:05 +0200
Message-Id: <20200428132005.21424-18-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrAKsWRmVeSWpSXmKPExsWy7djPc7oLdFfEGVzr0rPoPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUVw2Kak5mWWpRfp2CVwZJ88sYirYL1yxaGYjYwPjSoEu
 Rk4OCQETiTMn3jB2MXJxCAmsYJR40ToVyvnCKDH35wVmCOczo8Sdr2uZYFquPLzHApFYziix
 Zdt3JriWhm9LwKrYBAwlut52sYHYIgKtjBInenlAipgFtjFLPFl+hB0kISzgKrFjywJWEJtF
 QFVi8+atzCA2r4CdxNKGh2wQ6+QlVm84ABbnBIk/egoVv8Qu8aMlDMJ2kbhzcA/UecISr45v
 YYewZST+75wPdp2EQDOjxMNza9khnB5GictNMxghqqwl7pz7BTSVA+g8TYn1u/RBTAkBR4kr
 h1ghTD6JG28FQYqZgcxJ26YzQ4R5JTrahCBmqEnMOr4ObuvBC5eYIWwPiTe3prBDwmcio8TR
 LW9YJzDKz0LYtYCRcRWjeGppcW56arFxXmq5XnFibnFpXrpecn7uJkZgujr97/jXHYz7/iQd
 YhTgYFTi4d3AsyJOiDWxrLgy9xCjBAezkgjvo4xlcUK8KYmVValF+fFFpTmpxYcYpTlYlMR5
 jRe9jBUSSE8sSc1OTS1ILYLJMnFwSjUw8tTcmldqUOKySi/5gHlzgK3j39s87tPS4/uCNEyE
 Vt249jf58qqXa/yee/kYcbz1rX5jcKqLaZPW9pUX/aYxBvks7k7RfvIuYUP1Bv3nxn2Xy3UW
 z/my1i8wOfvR2YAPMw9tqbMzX1g5R8hDZJHGqbkyN533TW1++smWu3xiTLmB23vW6L7zSizF
 GYmGWsxFxYkAKWHGIVMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xe7oLdFfEGUzZJ2/Re+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQyTp5ZxFSwX7hi0cxGxgbGlQJdjJwcEgImElce3mPpYuTiEBJY
 yihx79VJZoiEjMTJaQ2sELawxJ9rXWwQRZ8YJZ5sfsMIkmATMJToeguREBHoZJSY1v2RHcRh
 FjjALNF9/iQTSJWwgKvEji0LwEaxCKhKbN68FWwFr4CdxNKGh2wQK+QlVm84ABbnBIk/egoU
 5wBaZytxuSV3AiPfAkaGVYwiqaXFuem5xUZ6xYm5xaV56XrJ+bmbGIHxs+3Yzy07GLveBR9i
 FOBgVOLh3cCzIk6INbGsuDL3EKMEB7OSCO+jjGVxQrwpiZVVqUX58UWlOanFhxhNgW6ayCwl
 mpwPjO28knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MfTW39hzO
 mxy01EE76EWz3dGUqnuftJNOBSv8ebYjt4dt2cwXa/9s+f2j8pVC7MWVX4RU76qtNNMp/r+1
 t8thX422iuiukxu6pBMLDq2J/vJtxYcbTwvv9TPk3N3+5QyDzb8tjhN3eWy4Xf+n8qRsV6mF
 qf3XUvX82csYS+3/FtWUXZp/ZtriO0osxRmJhlrMRcWJAGKr1d21AgAA
X-CMS-MailID: 20200428132032eucas1p17c2b93daf91c95c41650e75b251d525c
X-Msg-Generator: CA
X-RootMTR: 20200428132032eucas1p17c2b93daf91c95c41650e75b251d525c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132032eucas1p17c2b93daf91c95c41650e75b251d525c
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132032eucas1p17c2b93daf91c95c41650e75b251d525c@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 17/17] dmabuf: fix sg_table nents vs.
	orig_nents misuse
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
b3JpZ2luYWwgbnVtYmVyIG9mIGVudHJpZXMgcGFzc2VkIHRvIGRtYV9tYXBfc2cuIFRoZQpzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCmluIGluY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaC4gQWRhcHQgdGhlIGNv
ZGUgdG8gb2JleSB0aG9zZSBydWxlcy4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVh
cC1oZWxwZXJzLmMgfCA3ICsrKystLS0KIGRyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMgICAgICAg
ICAgICB8IDUgKysrLS0KIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhlbHBlcnMu
YyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhlbHBlcnMuYwppbmRleCA5Zjk2NGNhLi5i
OTIzODYzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMK
KysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jCkBAIC0xNDQsOCArMTQ0
LDkgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfaGVhcF9tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1
Zl9hdHRhY2htZW50ICphdHRhY2htZW50LAogCiAJdGFibGUgPSAmYS0+dGFibGU7CiAKLQlpZiAo
IWRtYV9tYXBfc2coYXR0YWNobWVudC0+ZGV2LCB0YWJsZS0+c2dsLCB0YWJsZS0+bmVudHMsCi0J
CQlkaXJlY3Rpb24pKQorCXRhYmxlLT5uZW50cyA9IGRtYV9tYXBfc2coYXR0YWNobWVudC0+ZGV2
LCB0YWJsZS0+c2dsLAorCQkJCSAgdGFibGUtPm9yaWdfbmVudHMsIGRpcmVjdGlvbik7CisJaWYg
KCF0YWJsZS0+bmVudHMpCiAJCXRhYmxlID0gRVJSX1BUUigtRU5PTUVNKTsKIAlyZXR1cm4gdGFi
bGU7CiB9CkBAIC0xNTQsNyArMTU1LDcgQEAgc3RhdGljIHZvaWQgZG1hX2hlYXBfdW5tYXBfZG1h
X2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50LAogCQkJCSAgIHN0cnVj
dCBzZ190YWJsZSAqdGFibGUsCiAJCQkJICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0
aW9uKQogewotCWRtYV91bm1hcF9zZyhhdHRhY2htZW50LT5kZXYsIHRhYmxlLT5zZ2wsIHRhYmxl
LT5uZW50cywgZGlyZWN0aW9uKTsKKwlkbWFfdW5tYXBfc2coYXR0YWNobWVudC0+ZGV2LCB0YWJs
ZS0+c2dsLCB0YWJsZS0+b3JpZ19uZW50cywgZGlyZWN0aW9uKTsKIH0KIAogc3RhdGljIHZtX2Zh
dWx0X3QgZG1hX2hlYXBfdm1fZmF1bHQoc3RydWN0IHZtX2ZhdWx0ICp2bWYpCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYwpp
bmRleCBhY2IyNmM2Li5lYTBjZjcxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1
Zi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMKQEAgLTYzLDcgKzYzLDggQEAgc3Rh
dGljIHN0cnVjdCBzZ190YWJsZSAqZ2V0X3NnX3RhYmxlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3Ry
dWN0IGRtYV9idWYgKmJ1ZiwKIAkJCQkJR0ZQX0tFUk5FTCk7CiAJaWYgKHJldCA8IDApCiAJCWdv
dG8gZXJyOwotCWlmICghZG1hX21hcF9zZyhkZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywgZGlyZWN0
aW9uKSkgeworCXNnLT5uZW50cyA9IGRtYV9tYXBfc2coZGV2LCBzZy0+c2dsLCBzZy0+b3JpZ19u
ZW50cywgZGlyZWN0aW9uKTsKKwlpZiAoIXNnLT5uZW50cykgewogCQlyZXQgPSAtRUlOVkFMOwog
CQlnb3RvIGVycjsKIAl9CkBAIC03OCw3ICs3OSw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUg
KmdldF9zZ190YWJsZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkbWFfYnVmICpidWYsCiBz
dGF0aWMgdm9pZCBwdXRfc2dfdGFibGUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qgc2dfdGFi
bGUgKnNnLAogCQkJIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikKIHsKLQlkbWFf
dW5tYXBfc2coZGV2LCBzZy0+c2dsLCBzZy0+bmVudHMsIGRpcmVjdGlvbik7CisJZG1hX3VubWFw
X3NnKGRldiwgc2ctPnNnbCwgc2ctPm9yaWdfbmVudHMsIGRpcmVjdGlvbik7CiAJc2dfZnJlZV90
YWJsZShzZyk7CiAJa2ZyZWUoc2cpOwogfQotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

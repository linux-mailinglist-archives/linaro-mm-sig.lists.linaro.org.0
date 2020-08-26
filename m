Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB20252798
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:44:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88DC3617D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:44:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7822D617DE; Wed, 26 Aug 2020 06:44:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 745D1666D6;
	Wed, 26 Aug 2020 06:36:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 60CF3617F1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 509A365F8C; Wed, 26 Aug 2020 06:35:42 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id DAA63617F1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:34 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063534euoutp015fc6adc26601b7237f29c8ef21f815c7~uverbWz2t1717017170euoutp01g
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063534euoutp015fc6adc26601b7237f29c8ef21f815c7~uverbWz2t1717017170euoutp01g
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200826063533eucas1p16d9e6bf7c69818da119255358df382c1~uveq2zvo71478314783eucas1p1W;
 Wed, 26 Aug 2020 06:35:33 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id A2.33.06456.5B2064F5; Wed, 26
 Aug 2020 07:35:33 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063533eucas1p1e346ac4a683f929be8adc344b3fe9ea0~uveqZGZqS1478314783eucas1p1U;
 Wed, 26 Aug 2020 06:35:33 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200826063533eusmtrp2b5d2ab77be8e4428570e50ecaa11247e~uveqYXm9A0466204662eusmtrp2G;
 Wed, 26 Aug 2020 06:35:33 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-c1-5f4602b55aa3
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A0.53.06017.4B2064F5; Wed, 26
 Aug 2020 07:35:32 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063532eusmtip2a661488c75102a598df06eb563b1f6b1~uvep1HU9u2993829938eusmtip2g;
 Wed, 26 Aug 2020 06:35:32 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:53 +0200
Message-Id: <20200826063316.23486-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGKsWRmVeSWpSXmKPExsWy7djPc7pbmdziDW4/krLoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+DxvE5vFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNXi
 w9qvTA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB3FZZOSmpNZllqkb5fAlXHg+X/GgntSFe8PhTQwzhPrYuTkkBAwkViwdAlb
 FyMXh5DACkaJs0+msUA4XxglTm89xgzhfGaUWLH4PBtMy4R5P6CqljNK3Lw2kwmu5c+LZSwg
 VWwChhJdb7vAOkQEWhklTvTygBQxC1xmkph/tAmsSFggQOJB3xZGEJtFQFXiz989TCA2r4Cd
 xKL50xgh1slLrN5wgBnE5gSKH+/uB7tWQuAYu8SiJ79ZIIpcJBa3rGOFsIUlXh3fwg5hy0j8
 3zmfCaKhmVHi4bm17BBOD6PE5aYZUCusJe6c+wU0lgPoPk2J9bv0IcKOEjueXGQCCUsI8Enc
 eCsIEmYGMidtm84MEeaV6GgTgqhWk5h1fB3c2oMXLkGVeEjM6IQG0ERGiXV7ZzBNYJSfhbBr
 ASPjKkbx1NLi3PTUYsO81HK94sTc4tK8dL3k/NxNjMDUdPrf8U87GL9eSjrEKMDBqMTDu4DN
 NV6INbGsuDL3EKMEB7OSCK/T2dNxQrwpiZVVqUX58UWlOanFhxilOViUxHmNF72MFRJITyxJ
 zU5NLUgtgskycXBKNTAu6WjRmvOsnOOzzrs2TtlIxby0KQfNPCyCLqwKPruWfbWAzMx69an1
 8wr6HnyxCfHirmRbaNTXEnZYQ029fXPyk2ihJMf8BF25ThE/Zq8lZ9j8jbdKTJdc/iz5GdfL
 xV/2L1j+Xe74QqcW991d7+PuTjcLnMSaXmDWH99+d486Y9GdhBusAUosxRmJhlrMRcWJAACn
 CqBJAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xe7pbmNziDS6+t7HoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+DxvE5vFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNXi
 w9qvTA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl3Hg+X/GgntSFe8PhTQwzhPrYuTkkBAwkZgw7wdLFyMXh5DAUkaJ3UfusEAkZCRO
 TmtghbCFJf5c62KDKPrEKHGyYScjSIJNwFCi6y1EQkSgk1FiWvdHdhCHWeA2k8SZuROYQaqE
 Bfwk/v5+CzaWRUBV4s/fPUwgNq+AncSi+dMYIVbIS6zecACsnhMofry7nw3EFhKwlTi9dgbz
 BEa+BYwMqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQJjZduxn1t2MHa9Cz7EKMDBqMTDu4DN
 NV6INbGsuDL3EKMEB7OSCK/T2dNxQrwpiZVVqUX58UWlOanFhxhNgY6ayCwlmpwPjOO8knhD
 U0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2Ml5zsefnybwseP/ZzyRv9
 nTrPr/cc3bD9wq622iLfZElOO7eahrf5f7z+c4j++j230eqHZs8l7wkzXidOejjpfjRTCsOf
 2cL3hGs+T+jITFHoSdrYoWE5x+v9ifOTL0z+XaSZLSmwrualmcwMwX8TvAvnn6vyNtwst+/g
 zaM/JDTTvJIi2XwdlFiKMxINtZiLihMB2n060qsCAAA=
X-CMS-MailID: 20200826063533eucas1p1e346ac4a683f929be8adc344b3fe9ea0
X-Msg-Generator: CA
X-RootMTR: 20200826063533eucas1p1e346ac4a683f929be8adc344b3fe9ea0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063533eucas1p1e346ac4a683f929be8adc344b3fe9ea0
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063533eucas1p1e346ac4a683f929be8adc344b3fe9ea0@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: lima@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Qiang Yu <yuq825@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 09/32] drm: lima: fix common struct
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
dW5jdGlvbi4KClRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBsZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFw
cGluZyB3cmFwcGVycyBvcGVyYXRpbmcKZGlyZWN0bHkgb24gdGhlIHN0cnVjdCBzZ190YWJsZSBv
YmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFnZQppdGVyYXRvcnMgd2hlcmUgcG9zc2libGUu
IFRoaXMsIGFsbW9zdCBhbHdheXMsIGhpZGVzIHJlZmVyZW5jZXMgdG8gdGhlCm5lbnRzIGFuZCBv
cmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xs
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IFFpYW5nIFl1IDx5dXE4MjVA
Z21haWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMgfCAxMSArKysr
KysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV92bS5jICB8ICA1ICsrLS0tCiAyIGZp
bGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9saW1h
L2xpbWFfZ2VtLmMKaW5kZXggMTU1ZjJiNGI0MDMwLi4xMTIyM2ZlMzQ4ZGYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2xp
bWEvbGltYV9nZW0uYwpAQCAtNjksOCArNjksNyBAQCBpbnQgbGltYV9oZWFwX2FsbG9jKHN0cnVj
dCBsaW1hX2JvICpibywgc3RydWN0IGxpbWFfdm0gKnZtKQogCQlyZXR1cm4gcmV0OwogCiAJaWYg
KGJvLT5iYXNlLnNndCkgewotCQlkbWFfdW5tYXBfc2coZGV2LCBiby0+YmFzZS5zZ3QtPnNnbCwK
LQkJCSAgICAgYm8tPmJhc2Uuc2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQlkbWFf
dW5tYXBfc2d0YWJsZShkZXYsIGJvLT5iYXNlLnNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDApOwog
CQlzZ19mcmVlX3RhYmxlKGJvLT5iYXNlLnNndCk7CiAJfSBlbHNlIHsKIAkJYm8tPmJhc2Uuc2d0
ID0ga21hbGxvYyhzaXplb2YoKmJvLT5iYXNlLnNndCksIEdGUF9LRVJORUwpOwpAQCAtODAsNyAr
NzksMTMgQEAgaW50IGxpbWFfaGVhcF9hbGxvYyhzdHJ1Y3QgbGltYV9ibyAqYm8sIHN0cnVjdCBs
aW1hX3ZtICp2bSkKIAkJfQogCX0KIAotCWRtYV9tYXBfc2coZGV2LCBzZ3Quc2dsLCBzZ3QubmVu
dHMsIERNQV9CSURJUkVDVElPTkFMKTsKKwlyZXQgPSBkbWFfbWFwX3NndGFibGUoZGV2LCAmc2d0
LCBETUFfQklESVJFQ1RJT05BTCwgMCk7CisJaWYgKHJldCkgeworCQlzZ19mcmVlX3RhYmxlKCZz
Z3QpOworCQlrZnJlZShiby0+YmFzZS5zZ3QpOworCQliby0+YmFzZS5zZ3QgPSBOVUxMOworCQly
ZXR1cm4gcmV0OworCX0KIAogCSpiby0+YmFzZS5zZ3QgPSBzZ3Q7CiAKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfdm0uYyBiL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFf
dm0uYwppbmRleCA1YjkyZmI4MjY3NGEuLjJiMjczOWFkYzdmNSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2xpbWEvbGltYV92bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFf
dm0uYwpAQCAtMTI0LDcgKzEyNCw3IEBAIGludCBsaW1hX3ZtX2JvX2FkZChzdHJ1Y3QgbGltYV92
bSAqdm0sIHN0cnVjdCBsaW1hX2JvICpibywgYm9vbCBjcmVhdGUpCiAJaWYgKGVycikKIAkJZ290
byBlcnJfb3V0MTsKIAotCWZvcl9lYWNoX3NnX2RtYV9wYWdlKGJvLT5iYXNlLnNndC0+c2dsLCAm
c2dfaXRlciwgYm8tPmJhc2Uuc2d0LT5uZW50cywgMCkgeworCWZvcl9lYWNoX3NndGFibGVfZG1h
X3BhZ2UoYm8tPmJhc2Uuc2d0LCAmc2dfaXRlciwgMCkgewogCQllcnIgPSBsaW1hX3ZtX21hcF9w
YWdlKHZtLCBzZ19wYWdlX2l0ZXJfZG1hX2FkZHJlc3MoJnNnX2l0ZXIpLAogCQkJCSAgICAgICBi
b192YS0+bm9kZS5zdGFydCArIG9mZnNldCk7CiAJCWlmIChlcnIpCkBAIC0yOTgsOCArMjk4LDcg
QEAgaW50IGxpbWFfdm1fbWFwX2JvKHN0cnVjdCBsaW1hX3ZtICp2bSwgc3RydWN0IGxpbWFfYm8g
KmJvLCBpbnQgcGFnZW9mZikKIAltdXRleF9sb2NrKCZ2bS0+bG9jayk7CiAKIAliYXNlID0gYm9f
dmEtPm5vZGUuc3RhcnQgKyAocGFnZW9mZiA8PCBQQUdFX1NISUZUKTsKLQlmb3JfZWFjaF9zZ19k
bWFfcGFnZShiby0+YmFzZS5zZ3QtPnNnbCwgJnNnX2l0ZXIsCi0JCQkgICAgIGJvLT5iYXNlLnNn
dC0+bmVudHMsIHBhZ2VvZmYpIHsKKwlmb3JfZWFjaF9zZ3RhYmxlX2RtYV9wYWdlKGJvLT5iYXNl
LnNndCwgJnNnX2l0ZXIsIHBhZ2VvZmYpIHsKIAkJZXJyID0gbGltYV92bV9tYXBfcGFnZSh2bSwg
c2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNzKCZzZ19pdGVyKSwKIAkJCQkgICAgICAgYmFzZSArIG9m
ZnNldCk7CiAJCWlmIChlcnIpCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==

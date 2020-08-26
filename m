Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5792527AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:48:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67A5D60749
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:48:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5A00E60C32; Wed, 26 Aug 2020 06:48:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66D3E61813;
	Wed, 26 Aug 2020 06:37:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E7D49617D4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DC2E960C37; Wed, 26 Aug 2020 06:35:49 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 7343B617D4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:38 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063537euoutp01c98f7fb000faffcce58b2c6d39be68b8~uveusQr192034920349euoutp01B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063537euoutp01c98f7fb000faffcce58b2c6d39be68b8~uveusQr192034920349euoutp01B
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063537eucas1p2cbe586658c973f74d00447834e1d7a38~uveuNiHsq0402804028eucas1p2l;
 Wed, 26 Aug 2020 06:35:37 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 06.33.06456.9B2064F5; Wed, 26
 Aug 2020 07:35:37 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063536eucas1p2d9ea013228bcfbd5778959274aa01b78~uvetyJ-PZ0398703987eucas1p2e;
 Wed, 26 Aug 2020 06:35:36 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063536eusmtrp1bd2d212415335d772a8e2f7b51ea8b14~uvetxgu8c1091110911eusmtrp1b;
 Wed, 26 Aug 2020 06:35:36 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-cc-5f4602b97bbe
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 05.D0.06314.8B2064F5; Wed, 26
 Aug 2020 07:35:36 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063536eusmtip26a7a8cb12a4cfae92c0a3899a191cf98~uvetOJhH90302303023eusmtip2y;
 Wed, 26 Aug 2020 06:35:36 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:59 +0200
Message-Id: <20200826063316.23486-16-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjmO3eHk9M0/FiiMDJSSh1JHFBErdnpXz/6VdRceVJpm7Z5yQwy
 RbOpUzPUVESGYF7WbJm3Ei+Us8xL3pjWUFEpNTW8oRHa5rH697zv8zzv834vH4WK2nExFatO
 4DRqhVJCCLDm3t2h021IhDygIodk8gY/IMzLUhPO7DcXoszY1hrB1Na/R5iqziBmc2wWYcxz
 Ezgz2l5BMMZ3NpLZf9tKMt0/53FGbxwhQoVsQ2UDYFtt1YDt2K7CWHPdY4Jt2Z7B2ekcC8K+
 qn7AftmbQ9kiaw1g30ymEay+qQ6wG2bPS85XBMFRnDI2idP4h0QKYoYNQ3j8J3i3uniQTAN9
 bjpAUZAOhEWvr+mAgBLRzwEs1k+hOuBkLzYBbKsJ5IkNANcnOoCDcBh+GKYAT9QAmLHcd1jY
 HQXfnx3YCVoKdSs6woHd6EwA+/KcHSKUnkegdceIOwhX+jI01fN5GO0N1/VLB30hHQIXbAaU
 j/OC9Y1dB9jJ3rfk5BOOQZD+SMLM2iGMF52HaYU6hMeucMnSRPLYA/YX5WK8IQPA2UEjyRe5
 AI6mlx6+KAh+HfxFOM6B0j7Q1O7PXyYM/i64wEMXaF054hCjdvikuQTl20KYnSXiZ5yAZZYX
 /1K7h0cO12fh2LiV5A9UCGBnrQ0pAF5l/7OqAKgD7lyiVhXNaaVqLtlPq1BpE9XRfjfjVGZg
 /1H9e5b1VrA1cqMH0BSQOAurCJlchCuStCmqHgApVOImDB/ovy4SRilS7nGaOLkmUclpe8Ax
 CpO4C88YFq+J6GhFAneb4+I5zV8WoZzEaSDYW1wemZ+1+i0nJTpAv3lRLrSVLtxvPFqyKtsR
 yyYFeto6Nj43sf80edEkYbI8P5dv96dWFvVmLE+HRK5hJ3cxJboQJj6+cTb8kVJ9tUVdQvbO
 yEMNvtAF3+tV+61nPxxKl3YFnPPZldaGnZJVDHhE3Lm1wi1uppZ3+ywNSDBtjELqi2q0ij8D
 8a32TQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xe7o7mNziDQ52qlv0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xf89O9gtDn54wmrR
 t/YSmwOvx5p5axg9dtxdwuix99sCFo9NqzrZPLZ/e8Dqcb/7OJPH5iX1Hrf/PWb2mHxjOaPH
 7psNbB59W1YxenzeJBfAE6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9n
 k5Kak1mWWqRvl6CXcWHRedaCMxIVS6adY29gPCHSxcjJISFgIvFm0S3GLkYuDiGBpYwSa3ou
 skMkZCROTmtghbCFJf5c62KDKPrEKNHx8SETSIJNwFCi6y1EQkSgk1FiWvdHsG5mgTdMEpeu
 RoDYwgJBEh3zNzKD2CwCqhKf+l6BTeUVsJN4encRM8QGeYnVGw6A2ZxA8ePd/WwgtpCArcTp
 tTOYJzDyLWBkWMUoklpanJueW2yoV5yYW1yal66XnJ+7iREYNduO/dy8g/HSxuBDjAIcjEo8
 vAvYXOOFWBPLiitzDzFKcDArifA6nT0dJ8SbklhZlVqUH19UmpNafIjRFOioicxSosn5wIjO
 K4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAmDvdJP6S0vKYjzHa
 az3uHZ77p50jmSmj+Nvh5S+krszRTGJZteiGmEx1QNDWchv9M1FhJssLzz5TDj+pLTvlbFYL
 Y3uzxOFcsdUv10qbVewWmG+88qGe9wWzfYrafzMO5J1szLYNb/5pefzkk2hejZs/vH/35h0K
 5H6/cqfj/G0Z75foxAk5KbEUZyQaajEXFScCAPQm8FOwAgAA
X-CMS-MailID: 20200826063536eucas1p2d9ea013228bcfbd5778959274aa01b78
X-Msg-Generator: CA
X-RootMTR: 20200826063536eucas1p2d9ea013228bcfbd5778959274aa01b78
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063536eucas1p2d9ea013228bcfbd5778959274aa01b78
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063536eucas1p2d9ea013228bcfbd5778959274aa01b78@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 15/32] drm: panfrost: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IFN0ZXZlbiBQcmljZSA8c3Rl
dmVuLnByaWNlQGFybS5jb20+ClJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwu
b3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9nZW0uYyB8IDQgKyst
LQogZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X21tdS5jIHwgNyArKystLS0tCiAy
IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMgYi9kcml2ZXJzL2dw
dS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMKaW5kZXggMzMzNTVkZDMwMmYxLi4xYTZjZWEw
ZTBiZDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9nZW0u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMKQEAgLTQxLDgg
KzQxLDggQEAgc3RhdGljIHZvaWQgcGFuZnJvc3RfZ2VtX2ZyZWVfb2JqZWN0KHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqKQogCiAJCWZvciAoaSA9IDA7IGkgPCBuX3NndDsgaSsrKSB7CiAJCQlp
ZiAoYm8tPnNndHNbaV0uc2dsKSB7Ci0JCQkJZG1hX3VubWFwX3NnKHBmZGV2LT5kZXYsIGJvLT5z
Z3RzW2ldLnNnbCwKLQkJCQkJICAgICBiby0+c2d0c1tpXS5uZW50cywgRE1BX0JJRElSRUNUSU9O
QUwpOworCQkJCWRtYV91bm1hcF9zZ3RhYmxlKHBmZGV2LT5kZXYsICZiby0+c2d0c1tpXSwKKwkJ
CQkJCSAgRE1BX0JJRElSRUNUSU9OQUwsIDApOwogCQkJCXNnX2ZyZWVfdGFibGUoJmJvLT5zZ3Rz
W2ldKTsKIAkJCX0KIAkJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3Bh
bmZyb3N0X21tdS5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X21tdS5jCmlu
ZGV4IGU4ZjdiMTEzNTJkMi4uNzc2NDQ4YzUyN2VhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcGFuZnJvc3QvcGFuZnJvc3RfbW11LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0
L3BhbmZyb3N0X21tdS5jCkBAIC0yNTMsNyArMjUzLDcgQEAgc3RhdGljIGludCBtbXVfbWFwX3Nn
KHN0cnVjdCBwYW5mcm9zdF9kZXZpY2UgKnBmZGV2LCBzdHJ1Y3QgcGFuZnJvc3RfbW11ICptbXUs
CiAJc3RydWN0IGlvX3BndGFibGVfb3BzICpvcHMgPSBtbXUtPnBndGJsX29wczsKIAl1NjQgc3Rh
cnRfaW92YSA9IGlvdmE7CiAKLQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2dsLCBzZ3QtPm5lbnRz
LCBjb3VudCkgeworCWZvcl9lYWNoX3NndGFibGVfZG1hX3NnKHNndCwgc2dsLCBjb3VudCkgewog
CQl1bnNpZ25lZCBsb25nIHBhZGRyID0gc2dfZG1hX2FkZHJlc3Moc2dsKTsKIAkJc2l6ZV90IGxl
biA9IHNnX2RtYV9sZW4oc2dsKTsKIApAQCAtNTE3LDEwICs1MTcsOSBAQCBzdGF0aWMgaW50IHBh
bmZyb3N0X21tdV9tYXBfZmF1bHRfYWRkcihzdHJ1Y3QgcGFuZnJvc3RfZGV2aWNlICpwZmRldiwg
aW50IGFzLAogCWlmIChyZXQpCiAJCWdvdG8gZXJyX3BhZ2VzOwogCi0JaWYgKCFkbWFfbWFwX3Nn
KHBmZGV2LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCkpIHsK
LQkJcmV0ID0gLUVJTlZBTDsKKwlyZXQgPSBkbWFfbWFwX3NndGFibGUocGZkZXYtPmRldiwgc2d0
LCBETUFfQklESVJFQ1RJT05BTCwgMCk7CisJaWYgKHJldCkKIAkJZ290byBlcnJfbWFwOwotCX0K
IAogCW1tdV9tYXBfc2cocGZkZXYsIGJvbWFwcGluZy0+bW11LCBhZGRyLAogCQkgICBJT01NVV9X
UklURSB8IElPTU1VX1JFQUQgfCBJT01NVV9OT0VYRUMsIHNndCk7Ci0tIAoyLjE3LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A641C3AED
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:09:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B7BFF66048
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:09:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A48D566052; Mon,  4 May 2020 13:09:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E72566533;
	Mon,  4 May 2020 12:55:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0EA8166052
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:55:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E9A1566056; Mon,  4 May 2020 12:55:30 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id A47D866073
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:22 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125421euoutp02e0c499179bd760f0490b256c3a1bbc73~L1G3aQu_C1833318333euoutp02_
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125421euoutp02e0c499179bd760f0490b256c3a1bbc73~L1G3aQu_C1833318333euoutp02_
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125421eucas1p1df1e13bc891512672bc23e3e21550bda~L1G3FrEs91117211172eucas1p1i;
 Mon,  4 May 2020 12:54:21 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 21.E2.60679.D7010BE5; Mon,  4
 May 2020 13:54:21 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125421eucas1p19cb27a8f2a795675a48c8665e20ede12~L1G2np2cd1174811748eucas1p1d;
 Mon,  4 May 2020 12:54:21 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125420eusmtrp2e34104d77afa7aadc76a009fbfd037db~L1G2nAHOG2826928269eusmtrp2Z;
 Mon,  4 May 2020 12:54:20 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-b1-5eb0107daca2
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 3D.69.08375.C7010BE5; Mon,  4
 May 2020 13:54:20 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125420eusmtip2c98c2cbfba68d1691c21ef1ebaf5d249~L1G189nOL3246632466eusmtip2c;
 Mon,  4 May 2020 12:54:20 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:54 +0200
Message-Id: <20200504125359.5678-16-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHec9lO14mp2n6sixhZjfwVlEnrEioOBBYfTAiSp15UslN2bxk
 Gc1M06WpaXmhdHYz5/2azrupSyKtFNNSzLQPDUfB1LDUtdOZ+e33PM////x5H14CFTbiIiJc
 Fs3IZZIIMc8aa+pfGnK/TtYEeLUNQSpjcAChavOrccrUlI1SIws/eFRZeR9CqTt9qPmRaYSq
 mxnFqWHtQx6VNl/Ioyp7J/lU989ZnFrSFmFHBHRFUQWg2xfVGN1SOMmnXy5+wempOzqErn96
 g/68OoPSOWOlgG4dV/Louw0aQBvrtpyyOWd9MISJCI9l5J6Hg6zDCoqpqLKNV/q047gSJG9Q
 ASsCknvhg5UxVAWsCSH5AsClzhLAFfMAZo6uYFxhBPC2vhesWRKXpy2DUgAz0lXrlq5HZXxW
 xSO9ocqg4rHsQCYD+DrDlhWh5FcEpn18j7IDe/I0/FXQirCMkW4w2fQEY1lAHoIdJbl8Ls4F
 ltd0mfUEYWXuF2RsZ/dAsp8PK7RqjNMchcN/niMc20O9rsHidYamlmKEMyQBOD1YyeeKdACH
 b+ZbHuQDJwZ/89gElNwJq7WeLELSF1Z8iuPQDo4Z/h0MNeO9pjyUawtgaoqQ27ENFuqq/qd2
 v/uAckzDib5Jy31fAagpq0KzgEvhepYaAA1wYmIU0lBGsVvGxHkoJFJFjCzU42KktA6YP9Ob
 Vd18M9AuB/cAkgBiW8FZY3WAEJfEKuKlPQASqNhB0HzL3BKESOKvMvLIQHlMBKPoAZsITOwk
 2PP4+wUhGSqJZi4zTBQjX5sihJVICVKdjR5bu3xLvdyKWgYMrUmjknZH1yp/dUrXgZO5wQZV
 j4aI8jM1u79VOpY02iVkXvuWIGgbGbfJ0RzT2eOJJ30TY1Kn6lvTGzaHpblO5oVjC/65i3Nz
 6Wcy7fXZgTvOP1vVNLrV7VeL9EHH/e5n6QtwP3FE7aWSbNFsvLzjxD4xpgiTeO9C5QrJX4Wr
 HbZIAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xe7o1AhviDB6et7ToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZtH5ZRabxdojd9ktDn54wmrx
 c9c8FgdejzXz1jB67P22gMVj56y77B7bvz1g9bjffZzJY/OSeo/b/x4ze0y+sZzRY/fNBjaP
 vi2rGD0+b5IL4I7SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3s0lJzcks
 Sy3St0vQy5g536JgpWjF0V03WRsYWwW7GDk5JARMJBr/PGTpYuTiEBJYyiix/dgWRoiEjMTJ
 aQ2sELawxJ9rXWwQRZ8YJS6vvsAEkmATMJToeguREBHoZJSY1v2RHcRhFnjFJPHhTyvYKGEB
 f4mZ50+CdbAIqEq0/l/MAmLzCthK7Fs4hR1ihbzE6g0HmLsYOTg4geIze9VBwkIC+RJ3n/5j
 mcDIt4CRYRWjSGppcW56brGhXnFibnFpXrpecn7uJkZgpGw79nPzDsZLG4MPMQpwMCrx8EZ8
 Xh8nxJpYVlyZe4hRgoNZSYR3RwtQiDclsbIqtSg/vqg0J7X4EKMp0E0TmaVEk/OBUZxXEm9o
 amhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoFR89Cl78Js6XOWyR9ccVXw
 seH3rcd/cdb1G2xfl3Wd49yvLVumr/M5tOjMUbdfvDv3+K+M2/jN60Svh8bLe0LRMarNxepJ
 MfOvnYuWeizhbRipGRMR0z5JzK/yuieXkcqL9RN/GBy7U+32894W0yOWOuXSRrzN/8IvpWyu
 XuAo5JAbpizrxzFRiaU4I9FQi7moOBEAQsJL2aoCAAA=
X-CMS-MailID: 20200504125421eucas1p19cb27a8f2a795675a48c8665e20ede12
X-Msg-Generator: CA
X-RootMTR: 20200504125421eucas1p19cb27a8f2a795675a48c8665e20ede12
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125421eucas1p19cb27a8f2a795675a48c8665e20ede12
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125421eucas1p19cb27a8f2a795675a48c8665e20ede12@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 16/21] drm: host1x: fix sg_table nents
 vs. orig_nents misuse
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2MiAwMC8yMV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzQvMzcz
Ci0tLQogZHJpdmVycy9ncHUvaG9zdDF4L2pvYi5jIHwgMTcgKysrKysrKysrLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvaG9zdDF4L2pvYi5jIGIvZHJpdmVycy9ncHUvaG9zdDF4L2pvYi5jCmlu
ZGV4IGExMDY0M2EuLjNlYTE4NWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2hvc3QxeC9qb2Iu
YworKysgYi9kcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMKQEAgLTE2Niw4ICsxNjYsOSBAQCBzdGF0
aWMgdW5zaWduZWQgaW50IHBpbl9qb2Ioc3RydWN0IGhvc3QxeCAqaG9zdCwgc3RydWN0IGhvc3Qx
eF9qb2IgKmpvYikKIAkJCQlnb3RvIHVucGluOwogCQkJfQogCi0JCQllcnIgPSBkbWFfbWFwX3Nn
KGRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGRpcik7Ci0JCQlpZiAoIWVycikgeworCQkJc2d0
LT5uZW50cyA9IGRtYV9tYXBfc2coZGV2LCBzZ3QtPnNnbCwgc2d0LT5vcmlnX25lbnRzLAorCQkJ
CQkJZGlyKTsKKwkJCWlmICghc2d0LT5uZW50cykgewogCQkJCWVyciA9IC1FTk9NRU07CiAJCQkJ
Z290byB1bnBpbjsKIAkJCX0KQEAgLTIxNyw3ICsyMTgsNyBAQCBzdGF0aWMgdW5zaWduZWQgaW50
IHBpbl9qb2Ioc3RydWN0IGhvc3QxeCAqaG9zdCwgc3RydWN0IGhvc3QxeF9qb2IgKmpvYikKIAkJ
fQogCiAJCWlmICghSVNfRU5BQkxFRChDT05GSUdfVEVHUkFfSE9TVDFYX0ZJUkVXQUxMKSAmJiBo
b3N0LT5kb21haW4pIHsKLQkJCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzZywgc2d0LT5uZW50cywg
aikKKwkJCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzZywgc2d0LT5vcmlnX25lbnRzLCBqKQogCQkJ
CWdhdGhlcl9zaXplICs9IHNnLT5sZW5ndGg7CiAJCQlnYXRoZXJfc2l6ZSA9IGlvdmFfYWxpZ24o
Jmhvc3QtPmlvdmEsIGdhdGhlcl9zaXplKTsKIApAQCAtMjMxLDcgKzIzMiw3IEBAIHN0YXRpYyB1
bnNpZ25lZCBpbnQgcGluX2pvYihzdHJ1Y3QgaG9zdDF4ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pv
YiAqam9iKQogCiAJCQllcnIgPSBpb21tdV9tYXBfc2coaG9zdC0+ZG9tYWluLAogCQkJCQlpb3Zh
X2RtYV9hZGRyKCZob3N0LT5pb3ZhLCBhbGxvYyksCi0JCQkJCXNndC0+c2dsLCBzZ3QtPm5lbnRz
LCBJT01NVV9SRUFEKTsKKwkJCQkJc2d0LT5zZ2wsIHNndC0+b3JpZ19uZW50cywgSU9NTVVfUkVB
RCk7CiAJCQlpZiAoZXJyID09IDApIHsKIAkJCQlfX2ZyZWVfaW92YSgmaG9zdC0+aW92YSwgYWxs
b2MpOwogCQkJCWVyciA9IC1FSU5WQUw7CkBAIC0yNDEsOSArMjQyLDkgQEAgc3RhdGljIHVuc2ln
bmVkIGludCBwaW5fam9iKHN0cnVjdCBob3N0MXggKmhvc3QsIHN0cnVjdCBob3N0MXhfam9iICpq
b2IpCiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLnNpemUgPSBnYXRoZXJfc2l6ZTsK
IAkJCXBoeXNfYWRkciA9IGlvdmFfZG1hX2FkZHIoJmhvc3QtPmlvdmEsIGFsbG9jKTsKIAkJfSBl
bHNlIGlmIChzZ3QpIHsKLQkJCWVyciA9IGRtYV9tYXBfc2coaG9zdC0+ZGV2LCBzZ3QtPnNnbCwg
c2d0LT5uZW50cywKLQkJCQkJIERNQV9UT19ERVZJQ0UpOwotCQkJaWYgKCFlcnIpIHsKKwkJCXNn
dC0+bmVudHMgPSBkbWFfbWFwX3NnKGhvc3QtPmRldiwgc2d0LT5zZ2wsCisJCQkJCQlzZ3QtPm9y
aWdfbmVudHMsIERNQV9UT19ERVZJQ0UpOworCQkJaWYgKCFzZ3QtPm5lbnRzKSB7CiAJCQkJZXJy
ID0gLUVOT01FTTsKIAkJCQlnb3RvIHVucGluOwogCQkJfQpAQCAtNjQ3LDcgKzY0OCw3IEBAIHZv
aWQgaG9zdDF4X2pvYl91bnBpbihzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQl9CiAKIAkJaWYg
KHVucGluLT5kZXYgJiYgc2d0KQotCQkJZG1hX3VubWFwX3NnKHVucGluLT5kZXYsIHNndC0+c2ds
LCBzZ3QtPm5lbnRzLAorCQkJZG1hX3VubWFwX3NnKHVucGluLT5kZXYsIHNndC0+c2dsLCBzZ3Qt
Pm9yaWdfbmVudHMsCiAJCQkJICAgICB1bnBpbi0+ZGlyKTsKIAogCQlob3N0MXhfYm9fdW5waW4o
ZGV2LCB1bnBpbi0+Ym8sIHNndCk7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

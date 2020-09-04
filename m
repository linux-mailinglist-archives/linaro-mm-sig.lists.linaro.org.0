Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 927E125DABA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:57:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0B0066775
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:57:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AEB1D66776; Fri,  4 Sep 2020 13:57:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 791206678F;
	Fri,  4 Sep 2020 13:37:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BC93C665AA
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:36:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AFB6A6660D; Fri,  4 Sep 2020 13:36:25 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 008F16674F
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:10 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133509euoutp019e68173d7c7479590bebff55bd9de299~xmAl-glpZ0639206392euoutp01P
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200904133509euoutp019e68173d7c7479590bebff55bd9de299~xmAl-glpZ0639206392euoutp01P
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133508eucas1p21f933737a416c70575a6bc8994670007~xmAljtcol0781307813eucas1p2-;
 Fri,  4 Sep 2020 13:35:08 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 39.11.06456.C82425F5; Fri,  4
 Sep 2020 14:35:08 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133508eucas1p144e8c20b098912e8bf275642f2c709e6~xmAlI3sXS2307023070eucas1p1W;
 Fri,  4 Sep 2020 13:35:08 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200904133508eusmtrp18a48b753c6c81394e3d104bf3cf3a8ea~xmAlIKVZ40766507665eusmtrp1K;
 Fri,  4 Sep 2020 13:35:08 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-5d-5f52428c4fa2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id CA.BE.06314.C82425F5; Fri,  4
 Sep 2020 14:35:08 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133507eusmtip16507aff28a627187d88af93e208665b5~xmAke9p3K1624216242eusmtip1t;
 Fri,  4 Sep 2020 13:35:07 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:17:05 +0200
Message-Id: <20200904131711.12950-25-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURiFuZ3OdCiUDIXIDRhIGjUgYVNjroGA4pJRHzTEF00UiwyLQiEt
 IPCgaFGhgGGJoRRiAAlo2cuiQghLhKIoIlQEBWUTAoLImrDLOKhv3//fc3Lyn1wSE7fj1mSw
 LIKRy6QhEkLIr21b6XRK9vbxdZ1bsEcpna95qFJdjqOt2jQMGZZmCfSsuJWHchvd0XxvEkCJ
 aQUCtGgY5iHdaC+OeupyCJRcUYOjmsmfPFT6alCACnXrPNT8aww/StElj0sA3bCcy6ezE7Jw
 WqdNJOjny0M4/S1Jz6OrCm7TXzZHMTqjrwjQ9f1xBP2wWgvoBZ3tedNLQg9/JiQ4ipG7eF4V
 BlV//ESEb8FozeI6iAOrlipAkpA6BOPnCRUQkmLqKYDTldl8blgEsD5+UKACxtvDAoCT7ddZ
 Zg2afC3GiYoANKwpd0Tbjo6JWJYJyg2qZlQEy5bUPQDbU0xZxqh1DGbmeLFsQV2AmSs5f7x8
 ai8caRv/wyLKE75Xl/K5MDtYXNGEsWy8va9Rj+FsMKS+CqC2cBNwohOweEa/wxZwSl8t4Hg3
 7MhI5nMGJYDDnaUCbkgGsOeuesfhDgc6Vwm2DIxygOV1Ltz6GPxcXs7jOjKDfTPm3AFmML02
 E+PWIphwX8yp90GNvuxfbHNXN8YxDRtaR3caTQOwq0wpSAV2mv9huQBogRUTqQgNZBRuMuam
 s0IaqoiUBTpfCwvVge3/1bGpn38Blrr9WgBFAompyMjLx1eMS6MUMaEtAJKYxFLk/a7jiljk
 L42JZeRhvvLIEEbRAmxIvsRKdDB/8rKYCpRGMDcYJpyR/33lkcbWcSDQ6bufW8CbW5qRYZMs
 bb6ywuRt3sjcmothV8Ap/cUHR5KmbGY38ozKhoq9jOfP3uk/be+1x3zgQyPwdrWLafKQbVDT
 h50nDLZj69Lu/HGmoSth2PCyRHhgdSo65VyqWum7WbrkaIOU6Rs/+oeqhA4h0SczHm0VPXGU
 NRK1RmeOS/iKIKnbfkyukP4Gp6V1LFsDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLIsWRmVeSWpSXmKPExsVy+t/xu7o9TkHxBhMeCVr0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLrWzWjROXEJu8WXKw+ZLDY9vsZqcXnXHDaLng1bWS22
 vnzHZLH2yF12i2Wb/jBZHPzwhNVBwGPNvDWMHnu/LWDxmN0xk9Vj06pONo/t3x6wetzvPs7k
 sXlJvcftf4+ZPSbfWM7osftmA5tH35ZVjB6fN8kF8ETp2RTll5akKmTkF5fYKkUbWhjpGVpa
 6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZWy5ep2t4L9ExawvfxgbGH+JdDFyckgImEjM
 WrSKuYuRi0NIYCmjxP3981ggEjISJ6c1sELYwhJ/rnWxQRR9YpQ4MP8yO0iCTcBQoustREJE
 oJNRYlr3R3YQh1mghUXiw6eHYKOEBYIk5uxaA9bBIqAq8ejYMzCbV8BO4vyMtVDr5CVWbzjA
 DGJzAsW3zngCtlpIwFbiw5zFLBMY+RYwMqxiFEktLc5Nzy021CtOzC0uzUvXS87P3cQIjKpt
 x35u3sF4aWPwIUYBDkYlHl4G+6B4IdbEsuLK3EOMEhzMSiK8TmdPxwnxpiRWVqUW5ccXleak
 Fh9iNAU6aiKzlGhyPjDi80riDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFx
 cEo1MNZ2fNoken3nzGv7OBJblzuXN728X7mVo1n3qbRX2noma/v2UyfPH4ifz3nNW1zax+BT
 KxNP2vzURPMjdpyXJ3YpfIgJO133+0Zg6xKmE4n+ivL5T5hsQuoKe92zb26OPVq3LXNh65nc
 b6FJ279YLDJmCb0Zrb5PJGu5Sva9tzqXMn7ptT3iVWIpzkg01GIuKk4EAHzI3KjAAgAA
X-CMS-MailID: 20200904133508eucas1p144e8c20b098912e8bf275642f2c709e6
X-Msg-Generator: CA
X-RootMTR: 20200904133508eucas1p144e8c20b098912e8bf275642f2c709e6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133508eucas1p144e8c20b098912e8bf275642f2c709e6
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133508eucas1p144e8c20b098912e8bf275642f2c709e6@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 24/30] drm: rcar-du: fix common struct
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
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KCmRtYV9tYXBfc2d0YWJsZSgpIGZ1bmN0aW9uIHJldHVy
bnMgemVybyBvciBhbiBlcnJvciBjb2RlLCBzbyBhZGp1c3QgdGhlCnJldHVybiB2YWx1ZSBjaGVj
ayBmb3IgdGhlIHZzcDFfZHVfbWFwX3NnKCkgZnVuY3Rpb24uCgpTaWduZWQtb2ZmLWJ5OiBNYXJl
ayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+ClJldmlld2VkLWJ5OiBMYXVy
ZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL3JjYXItZHUvcmNhcl9kdV92c3AuYyAgfCAzICstLQogZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92c3AxL3ZzcDFfZHJtLmMgfCA4ICsrKystLS0tCiAyIGZpbGVzIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vcmNhci1kdS9yY2FyX2R1X3ZzcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JjYXItZHUvcmNh
cl9kdV92c3AuYwppbmRleCBmMWE4MWM5YjE4NGQuLmEyN2JmZjk5OTY0OSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3JjYXItZHUvcmNhcl9kdV92c3AuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vcmNhci1kdS9yY2FyX2R1X3ZzcC5jCkBAIC0xOTcsOSArMTk3LDggQEAgaW50IHJjYXJfZHVf
dnNwX21hcF9mYihzdHJ1Y3QgcmNhcl9kdV92c3AgKnZzcCwgc3RydWN0IGRybV9mcmFtZWJ1ZmZl
ciAqZmIsCiAJCQlnb3RvIGZhaWw7CiAKIAkJcmV0ID0gdnNwMV9kdV9tYXBfc2codnNwLT52c3As
IHNndCk7Ci0JCWlmICghcmV0KSB7CisJCWlmIChyZXQpIHsKIAkJCXNnX2ZyZWVfdGFibGUoc2d0
KTsKLQkJCXJldCA9IC1FTk9NRU07CiAJCQlnb3RvIGZhaWw7CiAJCX0KIAl9CmRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZzcDEvdnNwMV9kcm0uYyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdnNwMS92c3AxX2RybS5jCmluZGV4IGE0YTQ1ZDY4YTZlZi4uODZkNWUzZjRiMWZm
IDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZzcDEvdnNwMV9kcm0uYworKysg
Yi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZzcDEvdnNwMV9kcm0uYwpAQCAtOTEyLDggKzkxMiw4
IEBAIGludCB2c3AxX2R1X21hcF9zZyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBzZ190YWJs
ZSAqc2d0KQogCSAqIHNraXAgY2FjaGUgc3luYy4gVGhpcyB3aWxsIG5lZWQgdG8gYmUgcmV2aXNp
dGVkIHdoZW4gc3VwcG9ydCBmb3IKIAkgKiBub24tY29oZXJlbnQgYnVmZmVycyB3aWxsIGJlIGFk
ZGVkIHRvIHRoZSBEVSBkcml2ZXIuCiAJICovCi0JcmV0dXJuIGRtYV9tYXBfc2dfYXR0cnModnNw
MS0+YnVzX21hc3Rlciwgc2d0LT5zZ2wsIHNndC0+bmVudHMsCi0JCQkJRE1BX1RPX0RFVklDRSwg
RE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CisJcmV0dXJuIGRtYV9tYXBfc2d0YWJsZSh2c3AxLT5i
dXNfbWFzdGVyLCBzZ3QsIERNQV9UT19ERVZJQ0UsCisJCQkgICAgICAgRE1BX0FUVFJfU0tJUF9D
UFVfU1lOQyk7CiB9CiBFWFBPUlRfU1lNQk9MX0dQTCh2c3AxX2R1X21hcF9zZyk7CiAKQEAgLTky
MSw4ICs5MjEsOCBAQCB2b2lkIHZzcDFfZHVfdW5tYXBfc2coc3RydWN0IGRldmljZSAqZGV2LCBz
dHJ1Y3Qgc2dfdGFibGUgKnNndCkKIHsKIAlzdHJ1Y3QgdnNwMV9kZXZpY2UgKnZzcDEgPSBkZXZf
Z2V0X2RydmRhdGEoZGV2KTsKIAotCWRtYV91bm1hcF9zZ19hdHRycyh2c3AxLT5idXNfbWFzdGVy
LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywKLQkJCSAgIERNQV9UT19ERVZJQ0UsIERNQV9BVFRSX1NL
SVBfQ1BVX1NZTkMpOworCWRtYV91bm1hcF9zZ3RhYmxlKHZzcDEtPmJ1c19tYXN0ZXIsIHNndCwg
RE1BX1RPX0RFVklDRSwKKwkJCSAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CiB9CiBFWFBPUlRf
U1lNQk9MX0dQTCh2c3AxX2R1X3VubWFwX3NnKTsKIAotLSAKMi4xNy4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

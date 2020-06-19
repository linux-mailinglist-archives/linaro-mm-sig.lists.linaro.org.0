Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C70F220076C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 13:02:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0091266597
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 11:02:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E2D68665AF; Fri, 19 Jun 2020 11:02:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B77B666F1;
	Fri, 19 Jun 2020 10:39:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 15963665C5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:38:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 05F28666D0; Fri, 19 Jun 2020 10:38:28 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 0A6BA665CA
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:13 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103712euoutp01ef9ee8e342ceb3be1b964cb4d99816ba~Z66PbxBZX1900119001euoutp01C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103712euoutp01ef9ee8e342ceb3be1b964cb4d99816ba~Z66PbxBZX1900119001euoutp01C
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103711eucas1p254b1919badc84e3856bf5440c266bbb9~Z66PDD_1Y3081430814eucas1p21;
 Fri, 19 Jun 2020 10:37:11 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 29.AC.06456.7559CEE5; Fri, 19
 Jun 2020 11:37:11 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103711eucas1p188e07cb9aaad13d39238aac4fe84b10c~Z66Or38xK0708007080eucas1p18;
 Fri, 19 Jun 2020 10:37:11 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103711eusmtrp157844e173b18813c1bc7c8589033aa4d~Z66OrJz7E0949709497eusmtrp1k;
 Fri, 19 Jun 2020 10:37:11 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-68-5eec9557a639
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id DB.EA.06314.7559CEE5; Fri, 19
 Jun 2020 11:37:11 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103710eusmtip2498efcd4c81c177059743c29f12322db~Z66N7xtP53164531645eusmtip2a;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:27 +0200
Message-Id: <20200619103636.11974-28-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSeyyVYRzu/W7nO+bY12Hzrpt1tmxskbT2ltxaW99fra0/NKGOfLkfnINS
 S4Yah8y1pBaJ5NY5HXdGGB3NnMotRhdOtSQljkIuOX3ov+d5fs+z5/d799K4uJvcRgfKIjm5
 TBoioUyI2ucLur0eOd989vW32KObuhcYepqrItFqbQaO+ud+UKi0vBNDBc+c0MxgCkDJGUUC
 ZOgfw5BGP0iivsZ7FEpV15CoZuI7hio73grQI80ShtqmP5JuDFtxvwKwzb8KCPZu0h2S1ZQl
 U2zdrw8k+z5Fi7FVRdfYkRU9zmYNlQC2aTiOYtOqywA7q9l10tTT5IgfFxIYzcntXc6ZBFQP
 vKHCV+GlPMMSiAOLFkogpCFzAH7W1xNKYEKLmccAln8uxXliAFCvLl4nswCufhwnNiIz6nzA
 D0oAfK2sozYj2SPNAqOLYhygckpJGbEFcx3ArpumRowzSzi8fc/ViM2ZU7BVu4wZMcHsgQk9
 8//8IsYFXn+ZKeDbrGC5uhU3YuGaPpnYRhrLIDMugDUTzSRvOgY7O3+vr2cOv2qr18M7YHdW
 KsEHEgAc01UKeJIKYF98LuBdTnBUt7hWTa+tZwNVjfa87A4H9O+AUYaMGRya2sofYAYza2/j
 vCyCSTfEvNsa5mmfbNa2verFeczCMVUFyT9QBoDTI4VUOrDK+19WAEAZsOSiFKH+nMJBxl20
 U0hDFVEyf7vzYaEasPbFule0M/Vgrte3HTA0kJiK3DwmfcSkNFoRE9oOII1LLERHe7p9xCI/
 acxlTh52Vh4VwinawXaakFiKHAsnvMWMvzSSC+a4cE6+McVo4bY4YG9O5i88aPBUndxNeCcE
 RBxCaRHpx3VVA8XH5s98Mbh23HK54hycE9twuDcsm1NZD/0saMUMfz6dcLoctX88Vu9YtzP+
 apr7sPuoJZ5nuycs54Jz1x/Hca+m5RargzG2iR1Cm8qgxcYiYabVaa/G1oedsiCp2rdsS4TY
 1I9LwMwkhCJA6mCLyxXSv6ZjevteAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDIsWRmVeSWpSXmKPExsVy+t/xe7rhU9/EGez4KmbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8elaN6NF58Ql7BZfrjxkstj0+BqrxeVdc9gsejZsZbXY
 +vIdk8XaI3fZLZZt+sNkcfDDE1YHAY8189Yweuz9toDFY3bHTFaPTas62Ty2f3vA6nG/+ziT
 x+Yl9R63/z1m9ph8Yzmjx+6bDWwefVtWMXp83iQXwBOlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hp
 oWdkYqlnaGwea2VkqqRvZ5OSmpNZllqkb5egl7Hl6nW2gv8SFbO+/GFsYPwl0sXIySEhYCLx
 acN8xi5GLg4hgaWMEsffPGeFSMhInJzWAGULS/y51sUGUfSJUeLz0kawBJuAoUTXW4iEiEAn
 o8S07o/sIA6zQAuLxIdPD1m6GDk4hAUCJb602oE0sAioSjSf/cEGYvMK2Em0np/EDrFBXmL1
 hgPMIDYnUPx1y0GwBUICthLLF7xnnsDIt4CRYRWjSGppcW56brGhXnFibnFpXrpecn7uJkZg
 TG079nPzDsZLG4MPMQpwMCrx8L4IeR0nxJpYVlyZe4hRgoNZSYTX6ezpOCHelMTKqtSi/Pii
 0pzU4kOMpkBHTWSWEk3OB8Z7Xkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKY
 PiYOTqkGRvMJJZmnxU5bTXrwotIo7UVGH9vmjJbFDF2F7yq2JM6O7iy/8mezUNG9oBlJ8852
 nOTc6Jp5s8+rtOxb37qJ4iZnWSdx/bH6k7TbfXXa/wKlpEJ25Rcb167atnNzxsKJi12fvgnh
 MDgSsI/hbgXrm+Ceb05KBW+mC8Y53lyfcm+x0QQfLpGTzEosxRmJhlrMRcWJAHd/wE+/AgAA
X-CMS-MailID: 20200619103711eucas1p188e07cb9aaad13d39238aac4fe84b10c
X-Msg-Generator: CA
X-RootMTR: 20200619103711eucas1p188e07cb9aaad13d39238aac4fe84b10c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103711eucas1p188e07cb9aaad13d39238aac4fe84b10c
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103711eucas1p188e07cb9aaad13d39238aac4fe84b10c@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 27/36] drm: rcar-du: fix common struct
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

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE4B1FF880
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 18:03:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4386566597
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 16:03:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 36B95665A1; Thu, 18 Jun 2020 16:03:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3848A666DD;
	Thu, 18 Jun 2020 15:42:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B6B726654B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A882266572; Thu, 18 Jun 2020 15:40:50 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 6C19E665AA
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:33 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154032euoutp010059a5ad3d84a83d7b72b433326af8e8~ZrZzqNx7j1835418354euoutp01T
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154032euoutp010059a5ad3d84a83d7b72b433326af8e8~ZrZzqNx7j1835418354euoutp01T
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154032eucas1p1d3bfbecb45e593df35fc1a5d9bc32f82~ZrZzS1hLI1547315473eucas1p1j;
 Thu, 18 Jun 2020 15:40:32 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 18.DE.60679.0FA8BEE5; Thu, 18
 Jun 2020 16:40:32 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154032eucas1p25df137bd9c481bcbc39320f0167b225a~ZrZzCLLL-0608706087eucas1p2d;
 Thu, 18 Jun 2020 15:40:32 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200618154032eusmtrp23b5676a37b4a2f268e9c0909934bb080~ZrZzBbtPO0399203992eusmtrp2j;
 Thu, 18 Jun 2020 15:40:32 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-47-5eeb8af0ddf9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A3.FE.08375.FEA8BEE5; Thu, 18
 Jun 2020 16:40:31 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154031eusmtip1413e3ed550e7c80c9654005fa7787835~ZrZyTCItf0744107441eusmtip14;
 Thu, 18 Jun 2020 15:40:31 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:47 +0200
Message-Id: <20200618153956.29558-27-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+87ZOTsTt86m5JtJ1iIjQcsucsCykqBDYQRGN0pberLITdvS
 sv5ICmubt0xJnWYWlTU1bU0rxTQrl5grTE2xi2YXzSzRaSRLcx6t/37P8z4v78PHR+GyBsKd
 Oqw6xqlViig56SSoqP9t9RnU94cuL7VImBRrA8bczS4lmImKdJxpGflJMreLnmFMQU0AM9SW
 hBhd+nUhY2vpxhhTTxvBvK7MI5nksnKCKe/7gTElT98JmZsmO8Y8HvxErKfZ4vxixFaPFgjY
 XG0OwZqMOpK9P9pFsB+SLBh77/pptnO8B2cz2gsRW9WRQLKpZiNih03ztznvcVoTwUUdjuPU
 ywL3Ox0yt74hYybghMFmRwlozFWPRBTQq+BzwjVMj5woGX0LQbb+Ms4LG4LmhhsCXgwjaOt/
 IZhZ6a07Pz0oRHB1oAr7t2Iur0WOFEn7gX5ATzrYlU5E8DzF2cE4bcchK2+dHlGUCx0C79MW
 OmwBvRgepemm4mI6EFLrK0n+mCcUldXiDhZN+o2WRIL3PwrhZdVBnjeCtrp5upwLfLOYhTx7
 wMTDK1PdgD6LoNtaIuRFMoLXZ7IRnwqAt9Yx0lEIp5dCaeUy3t4AWXYbcthAS6B9QMrXl8DF
 iiyct8WgPSfj015gsNz5d/bxq2acZxYyDTNvlY7AZjWQF5Cn4f+xAoSMyI2L1SgjOc0KFXfc
 V6NQamJVkb7h0UoTmvxgjeMW2wNUaT9Qh2gKyZ3Fvdv7Q2WEIk4Tr6xDQOFyV3FQU2OoTByh
 iD/JqaPD1LFRnKYOzaMEcjfxymt9+2R0pOIYd4TjYjj1zBSjRO4JyEfhm//ZHLFwyaeOWTvm
 Fktzvvj7zF0b7NXZmbMvSDrniSF4t9/OFboRaU14qqjdI6zvadmvU5nRH9pb/4jOh9T3ZmiN
 /kpW1zW7rGnBV/GuAtp/a+7t1cpnknX3RoYk3PLWo3u9vys7itYuqtB2s5eaCncVjW5ReboE
 FwdsEsdtBrlAc0jh542rNYq/qF7emlwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLIsWRmVeSWpSXmKPExsVy+t/xu7rvu17HGWy/bmPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8elaN6NF58Ql7BZfrjxkstj0+BqrxeVdc9gsejZsZbXY
 +vIdk8XaI3fZLZZt+sNkcfDDE1YHAY8189Yweuz9toDFY3bHTFaPTas62Ty2f3vA6nG/+ziT
 x+Yl9R63/z1m9ph8Yzmjx+6bDWwefVtWMXp83iQXwBOlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hp
 oWdkYqlnaGwea2VkqqRvZ5OSmpNZllqkb5egl7Hl6nW2gv8SFbO+/GFsYPwl0sXIySEhYCLx
 4lA7SxcjF4eQwFJGiZatm5ghEjISJ6c1sELYwhJ/rnWxQRR9YpTYcqaNHSTBJmAo0fUWIiEi
 0MkoMa37IzuIwyzQwiLx4dNDFpAqYYFAiVsfPoB1sAioSuzr72QDsXkF7CT6ju1ig1ghL7F6
 wwGw1ZxA8dPHW8FWCwnYSjz/0MY2gZFvASPDKkaR1NLi3PTcYkO94sTc4tK8dL3k/NxNjMCo
 2nbs5+YdjJc2Bh9iFOBgVOLhfRHyOk6INbGsuDL3EKMEB7OSCK/T2dNxQrwpiZVVqUX58UWl
 OanFhxhNgY6ayCwlmpwPjPi8knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9
 TBycUg2Meld2fPpktf16wftIt//XX8l27faWL79nwGQu93xv1v2q5ZrC7ZNNV86d0Wfqfrq+
 6fHrf2mXpDg11r9/uDj9RxKn7l7b66l6Sit+G33cmVtVOJdxbxuP0w4fVlGxzyseLXb6xKHp
 fF3zv/ObtzM0nC/NF+PeVZg3ZXHG37qpV4vE/yop6630UGIpzkg01GIuKk4EAIapYQbAAgAA
X-CMS-MailID: 20200618154032eucas1p25df137bd9c481bcbc39320f0167b225a
X-Msg-Generator: CA
X-RootMTR: 20200618154032eucas1p25df137bd9c481bcbc39320f0167b225a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154032eucas1p25df137bd9c481bcbc39320f0167b225a
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154032eucas1p25df137bd9c481bcbc39320f0167b225a@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 26/36] drm: rcar-du: fix common struct
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

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD072527E2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:55:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD30E619B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:55:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C134365FCE; Wed, 26 Aug 2020 06:55:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F13C0666F6;
	Wed, 26 Aug 2020 06:37:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B6C5E666E2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:36:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A840865FCE; Wed, 26 Aug 2020 06:36:55 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 2A92965FCE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:44 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063543euoutp012e9286ec8da915fb8dd7cb72e1fd59c9~uve0DdvFo2034020340euoutp01S
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063543euoutp012e9286ec8da915fb8dd7cb72e1fd59c9~uve0DdvFo2034020340euoutp01S
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063543eucas1p2e8bc6be839b341278d16e475eefc6b3c~uvezyXUaX0399203992eucas1p2f;
 Wed, 26 Aug 2020 06:35:43 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 06.5D.06318.FB2064F5; Wed, 26
 Aug 2020 07:35:43 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063542eucas1p18d9d201e3e26c08d26c3ea2a2b2a079d~uvezeH2E71480714807eucas1p1Z;
 Wed, 26 Aug 2020 06:35:42 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063542eusmtrp1e1d9331ff012d41c9f223c8a3c4086a6~uvezdcq9M1091110911eusmtrp1j;
 Wed, 26 Aug 2020 06:35:42 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-f6-5f4602bf1578
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id AD.D0.06314.EB2064F5; Wed, 26
 Aug 2020 07:35:42 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063542eusmtip2f037eb45b2c2c16bde5d8b2a0311e40f~uvey005km0474104741eusmtip2X;
 Wed, 26 Aug 2020 06:35:42 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:09 +0200
Message-Id: <20200826063316.23486-26-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNKsWRmVeSWpSXmKPExsWy7djP87r7mdziDVYtY7HoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HStm9Gic+ISdosvVx4yWWx6fI3V4vKuOWwWPRu2slps
 ffmOyWLtkbvsFss2/WGyOPjhCauDgMeaeWsYPfZ+W8DiMbtjJqvHplWdbB7bvz1g9bjffZzJ
 Y/OSeo/b/x4ze0y+sZzRY/fNBjaPvi2rGD0+b5IL4InisklJzcksSy3St0vgythy9TpbwX+J
 illf/jA2MP4S6WLk5JAQMJH4++0YSxcjF4eQwApGiXk/57FCOF8YJR7s+MYM4XxmlDj/7gA7
 TMuhJ21QVcsZJc4d/8cI17LodicTSBWbgKFE19suNhBbRKCVUeJELw+IzSzwh1li+hx7EFtY
 IFhi5penzCA2i4CqROPyfrBeXgE7ifNTJkNtk5dYveEAWA0nUPx4dz8byDIJgUfsErubHzNB
 FLlIfJs3F8oWlnh1fAtUs4zE6ck9LBANzYwSD8+tZYdwehglLjfNYISospa4c+4X0FgOoPM0
 Jdbv0ocIO0o0NvaDhSUE+CRuvBWEeIBPYtK26cwQYV6JjjYhiGo1iVnH18GtPXjhEjOE7SHx
 6fUeaGhNZJTYuegW+wRG+VkIyxYwMq5iFE8tLc5NTy02zkst1ytOzC0uzUvXS87P3cQITGKn
 /x3/uoNx35+kQ4wCHIxKPLwL2FzjhVgTy4orcw8xSnAwK4nwOp09HSfEm5JYWZValB9fVJqT
 WnyIUZqDRUmc13jRy1ghgfTEktTs1NSC1CKYLBMHp1QDY+DD53pOjau0I3R3KehO3Gi/cmvN
 Jfvrn/sPO3p3HNHufmO+NOBNzl3j6T739vnn6xkxbwy9cOJMd9ThCr2rbds9AjL/lP9bKTLz
 YCX3vPPcW249n/1PeJbt1ms6vheP+i6zLgi6d+fgn85pk2sjhL2iNcNabLbqTLs2KTXR0cB0
 +U5GHjufPUosxRmJhlrMRcWJAIGwLuZeAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLIsWRmVeSWpSXmKPExsVy+t/xe7r7mNziDXbM17PoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HStm9Gic+ISdosvVx4yWWx6fI3V4vKuOWwWPRu2slps
 ffmOyWLtkbvsFss2/WGyOPjhCauDgMeaeWsYPfZ+W8DiMbtjJqvHplWdbB7bvz1g9bjffZzJ
 Y/OSeo/b/x4ze0y+sZzRY/fNBjaPvi2rGD0+b5IL4InSsynKLy1JVcjILy6xVYo2tDDSM7S0
 0DMysdQzNDaPtTIyVdK3s0lJzcksSy3St0vQy9hy9TpbwX+Jillf/jA2MP4S6WLk5JAQMJE4
 9KSNtYuRi0NIYCmjxJTXl1ghEjISJ6c1QNnCEn+udbFBFH1ilOi4cZENJMEmYCjR9RYiISLQ
 ySgxrfsjO4jDLNDCIvHh00MWkCphgUCJzZvvgNksAqoSjcv7mUBsXgE7ifNTJrNDrJCXWL3h
 ADOIzQkUP97dD7ZBSMBW4vTaGcwTGPkWMDKsYhRJLS3OTc8tNtQrTswtLs1L10vOz93ECIyq
 bcd+bt7BeGlj8CFGAQ5GJR7eBWyu8UKsiWXFlbmHGCU4mJVEeJ3Ono4T4k1JrKxKLcqPLyrN
 SS0+xGgKdNREZinR5HxgxOeVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj
 4uCUamAsq9GY/iv5FEOEuETKrfkR3FsOxredcPsVE5/eWOxzZbdLdp5POL/WlOba/q9XUl/d
 PX2xY4bPt0cbdaYeMXcqXrjklUQi35mg3Xellj29V1Z3RMEiPXa188cetoO8i5jMstTu/Lwy
 qfnt21/2m/dMCVhyWcI/aYXdu5gylctpZ14lVvyezG+nxFKckWioxVxUnAgAjcMSzsACAAA=
X-CMS-MailID: 20200826063542eucas1p18d9d201e3e26c08d26c3ea2a2b2a079d
X-Msg-Generator: CA
X-RootMTR: 20200826063542eucas1p18d9d201e3e26c08d26c3ea2a2b2a079d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063542eucas1p18d9d201e3e26c08d26c3ea2a2b2a079d
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063542eucas1p18d9d201e3e26c08d26c3ea2a2b2a079d@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 25/32] drm: rcar-du: fix common struct
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

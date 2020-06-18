Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 861041FF8C6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 18:09:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E65860688
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 16:09:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9084E66583; Thu, 18 Jun 2020 16:09:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1088666F2;
	Thu, 18 Jun 2020 15:43:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 679C8665B6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:41:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5A7CA665FA; Thu, 18 Jun 2020 15:41:47 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 2AA20665B6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:38 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154037euoutp022000073417c80e19be0256a18cd5d648~ZrZ4EgaFc1354913549euoutp02P
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154037euoutp022000073417c80e19be0256a18cd5d648~ZrZ4EgaFc1354913549euoutp02P
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154037eucas1p294cc10f6a9de9197d871fe4865ba2770~ZrZ3yMloI0608706087eucas1p2i;
 Thu, 18 Jun 2020 15:40:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id AF.60.60698.5FA8BEE5; Thu, 18
 Jun 2020 16:40:37 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154036eucas1p2d98ca6915b554409e1f02114657680c0~ZrZ3dLwWS2502725027eucas1p2I;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154036eusmtrp176da250126154f0fe35847270b22b968~ZrZ3ckvAX2230622306eusmtrp1P;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-4d-5eeb8af5f443
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C3.F9.07950.4FA8BEE5; Thu, 18
 Jun 2020 16:40:36 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154036eusmtip12d9ee033aebbcd19d8922ddba869445d~ZrZ20Mxgp2806328063eusmtip1J;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:53 +0200
Message-Id: <20200618153956.29558-33-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGeXfO2c7E6XEKvqgkLBIU1MSCA6bdJA/Rhz6EgpA58+T90uYs
 I1JMpeYUL5m2pIaI5l3n8JZ5S5tuOE3FS2leJpaZlne0sDbPtG+///M+z/v8z+HFEX47ZodH
 xCbQolhhtIBthjZ92NO5bktXgk7nLqFklm6ARS5UTiJkQ1EdRv5tykXIse2fbLKiqo9FKjq9
 yK2xeRap1I9j5GhbMZus6Z3hkAVDuwjZ/WsRu8Cjql9VA+rdjgKlWuUzHEr2Iw2jmnfmMGo2
 U82iGkuTqc8HeoTKnywH1NupFDaVraoE1KbyxHXzQLNzoXR0RCItcvcJNgtX7bYh8SP8+92q
 HE4KGLCUAi4OiTNw+HklJgVmOJ94A6B8qNM0bAGo0ZehzLAJYN/vUeQoMjD10eQqB3B1W8M6
 juj39lGji014QOmqlG1kGyIdwP4scyMjxBoL9m66GNmauAYnXi4BI6PEKbikNF7ExXmED2xY
 Wze1OcKq+q5D5hp0rTr9sBkSGg6ca6kAjMkXvm/J4jBsDb+rVSZ2gNp8GcoEHgM4r6vhMIMM
 wNHUIlPaC07r9g2r4ob1nGFdmzsjX4T768vAKEPCAk6uWjEfYAHzmgoRRubBJxl8xu0E5era
 49ru4RHT/hScyxwDzA/KBXCuT4nmAEf5/zIFAJXAlpaIY8JosWcsfc9NLIwRS2LD3G7HxSiB
 4U1pD9TbLaDjT0gPIHAgMOd9u7ESxMeEieKkmB4AcURgw7s0qA3i80KFSQ9oUdwtkSSaFvcA
 exwV2PI8S5Zv8okwYQIdRdPxtOjolIVz7VJAKjcyzfIg2bWgSBIsXJbkzHSpvDtKN+9mbzxM
 3B+/sujcib7ImDqLPWsuVNs7Vmd+Ov90IqG9urFk6U7Uo/76WSoyD2gUC8W+/r5VHY5u0zNd
 J1N7ra7WfAnwk3b7hzgEfN1TybasEwL9LnvTtlreRt7r2ukyJ5aPbXFA4KCsVYCKw4UeLohI
 LPwH0u7Izk8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xu7pful7HGay9oW3Re+4kk8WjVTeY
 LTbOWM9q8X/bRGaLK1/fs1msXH2UyWLBfmuLL1ceMllsenyN1eLyrjlsFmuP3GW3mHr+O7PF
 wQ9PWB14PdbMW8PosffbAhaPnbPusnv0vGlh9dj+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexpbvu5gLLglVHNwygb2B8SR/FyMnh4SAicTJmxdZuxi5OIQEljJKbJy8
 ihkiISNxcloDK4QtLPHnWhcbRNEnoKIlTWwgCTYBQ4mutxAJEYFORolp3R/ZQRxmgW9MEpOW
 3gKrEhbwkbg++xkjiM0ioCrxbNMpJhCbV8BOYuO7j1Dr5CVWbzgAZnMCxU8fbwVbLSRgK/H8
 QxvbBEa+BYwMqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQLjZtuxn1t2MHa9Cz7EKMDBqMTD
 +yLkdZwQa2JZcWXuIUYJDmYlEV6ns6fjhHhTEiurUovy44tKc1KLDzGaAh01kVlKNDkfGNN5
 JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoYmb766F24/vuazAm1
 GRM2srGtXWxc+nrCDttODfXr7yq+/lI+dvL2pJDbP42uCs06/kxWXeR0h/exjAsisZ69bLMX
 6Py3DmYI+5A7OUD27sbtdU3+50Nebix4YuK4XSHrYvudMxUOvlm6vs8zap6Z7GJa+rv5aofS
 cw7v19dbHr3i3uUV4fl5jxJLcUaioRZzUXEiADA6F3WxAgAA
X-CMS-MailID: 20200618154036eucas1p2d98ca6915b554409e1f02114657680c0
X-Msg-Generator: CA
X-RootMTR: 20200618154036eucas1p2d98ca6915b554409e1f02114657680c0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154036eucas1p2d98ca6915b554409e1f02114657680c0
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154036eucas1p2d98ca6915b554409e1f02114657680c0@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Alexandre Bounine <alex.bou9@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matt Porter <mporter@kernel.crashing.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 32/36] rapidio: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL3JhcGlkaW8vZGV2aWNlcy9y
aW9fbXBvcnRfY2Rldi5jIHwgOCArKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3JhcGlkaW8vZGV2aWNl
cy9yaW9fbXBvcnRfY2Rldi5jIGIvZHJpdmVycy9yYXBpZGlvL2RldmljZXMvcmlvX21wb3J0X2Nk
ZXYuYwppbmRleCA0NTE2MDhlOTYwYTEuLmEzM2NjMWI2YmViMiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9yYXBpZGlvL2RldmljZXMvcmlvX21wb3J0X2NkZXYuYworKysgYi9kcml2ZXJzL3JhcGlkaW8v
ZGV2aWNlcy9yaW9fbXBvcnRfY2Rldi5jCkBAIC01NzMsOCArNTczLDcgQEAgc3RhdGljIHZvaWQg
ZG1hX3JlcV9mcmVlKHN0cnVjdCBrcmVmICpyZWYpCiAJCQlyZWZjb3VudCk7CiAJc3RydWN0IG1w
b3J0X2NkZXZfcHJpdiAqcHJpdiA9IHJlcS0+cHJpdjsKIAotCWRtYV91bm1hcF9zZyhyZXEtPmRt
YWNoLT5kZXZpY2UtPmRldiwKLQkJICAgICByZXEtPnNndC5zZ2wsIHJlcS0+c2d0Lm5lbnRzLCBy
ZXEtPmRpcik7CisJZG1hX3VubWFwX3NndGFibGUocmVxLT5kbWFjaC0+ZGV2aWNlLT5kZXYsIHJl
cS0+c2d0LCByZXEtPmRpciwgMCk7CiAJc2dfZnJlZV90YWJsZSgmcmVxLT5zZ3QpOwogCWlmIChy
ZXEtPnBhZ2VfbGlzdCkgewogCQl1bnBpbl91c2VyX3BhZ2VzKHJlcS0+cGFnZV9saXN0LCByZXEt
Pm5yX3BhZ2VzKTsKQEAgLTkzMCw5ICs5MjksOCBAQCByaW9fZG1hX3RyYW5zZmVyKHN0cnVjdCBm
aWxlICpmaWxwLCB1MzIgdHJhbnNmZXJfbW9kZSwKIAkJCQl4ZmVyLT5vZmZzZXQsIHhmZXItPmxl
bmd0aCk7CiAJfQogCi0JbmVudHMgPSBkbWFfbWFwX3NnKGNoYW4tPmRldmljZS0+ZGV2LAotCQkJ
ICAgcmVxLT5zZ3Quc2dsLCByZXEtPnNndC5uZW50cywgZGlyKTsKLQlpZiAobmVudHMgPT0gMCkg
eworCXJldCA9IGRtYV9tYXBfc2d0YWJsZShjaGFuLT5kZXZpY2UtPmRldiwgcmVxLT5zZ3QsIGRp
ciwgMCk7CisJaWYgKHJldCkgewogCQlybWNkX2Vycm9yKCJGYWlsZWQgdG8gbWFwIFNHIGxpc3Qi
KTsKIAkJcmV0ID0gLUVGQVVMVDsKIAkJZ290byBlcnJfcGc7Ci0tIAoyLjE3LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

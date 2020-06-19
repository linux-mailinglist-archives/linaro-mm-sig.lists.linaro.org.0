Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E06200778
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 13:05:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CBFDB665A5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 11:05:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BE1EE665A6; Fri, 19 Jun 2020 11:05:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6DDC666FF;
	Fri, 19 Jun 2020 10:40:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8CB8E66597
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:38:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7B5D4665CB; Fri, 19 Jun 2020 10:38:33 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id D3EE1665A5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:17 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103717euoutp0228e5439d12318524eec6528270d37cff~Z66T920ra2363023630euoutp024
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103717euoutp0228e5439d12318524eec6528270d37cff~Z66T920ra2363023630euoutp024
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103716eucas1p162a56c5b084f03b07a1e1f00fe2e53d7~Z66TgIjHe0704707047eucas1p1C;
 Fri, 19 Jun 2020 10:37:16 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 20.AD.05997.C559CEE5; Fri, 19
 Jun 2020 11:37:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103716eucas1p1b7c50f7b421fb29829050b9355e3e644~Z66THeSaL0706007060eucas1p14;
 Fri, 19 Jun 2020 10:37:16 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103716eusmtrp19beba6ed65a603a1c08b57cb53ea06b1~Z66TG3meQ1007310073eusmtrp1I;
 Fri, 19 Jun 2020 10:37:16 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-12-5eec955c60c9
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C9.1B.06017.C559CEE5; Fri, 19
 Jun 2020 11:37:16 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103715eusmtip298b27b150d32f56203c96b474d54e50a~Z66Sd2Ghv0111401114eusmtip2P;
 Fri, 19 Jun 2020 10:37:15 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:33 +0200
Message-Id: <20200619103636.11974-34-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRjm27nsuJydpuCHVsIiQclrEYc0yZA43SCoP5qXlh7vOtucZf5w
 6LRYGi0RdUhoCJrXvKSls1SsKeYUNZ2ppBmaec15wZma85j9e573fZ73efj4CETQhNkQEbHx
 jCRWFC3EeWj9p40eJ//suUBX/Ywdlanr5FDfS/UIVZ1bhVE79SqEGlhdxKlXZR85VMEHD2pl
 YIJD1UwOYlR/Yz5OVbSPcansnnWEal36gV3g0+UvygHdvFaA0u/UY1w6Y06B0Q1r4xj97YmW
 Q9cWJdMj25MInaUvBnTTsBynn9aVAtpQc/yGuR/PM4SJjkhgJC5ed3jhQ9OdnLgBwYNajRyT
 g67DSmBGQPIMXDcMcZSARwjIEgCbc8b3yQqAhpIanCUGAEe38rj/LLUNGxi7KAZQ2dENDixr
 hTOoSYWTblA5r8RN2IpMA7Aj09yEEXKBA9sNjiZsSV6DlcbNvasoeRLmbc7sXiUIPukF6zQo
 G2YHy163ICZstjueVbTuBUNSx4XbKW0IK/KBut40jMWW8Je2br/pUdiVlYGyhlQAJ3QVXJZk
 ANifkgtYlQcc1RlxUzJCOsCqRhd27A3fpGv2CkHSAurnj7D9LeDz+hyEHfPh43QBq7aHam3l
 QWxrb99+NRp+nZzdfywVgLmFy/gzYKf+H1YAQCmwZmTSmDBG6h7L3HeWimKkstgw52BxTA3Y
 /VJd29qVt6Dxz902QBJAaM7/eWs2UICJEqSJMW0AEojQin+xuytQwA8RJT5kJOIgiSyakbYB
 WwIVWvNPv5wJEJBhongmimHiGMm/LYcws5GDattB76lpK1wV1PIZr31/0789ams1NGl5RDzc
 qR5yvnxOvLy0Q/ks+vbhc4WeqCzclTjrpWpeKZMrkpNcnL4Izes3ppPpSHWrOO56ZLBDYWL0
 lXn7qUcJRQG/85e5J3gL7saGdn3CvaRL7orQqw3MqfOpt/0OtRwzNvsqHFI0QlQaLnJzRCRS
 0V/Z4WygTgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xe7oxU9/EGaw9y27Re+4kk8WjVTeY
 LTbOWM9q8X/bRGaLK1/fs1msXH2UyWLBfmuLL1ceMllsenyN1eLyrjlsFmuP3GW3mHr+O7PF
 wQ9PWB14PdbMW8PosffbAhaPnbPusnv0vGlh9dj+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexvXnJ5kKrghVbN7TwNrAeJq/i5GTQ0LARGLz9p+sXYxcHEICSxklFrxc
 xQKRkJE4Oa2BFcIWlvhzrYsNougTo8STqbeYQBJsAoYSXW8hEiICnYwS07o/soM4zALfmCQm
 Lb3FBlIlLOAjse7Xb3YQm0VAVWLm75dAYzk4eAXsJLbsgdomL7F6wwFmEJsTKPy65SDYZiEB
 W4nlC94zT2DkW8DIsIpRJLW0ODc9t9hIrzgxt7g0L10vOT93EyMwarYd+7llB2PXu+BDjAIc
 jEo8vC9CXscJsSaWFVfmHmKU4GBWEuF1Ons6Tog3JbGyKrUoP76oNCe1+BCjKdBNE5mlRJPz
 gRGdVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qB8ZDlDLNfl/Vb
 LtQHx95bLzf16aGWb5W6a0WSlVZslUqR8pv/5Hb7bqcoizWCWifeHBMJX20W/aD/fPwttzCt
 hOkxTxr+vbvBzjXntFpFSe2isLlnij9dsXbeHzhH6Olnx/7Luf2fuB3uHe2pnFD1p/pG/rSI
 G9bF2+frBTws8N81jU2HRzakQImlOCPRUIu5qDgRAL+/YhqwAgAA
X-CMS-MailID: 20200619103716eucas1p1b7c50f7b421fb29829050b9355e3e644
X-Msg-Generator: CA
X-RootMTR: 20200619103716eucas1p1b7c50f7b421fb29829050b9355e3e644
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103716eucas1p1b7c50f7b421fb29829050b9355e3e644
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103716eucas1p1b7c50f7b421fb29829050b9355e3e644@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Alexandre Bounine <alex.bou9@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matt Porter <mporter@kernel.crashing.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 33/36] rapidio: fix common struct
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
ZXYuYwppbmRleCA0NTE2MDhlOTYwYTEuLjk4YzU3MjYyN2M4YyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9yYXBpZGlvL2RldmljZXMvcmlvX21wb3J0X2NkZXYuYworKysgYi9kcml2ZXJzL3JhcGlkaW8v
ZGV2aWNlcy9yaW9fbXBvcnRfY2Rldi5jCkBAIC01NzMsOCArNTczLDcgQEAgc3RhdGljIHZvaWQg
ZG1hX3JlcV9mcmVlKHN0cnVjdCBrcmVmICpyZWYpCiAJCQlyZWZjb3VudCk7CiAJc3RydWN0IG1w
b3J0X2NkZXZfcHJpdiAqcHJpdiA9IHJlcS0+cHJpdjsKIAotCWRtYV91bm1hcF9zZyhyZXEtPmRt
YWNoLT5kZXZpY2UtPmRldiwKLQkJICAgICByZXEtPnNndC5zZ2wsIHJlcS0+c2d0Lm5lbnRzLCBy
ZXEtPmRpcik7CisJZG1hX3VubWFwX3NndGFibGUocmVxLT5kbWFjaC0+ZGV2aWNlLT5kZXYsICZy
ZXEtPnNndCwgcmVxLT5kaXIsIDApOwogCXNnX2ZyZWVfdGFibGUoJnJlcS0+c2d0KTsKIAlpZiAo
cmVxLT5wYWdlX2xpc3QpIHsKIAkJdW5waW5fdXNlcl9wYWdlcyhyZXEtPnBhZ2VfbGlzdCwgcmVx
LT5ucl9wYWdlcyk7CkBAIC05MzAsOSArOTI5LDggQEAgcmlvX2RtYV90cmFuc2ZlcihzdHJ1Y3Qg
ZmlsZSAqZmlscCwgdTMyIHRyYW5zZmVyX21vZGUsCiAJCQkJeGZlci0+b2Zmc2V0LCB4ZmVyLT5s
ZW5ndGgpOwogCX0KIAotCW5lbnRzID0gZG1hX21hcF9zZyhjaGFuLT5kZXZpY2UtPmRldiwKLQkJ
CSAgIHJlcS0+c2d0LnNnbCwgcmVxLT5zZ3QubmVudHMsIGRpcik7Ci0JaWYgKG5lbnRzID09IDAp
IHsKKwlyZXQgPSBkbWFfbWFwX3NndGFibGUoY2hhbi0+ZGV2aWNlLT5kZXYsICZyZXEtPnNndCwg
ZGlyLCAwKTsKKwlpZiAocmV0KSB7CiAJCXJtY2RfZXJyb3IoIkZhaWxlZCB0byBtYXAgU0cgbGlz
dCIpOwogCQlyZXQgPSAtRUZBVUxUOwogCQlnb3RvIGVycl9wZzsKLS0gCjIuMTcuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A65901FF83B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 17:54:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C46B166583
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 15:54:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B66986659D; Thu, 18 Jun 2020 15:54:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 732456659C;
	Thu, 18 Jun 2020 15:42:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 948D16659C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 82007665A1; Thu, 18 Jun 2020 15:40:39 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 4B185665A5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:26 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154025euoutp01cd5f55a81e2dfcf1c4fc5e0fbe2ce13b~ZrZs--6Y81845018450euoutp015
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154025euoutp01cd5f55a81e2dfcf1c4fc5e0fbe2ce13b~ZrZs--6Y81845018450euoutp015
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154025eucas1p1bbec352e6eb778b3a44f8e1703ddfe0e~ZrZsscZph1545515455eucas1p1Z;
 Thu, 18 Jun 2020 15:40:25 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 85.60.60698.9EA8BEE5; Thu, 18
 Jun 2020 16:40:25 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154024eucas1p2e093781df622f8326297518f4eacd2fe~ZrZsdSY3K0501005010eucas1p2c;
 Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154024eusmtrp1865efaf4ced0e5aa6b4e9b3c5a67e3dc~ZrZscoXLk2169821698eusmtrp1b;
 Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-31-5eeb8ae99ba5
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 36.E9.07950.8EA8BEE5; Thu, 18
 Jun 2020 16:40:24 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154024eusmtip14148cff89bfa17ed0df8ad6b9329bd76~ZrZrxSnWt0744107441eusmtip11;
 Thu, 18 Jun 2020 15:40:24 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:37 +0200
Message-Id: <20200618153956.29558-17-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSW0hTcRjnv7OdHc3FaQr+UclYFJTmBQ0OzLSL4ekhktxDRZkrT1Oam+yo
 ZS95W+SaQ/NBkagRknnPaWtpmo7pjOkUFZu30rSLmmh5KxHX5pn29vt+3+/yPXwYwm/h+GDJ
 sjRKIRNLBag7W9/113psVjUfHzKQu4cosH5gEQ2l9RzCri9CiKHVRZSorO5kEdr3QmJlaIpF
 6KaHOcRg8xOUqDVNcAn7OwOX6Fia4RCa2gH0JI+seVoDSMNEOSBb17RsUleVj5Jv1iY55OdH
 ZhbZWH6fHNuaRshiWwUgW0ayUFLTVAXIZd3+WI8r7hGJlDQ5g1IERya4J7VUjaKpPfDu118W
 bhbo9lIBNwzi4bCxZB1VAXeMj78E8K0+3zWsALhhUANmWAZw+mMfZ8eyvmx0LSoA7Kn/jexa
 WjVjiFOF4qFQtaBCndgLVwLYXeDhFCH4DAva/tRuR3niItinNjmiMIyNH4JDXUInzcMj4dLr
 RsC0+cPqV+3bmW4O3mJWcpw5ELdyYX/3kEsUDU0rzxAGe8I5cxOXwX7QUqxmM4ZcAKestVxm
 UAM4mFPqcgvhuHUDdV6B4EdgfXMwQ5+COYYFrpOG+F5oW9jnpBEHfKwvQRiaBx8+4DPqw7DM
 XLdb29E/4DqHhLP9ldtFfLwIwN4vAYXAv+x/lxaAKuBNpdMpEooOk1F3gmhxCp0ukwTdlKfo
 gOOlLFvmVQNo27xhBDgGBB68H6L5eD5HnEFnphgBxBCBF+90ryWez0sUZ96jFPLrinQpRRuB
 L8YWePPCns9e4+MScRp1m6JSKcXOloW5+WQBdWjHXER7Xbz0rLAmDrkYbs/zy95sD2gAZT3V
 InX0eZspzq5sm/wWg4px+WjjeHUyTg5OXVg0kBWhuhGt7ZbvkujATEtg3kYIECklXp6Jx2Xf
 +2xR61fP0YWLxVGXEjSBWPLImc6SEf/LcvBzOLb8xCe9tEsUk738wnYQE7DpJHHoUURBi/8B
 /a4TOk4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDIsWRmVeSWpSXmKPExsVy+t/xu7ovul7HGSybYGrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFv/37GC3OPjhCatF
 39pLbA68HmvmrWH02HF3CaPH3m8LWDw2repk89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexu5Vt9gKzkhUPP14mr2B8YRIFyMnh4SAicT3z4cYuxi5OIQEljJKrNq3
 hhkiISNxcloDK4QtLPHnWhcbRNEnRome9nWMIAk2AUOJrrcQCRGBTkaJad0f2UESzAJvmCQu
 XY0AsYUFgiRO3LoGNJWDg0VAVeLKMWuQMK+AncSHrZsZIRbIS6zecABsMSdQ/PTxVrDFQgK2
 Es8/tLFNYORbwMiwilEktbQ4Nz232EivODG3uDQvXS85P3cTIzBmth37uWUHY9e74EOMAhyM
 Sjy8L0JexwmxJpYVV+YeYpTgYFYS4XU6ezpOiDclsbIqtSg/vqg0J7X4EKMp0E0TmaVEk/OB
 8ZxXEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoHx0LzAfpscs/Dv
 d5Yk35PmammMXHfFN01OYXrC/uvPJWInTZe+U7+zIVMpa/rZ1Qdu9p7+Fux5mXetU6XfhK6f
 1/6pxZw+VCvh/ivXZ7duXeT9b48D9maLmzcHnv/o8DQzazl/xDPfZ4IMTGn7FYMy3BykQxgL
 o5N1LFTXeT66xj+tZ47m3PlKLMUZiYZazEXFiQAFAmGNrwIAAA==
X-CMS-MailID: 20200618154024eucas1p2e093781df622f8326297518f4eacd2fe
X-Msg-Generator: CA
X-RootMTR: 20200618154024eucas1p2e093781df622f8326297518f4eacd2fe
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154024eucas1p2e093781df622f8326297518f4eacd2fe
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154024eucas1p2e093781df622f8326297518f4eacd2fe@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 16/36] drm: panfrost: fix common struct
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
dS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMKaW5kZXggYWM1ZDBhYTgwMjc2Li5iYTg0NTBl
YTA0ZDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9nZW0u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMKQEAgLTQxLDgg
KzQxLDggQEAgc3RhdGljIHZvaWQgcGFuZnJvc3RfZ2VtX2ZyZWVfb2JqZWN0KHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqKQogCiAJCWZvciAoaSA9IDA7IGkgPCBuX3NndDsgaSsrKSB7CiAJCQlp
ZiAoYm8tPnNndHNbaV0uc2dsKSB7Ci0JCQkJZG1hX3VubWFwX3NnKHBmZGV2LT5kZXYsIGJvLT5z
Z3RzW2ldLnNnbCwKLQkJCQkJICAgICBiby0+c2d0c1tpXS5uZW50cywgRE1BX0JJRElSRUNUSU9O
QUwpOworCQkJCWRtYV91bm1hcF9zZ3RhYmxlKHBmZGV2LT5kZXYsICZiby0+c2d0c1tpXSwKKwkJ
CQkJCSAgRE1BX0JJRElSRUNUSU9OQUwsIDApOwogCQkJCXNnX2ZyZWVfdGFibGUoJmJvLT5zZ3Rz
W2ldKTsKIAkJCX0KIAkJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3Bh
bmZyb3N0X21tdS5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X21tdS5jCmlu
ZGV4IDBhMzM5YzZmYmZhYS4uZmQyOTRmNmE3ZDNiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
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

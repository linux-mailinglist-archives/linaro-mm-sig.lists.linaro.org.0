Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D75BC20074A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:51:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2513665E3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:51:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E5CFB665EE; Fri, 19 Jun 2020 10:51:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D5663665BE;
	Fri, 19 Jun 2020 10:38:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1DD566659D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0A501665D5; Fri, 19 Jun 2020 10:37:18 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 622C96659D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:05 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103704euoutp01af174bc3dc443801a5e02bb32cda9886~Z66IYRjIl1849918499euoutp01T
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103704euoutp01af174bc3dc443801a5e02bb32cda9886~Z66IYRjIl1849918499euoutp01T
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103704eucas1p1ce7615f2cccfbc294d682719040855f8~Z66IBNL5P3246032460eucas1p1b;
 Fri, 19 Jun 2020 10:37:04 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 91.9C.06318.0559CEE5; Fri, 19
 Jun 2020 11:37:04 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103703eucas1p2b8b0e90f9559c3fff12d61f76b861cc1~Z66HsQVcv2383423834eucas1p2j;
 Fri, 19 Jun 2020 10:37:03 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103703eusmtrp108812fcc95a44dd2886dccafce48b2b4~Z66HrmZ7t0949709497eusmtrp1Q;
 Fri, 19 Jun 2020 10:37:03 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-66-5eec95502108
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D2.EA.06314.F459CEE5; Fri, 19
 Jun 2020 11:37:03 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103703eusmtip2693e0f25c0525ff1f822863679de2107~Z66HBJUsF0246802468eusmtip2g;
 Fri, 19 Jun 2020 10:37:03 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:16 +0200
Message-Id: <20200619103636.11974-17-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfSyUcRzv+zx3zz1uTo+j+SVL3VabVmKopzS9+eNp9YctW1sbeuQZ4rA7
 pNrKiujo5q2xXrCmqeO8ZfKeux0qugqrQ8LQSCUR6YU8HtV/n+/nZZ99v/uSuLxO7EiGR8Vy
 qig2UkFIRTVtCy92+N34GOg2k7WWvm5+itGVeeVieqkmE6d7vk0R9IOSVowufOxNz/YMY3TV
 yGsx3V1/m6D1pgEJvdRYK6ENX0bFtFbfRRyQMaX5pcDUDhQB0zRXKGKqdNcI5tHckJgZTGvH
 mIdFl5j+xRGcybYUA9PQm0gw2modMDNVG/2sT0r3hXCR4fGcaqfPKWlYg66PiOlECWPTHZJE
 eGKvASsSUZ6o8k0JaEBKyqn7gAreGTENkMvDLKAHIQI/A2jkdj78DbTmJ4sFoRjQ+PvcFWEl
 kFrE8pig3JHmk4bgsT2VDOjJdWs+gFOjGLJ814t5wY7yRy19WpzHImoLqstckPBYRvkgbc8r
 TGhzRiUVLSseq2V+Msmw0oyoZxKktXQSgskXzf8wrQbs0If2aomAnVBHdrpICFwBNGzWS4Qh
 HVD35bzVhbzRW/MPgl8ap1xQef1OgT6IDPP3RDyNKBtk+WTL0/gyzKrJxQVahlKvygX3VnSz
 vexfreFl16qFQTkpwcKxMgH1dvVDBjjf/N9VCKADBy5OrQzl1B5R3FlXNatUx0WFup6OVlbB
 8kN1LLZ/q4XmX8FGoEhQWMvG/ScD5WI2Xn1OaQRE4gp72aHnHYFyWQh77jynig5SxUVyaiNs
 IEUKB5nH3YkAORXKxnIRHBfDqf6qGGnlmAjeu7dGNGVMNl9QZZk2XfG1TZFWDBZ4KlqXVCGG
 aUgq3veVSji+ZgLYtO2fg/RtWGuSW/xehz1gMzfksq60YL8h21I93/czoHTKxqbRNG65k+eW
 NpHrNPtzqOyEdmjQbf73kffx7gtjlUfP6C7ar88JyCve5edl62W+tTnnWNphT4VIHca6b8NV
 avYPwdhveUwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDIsWRmVeSWpSXmKPExsVy+t/xe7r+U9/EGTz6ZWTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFv/37GC3OPjhCatF
 39pLbA68HmvmrWH02HF3CaPH3m8LWDw2repk89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexu5Vt9gKzkhUPP14mr2B8YRIFyMnh4SAicTRea2sILaQwFJGiY/b3SDi
 MhInpzWwQtjCEn+udbF1MXIB1XxilPh1YiUTSIJNwFCi6y1EQkSgk1FiWvdHdpAEs8AbJolL
 VyNAbGGBIIklHx6zgNgsAqoSOyf+BKvhFbCT6LtykQlig7zE6g0HmEFsTqD465aDUBfZSixf
 8J55AiPfAkaGVYwiqaXFuem5xYZ6xYm5xaV56XrJ+bmbGIExs+3Yz807GC9tDD7EKMDBqMTD
 +yLkdZwQa2JZcWXuIUYJDmYlEV6ns6fjhHhTEiurUovy44tKc1KLDzGaAh01kVlKNDkfGM95
 JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoY21csuacy8+LHVM6r
 zIXyB3h76yfWFz/58DFkWoGg2aGIa8bxLfN2fBaYsXFn1CtbQ76HF3Rv3VGeed9x06mcJ+Kv
 96veL+12u2Qmf2LJvUc5u8SWtXCo9BqF1H5QTG8OePvZJqM/MmnxfH/F92k3JuZcNvP5z6x+
 +48Vs4hlmPzN+58UecRFlViKMxINtZiLihMBpDuXsK8CAAA=
X-CMS-MailID: 20200619103703eucas1p2b8b0e90f9559c3fff12d61f76b861cc1
X-Msg-Generator: CA
X-RootMTR: 20200619103703eucas1p2b8b0e90f9559c3fff12d61f76b861cc1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103703eucas1p2b8b0e90f9559c3fff12d61f76b861cc1
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103703eucas1p2b8b0e90f9559c3fff12d61f76b861cc1@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 16/36] drm: panfrost: fix common struct
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

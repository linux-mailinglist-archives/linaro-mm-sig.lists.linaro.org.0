Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE2320071E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:45:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CD45665E3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:45:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4DE5B665EE; Fri, 19 Jun 2020 10:45:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 274DB665FF;
	Fri, 19 Jun 2020 10:37:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1E31A6658C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 10E64665BE; Fri, 19 Jun 2020 10:37:08 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 026D06658C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:00 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103659euoutp02f04393ba044b23717bb5eaaba9710f68~Z66DVoTVF2242222422euoutp02O
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103659euoutp02f04393ba044b23717bb5eaaba9710f68~Z66DVoTVF2242222422euoutp02O
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103658eucas1p1d61897a1627eb9d0f3767ce51778d277~Z66C6ohlC0550605506eucas1p1l;
 Fri, 19 Jun 2020 10:36:58 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 41.9D.05997.A459CEE5; Fri, 19
 Jun 2020 11:36:58 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103658eucas1p1c3236e2de2798c2d8c02279a9263e9a9~Z66CkPheM0705907059eucas1p1C;
 Fri, 19 Jun 2020 10:36:58 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103658eusmtrp1ee91374088728f3ad6501ac14183a27e~Z66CjlnGh0959609596eusmtrp11;
 Fri, 19 Jun 2020 10:36:58 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-d7-5eec954a139f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id AE.DA.06314.A459CEE5; Fri, 19
 Jun 2020 11:36:58 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103657eusmtip2ec5cc91472375cc2dbda6f31e448626a~Z66B5Cvqu0229502295eusmtip2g;
 Fri, 19 Jun 2020 10:36:57 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:08 +0200
Message-Id: <20200619103636.11974-9-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKKsWRmVeSWpSXmKPExsWy7djP87peU9/EGex8pmvRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCuKyyYlNSezLLVI3y6BK+NG03Wmgm7hirOL37E1MDYIdDFycEgImEhMPiTb
 xcjJISSwglHiwG3dLkYuIPsLo0T31jcsEM5nRomuD0tYQapAGnoOdjJBJJYzSkz6/ZkZrqXp
 0n2wKjYBQ4mut11sILaIQCujxIleHpAiZoEOZolrE+czgiSEBYIklvxtZgKxWQRUJVYu/A1m
 8wrYSlx+P5EZYp28xOoNB8BsTgE7idctB1lBBkkIHGOXOLTnNwtEkYvEuo7J7BC2sMSr41ug
 bBmJ05N7WCAamhklHp5byw7h9DBKXG6awQhRZS1x59wvNlBwMAtoSqzfpQ8JGUeJrc2qECaf
 xI23giDFzEDmpG3TmSHCvBIdbUIQM9QkZh1fB7f14IVLUOd7SPw/OI0dEkATGSVWP1vNOIFR
 fhbCrgWMjKsYxVNLi3PTU4uN8lLL9YoTc4tL89L1kvNzNzECE9Ppf8e/7GDc9SfpEKMAB6MS
 D++LkNdxQqyJZcWVuYcYJTiYlUR4nc6ejhPiTUmsrEotyo8vKs1JLT7EKM3BoiTOa7zoZayQ
 QHpiSWp2ampBahFMlomDU6qBkf0R770XmoatSnti86XdNghvK1QJOLL1Hi/LsedMWW0aHctv
 sX2S/viqXuRU4VwxHlVfCZ63Yd/Y+l/Ovq4Y8kxz94c2kUwZ1+hqiY+PZlwTO1K9wSTf8g9b
 ZXzgfNeHupn9AdM9l2b99Z0SYDyTYeKM/gPpjbf7nfJClXIbLu+Vvhz414pZiaU4I9FQi7mo
 OBEAgM9WwkgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsVy+t/xe7peU9/EGfzfImbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+NG03Wmgm7hirOL37E1MDYIdDFyckgImEj0HOxk6mLk4hASWMoo8e31HEaIhIzE
 yWkNrBC2sMSfa11sEEWfGCUOLZgFlmATMJToeguREBHoZJSY1v2RHcRhFpjALHG/ZTXYKGGB
 AInWm1/ZQGwWAVWJlQt/M4HYvAK2EpffT2SGWCEvsXrDATCbU8BO4nXLQbANQkA1yxe8Z57A
 yLeAkWEVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYLRsO/Zz8w7GSxuDDzEKcDAq8fC+CHkd
 J8SaWFZcmXuIUYKDWUmE1+ns6Tgh3pTEyqrUovz4otKc1OJDjKZAR01klhJNzgdGcl5JvKGp
 obmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBsbyi9YvP6xZmuazkC3uylP+
 kkX9ij8K13+4W7rM7QtHbkCXwxuGQ3WXX63pTFx+psn8s7nf1wM5WXdWTs5PbTzEMFflRd4+
 YV0dmUcrwnnsTon/V2HUnvNG6EG6QOLtH7o2Rq03Hm9YFbnvvYOraM4BvZfP2DtX/dyXY/d3
 y5/rbmcsrDaLr6lRYinOSDTUYi4qTgQAmL0rkqwCAAA=
X-CMS-MailID: 20200619103658eucas1p1c3236e2de2798c2d8c02279a9263e9a9
X-Msg-Generator: CA
X-RootMTR: 20200619103658eucas1p1c3236e2de2798c2d8c02279a9263e9a9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103658eucas1p1c3236e2de2798c2d8c02279a9263e9a9
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103658eucas1p1c3236e2de2798c2d8c02279a9263e9a9@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Inki Dae <inki.dae@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 08/36] drm: exynos: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4
eW5vc19kcm1fZzJkLmMgfCAxMCArKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9leHlu
b3MvZXh5bm9zX2RybV9nMmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9n
MmQuYwppbmRleCBmY2VlMzNhNDNhY2EuLjcwMTRhOGNkOTcxYSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9l
eHlub3MvZXh5bm9zX2RybV9nMmQuYwpAQCAtMzk1LDggKzM5NSw4IEBAIHN0YXRpYyB2b2lkIGcy
ZF91c2VycHRyX3B1dF9kbWFfYWRkcihzdHJ1Y3QgZzJkX2RhdGEgKmcyZCwKIAkJcmV0dXJuOwog
CiBvdXQ6Ci0JZG1hX3VubWFwX3NnKHRvX2RtYV9kZXYoZzJkLT5kcm1fZGV2KSwgZzJkX3VzZXJw
dHItPnNndC0+c2dsLAotCQkJZzJkX3VzZXJwdHItPnNndC0+bmVudHMsIERNQV9CSURJUkVDVElP
TkFMKTsKKwlkbWFfdW5tYXBfc2d0YWJsZSh0b19kbWFfZGV2KGcyZC0+ZHJtX2RldiksIGcyZF91
c2VycHRyLT5zZ3QsCisJCQkgIERNQV9CSURJUkVDVElPTkFMLCAwKTsKIAogCXBhZ2VzID0gZnJh
bWVfdmVjdG9yX3BhZ2VzKGcyZF91c2VycHRyLT52ZWMpOwogCWlmICghSVNfRVJSKHBhZ2VzKSkg
ewpAQCAtNTExLDEwICs1MTEsMTAgQEAgc3RhdGljIGRtYV9hZGRyX3QgKmcyZF91c2VycHRyX2dl
dF9kbWFfYWRkcihzdHJ1Y3QgZzJkX2RhdGEgKmcyZCwKIAogCWcyZF91c2VycHRyLT5zZ3QgPSBz
Z3Q7CiAKLQlpZiAoIWRtYV9tYXBfc2codG9fZG1hX2RldihnMmQtPmRybV9kZXYpLCBzZ3QtPnNn
bCwgc2d0LT5uZW50cywKLQkJCQlETUFfQklESVJFQ1RJT05BTCkpIHsKKwlyZXQgPSBkbWFfbWFw
X3NndGFibGUodG9fZG1hX2RldihnMmQtPmRybV9kZXYpLCBzZ3QsCisJCQkgICAgICBETUFfQklE
SVJFQ1RJT05BTCwgMCk7CisJaWYgKHJldCkgewogCQlEUk1fREVWX0VSUk9SKGcyZC0+ZGV2LCAi
ZmFpbGVkIHRvIG1hcCBzZ3Qgd2l0aCBkbWEgcmVnaW9uLlxuIik7Ci0JCXJldCA9IC1FTk9NRU07
CiAJCWdvdG8gZXJyX3NnX2ZyZWVfdGFibGU7CiAJfQogCi0tIAoyLjE3LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

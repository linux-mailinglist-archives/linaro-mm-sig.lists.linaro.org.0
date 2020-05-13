Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 824FD1D1677
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:52:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8D6965F94
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:52:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 92F5365FCD; Wed, 13 May 2020 13:52:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFE67664DE;
	Wed, 13 May 2020 13:34:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D6CAA65F8B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:34:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C7B5465F94; Wed, 13 May 2020 13:34:34 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id E0A6E65F8B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:11 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133311euoutp0107f1940a8da051c1123e8ec13ff7aeea~OmcVMVQjx2196121961euoutp01t
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133311euoutp0107f1940a8da051c1123e8ec13ff7aeea~OmcVMVQjx2196121961euoutp01t
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133310eucas1p2dfa423c1dd02d4f7422afd99a66a28ce~OmcUz6wXt0616406164eucas1p2b;
 Wed, 13 May 2020 13:33:10 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B8.D8.60698.617FBBE5; Wed, 13
 May 2020 14:33:10 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133310eucas1p176c920345e7f05f670e26e330b358d7f~OmcUk6gAF2350623506eucas1p1H;
 Wed, 13 May 2020 13:33:10 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133310eusmtrp14a5310d8ec8a7383f0dfee53efa99761~OmcUkSOjS1011910119eusmtrp1R;
 Wed, 13 May 2020 13:33:10 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-d8-5ebbf716ae7e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 68.1A.08375.617FBBE5; Wed, 13
 May 2020 14:33:10 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133309eusmtip176b7b06def49b2e95bc3716c90d655f2~OmcTsxDLb0131701317eusmtip1F;
 Wed, 13 May 2020 13:33:09 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:26 +0200
Message-Id: <20200513133245.6408-19-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSazBUYRjHe89tD9k6FnlTw7QzmTQh6cOZcRlNjc5MpjR8UqmVkzVY2nXt
 SzspacOoLUSjrczIdVlGcrcqyViFwqAYjEtJxl0N7TpL3/7P7/k/7/9533lJVFCP25ChkmhW
 KhGFCwlTrOr9aqfjnuXawKMjG0foVF0bQpdnqXF6o+oBSvcszhJ0QdE7hFY1utELPSMIrRn9
 itPdNU8JuuTtEI/eqKvm0c2/x3A6raSL8OIzxbnFgKkeygNM/ZIKYzSF9wjm9dIwzny/34ow
 FXk3mYH1UZRR9uUDprZfTjBplYWAmdfY+poFmLoHs+GhsazU2fOKqXh9vomI6t4bfzvzLioH
 DVYKYEJC6jgcHFcTCmBKCqhXAHYrE43FAoDpq10oV8wD+HPpG7o1slLfw+Ma+QDK+3Vge2Qq
 IwUzuAjKBSpmFIRBW1J3APyQamYwodQYAvtWSnBDw4Lyh0vP+4BBY9RBWNf5cpPzKQ84uS43
 xtnBorKmTW2i59ODjZjhIEh95MGO1UqMM52Cy3MjOKct4HRrJY/T+2G7MsU4kAjgiK6ExxUp
 +rveygKcyw0O6tb0u5L6/RygusaZwyfgo2fJiAFDahfsmzE3YFQvH1Zlohzmw+QkAee2h9mt
 pduxzZ+6jPszUJvbYXyhFgAX635h6cAu+3+YCoBCYM3GyCJCWJmrhI1zkokiZDGSEKerkREa
 oP9U7euti9Wg4W+QFlAkEJrxh3trAwW4KFaWEKEFkESFlvyzaj3iB4sSbrDSyMvSmHBWpgX7
 SExozXd9MXVJQIWIotkwlo1ipVtdhDSxkQPxac9D5y9o5a4DpMNktTgOFXjviF+r8XvskeRz
 0XsCz0pEclQFvZbic+a0omw244ztzhzfxFmXCueTLe6Vygl7m91F155EH6hIN5eER1oVUKUL
 /uYDDmGONT90PnOfg0L8vN6UX7dTj3f88WoLLuhdaWrW9CodghHlF/eAgdhjQkwmFrkcRqUy
 0T+nmzdrUAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xu7pi33fHGSzaIGvRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFv/37GC3OPjhCatF
 39pLbA68HmvmrWH02HF3CaPH3m8LWDw2repk89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexr/PB9gKLktWtExvZ25g3CfaxcjJISFgIvFj7xX2LkYuDiGBpYwSV37v
 Z4FIyEicnNbACmELS/y51sUGUfSJUeLDvR1gCTYBQ4mutxAJEYFORolp3R/ZQRLMAm+YJC5d
 jQCxhQWCJNbM/MQGYrMIqErsOb8YrJlXwFbixb8GZogN8hKrNxwAszmB4q/uQFwhJJAvsXfx
 PrYJjHwLGBlWMYqklhbnpucWG+oVJ+YWl+al6yXn525iBEbNtmM/N+9gvLQx+BCjAAejEg+v
 xa3dcUKsiWXFlbmHGCU4mJVEeP3WA4V4UxIrq1KL8uOLSnNSiw8xmgIdNZFZSjQ5HxjReSXx
 hqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGE0Tpn20Uw9jXND/61We
 9zb5gNOLIyyLbO+/vrKBr3DSoavsV4vFwva5Xt9fuKZ/Xfj8H1PSXh+xWDcjdcdvkclWrT+i
 WfYZ3vM1kXM6IP5kNjvXj3DWWcZC3y88WOiw8qhoQtXOFGWxq4kNk0LTfj/4dj63RnzNmmSp
 YKX+s0+82O+8/5/w4a8SS3FGoqEWc1FxIgDc3DkUsAIAAA==
X-CMS-MailID: 20200513133310eucas1p176c920345e7f05f670e26e330b358d7f
X-Msg-Generator: CA
X-RootMTR: 20200513133310eucas1p176c920345e7f05f670e26e330b358d7f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133310eucas1p176c920345e7f05f670e26e330b358d7f
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133310eucas1p176c920345e7f05f670e26e330b358d7f@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 19/38] drm: panfrost: fix common struct
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
dmVuLnByaWNlQGFybS5jb20+Ci0tLQpGb3IgbW9yZSBpbmZvcm1hdGlvbiwgc2VlICdbUEFUQ0gg
djUgMDAvMzhdIERSTTogZml4IHN0cnVjdCBzZ190YWJsZSBuZW50cwp2cy4gb3JpZ19uZW50cyBt
aXN1c2UnIHRocmVhZDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtaW9tbXUvMjAyMDA1
MTMxMzIxMTQuNjA0Ni0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS9ULwotLS0KIGRyaXZlcnMv
Z3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9nZW0uYyB8IDQgKystLQogZHJpdmVycy9ncHUvZHJt
L3BhbmZyb3N0L3BhbmZyb3N0X21tdS5jIHwgNyArKystLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDUg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFu
ZnJvc3RfZ2VtLmMKaW5kZXggMTdiNjU0ZS4uNjY5NjMwNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5m
cm9zdC9wYW5mcm9zdF9nZW0uYwpAQCAtNDEsOCArNDEsOCBAQCBzdGF0aWMgdm9pZCBwYW5mcm9z
dF9nZW1fZnJlZV9vYmplY3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAKIAkJZm9yIChp
ID0gMDsgaSA8IG5fc2d0OyBpKyspIHsKIAkJCWlmIChiby0+c2d0c1tpXS5zZ2wpIHsKLQkJCQlk
bWFfdW5tYXBfc2cocGZkZXYtPmRldiwgYm8tPnNndHNbaV0uc2dsLAotCQkJCQkgICAgIGJvLT5z
Z3RzW2ldLm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJCQkJZG1hX3VubWFwX3NndGFibGUo
cGZkZXYtPmRldiwgJmJvLT5zZ3RzW2ldLAorCQkJCQkJICBETUFfQklESVJFQ1RJT05BTCwgMCk7
CiAJCQkJc2dfZnJlZV90YWJsZSgmYm8tPnNndHNbaV0pOwogCQkJfQogCQl9CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfbW11LmMgYi9kcml2ZXJzL2dwdS9k
cm0vcGFuZnJvc3QvcGFuZnJvc3RfbW11LmMKaW5kZXggZWQyOGFlYi4uZWIyNTUwZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X21tdS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9tbXUuYwpAQCAtMjUzLDcgKzI1Myw3IEBAIHN0
YXRpYyBpbnQgbW11X21hcF9zZyhzdHJ1Y3QgcGFuZnJvc3RfZGV2aWNlICpwZmRldiwgc3RydWN0
IHBhbmZyb3N0X21tdSAqbW11LAogCXN0cnVjdCBpb19wZ3RhYmxlX29wcyAqb3BzID0gbW11LT5w
Z3RibF9vcHM7CiAJdTY0IHN0YXJ0X2lvdmEgPSBpb3ZhOwogCi0JZm9yX2VhY2hfc2coc2d0LT5z
Z2wsIHNnbCwgc2d0LT5uZW50cywgY291bnQpIHsKKwlmb3JfZWFjaF9zZ3RhYmxlX2RtYV9zZyhz
Z3QsIHNnbCwgY291bnQpIHsKIAkJdW5zaWduZWQgbG9uZyBwYWRkciA9IHNnX2RtYV9hZGRyZXNz
KHNnbCk7CiAJCXNpemVfdCBsZW4gPSBzZ19kbWFfbGVuKHNnbCk7CiAKQEAgLTUxNywxMCArNTE3
LDkgQEAgc3RhdGljIGludCBwYW5mcm9zdF9tbXVfbWFwX2ZhdWx0X2FkZHIoc3RydWN0IHBhbmZy
b3N0X2RldmljZSAqcGZkZXYsIGludCBhcywKIAlpZiAocmV0KQogCQlnb3RvIGVycl9wYWdlczsK
IAotCWlmICghZG1hX21hcF9zZyhwZmRldi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgRE1B
X0JJRElSRUNUSU9OQUwpKSB7Ci0JCXJldCA9IC1FSU5WQUw7CisJcmV0ID0gZG1hX21hcF9zZ3Rh
YmxlKHBmZGV2LT5kZXYsIHNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDApOworCWlmIChyZXQpCiAJ
CWdvdG8gZXJyX21hcDsKLQl9CiAKIAltbXVfbWFwX3NnKHBmZGV2LCBib21hcHBpbmctPm1tdSwg
YWRkciwKIAkJICAgSU9NTVVfV1JJVEUgfCBJT01NVV9SRUFEIHwgSU9NTVVfTk9FWEVDLCBzZ3Qp
OwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==

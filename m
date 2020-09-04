Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1510F25DA62
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:48:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 370896676B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:48:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 29B806676C; Fri,  4 Sep 2020 13:48:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA906665CB;
	Fri,  4 Sep 2020 13:36:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0211A66744
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E76B360F48; Fri,  4 Sep 2020 13:35:16 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id B311B60F48
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:03 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133502euoutp02cfa0ee7a701c5aa5237e835bbc3c7f13~xmAgEXVli2781727817euoutp02k
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200904133502euoutp02cfa0ee7a701c5aa5237e835bbc3c7f13~xmAgEXVli2781727817euoutp02k
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200904133502eucas1p196b49998aab3c682956fb60b3d67d430~xmAf1G6TK0115901159eucas1p1q;
 Fri,  4 Sep 2020 13:35:02 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id EF.01.06456.682425F5; Fri,  4
 Sep 2020 14:35:02 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133502eucas1p136e346bfdcd361d9e0320923f653d843~xmAfZ3mri2307423074eucas1p1T;
 Fri,  4 Sep 2020 13:35:02 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133502eusmtrp2422309161fdf1068ef9cd28c5980cdc3~xmAfZCW100977009770eusmtrp2M;
 Fri,  4 Sep 2020 13:35:02 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-48-5f52428624a8
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id FF.AE.06314.682425F5; Fri,  4
 Sep 2020 14:35:02 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133501eusmtip1619a515147b9ee7852a476c127af4056~xmAe2m8ar2113121131eusmtip1t;
 Fri,  4 Sep 2020 13:35:01 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:55 +0200
Message-Id: <20200904131711.12950-15-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfyyUcRzH+95zzw83T3sc8k0/rKuUWmTFnjCV9cez9UeNVGuLjnuGOcfu
 EKqh1hUiv1ayyqWLOnfoki40v39EHWF2JSujNjVpfi2t0T2e6L/X9/15fb6fz777Eoi4HnUm
 ohTxrFIhlUswkbC2Y8G8Rx0QGLrXUriNzja/FtBPi6pQeqk2D6EH56Yw+klFu4DWNPrSs4Oj
 Ato4NoTSA3V3MdrQNoLTSw0mnG7+OY7SOYZ+7BDJ6O/rAWMa0QLm1bxGyBh1GRjzYv4zynzK
 6hQwz7SpzPDiGMIUWMoBU/8+DWNyanSAmTFuPm57RuQnY+VRiazSw/+cKLKvtBeNewOTtLfM
 eBrocsgENgSk9sOMknKEYzH1GMCyNCoTiKw8C2DpRAXGH2YAbP2hQ1c6Cr5MCvlCOYBLw13Y
 akvhnY5lC6M8YeZkJsaxA3UVwK5sW05CqHEBtPwyWCWCsKeCYUajK+cIqe2wudUg4Jik/GFf
 XjHGT3OBFdVNy/vZWPPnReModw+kunHY9mBKyEtHoKZ7COfZHn7rrPnHG+HSyxIB33AFwFGz
 AecPNwAcuFwEeMsXfjT/xriNEMoNVtV58PFh2P6uUcjFkFoLLZN2XIxYMb/2NsLHJLyuFvO2
 KyzurFwd29zXj/DMwOo/s4B/oDwANa1deC5wKf4/TAOADjixCaqYCFblqWDPu6ukMaoERYR7
 eGyMEVi/VM9i57QJzPWHtQCKABJbcs3BwFAxKk1UJce0AEggEgcy4G1PiJiUSZNTWGVsqDJB
 zqpawAZCKHEi95VOnBVTEdJ4Nppl41jlSlVA2DingfR1yqzvascUWpSEX2rPze6+KHsE7k3r
 b5bJprN6vKrsgG+ItoBwUZxKOHDUGXr6fK3IbTgdt8P32qYTlR/qfYZsXNfnp0Yf260IMqvx
 nfiU94UAPyRkZouerFQshMtleuKhaaDpZLBXNWPcSvYaTWGOQbUTbnVyb3VejSFdIlRFSj13
 IUqV9C8azGD4TgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDIsWRmVeSWpSXmKPExsVy+t/xu7ptTkHxBqc6OS16z51kstg4Yz2r
 xf9tE5ktrnx9z2axcvVRJosF+60tvlx5yGSx6fE1VovLu+awWaw9cpfd4v+eHewWBz88YbXo
 W3uJzYHXY828NYweO+4uYfTY+20Bi8emVZ1sHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNFj
 980GNo++LasYPT5vkgvgidKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rez
 SUnNySxLLdK3S9DLuLDoPGvBGYmKJdPOsTcwnhDpYuTkkBAwkZj89C0LiC0ksJRR4vZlIYi4
 jMTJaQ2sELawxJ9rXWxdjFxANZ8YJWZ/3c8EkmATMJToeguREBHoZJSY1v2RHSTBLPCGSeLS
 1QgQW1ggWOJ4z1uwBhYBVYmDh9eC2bwCdhIXJs5ig9ggL7F6wwFmEJsTKL51xhNWiItsJT7M
 WcwygZFvASPDKkaR1NLi3PTcYkO94sTc4tK8dL3k/NxNjMCY2Xbs5+YdjJc2Bh9iFOBgVOLh
 ZbAPihdiTSwrrsw9xCjBwawkwut09nScEG9KYmVValF+fFFpTmrxIUZToKMmMkuJJucD4zmv
 JN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOj+x7W9iezA08x5Ezi
 XP/vTJ28hVAi32SBF2/i0iZ+FmayMfuWw3XZ8elPZy2J/yYKpRG79n8L6vc+dnNF6q39V94z
 cHEsVpq8c1Jsyo4H7/K5wwsOb1xzZ3P/nzuHyl7+vWaxMub27eSTQgvWme1bqnfcoedeS3SI
 9aMDdfnWdh3OUYn2tgvUlFiKMxINtZiLihMBUqF+Ua8CAAA=
X-CMS-MailID: 20200904133502eucas1p136e346bfdcd361d9e0320923f653d843
X-Msg-Generator: CA
X-RootMTR: 20200904133502eucas1p136e346bfdcd361d9e0320923f653d843
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133502eucas1p136e346bfdcd361d9e0320923f653d843
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133502eucas1p136e346bfdcd361d9e0320923f653d843@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 14/30] drm: panfrost: fix common struct
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
dS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMKaW5kZXggMzMzNTVkZDMwMmYxLi4xYTZjZWEw
ZTBiZDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9nZW0u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMKQEAgLTQxLDgg
KzQxLDggQEAgc3RhdGljIHZvaWQgcGFuZnJvc3RfZ2VtX2ZyZWVfb2JqZWN0KHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqKQogCiAJCWZvciAoaSA9IDA7IGkgPCBuX3NndDsgaSsrKSB7CiAJCQlp
ZiAoYm8tPnNndHNbaV0uc2dsKSB7Ci0JCQkJZG1hX3VubWFwX3NnKHBmZGV2LT5kZXYsIGJvLT5z
Z3RzW2ldLnNnbCwKLQkJCQkJICAgICBiby0+c2d0c1tpXS5uZW50cywgRE1BX0JJRElSRUNUSU9O
QUwpOworCQkJCWRtYV91bm1hcF9zZ3RhYmxlKHBmZGV2LT5kZXYsICZiby0+c2d0c1tpXSwKKwkJ
CQkJCSAgRE1BX0JJRElSRUNUSU9OQUwsIDApOwogCQkJCXNnX2ZyZWVfdGFibGUoJmJvLT5zZ3Rz
W2ldKTsKIAkJCX0KIAkJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3Bh
bmZyb3N0X21tdS5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X21tdS5jCmlu
ZGV4IGU4ZjdiMTEzNTJkMi4uNzc2NDQ4YzUyN2VhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
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

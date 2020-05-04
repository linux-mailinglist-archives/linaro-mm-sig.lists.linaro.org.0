Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C43E91C3ABF
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:01:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F034D66053
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:01:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E162D6607B; Mon,  4 May 2020 13:01:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 14CC5664F0;
	Mon,  4 May 2020 12:54:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 372E866054
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2401866075; Mon,  4 May 2020 12:54:24 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id C296566054
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:17 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125416euoutp01d972dfa55b85811e814727c01f82db30~L1Gy36HZV2849828498euoutp012
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125416euoutp01d972dfa55b85811e814727c01f82db30~L1Gy36HZV2849828498euoutp012
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125416eucas1p2f417af8300199cd00291584432cff973~L1GyhfFMd2227522275eucas1p2m;
 Mon,  4 May 2020 12:54:16 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id EB.D2.60679.87010BE5; Mon,  4
 May 2020 13:54:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125415eucas1p1eea125ce87eec4e7c2e2dcc75f965896~L1Gx8x-ai1176711767eucas1p1S;
 Mon,  4 May 2020 12:54:15 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125415eusmtrp1ab58d44cf2acebca7c2c1109419622b6~L1Gx8GCL92470624706eusmtrp1i;
 Mon,  4 May 2020 12:54:15 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-a4-5eb01078b33a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 87.06.07950.77010BE5; Mon,  4
 May 2020 13:54:15 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125415eusmtip2131813f4a891672552b948480ffbdf1e~L1GxNGVje0350403504eusmtip26;
 Mon,  4 May 2020 12:54:15 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:47 +0200
Message-Id: <20200504125359.5678-9-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeyyVYRzHPee9nJc5ehzKM7lsZ4vVFpE/3o1aNavX+qeWtWpL3niH5bbz
 Oi5tSoQcjnGUJDUrzfVECCHnOC4nMZXblOT6D5tuLkkuOb3ov+/3+3y++/7+eChMqiNsqZDw
 KE4ezobKSDO8rvP3u4OxsMrvUG6HI63q7RLRvX3pBP0ir5KgN+qyMXpg8RtJl5Z3iOhCrSe9
 MDAhoqunhgi6v7GApDXto2J6o7lBTLd+nyboW+2bbKamjzy2i6l4XAGYhtEiwLxeKsSZ6rI0
 kqlfGieYsXSDiKkpusmMrE9hTM5wMWCaPiaQTGZtGWDmqx3OmF8y8wrkQkOiObnrUX+z4D+1
 lpHNu2ILmsrxBLBurgSmFIIeqEQ5CJTAjJLCEoAG5ztFglkAaC2xBxPMPEAV469E2xXDz+It
 qhggnX4O26l0TqqAkSKhG1LOKUmjtobJAL1R/RvEoA5D4x27lUBMWcFzqM3XmOJwH0rpWhUb
 tQR6oay0EUzYckTlVbpNTVGm8Ah6oHI2LiH4SYx0Hxa3GG809Khl6zYrNGuoFQvaDnXnZOBC
 IQmgiV6NWDAZAPUn5gGB8kSfe1dI4wIG96PKRlchPo5Se7QiY4ygBRqesxSut0DquvuYEEvQ
 nRSpQDuhfMPzndnW931bCIOe3XMxxlLYBlBODZ8FHPP/TxUCUAZsOAUfFsTx7uFcjAvPhvGK
 8CCXgIiwarD5r7rXDQsNoHH1qh5ACsjMJRfmK/2kBBvNx4XpAaIwmbWk4fZmJAlk465z8ogr
 ckUox+vBXgqX2UgOP5m5LIVBbBR3jeMiOfn2q4gytU0AyVnqsvjc0FGP1BF/K9Zbkeh48cRT
 3L6pcd3V12kPUZdU4LPiaeFWZTJZcuPXSG7acn5rocPosnqhFjNxidGWVHQOmbyFPia5J1UT
 +FhkKd2e4a6YnrhrP3t6zrflfL3/w5k+3Zev2oDseD0R4fxSPcR6ZZ3ysNOc1f6QFUvWZDgf
 zLodwOQ8+xeC4Ld/UwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xe7rlAhviDFatsLDoPXeSyeLcpW5W
 i40z1rNa/N82kdniytf3bBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxdojd9kt/u/ZwW5x
 8MMTVovGI0C1fWsvsTnwe6yZt4bRY8fdJYwee78tYPHYtKqTzWP7twesHve7jzN5bF5S73H7
 32Nmj8k3ljN67L7ZwObRt2UVo8fnTXIBPFF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqG
 xuaxVkamSvp2NimpOZllqUX6dgl6Gb+3CBbs4a+Ys3s1SwPjP54uRk4OCQETieOfljN1MXJx
 CAksZZS4dP8aK0RCRuLktAYoW1jiz7UuNoiiT4wS13vusYEk2AQMJbreQiREBDoZJaZ1f2QH
 cZgFTjFL3Jh9DaxKWCBQou/VbmYQm0VAVaLt5B92EJtXwEZiQudtZogV8hKrNxwAsjk4OAVs
 JWb2qoOEhQTyJe4+/ccygZFvASPDKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMA42nbs55Yd
 jF3vgg8xCnAwKvHwbvi6Pk6INbGsuDL3EKMEB7OSCO+OFqAQb0piZVVqUX58UWlOavEhRlOg
 myYyS4km5wNjPK8k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA+P2
 iveW57ieMcw8fWVp9oGzgWJCmbadnKztN8Rrnbzm9U4+43cvyK7scvAr+ecsnJYm15q8nee/
 tNBb4fLE/ehGT97Td/Y+13t5ojR4yylhpYt/05/n/8rfcuu5Kqfsnk0B7pMapXLOrK558Ypj
 XYfsoY3PeF8aMfYy3ZwefHKOptJeuw/rIwyUWIozEg21mIuKEwGkmqhquQIAAA==
X-CMS-MailID: 20200504125415eucas1p1eea125ce87eec4e7c2e2dcc75f965896
X-Msg-Generator: CA
X-RootMTR: 20200504125415eucas1p1eea125ce87eec4e7c2e2dcc75f965896
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125415eucas1p1eea125ce87eec4e7c2e2dcc75f965896
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125415eucas1p1eea125ce87eec4e7c2e2dcc75f965896@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Steven Price <steven.price@arm.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 09/21] drm: panfrost: fix sg_table nents
 vs. orig_nents misuse
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9z
ZyByZXR1cm5zIHRoZQpudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRk
cmVzcyBzcGFjZS4gSG93ZXZlciB0aGUKc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19m
b3Jfe2RldmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQpjYWxsZWQgd2l0aCB0aGUg
b3JpZ2luYWwgbnVtYmVyIG9mIGVudHJpZXMgcGFzc2VkIHRvIGRtYV9tYXBfc2cuIFRoZQpzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCmluIGluY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaC4gQWRhcHQgdGhlIGNv
ZGUgdG8gb2JleSB0aG9zZSBydWxlcy4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2MiAwMC8yMV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzQvMzcz
Ci0tLQogZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2dlbS5jIHwgMyArKy0KIGRy
aXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9tbXUuYyB8IDQgKysrLQogMiBmaWxlcyBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL3Bh
bmZyb3N0L3BhbmZyb3N0X2dlbS5jCmluZGV4IDE3YjY1NGUuLjIyZmVjN2MgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9nZW0uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMKQEAgLTQyLDcgKzQyLDggQEAgc3RhdGljIHZv
aWQgcGFuZnJvc3RfZ2VtX2ZyZWVfb2JqZWN0KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQog
CQlmb3IgKGkgPSAwOyBpIDwgbl9zZ3Q7IGkrKykgewogCQkJaWYgKGJvLT5zZ3RzW2ldLnNnbCkg
ewogCQkJCWRtYV91bm1hcF9zZyhwZmRldi0+ZGV2LCBiby0+c2d0c1tpXS5zZ2wsCi0JCQkJCSAg
ICAgYm8tPnNndHNbaV0ubmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKKwkJCQkJICAgICBiby0+
c2d0c1tpXS5vcmlnX25lbnRzLAorCQkJCQkgICAgIERNQV9CSURJUkVDVElPTkFMKTsKIAkJCQlz
Z19mcmVlX3RhYmxlKCZiby0+c2d0c1tpXSk7CiAJCQl9CiAJCX0KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9tbXUuYyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5m
cm9zdC9wYW5mcm9zdF9tbXUuYwppbmRleCBlZDI4YWViLi4yZDliMWY5IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfbW11LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3BhbmZyb3N0L3BhbmZyb3N0X21tdS5jCkBAIC01MTcsNyArNTE3LDkgQEAgc3RhdGljIGlu
dCBwYW5mcm9zdF9tbXVfbWFwX2ZhdWx0X2FkZHIoc3RydWN0IHBhbmZyb3N0X2RldmljZSAqcGZk
ZXYsIGludCBhcywKIAlpZiAocmV0KQogCQlnb3RvIGVycl9wYWdlczsKIAotCWlmICghZG1hX21h
cF9zZyhwZmRldi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwp
KSB7CisJc2d0LT5uZW50cyA9IGRtYV9tYXBfc2cocGZkZXYtPmRldiwgc2d0LT5zZ2wsIHNndC0+
b3JpZ19uZW50cywKKwkJCQlETUFfQklESVJFQ1RJT05BTCk7CisJaWYgKCFzZ3QtPm5lbnRzKSB7
CiAJCXJldCA9IC1FSU5WQUw7CiAJCWdvdG8gZXJyX21hcDsKIAl9Ci0tIAoxLjkuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

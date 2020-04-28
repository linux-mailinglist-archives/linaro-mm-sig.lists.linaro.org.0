Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B341BBF9D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:33:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 457C561868
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:33:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3310B618E2; Tue, 28 Apr 2020 13:33:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E810961999;
	Tue, 28 Apr 2020 13:21:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8F5DF61992
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:21:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7CAD765FC6; Tue, 28 Apr 2020 13:21:17 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 33CD561992
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:32 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132031euoutp01773522ebf8cbbceca94a81d4681cfc14~J-l-fTGEd2026420264euoutp01U
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132031euoutp01773522ebf8cbbceca94a81d4681cfc14~J-l-fTGEd2026420264euoutp01U
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200428132030eucas1p224fbdd3caade0988350c87d1ca016518~J-l_y9juD1083610836eucas1p2U;
 Tue, 28 Apr 2020 13:20:30 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 8A.26.60698.E9D28AE5; Tue, 28
 Apr 2020 14:20:30 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132030eucas1p17d907110da4cf2a12651cc52ba7eaad6~J-l_fHV1H1366113661eucas1p1L;
 Tue, 28 Apr 2020 13:20:30 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132030eusmtrp288d07fd1170f0aba8e10710f7aa54e1c~J-l_ZIANV2140221402eusmtrp2T;
 Tue, 28 Apr 2020 13:20:30 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-92-5ea82d9e3419
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D3.E3.07950.E9D28AE5; Tue, 28
 Apr 2020 14:20:30 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132029eusmtip2104442e6c8a9533969366a3fd8245803~J-l9vnYr-1180811808eusmtip2D;
 Tue, 28 Apr 2020 13:20:29 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:20:01 +0200
Message-Id: <20200428132005.21424-14-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfSxVcRje75x7zzlurk6H5Te15G61pZBpOaZZVquTP6T5w2ZLXTnDfO5e
 H2k2H4m6aGjFboaJyPdXV0i5NyWqO0XyGa5boiztonUT3dNB/z3v8z7P+7x79xIo1Sm0IUIj
 Y1hZpDRcgokEqhe/tA5FDpUBh9WTEjpb24vQ5fUpON1YUC+kUzV9GL2uykXpweXvGP2g+jlC
 381pRuiSp+700uA0QjfNDAnpgfZCjK7tnsBp9aJeSPdNGPDj25maohrAdK6UCJjxoccY07oy
 JWQmM3sQprksiRlbm0GZW8MVgOkYScaYmy1VgDE07fHZ5i86FsSGh8axMiePi6KQtGIdGp1i
 fTn99TyeDKYoBTAjIHkEVuUOChSAICiyEsB7rgogMsElADWrOpQvDADOjSrxTUOn9jPCNypM
 hjo1vmWZStYBToWRzlCxoMA4bEVeA/BltjknQkkVCvUV3f9GWZJecNSYjXDZAnIfTH+byNFi
 0gPqh9YwPs0WVjd0oRw2M/Hluk8YNweSQzisM/xGeNFJuFa2hPLYEs73tGysuhuutxUjvOEq
 gNPaWpwvsgAcSC0AvModjmuNGLcFSh6A9e1OPO0JMzP4w0DSAg4v7OBo1ATzVPkoT4vh9fSN
 M+6Hyp66rVh1/7sNCQONBe4cTZG5AE72+uUAW+X/qBIAqoA1GyuPCGblLpFsvKNcGiGPjQx2
 vBQV0QRMT/VqrWf5EXiyGqgBJAEk5uIG88oASiiNkydEaAAkUImVWBdyP4ASB0kTrrCyqAuy
 2HBWrgG7CIHEWuxSOneeIoOlMWwYy0azss0uQpjZJAO3ubDSNLG/Icm15lSZRUdYceOsp33n
 3hD3s6JWpd85MDb9zc72x1EbKuB26of+LuWzNL30jObEnXqPfq8/ix0TvsLErINvzG58jd/5
 5bQx18HHTZxfY2FXNPIz/ZBv/owSEeJevQ9756ks6/7CvPfe3mMZ3WO1bXjqSOBH1exguUQg
 D5E626MyufQvDzl0TlADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7rzdFfEGdzdzWzRe+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQyWuY/Yi5oFK9oO/OKvYHxgVAXIyeHhICJxN5zz5i6GLk4hASW
 MkpsubSSDSIhI3FyWgMrhC0s8edaFxtE0SdGicnfrrCDJNgEDCW63kIkRAQ6GSWmdX9kB3GY
 BQ4wS3SfP8kEUiUs4CVx61cvkM3BwSKgKtF2sQYkzCtgJ/Hk2j+obfISqzccYAaxOYHiSx89
 ZQMpFxKwlbjckjuBkW8BI8MqRpHU0uLc9NxiI73ixNzi0rx0veT83E2MwOjZduznlh2MXe+C
 DzEKcDAq8fBu4FkRJ8SaWFZcmXuIUYKDWUmE91HGsjgh3pTEyqrUovz4otKc1OJDjKZAJ01k
 lhJNzgdGdl5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBkaO6ZlH
 inco9p2OnCP14rLRyXk/lO5P2rlTxcH/RD+3T8r9k+tDl9jI9xaINEX8C6xgOCjKcmYb67k/
 1j88fynEm6XzG3goGto/u/N0Q8yZx57v0r+3c1s8lU6RzH3ucVTA3U6Cd8KG/yLZ6e8f6ale
 8j0143hIR+z5zB27vhyYuvL7/c09EhVKLMUZiYZazEXFiQCShgIJtAIAAA==
X-CMS-MailID: 20200428132030eucas1p17d907110da4cf2a12651cc52ba7eaad6
X-Msg-Generator: CA
X-RootMTR: 20200428132030eucas1p17d907110da4cf2a12651cc52ba7eaad6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132030eucas1p17d907110da4cf2a12651cc52ba7eaad6
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132030eucas1p17d907110da4cf2a12651cc52ba7eaad6@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 13/17] drm: virtio: fix sg_table nents vs.
	orig_nents misuse
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdmlydGlvL3Zp
cnRncHVfb2JqZWN0LmMgfCAxMSArKysrKystLS0tLQogZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92
aXJ0Z3B1X3ZxLmMgICAgIHwgIDggKysrKy0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0
aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmly
dGlvL3ZpcnRncHVfb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfb2Jq
ZWN0LmMKaW5kZXggNmNjYmQwMS4uMTJmNmJlZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3ZpcnRpby92aXJ0Z3B1X29iamVjdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmly
dGdwdV9vYmplY3QuYwpAQCAtNzMsNyArNzMsOCBAQCB2b2lkIHZpcnRpb19ncHVfY2xlYW51cF9v
YmplY3Qoc3RydWN0IHZpcnRpb19ncHVfb2JqZWN0ICpibykKIAkJaWYgKHNobWVtLT5wYWdlcykg
ewogCQkJaWYgKHNobWVtLT5tYXBwZWQpIHsKIAkJCQlkbWFfdW5tYXBfc2codmdkZXYtPnZkZXYt
PmRldi5wYXJlbnQsCi0JCQkJCSAgICAgc2htZW0tPnBhZ2VzLT5zZ2wsIHNobWVtLT5tYXBwZWQs
CisJCQkJCSAgICAgc2htZW0tPnBhZ2VzLT5zZ2wsCisJCQkJCSAgICAgc2htZW0tPnBhZ2VzLT5v
cmlnX25lbnRzLAogCQkJCQkgICAgIERNQV9UT19ERVZJQ0UpOwogCQkJCXNobWVtLT5tYXBwZWQg
PSAwOwogCQkJfQpAQCAtMTU3LDEzICsxNTgsMTMgQEAgc3RhdGljIGludCB2aXJ0aW9fZ3B1X29i
amVjdF9zaG1lbV9pbml0KHN0cnVjdCB2aXJ0aW9fZ3B1X2RldmljZSAqdmdkZXYsCiAJfQogCiAJ
aWYgKHVzZV9kbWFfYXBpKSB7Ci0JCXNobWVtLT5tYXBwZWQgPSBkbWFfbWFwX3NnKHZnZGV2LT52
ZGV2LT5kZXYucGFyZW50LAorCQlzaG1lbS0+cGFnZXMtPm5lbnRzID0gZG1hX21hcF9zZyh2Z2Rl
di0+dmRldi0+ZGV2LnBhcmVudCwKIAkJCQkJICAgc2htZW0tPnBhZ2VzLT5zZ2wsCi0JCQkJCSAg
IHNobWVtLT5wYWdlcy0+bmVudHMsCisJCQkJCSAgIHNobWVtLT5wYWdlcy0+b3JpZ19uZW50cywK
IAkJCQkJICAgRE1BX1RPX0RFVklDRSk7Ci0JCSpuZW50cyA9IHNobWVtLT5tYXBwZWQ7CisJCSpu
ZW50cyA9IHNobWVtLT5tYXBwZWQgPSBzaG1lbS0+cGFnZXMtPm5lbnRzOwogCX0gZWxzZSB7Ci0J
CSpuZW50cyA9IHNobWVtLT5wYWdlcy0+bmVudHM7CisJCSpuZW50cyA9IHNobWVtLT5wYWdlcy0+
b3JpZ19uZW50czsKIAl9CiAKIAkqZW50cyA9IGttYWxsb2NfYXJyYXkoKm5lbnRzLCBzaXplb2Yo
c3RydWN0IHZpcnRpb19ncHVfbWVtX2VudHJ5KSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS92aXJ0aW8vdmlydGdwdV92cS5jIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X3Zx
LmMKaW5kZXggOWU2NjNhNS4uNjYxMzI1YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Zp
cnRpby92aXJ0Z3B1X3ZxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X3Zx
LmMKQEAgLTYwNCw4ICs2MDQsOCBAQCB2b2lkIHZpcnRpb19ncHVfY21kX3RyYW5zZmVyX3RvX2hv
c3RfMmQoc3RydWN0IHZpcnRpb19ncHVfZGV2aWNlICp2Z2RldiwKIAogCWlmICh1c2VfZG1hX2Fw
aSkKIAkJZG1hX3N5bmNfc2dfZm9yX2RldmljZSh2Z2Rldi0+dmRldi0+ZGV2LnBhcmVudCwKLQkJ
CQkgICAgICAgc2htZW0tPnBhZ2VzLT5zZ2wsIHNobWVtLT5wYWdlcy0+bmVudHMsCi0JCQkJICAg
ICAgIERNQV9UT19ERVZJQ0UpOworCQkJCSAgICAgICBzaG1lbS0+cGFnZXMtPnNnbCwKKwkJCQkg
ICAgICAgc2htZW0tPnBhZ2VzLT5vcmlnX25lbnRzLCBETUFfVE9fREVWSUNFKTsKIAogCWNtZF9w
ID0gdmlydGlvX2dwdV9hbGxvY19jbWQodmdkZXYsICZ2YnVmLCBzaXplb2YoKmNtZF9wKSk7CiAJ
bWVtc2V0KGNtZF9wLCAwLCBzaXplb2YoKmNtZF9wKSk7CkBAIC0xMDIwLDggKzEwMjAsOCBAQCB2
b2lkIHZpcnRpb19ncHVfY21kX3RyYW5zZmVyX3RvX2hvc3RfM2Qoc3RydWN0IHZpcnRpb19ncHVf
ZGV2aWNlICp2Z2RldiwKIAogCWlmICh1c2VfZG1hX2FwaSkKIAkJZG1hX3N5bmNfc2dfZm9yX2Rl
dmljZSh2Z2Rldi0+dmRldi0+ZGV2LnBhcmVudCwKLQkJCQkgICAgICAgc2htZW0tPnBhZ2VzLT5z
Z2wsIHNobWVtLT5wYWdlcy0+bmVudHMsCi0JCQkJICAgICAgIERNQV9UT19ERVZJQ0UpOworCQkJ
CSAgICAgICBzaG1lbS0+cGFnZXMtPnNnbCwKKwkJCQkgICAgICAgc2htZW0tPnBhZ2VzLT5vcmln
X25lbnRzLCBETUFfVE9fREVWSUNFKTsKIAogCWNtZF9wID0gdmlydGlvX2dwdV9hbGxvY19jbWQo
dmdkZXYsICZ2YnVmLCBzaXplb2YoKmNtZF9wKSk7CiAJbWVtc2V0KGNtZF9wLCAwLCBzaXplb2Yo
KmNtZF9wKSk7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK

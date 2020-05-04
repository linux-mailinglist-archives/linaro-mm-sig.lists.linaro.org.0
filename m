Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBFF1C3AE6
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:07:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9196766078
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:07:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 867E86607B; Mon,  4 May 2020 13:07:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C37866072;
	Mon,  4 May 2020 12:55:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D88B560B36
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:55:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C961966055; Mon,  4 May 2020 12:55:30 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 854EB66052
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:23 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125422euoutp01e5997ff20528cde12a548868d50e6487~L1G4QQBUQ2848128481euoutp01E
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125422euoutp01e5997ff20528cde12a548868d50e6487~L1G4QQBUQ2848128481euoutp01E
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125422eucas1p2149cb7a79319eaa936ed12e8793cbc57~L1G38QOlQ0599805998eucas1p2E;
 Mon,  4 May 2020 12:54:22 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 2B.12.60698.E7010BE5; Mon,  4
 May 2020 13:54:22 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125421eucas1p12d5bd93de51ec15b9287e2e3bd2e2ee5~L1G3XaE_01031810318eucas1p1S;
 Mon,  4 May 2020 12:54:21 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125421eusmtrp216a00ef14795ce4a4f976d14713b2fcb~L1G3Wwm592826928269eusmtrp2a;
 Mon,  4 May 2020 12:54:21 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-5e-5eb0107e57de
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 2E.69.08375.D7010BE5; Mon,  4
 May 2020 13:54:21 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125420eusmtip2440b7ec9272cefcb94b6bd200d1a54f5~L1G2mAM_U0241702417eusmtip2J;
 Mon,  4 May 2020 12:54:20 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:55 +0200
Message-Id: <20200504125359.5678-17-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeUgUURzHeTM7s6PtyrQaPiwUFjohzRScsKILmaigAyI6zDWH1XJVdtU8
 KBdN09WtLMH1wLay1ltbb8XyKDcTPBczc8kLPPDCC8pj23Gs/vt8v7/3e9/f7/EIVGTAHIiA
 oFBGHiQJFOPWvKrWXx0HH5Jl3oeGVmwpdUcbQr3XlGKUuSoVpYzLcziVX/gZobQfPamFvmRA
 JaXm8qkl4zBC6Uf7MKq3LhunUsoqMapychahij+Z+NQ7/RpCNc2PYSdIuiinCNANK1oenZWY
 gdH6giScrl4ZwuifyQaELs+NoX9sjKL0i34doOu/K3H6SUUBoBf1jhcF162P+jGBAeGM3OW4
 j7X/04J+fkibTYS6yoQqQY1ABawISLrDhMFkRAWsCRGZB2C3smtLLAHYWRuPcWIRwOyJDEuF
 2GzpKvFju0WkDsDp3EscWxryKoNZxklXqJpR4SzbkfEAflEL2HtQcg2Fs6MqjC3YkpfhePkI
 n2UeuRtqdA2bLCSPwUZjDuDGc4KFZY0om2tl8TPUezl7kg9LWqw4PgPnF0cQjm3hlKGCz/Eu
 aK59ubkMJOMAHO4o5nMiBcDeWM1WgCcc7PiNswEouR+W1rlw9kn4uDsTcPvawP6Z7ayNWvB5
 VTrK2UKYmCDiTu+BmYaSf7FNXT0oxzSsq+7ZesIWAIs6C3nPgFPm/zAtAAXAnglTyKSMwi2I
 ue+skMgUYUFS5zvBMj2wfK/2DcNyDfiw5tsMSAKIBcJri6XeIkwSroiUNQNIoGI7Yc0jiyX0
 k0RGMfLg2/KwQEbRDHYSPLG90O315C0RKZWEMvcYJoSR/60ihJWDEni0xGybMesdo7s6ByLO
 e5xavxoXoDZFv/L2CtEkZ+ncG30Cxq6UiHQP+kPfXoo7cnfG/oYpq301cfi0dv1NWv23OdVN
 wb5Is5dydVamHU01jEftyBcYTbr8KTMuNZK9PdkOGjx74KthfKH17Jiv9PCCz9j0uYp000Ra
 dGzd9AUxT+EvcT2AyhWSP1K+y29aAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNIsWRmVeSWpSXmKPExsVy+t/xe7q1AhviDDZP1rPoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HStm9Gic+ISdosvVx4yWWx6fI3V4vKuOWwWPRu2slps
 ffmOyWLtkbvsFss2/WGyOPjhCauDgMeaeWsYPfZ+W8DiMbtjJqvHplWdbB7bvz1g9bjffZzJ
 Y/OSeo/b/x4ze0y+sZzRY/fNBjaPvi2rGD0+b5IL4InSsynKLy1JVcjILy6xVYo2tDDSM7S0
 0DMysdQzNDaPtTIyVdK3s0lJzcksSy3St0vQy+hfdYO94CRfRe+2u8wNjDt4uhg5OCQETCQu
 rEvpYuTiEBJYyihx6Mluxi5GTqC4jMTJaQ2sELawxJ9rXWwQRZ8YJZZeWsUGkmATMJToeguR
 EBHoZJSY1v2RHcRhFmhhkejZ+JgFpEpYIEBi4Z43YKNYBFQlZizfyw5i8wrYShy4Mg9qnbzE
 6g0HmEFO4gSKz+xVBwkLCeRL3H36j2UCI98CRoZVjCKppcW56bnFhnrFibnFpXnpesn5uZsY
 gRG17djPzTsYL20MPsQowMGoxMMb8Xl9nBBrYllxZe4hRgkOZiUR3h0tQCHelMTKqtSi/Pii
 0pzU4kOMpkA3TWSWEk3OB0Z7Xkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKY
 PiYOTqkGxh6nJYmc270/5ht+PfVCPdqINzb89e8zoflHU/3fnTmY2nbZYJHGllebRK4VNqUf
 /HpKY8uaN/rqhWcNr0ybMCvJbH7RnU0HJsaUX+2u2bpryfNz7xyy97jbsF+OuasntHXjOtHD
 J33be7dO/TPxxcslThGbLWRt+/ZZnlU6LOm+TvrvtudsK+8osRRnJBpqMRcVJwIAi1FBsr4C
 AAA=
X-CMS-MailID: 20200504125421eucas1p12d5bd93de51ec15b9287e2e3bd2e2ee5
X-Msg-Generator: CA
X-RootMTR: 20200504125421eucas1p12d5bd93de51ec15b9287e2e3bd2e2ee5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125421eucas1p12d5bd93de51ec15b9287e2e3bd2e2ee5
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125421eucas1p12d5bd93de51ec15b9287e2e3bd2e2ee5@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 17/21] drm: rcar-du: fix sg_table nents
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
Ci0tLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92c3AxL3ZzcDFfZHJtLmMgfCA3ICsrKystLS0K
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92c3AxL3ZzcDFfZHJtLmMgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZzcDEvdnNwMV9kcm0uYwppbmRleCBhNGE0NWQ2Li5iNTRhMzBmIDEwMDY0
NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZzcDEvdnNwMV9kcm0uYworKysgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZzcDEvdnNwMV9kcm0uYwpAQCAtOTEyLDggKzkxMiw5IEBAIGlu
dCB2c3AxX2R1X21hcF9zZyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBzZ190YWJsZSAqc2d0
KQogCSAqIHNraXAgY2FjaGUgc3luYy4gVGhpcyB3aWxsIG5lZWQgdG8gYmUgcmV2aXNpdGVkIHdo
ZW4gc3VwcG9ydCBmb3IKIAkgKiBub24tY29oZXJlbnQgYnVmZmVycyB3aWxsIGJlIGFkZGVkIHRv
IHRoZSBEVSBkcml2ZXIuCiAJICovCi0JcmV0dXJuIGRtYV9tYXBfc2dfYXR0cnModnNwMS0+YnVz
X21hc3Rlciwgc2d0LT5zZ2wsIHNndC0+bmVudHMsCi0JCQkJRE1BX1RPX0RFVklDRSwgRE1BX0FU
VFJfU0tJUF9DUFVfU1lOQyk7CisJc2d0LT5uZW50cyA9IGRtYV9tYXBfc2dfYXR0cnModnNwMS0+
YnVzX21hc3Rlciwgc2d0LT5zZ2wsCisJCQlzZ3QtPm9yaWdfbmVudHMsIERNQV9UT19ERVZJQ0Us
IERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOworCXJldHVybiBzZ3QtPm5lbnRzOwogfQogRVhQT1JU
X1NZTUJPTF9HUEwodnNwMV9kdV9tYXBfc2cpOwogCkBAIC05MjEsNyArOTIyLDcgQEAgdm9pZCB2
c3AxX2R1X3VubWFwX3NnKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHNnX3RhYmxlICpzZ3Qp
CiB7CiAJc3RydWN0IHZzcDFfZGV2aWNlICp2c3AxID0gZGV2X2dldF9kcnZkYXRhKGRldik7CiAK
LQlkbWFfdW5tYXBfc2dfYXR0cnModnNwMS0+YnVzX21hc3Rlciwgc2d0LT5zZ2wsIHNndC0+bmVu
dHMsCisJZG1hX3VubWFwX3NnX2F0dHJzKHZzcDEtPmJ1c19tYXN0ZXIsIHNndC0+c2dsLCBzZ3Qt
Pm9yaWdfbmVudHMsCiAJCQkgICBETUFfVE9fREVWSUNFLCBETUFfQVRUUl9TS0lQX0NQVV9TWU5D
KTsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKHZzcDFfZHVfdW5tYXBfc2cpOwotLSAKMS45LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 782741BBF63
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:26:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 948CF618E2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:26:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 871DE61951; Tue, 28 Apr 2020 13:26:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59A4A619DA;
	Tue, 28 Apr 2020 13:21:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B7B22618B9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A531E619AC; Tue, 28 Apr 2020 13:20:34 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 093E5618B9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:28 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132027euoutp02a27659f0b061b351de4856fa04fc7d35~J-l7uZVXe2982129821euoutp02e
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200428132027euoutp02a27659f0b061b351de4856fa04fc7d35~J-l7uZVXe2982129821euoutp02e
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200428132026eucas1p2f2f45bfb1303f110538b6b66f77c57b3~J-l7V_wFI2655426554eucas1p2R;
 Tue, 28 Apr 2020 13:20:26 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 73.26.60698.A9D28AE5; Tue, 28
 Apr 2020 14:20:26 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132026eucas1p27c64540e53f328d0bb7bf9dae2ccb98d~J-l63durv2653926539eucas1p2J;
 Tue, 28 Apr 2020 13:20:26 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132026eusmtrp2f4c5602e7f1c5ef72b67566b37079a60~J-l62gzCT2140321403eusmtrp2H;
 Tue, 28 Apr 2020 13:20:26 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-81-5ea82d9a64cf
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id AD.D3.07950.A9D28AE5; Tue, 28
 Apr 2020 14:20:26 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132025eusmtip2ab342adf9621cf32c585fd4975e1a181~J-l6Rqy4I1062310623eusmtip2n;
 Tue, 28 Apr 2020 13:20:25 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:19:55 +0200
Message-Id: <20200428132005.21424-8-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfyyUcRzH932ee5577jiejvhOLds1rV/IyB4jKW09W6s1+qPVwuEZys87
 p4iIaU0UactkUgvnDqfzq6TihkcyXchYlJ9/sIk4tzHRnUf67/X+ft/vz/uz774EKm7HHIio
 2ERGFiuNluBCXlPX6hfnYmdl0LER1o3K6/uEUOWau3zqdZEGozJ1PTi12VSAUoMrCzhVpe5E
 qGf59QhV9tGbMgxOIJR2agijBlpKcKqmY4xPtS9OY1TP2DLfz5quLq0G9HtjGY8eHWrF6Wbj
 OEb/fMAidP2rdPr7xhRKFw5XAvrdSAZOP2xQAXpZu++ixRWhTzgTHZXEyFx9Q4SRyp41JD7b
 4la9thHNAKWCHCAgIOkBK8c1SA4QEmJSCaCyZJXHCQOA2m9KjBPLJtH9C/0XqVht23ZVAtj4
 qBfsRKZZNd/swkk3mDOfg5vZlswGsDvP0mxCySYUTld2bJlsSBq26lVbzCOd4GKPeisgIk9A
 1Z8f23WOUF3XtsUC0heWT87g5kGQHOLDZi0XgOQZWLTWj3FsA+fYBj7He+Hm2+cIF8gCcKKv
 hs+JXAAHMosA5/KGo31rpkmEab9DUNPiakZInoKtoxYcWsHh+V1mM2rCx01PUe5YBO/fE3Mz
 DsBitnantV3fv70+DdX5jdvPWABgyZwByweOxf+7ygBQAXtGIY+JYOTuscxNF7k0Rq6IjXAJ
 i4vRAtPH+rzBrrwBH9ZDdYAkgMRSVGepDBJj0iR5cowOQAKV2IomIyuCxKJwaXIKI4sLlimi
 GbkO7CF4EnuR+8vZa2IyQprI3GCYeEb27xYhBA4ZwCrZGhsSXh3fPbO/93dAiFfvkdsGo/40
 r9RdKRt/oVv6Kg0NWBjxXMrtQjrZkxp/f/Tc+dS5tdqCQL1T8B2fsn6XQMw2bCLNwzn9kp9A
 k2JXuDSScHDsuHfIE0u22kKyLggV1KapjJm9nlFqtkpw4bIo/uxRRdb11NmEOi8HOwlPHil1
 O4zK5NK/Om+dzVQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xe7qzdFfEGfRNFbHoPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFW
 RqZK+nY2Kak5mWWpRfp2CXoZK079Yipo5a7YvGkrcwPjPM4uRk4OCQETiWU/D7B0MXJxCAks
 ZZTYdvg6K0RCRuLktAYoW1jiz7UuNoiiT4wSa298YQNJsAkYSnS9hUiICHQySkzr/sgO4jAL
 HGCW6D5/kgmkSljAQ2LPhVXsIDaLgKrEh1Orwbp5BWwlVv29xwyxQl5i9YYDYDangJ3E0kdP
 gWo4gNbZSlxuyZ3AyLeAkWEVo0hqaXFuem6xkV5xYm5xaV66XnJ+7iZGYPxsO/Zzyw7GrnfB
 hxgFOBiVeHg38KyIE2JNLCuuzD3EKMHBrCTC+yhjWZwQb0piZVVqUX58UWlOavEhRlOgmyYy
 S4km5wNjO68k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA2N5uLan
 /L8psZZyXM/ljMzVr6h6lCX0xF//Z5UQf0R+kp7ulj2rPdd8mJtTUv+ALcg68nbXgaLo7Rui
 YgUtLNw+66xJ/n3tx76fYt5LD/Muf36Lx2ybwsG/Lu+vOc96WHY/SyL2hWjoM52+pzKeP/l+
 S8Z9m8Zx0TNZ68zaJU62v7+8CGu43KDEUpyRaKjFXFScCABYxucKtQIAAA==
X-CMS-MailID: 20200428132026eucas1p27c64540e53f328d0bb7bf9dae2ccb98d
X-Msg-Generator: CA
X-RootMTR: 20200428132026eucas1p27c64540e53f328d0bb7bf9dae2ccb98d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132026eucas1p27c64540e53f328d0bb7bf9dae2ccb98d
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132026eucas1p27c64540e53f328d0bb7bf9dae2ccb98d@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 07/17] drm: lima: fix sg_table nents vs.
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vbGltYS9saW1h
X2dlbS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMgYi9k
cml2ZXJzL2dwdS9kcm0vbGltYS9saW1hX2dlbS5jCmluZGV4IDU0MDRlMGQuLjNlZGQyZmYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2xpbWEvbGltYV9nZW0uYwpAQCAtNzAsNyArNzAsNyBAQCBpbnQgbGltYV9oZWFwX2Fs
bG9jKHN0cnVjdCBsaW1hX2JvICpibywgc3RydWN0IGxpbWFfdm0gKnZtKQogCiAJaWYgKGJvLT5i
YXNlLnNndCkgewogCQlkbWFfdW5tYXBfc2coZGV2LCBiby0+YmFzZS5zZ3QtPnNnbCwKLQkJCSAg
ICAgYm8tPmJhc2Uuc2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQkJICAgICBiby0+
YmFzZS5zZ3QtPm9yaWdfbmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKIAkJc2dfZnJlZV90YWJs
ZShiby0+YmFzZS5zZ3QpOwogCX0gZWxzZSB7CiAJCWJvLT5iYXNlLnNndCA9IGttYWxsb2Moc2l6
ZW9mKCpiby0+YmFzZS5zZ3QpLCBHRlBfS0VSTkVMKTsKQEAgLTgwLDcgKzgwLDcgQEAgaW50IGxp
bWFfaGVhcF9hbGxvYyhzdHJ1Y3QgbGltYV9ibyAqYm8sIHN0cnVjdCBsaW1hX3ZtICp2bSkKIAkJ
fQogCX0KIAotCWRtYV9tYXBfc2coZGV2LCBzZ3Quc2dsLCBzZ3QubmVudHMsIERNQV9CSURJUkVD
VElPTkFMKTsKKwlzZ3QubmVudHMgPSBkbWFfbWFwX3NnKGRldiwgc2d0LnNnbCwgc2d0Lm9yaWdf
bmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKIAogCSpiby0+YmFzZS5zZ3QgPSBzZ3Q7CiAKLS0g
CjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

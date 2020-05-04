Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9FC1C3AA1
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 14:58:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 773DE66169
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 12:58:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6760C6618A; Mon,  4 May 2020 12:58:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB8CD66227;
	Mon,  4 May 2020 12:54:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CD2B9619C1
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C004966053; Mon,  4 May 2020 12:54:18 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 6E9A161992
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:14 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125413euoutp01a01bcb933cb51062bc234068f7c4d8ef~L1GvyoZQL2860028600euoutp01l
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125413euoutp01a01bcb933cb51062bc234068f7c4d8ef~L1GvyoZQL2860028600euoutp01l
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125413eucas1p11b0cdd5b164cbf7e597e45342524d381~L1GvVlScQ1058810588eucas1p1e;
 Mon,  4 May 2020 12:54:13 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 94.12.60698.57010BE5; Mon,  4
 May 2020 13:54:13 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125412eucas1p1aa394ac0f9a88fb7be0ec2359690c416~L1GvCb15M0158001580eucas1p11;
 Mon,  4 May 2020 12:54:12 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125412eusmtrp286075c03202d614fe5cfc81f1c54ad84~L1GvBz7t02826928269eusmtrp2K;
 Mon,  4 May 2020 12:54:12 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-46-5eb010758d16
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 16.69.08375.47010BE5; Mon,  4
 May 2020 13:54:12 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125412eusmtip21f459a327d510b0e4be0352ca3d3e581~L1GuW_5YK0241702417eusmtip2I;
 Mon,  4 May 2020 12:54:12 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:43 +0200
Message-Id: <20200504125359.5678-5-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGec85OzsuF8cp+KqhNahRkheUOqBFRR9OBGEEEYnmKQ9qbSqb
 s+yLIy/UampmtSxqWDhvazptmprpTJcaal7K+wXzg4qoeEktNedR+/b8f//neZ+Xl5dARSae
 KxEVHcfKoxmpGBdg5saV1qNKsjjUJyWfoDStTQhVojXyqA3zY5TqWpzBqfzCBoTKHM7AKN3n
 AGqhaxShTGM/eFRn5Suc0rbVIJThyyCfqpv9xTslpIteFwH605IOo8uXRnj08EMrQpe+S6T7
 18dQ+kmPHtBVvSqcTisrAPS8yT1IcFUQGM5Ko+JZuffJMEHkUNYDPHZFeCd9uBpTgbk9amBH
 QNIf9javATUQECIyD8CSb/N8blgAMG1Eg3DDPID1ZXp8J9JinNmO6AHMbfuD70ZW14q3XDjp
 C9XT6i3tRKYA+FVjbzOh5BACZ/KeYraFI3kRZld182waIw9CXY9liwvJQFg+N4hxdR6wsLgW
 VQOCsCNPwBcaie0cSFr40PQheftKZ2HL2xU+px3hpLVsW++DGx/fIFwgCcDRVgOfGx4B2HlP
 CzhXABxoXcVtDSh5GBorvTl8GhoqK4ANQ3Iv7Jl2sGF0U2aan6McFsL7qSLOfQhmW9/v1ta1
 d6CcpmF3aS7GPVA9gMt6I8gAHtn/y3QAFABnVqmQRbAKv2j2tpeCkSmU0RFeN2JkJrD5k1rW
 rYsVoObvdQsgCSC2F16ZN4aKeEy8IkFmAZBAxU7CiuRNJAxnEu6y8phrcqWUVViAG4GJnYV+
 ORMhIjKCiWNvsWwsK9/ZIoSdqwoMiKamR9ekvb8v7w8OkWpdyGOG3HOz6qCwWQe/qTDY14RW
 JCknsnQH0puO1yhHJt2GJ/KqBhLjGYnZyyW4v7FGby4436CbWbk5Vl7ZoZTY97WPqzTPFvOS
 /CXLOW0ilc/3AsPPvqQw/ZmUcUlRNVs7dYmxf+l5wR1rTtV6isWYIpLxPYLKFcw/Fz+9S0UD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xe7olAhviDM7MM7DoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwm3Z/AYrFgv7XFlysPmSw2Pb7GanF51xw2ixnn9zFZrD1yl93i
 4IcnrA68HmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkArii9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DLuTelkK/jJW9F/fw9LA+NH7i5GTg4JAROJ0+vfM3YxcnEICSxllDiy4RorREJG4uS0Bihb
 WOLPtS42iKJPjBL7P94DS7AJGEp0vYVIiAh0MkpM6/7IDuIwCzxjkvhz8xwTSJWwgL/EvhPv
 WEBsFgFViQU3DoHZvAI2Ets/3mWBWCEvsXrDAeYuRg4OTgFbiZm96iBhIYF8ibtP/7FMYORb
 wMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzBCth37uXkH46WNwYcYBTgYlXh4Iz6vjxNi
 TSwrrsw9xCjBwawkwrujBSjEm5JYWZValB9fVJqTWnyI0RToponMUqLJ+cDozSuJNzQ1NLew
 NDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwKj1bDrby6D5tgeWPKp7fbQvtDDl
 5JIf8gpphpZnFbpiXGVT2paZLs/QDrqfGbDOc7HSupd/zyT9KD1lasB2jnnjuUuh4pHrDnzZ
 4pYvFBQVI3DraF+LV2Zn5IOnhZZcl59+4FlrLyT2fe2VPr245Q/L49mf39538spi8eRN5dtD
 g2LfrnqmsE2JpTgj0VCLuag4EQCEwSCWpgIAAA==
X-CMS-MailID: 20200504125412eucas1p1aa394ac0f9a88fb7be0ec2359690c416
X-Msg-Generator: CA
X-RootMTR: 20200504125412eucas1p1aa394ac0f9a88fb7be0ec2359690c416
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125412eucas1p1aa394ac0f9a88fb7be0ec2359690c416
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125412eucas1p1aa394ac0f9a88fb7be0ec2359690c416@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Inki Dae <inki.dae@samsung.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 05/21] drm: exynos: fix sg_table nents
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
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jIHwgNyArKysrLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nMmQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nMmQuYwppbmRleCBmY2VlMzNhLi5mOTk1YjBjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZzJkLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5jCkBAIC0zOTYsNyArMzk2LDcg
QEAgc3RhdGljIHZvaWQgZzJkX3VzZXJwdHJfcHV0X2RtYV9hZGRyKHN0cnVjdCBnMmRfZGF0YSAq
ZzJkLAogCiBvdXQ6CiAJZG1hX3VubWFwX3NnKHRvX2RtYV9kZXYoZzJkLT5kcm1fZGV2KSwgZzJk
X3VzZXJwdHItPnNndC0+c2dsLAotCQkJZzJkX3VzZXJwdHItPnNndC0+bmVudHMsIERNQV9CSURJ
UkVDVElPTkFMKTsKKwkJICAgICBnMmRfdXNlcnB0ci0+c2d0LT5vcmlnX25lbnRzLCBETUFfQklE
SVJFQ1RJT05BTCk7CiAKIAlwYWdlcyA9IGZyYW1lX3ZlY3Rvcl9wYWdlcyhnMmRfdXNlcnB0ci0+
dmVjKTsKIAlpZiAoIUlTX0VSUihwYWdlcykpIHsKQEAgLTUxMSw4ICs1MTEsOSBAQCBzdGF0aWMg
ZG1hX2FkZHJfdCAqZzJkX3VzZXJwdHJfZ2V0X2RtYV9hZGRyKHN0cnVjdCBnMmRfZGF0YSAqZzJk
LAogCiAJZzJkX3VzZXJwdHItPnNndCA9IHNndDsKIAotCWlmICghZG1hX21hcF9zZyh0b19kbWFf
ZGV2KGcyZC0+ZHJtX2RldiksIHNndC0+c2dsLCBzZ3QtPm5lbnRzLAotCQkJCURNQV9CSURJUkVD
VElPTkFMKSkgeworCXNndC0+bmVudHMgPSBkbWFfbWFwX3NnKHRvX2RtYV9kZXYoZzJkLT5kcm1f
ZGV2KSwgc2d0LT5zZ2wsCisJCQkJc2d0LT5vcmlnX25lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7
CisJaWYgKCFzZ3QtPm5lbnRzKSB7CiAJCURSTV9ERVZfRVJST1IoZzJkLT5kZXYsICJmYWlsZWQg
dG8gbWFwIHNndCB3aXRoIGRtYSByZWdpb24uXG4iKTsKIAkJcmV0ID0gLUVOT01FTTsKIAkJZ290
byBlcnJfc2dfZnJlZV90YWJsZTsKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

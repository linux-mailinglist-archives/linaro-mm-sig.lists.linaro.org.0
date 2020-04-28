Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 988B41BBF9F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:34:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C34E860BE0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:34:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B306A61868; Tue, 28 Apr 2020 13:34:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56FF966033;
	Tue, 28 Apr 2020 13:21:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B8BBB6181D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:21:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A5B4B6603A; Tue, 28 Apr 2020 13:21:37 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 7BBFA6181D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:32 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132031euoutp012110867c1f99941fd442ac474b8950f7~J-l-t6dej2044520445euoutp01C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132031euoutp012110867c1f99941fd442ac474b8950f7~J-l-t6dej2044520445euoutp01C
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200428132031eucas1p29a10eed363459cec631cd98e7f56068c~J-l-Wz4G62652226522eucas1p2c;
 Tue, 28 Apr 2020 13:20:31 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id CB.26.60698.F9D28AE5; Tue, 28
 Apr 2020 14:20:31 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132030eucas1p11f977e77050b5e76f580255096bb94bf~J-l_9nKFI3064530645eucas1p1S;
 Tue, 28 Apr 2020 13:20:30 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132030eusmtrp205b9e9f7926a35ab08ede9d26e607918~J-l_86C0q2140321403eusmtrp2T;
 Tue, 28 Apr 2020 13:20:30 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-95-5ea82d9fb39b
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F4.E3.07950.E9D28AE5; Tue, 28
 Apr 2020 14:20:30 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132030eusmtip244c7de477ac54b89db02bc19fa86ba12~J-l_TmtOo0625706257eusmtip2N;
 Tue, 28 Apr 2020 13:20:30 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:20:02 +0200
Message-Id: <20200428132005.21424-15-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTYRzlu3e797q2uk3LD5OERYLi24ILihUY3YpAoT/Cylp50ZWbuusj
 g0gNLacrrTA1S418z1zTzDTzgXOpMHxliorpNGqgWT4ik5nzqv13zvmd8/0OPz4CFbfyHQiZ
 IpZRKqSREkzAq+/8Y3QvdC8P9eorxii1sQuhSmqScep1bg2fSmnvxqi1+myUGlz6gVEVVXqE
 eppVi1BFLX7U4uAkQulMQ3xqoLEAo6o7xnGqbX6aT3WPL+BHd9Ga5xpANy8X8eixofcY/Xb5
 C5+eyDAgdO3L2/SoxYTSj4bLAN00koTR9+sqAb2g2x+0I0TgH8ZEyuIZpWfAZUHEnLkUiTYL
 b2TM/0KSgEmgAjYEJA/Bnz2PURUQEGKyHED1zCrGkUUAC6YzAEcWANRox/lbEZWGw2KyDMDf
 +nPbicVPeah1gJHeUDWrwqzYjkwF8KNaaDWhZD0Kp8s6cOvAljwF9SYNogIEwSMPwvI+N6ss
 IgNgg2Fkc5kTrNK2brxps66XTM1s1INkPw5T88woZwqEuuHOTWwLzYY6nMOOcO1dIcIF7gA4
 aazGOZIJ4EBKLuBcfnDMuIJZW6CkC6xp9OTkY1BnzAJWGZI74fDsbquMrsOH9U9QThbBe2li
 zu0M8w2vtte29fZv1qHhm689OHeg7PUK5gp+FnDK/7+sCIBKYM/EsfJwhvVVMAkerFTOxinC
 Pa5GyXVg/V/1WAxLDeDD6pV2QBJAIhRpheWhYr40nk2UtwNIoBI70VREaahYFCZNvMkooy4p
 4yIZth3sI3gSe5Hvi+8XxWS4NJa5zjDRjHJrihA2DkmgcaS3eY8weXTFN7zxtFzg0XRAev6b
 o9NJLLBYqe/Hs5/ZpE2ZoiVume4xzN1gSFhuWWS7gh1iAtgMfxdPWc6ZBK8Q4oF2Gb1w1jIx
 4j7WkL4s8alU/52UdclPuO5dm7tmWPHyDJIXHTYoPgc7t0D1LJruM3/8iCK9QMbkzEt4bITU
 2xVVstJ/s/BH/lMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7rzdFfEGaxv07DoPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFW
 RqZK+nY2Kak5mWWpRfp2CXoZ714tYyp4xVPR/eETUwPjY64uRk4OCQETia41d1m7GLk4hASW
 Mkp0f3zIBJGQkTg5rYEVwhaW+HOtiw2i6BOjxI2lU9hBEmwChhJdbyESIgKdjBLTuj+ygzjM
 AgeYJbrPnwQbJSzgJXH08Rogm4ODRUBVYsVFHZAwr4CdxI7jN6E2yEus3nCAGcTmBIovffSU
 DaRcSMBW4nJL7gRGvgWMDKsYRVJLi3PTc4uN9IoTc4tL89L1kvNzNzECo2fbsZ9bdjB2vQs+
 xCjAwajEw7uBZ0WcEGtiWXFl7iFGCQ5mJRHeRxnL4oR4UxIrq1KL8uOLSnNSiw8xmgKdNJFZ
 SjQ5HxjZeSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGFv6+bob
 t39aInnkTqat/2HHWTe/T1dSvzTvtxz7MsXL2TyZBgdN2f5LC9l5rXvCwzTBMftJn++fiPp9
 5TP0T+8WbFps/0q1se5QY6/J6kqLvBon5frSDeKpuYzR3AfdJqyW2Jn35W2CTMym949NE1o+
 /bl9/uYjJXvv84e4T0p5PTeVe75MVImlOCPRUIu5qDgRAEn1m1S0AgAA
X-CMS-MailID: 20200428132030eucas1p11f977e77050b5e76f580255096bb94bf
X-Msg-Generator: CA
X-RootMTR: 20200428132030eucas1p11f977e77050b5e76f580255096bb94bf
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132030eucas1p11f977e77050b5e76f580255096bb94bf
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132030eucas1p11f977e77050b5e76f580255096bb94bf@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 14/17] drm: vmwgfx: fix sg_table nents vs.
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Zt
d2dmeF90dG1fYnVmZmVyLmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4
L3Ztd2dmeF90dG1fYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF90dG1f
YnVmZmVyLmMKaW5kZXggYmYwYmM0Ni4uYTVmZDEyOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3Ztd2dmeC92bXdnZnhfdHRtX2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92bXdn
Zngvdm13Z2Z4X3R0bV9idWZmZXIuYwpAQCAtMzYyLDcgKzM2Miw3IEBAIHN0YXRpYyB2b2lkIHZt
d190dG1fdW5tYXBfZnJvbV9kbWEoc3RydWN0IHZtd190dG1fdHQgKnZtd190dCkKIHsKIAlzdHJ1
Y3QgZGV2aWNlICpkZXYgPSB2bXdfdHQtPmRldl9wcml2LT5kZXYtPmRldjsKIAotCWRtYV91bm1h
cF9zZyhkZXYsIHZtd190dC0+c2d0LnNnbCwgdm13X3R0LT5zZ3QubmVudHMsCisJZG1hX3VubWFw
X3NnKGRldiwgdm13X3R0LT5zZ3Quc2dsLCB2bXdfdHQtPnNndC5vcmlnX25lbnRzLAogCQlETUFf
QklESVJFQ1RJT05BTCk7CiAJdm13X3R0LT5zZ3QubmVudHMgPSB2bXdfdHQtPnNndC5vcmlnX25l
bnRzOwogfQpAQCAtNDQ5LDEwICs0NDksMTAgQEAgc3RhdGljIGludCB2bXdfdHRtX21hcF9kbWEo
c3RydWN0IHZtd190dG1fdHQgKnZtd190dCkKIAkJaWYgKHVubGlrZWx5KHJldCAhPSAwKSkKIAkJ
CWdvdG8gb3V0X3NnX2FsbG9jX2ZhaWw7CiAKLQkJaWYgKHZzZ3QtPm51bV9wYWdlcyA+IHZtd190
dC0+c2d0Lm5lbnRzKSB7CisJCWlmICh2c2d0LT5udW1fcGFnZXMgPiB2bXdfdHQtPnNndC5vcmln
X25lbnRzKSB7CiAJCQl1aW50NjRfdCBvdmVyX2FsbG9jID0KIAkJCQlzZ2xfc2l6ZSAqICh2c2d0
LT5udW1fcGFnZXMgLQotCQkJCQkgICAgdm13X3R0LT5zZ3QubmVudHMpOworCQkJCQkgICAgdm13
X3R0LT5zZ3Qub3JpZ19uZW50cyk7CiAKIAkJCXR0bV9tZW1fZ2xvYmFsX2ZyZWUoZ2xvYiwgb3Zl
cl9hbGxvYyk7CiAJCQl2bXdfdHQtPnNnX2FsbG9jX3NpemUgLT0gb3Zlcl9hbGxvYzsKLS0gCjEu
OS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

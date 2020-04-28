Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E141D1BBFA5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:34:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1440B6174E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:34:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 068CD61868; Tue, 28 Apr 2020 13:34:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1A6F66048;
	Tue, 28 Apr 2020 13:21:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CA98F61868
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:21:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BA40A6603A; Tue, 28 Apr 2020 13:21:40 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id E29F461994
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:32 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132032euoutp02d75b5f133dc4db2f183c5324925ec011~J-mAOwR7e2883528835euoutp02f
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200428132032euoutp02d75b5f133dc4db2f183c5324925ec011~J-mAOwR7e2883528835euoutp02f
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200428132031eucas1p252d16f0ce0fc7b2ccd0f94ab72572f19~J-l-3cww22652726527eucas1p2T;
 Tue, 28 Apr 2020 13:20:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 6C.B4.61286.F9D28AE5; Tue, 28
 Apr 2020 14:20:31 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132031eucas1p1e7a72bf0de5acea2af652cd8337a8ed5~J-l-h1s-X1362813628eucas1p1K;
 Tue, 28 Apr 2020 13:20:31 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132031eusmtrp2001aeb1bc176d4e71c0f9e654e73d2f0~J-l-hLeD92140221402eusmtrp2Y;
 Tue, 28 Apr 2020 13:20:31 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-88-5ea82d9f47d0
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 74.A6.08375.F9D28AE5; Tue, 28
 Apr 2020 14:20:31 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132030eusmtip202c8077137c7fc513878860328148b0a~J-l_3m_tD1180811808eusmtip2E;
 Tue, 28 Apr 2020 13:20:30 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:20:03 +0200
Message-Id: <20200428132005.21424-16-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSaUwTQRzFM7vtdqktroWECRDRGiASuaIkk2A4IsY1xsgX/WAUrLIBhBZs
 KYqJAeqFBeT0iFyNitw3FgQMh2AFIhpADgWRQwIEULlUEkCWBfz2/m/ey+8/kyFxST3fnAxU
 hDFKhSxYSgh5+rd/P9hn2ef6OPVn2qH4jlYMZZdEC1DZ4xI+0jS1EWhNn4Sj7sUfBMoraMFQ
 WmIFhnT1rmihexhD5aM9fNRVk06gouZBAWr8OcZHbYPzAo+ddGFmIaBfL+l49EBPHUFXLX3j
 00OxBoyueB5Jf1kdxemUvhxA1/ZHEfT9ynxAz5fv9t5xVnjYjwkODGeUjm4XhAGGhHsgNI28
 Nv7SPgosElpgRELqENTqNbgWCEkJlQtg6vAE4IYFANs7FjA2JaHmASy8K91qrDz6hHGhHAAf
 5n8mthsPJqoAmyIoZ6id0W4wTKnbAL6LF7EhnNLjcCynWaAFJGlCHYNz09ZshkdZw55K1jYi
 xZQbnH32C3A0K1hQ2oCz2mjdzx75vgGDVKcAVkx83byEFxyq+SPgtAmcMlRuaku49ioL4wo3
 ARzuKBJwQxyAXZrHmwhXONCxTLAb4dR+WFLjyNmesK4hF2dtSBnDvpldrI2vy2T9o01bDGPu
 SLi0DXxiKN7GNn7sxDlNw6yUHj73QEkAtsX0E4nA6sl/mA6AfGDGqFVyf0blrGCuOqhkcpVa
 4e9wKUReDta/VfuqYa4aLHZebAIUCaQicako10fCl4WrIuRNAJK41FQ8EvDCRyL2k0VcZ5Qh
 vkp1MKNqAhYkT2omPvh08ryE8peFMUEME8oot04x0sg8Cpzhtdo7eaVqimJFxdNxJ9J/tziV
 2YAMMi3Pwta/68iSZYQ6UusZJkz3Q0g+F+0bc17z5vKyotGlROK+WLt3NlkYu6+YMNYd9xm8
 Ye3av+dUoUXQZIhNu4uHVe/KyQwzpfpAqJ1373uR4EW2+5T5UdME3bl91bdqTicH2F4ZP+ks
 5akCZM52uFIl+wfy1I6pUgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xe7rzdVfEGbS8FbLoPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFW
 RqZK+nY2Kak5mWWpRfp2CXoZx/s7GQtmc1Q826rbwPiVrYuRk0NCwETi7/SrTF2MXBxCAksZ
 JQ4s2M4EkZCRODmtgRXCFpb4c62LDaLoE6PExBWLwbrZBAwlut5CJEQEOhklpnV/ZAdxmAUO
 MEt0nz8JNIqDQ1jAXeLTG1WQBhYBVYlrW46wg9i8AnYS7xZ/ZITYIC+xesMBZhCbEyi+9NFT
 NpBWIQFbicstuRMY+RYwMqxiFEktLc5Nzy021CtOzC0uzUvXS87P3cQIjJ1tx35u3sF4aWPw
 IUYBDkYlHt4NPCvihFgTy4orcw8xSnAwK4nwPspYFifEm5JYWZValB9fVJqTWnyI0RToponM
 UqLJ+cC4ziuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwKhR+57j
 csKto0w5yndivDgWVBru4nzg02oV+e3A2cS/gVWPpx+98b/P3Prjvtw+ebvAHHPFh78S9oqe
 vj7TY4/2WZfvrz1PVJ0/VXWd+/Dr7FY2F0ezi6e2q+Sx/zx9r53BlN3by+Uwh7Dy7embYwOU
 b5bp9Euf7peQPXRlk2P3M5lOl4ASUSWW4oxEQy3mouJEAEbx8fSzAgAA
X-CMS-MailID: 20200428132031eucas1p1e7a72bf0de5acea2af652cd8337a8ed5
X-Msg-Generator: CA
X-RootMTR: 20200428132031eucas1p1e7a72bf0de5acea2af652cd8337a8ed5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132031eucas1p1e7a72bf0de5acea2af652cd8337a8ed5
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132031eucas1p1e7a72bf0de5acea2af652cd8337a8ed5@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 15/17] drm: xen: fix sg_table nents vs.
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0veGVuL3hlbl9k
cm1fZnJvbnRfZ2VtLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGVuL3hlbl9kcm1fZnJv
bnRfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0veGVuL3hlbl9kcm1fZnJvbnRfZ2VtLmMKaW5kZXgg
ZjBiODVlMC4uYmE0YmRjNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlbi94ZW5fZHJt
X2Zyb250X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZW4veGVuX2RybV9mcm9udF9nZW0u
YwpAQCAtMjE1LDcgKzIxNSw3IEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqCiAJCXJldHVybiBF
UlJfUFRSKHJldCk7CiAKIAlEUk1fREVCVUcoIkltcG9ydGVkIGJ1ZmZlciBvZiBzaXplICV6dSB3
aXRoIG5lbnRzICV1XG4iLAotCQkgIHNpemUsIHNndC0+bmVudHMpOworCQkgIHNpemUsIHNndC0+
b3JpZ19uZW50cyk7CiAKIAlyZXR1cm4gJnhlbl9vYmotPmJhc2U7CiB9Ci0tIAoxLjkuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

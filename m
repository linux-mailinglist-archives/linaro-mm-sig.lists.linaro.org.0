Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D59061BBF39
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:24:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B963617C9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:24:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EFD6E6198D; Tue, 28 Apr 2020 13:24:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13D30619CE;
	Tue, 28 Apr 2020 13:20:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1EEB361868
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0E539617C9; Tue, 28 Apr 2020 13:20:31 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 660AE617C9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:27 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132026euoutp0268c8cd1e87463c97a0996b61ac22df8a~J-l7H19762883528835euoutp02Q
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200428132026euoutp0268c8cd1e87463c97a0996b61ac22df8a~J-l7H19762883528835euoutp02Q
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200428132025eucas1p12ba6985126a68a90e062c5bae34067c3~J-l6Odzch1367713677eucas1p1R;
 Tue, 28 Apr 2020 13:20:25 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id A5.B4.61286.99D28AE5; Tue, 28
 Apr 2020 14:20:25 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132025eucas1p15cf78bdedef6eebc477c7e8429a6f971~J-l5sOP1g3052430524eucas1p1R;
 Tue, 28 Apr 2020 13:20:25 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200428132025eusmtrp16811b52fea5ba357114dc7da2cdd64d0~J-l5rYnUg1743317433eusmtrp1w;
 Tue, 28 Apr 2020 13:20:25 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-6e-5ea82d9927fb
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 5B.96.08375.99D28AE5; Tue, 28
 Apr 2020 14:20:25 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132024eusmtip2571a9aa820afc51fde9f2a6ce911c63e~J-l5H3l9V1062310623eusmtip2l;
 Tue, 28 Apr 2020 13:20:24 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:19:53 +0200
Message-Id: <20200428132005.21424-6-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrIKsWRmVeSWpSXmKPExsWy7djP87ozdVfEGWyfrGHRe+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o7hsUlJzMstSi/TtErgyLm+bw1TwhKdiXddD9gbGj1xd
 jJwcEgImEo8nzWPuYuTiEBJYwSjRdGwnlPOFUaKvZSIThPOZUWJ+axcbTMv5hkZ2iMRyRokj
 83YgtJxcNBusik3AUKLrLUSHiEAro8SJXh6QImaBbcwST5YfYQdJCAt4SVztWgZmswioSuxc
 sRTI5uDgFbCV2HRUH2KbvMTqDQeYQWxOATuJpY+esoHMkRC4xi5x4eIuFogiF4k/a/ZDnScs
 8er4FnYIW0bi9OQeFoiGZkaJh+fWskM4PYwSl5tmMEJUWUvcOfeLDWQzs4CmxPpdUJsdJU42
 94EdJCHAJ3HjrSBImBnInLRtOjNEmFeio00IolpNYtbxdXBrD164xAxhe0gsXPyVERJAExkl
 ds/fyjyBUX4WwrIFjIyrGMVTS4tz01OLDfNSy/WKE3OLS/PS9ZLzczcxAhPW6X/HP+1g/Hop
 6RCjAAejEg/vBp4VcUKsiWXFlbmHGCU4mJVEeB9lLIsT4k1JrKxKLcqPLyrNSS0+xCjNwaIk
 zmu86GWskEB6YklqdmpqQWoRTJaJg1OqgdHIx1w+zHBW+UZWB760Swpf5LYptyxrf6Ju891F
 3vWthwC744qp0jfsWOKLq6J5ThbH2ffulXtxv1xe62/hlHTOrU8+nC1z/DzDTPxS4veu637p
 +g/XMgoaGCv5cBxbwG3y9br+7AIj3erC+IMLOc33yoq9Uw9KPHvv6bqGeH67xZ9eLr3DpMRS
 nJFoqMVcVJwIAJzKOCZUAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7ozdVfEGXRtYLXoPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFW
 RqZK+nY2Kak5mWWpRfp2CXoZl7fNYSp4wlOxrushewPjR64uRk4OCQETifMNjexdjFwcQgJL
 GSUOrvjLBpGQkTg5rYEVwhaW+HOtiw2i6BOjxJV50xhBEmwChhJdbyESIgKdjBLTuj+CjWIW
 OMAs0X3+JBNIlbCAl8TVrmXsIDaLgKrEzhVLgWwODl4BW4lNR/UhNshLrN5wgBnE5hSwk1j6
 6CkbSIkQUMnlltwJjHwLGBlWMYqklhbnpucWG+oVJ+YWl+al6yXn525iBEbPtmM/N+9gvLQx
 +BCjAAejEg/vBp4VcUKsiWXFlbmHGCU4mJVEeB9lLIsT4k1JrKxKLcqPLyrNSS0+xGgKdNJE
 ZinR5HxgZOeVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamCcwzgn
 8cTeVwdumHRneBio2leurSzYvM7xyc9lrwwfrBf3M/f59Xfur+6aVM+7ootf3cw8u/3Y2zdP
 jB4fa2ZrYv5omBR8xO3ZiS1tK6XuFro1sxp+vfLNfBJbIcfc8zOPisU9e+veOEeP0eFUiKqW
 SHiLbm2ciodebgf37ODKBzfFJS60fDRSYinOSDTUYi4qTgQATjNhTLQCAAA=
X-CMS-MailID: 20200428132025eucas1p15cf78bdedef6eebc477c7e8429a6f971
X-Msg-Generator: CA
X-RootMTR: 20200428132025eucas1p15cf78bdedef6eebc477c7e8429a6f971
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132025eucas1p15cf78bdedef6eebc477c7e8429a6f971
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132025eucas1p15cf78bdedef6eebc477c7e8429a6f971@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 05/17] drm: exynos: fix sg_table nents vs.
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4
eW5vc19kcm1fZzJkLmMgfCA3ICsrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9l
eHlub3NfZHJtX2cyZC5jIGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2cyZC5j
CmluZGV4IGZjZWUzM2EuLmUyNzcxNWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9leHlu
b3MvZXh5bm9zX2RybV9nMmQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19k
cm1fZzJkLmMKQEAgLTM5Niw3ICszOTYsNyBAQCBzdGF0aWMgdm9pZCBnMmRfdXNlcnB0cl9wdXRf
ZG1hX2FkZHIoc3RydWN0IGcyZF9kYXRhICpnMmQsCiAKIG91dDoKIAlkbWFfdW5tYXBfc2codG9f
ZG1hX2RldihnMmQtPmRybV9kZXYpLCBnMmRfdXNlcnB0ci0+c2d0LT5zZ2wsCi0JCQlnMmRfdXNl
cnB0ci0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQkgICAgIGcyZF91c2VycHRy
LT5zZ3QtPm9yaWdfbmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKIAogCXBhZ2VzID0gZnJhbWVf
dmVjdG9yX3BhZ2VzKGcyZF91c2VycHRyLT52ZWMpOwogCWlmICghSVNfRVJSKHBhZ2VzKSkgewpA
QCAtNTExLDggKzUxMSw5IEBAIHN0YXRpYyBkbWFfYWRkcl90ICpnMmRfdXNlcnB0cl9nZXRfZG1h
X2FkZHIoc3RydWN0IGcyZF9kYXRhICpnMmQsCiAKIAlnMmRfdXNlcnB0ci0+c2d0ID0gc2d0Owog
Ci0JaWYgKCFkbWFfbWFwX3NnKHRvX2RtYV9kZXYoZzJkLT5kcm1fZGV2KSwgc2d0LT5zZ2wsIHNn
dC0+bmVudHMsCi0JCQkJRE1BX0JJRElSRUNUSU9OQUwpKSB7CisJc2d0LT5uZW50cyA9IGRtYV9t
YXBfc2codG9fZG1hX2RldihnMmQtPmRybV9kZXYpLCBzZ3QtPnNnbCwKKwkJCQlzZ3QtPm9yaWdf
bmVudHMsIERNQV9CSURJUkVDVElPTkFMKQorCWlmICghc2d0LT5uZW50cykgewogCQlEUk1fREVW
X0VSUk9SKGcyZC0+ZGV2LCAiZmFpbGVkIHRvIG1hcCBzZ3Qgd2l0aCBkbWEgcmVnaW9uLlxuIik7
CiAJCXJldCA9IC1FTk9NRU07CiAJCWdvdG8gZXJyX3NnX2ZyZWVfdGFibGU7Ci0tIAoxLjkuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

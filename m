Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D051BBF35
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:24:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE9746038D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:24:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AFF6B6199D; Tue, 28 Apr 2020 13:24:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25361619BF;
	Tue, 28 Apr 2020 13:20:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A9BE96198D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9AF3761868; Tue, 28 Apr 2020 13:20:30 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 1FFD461868
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:26 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132025euoutp0177e58e622d8ffe5d1b9839e6626580a0~J-l56nXQ_1886418864euoutp015
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132025euoutp0177e58e622d8ffe5d1b9839e6626580a0~J-l56nXQ_1886418864euoutp015
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200428132024eucas1p295fc97f6c6a1e8570f6d628c430b4ca7~J-l5ix-GY2650626506eucas1p2G;
 Tue, 28 Apr 2020 13:20:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 84.B4.61286.89D28AE5; Tue, 28
 Apr 2020 14:20:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132024eucas1p1c51178774db6fb4cab748522c86646cd~J-l5Kj5qR1367713677eucas1p1O;
 Tue, 28 Apr 2020 13:20:24 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132024eusmtrp2f07a13212ee3633f0b648d4aad903b4c~J-l5IkYSz2140321403eusmtrp2F;
 Tue, 28 Apr 2020 13:20:24 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-6b-5ea82d98aab6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 99.96.08375.89D28AE5; Tue, 28
 Apr 2020 14:20:24 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132023eusmtip290db16384e4e88da08574c1d4a03ba7e~J-l4i21JQ1062310623eusmtip2k;
 Tue, 28 Apr 2020 13:20:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:19:52 +0200
Message-Id: <20200428132005.21424-5-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURiFc2famSm2MhYjFzUa6xKRABJ9mAgYjAtjfJAnH4iio0wAaZF0
 AAsPAlWMVjAoJhJFaEAse7Egq4IgWhZtsaCCgMhmglpFKItgwJZxefvu+c+558/NJVBpg3At
 EREVwyqjGLkMcxJUvfhp9sz0LAjZufiaotJMbQiVr0/GqYeZeiGlbm7HqKWqGyjVPf0dowqL
 nyPU3fQKhNI2+lK27iGEMoy8FVJddVkYVdoygFNNE6NCqn1gCg9wpkuySwD9ZEYroPvfPsbo
 6pmPQnrwmhGhK+4n0n2LIyid0aMDdH1vEkZfrywC9JRhQ9CKYCe/UFYeEccqvfeecgo3ZMZG
 p7moki3fhEkgldQAEQHJ3dA68wHXACdCShYAWNE5hTgGUtIG4KccjucpAPtbxH8D2W/mcV7X
 AdijPcuH7f4vvfMCxwAjfaDGqsEcvJpMAbA1TewwoWQVCkd1LctpF/IITK39JXSwgNwKW5Pf
 LOsS0h+aaxZQvm0jLC5/uswici/MHx7DHBdB0oLDkbxxwJsOwLlf7zCeXeBnYyXO83q4VJuD
 8IGLAA6ZSnH+kApglzrzT9oX9pvm7WnCvp871Nd58/I+eK91DnHIkFwJe6yrHDJqx5tVt1Fe
 lsArl6W8exu8Yyz7V9vUafmzPw1z1TaEf6EbANr0OjwdbLzzv0wLQBFwZWM5RRjL+USx5704
 RsHFRoV5nTmnMAD7r+pYNE7WgGnL6WZAEkAmlpSLC0KkQiaOi1c0A0igstWS4fAHIVJJKBOf
 wCrPnVTGylmuGawjBDJXya7c8RNSMoyJYSNZNppV/p0ihGhtEjh6aSxShB52uzUZ2TgX+WxT
 4mskveRWkG/n+ACyZs9siluun8ecTV7/KuvrMYHW2KDbb9JXz+ZdFRdiEYOKLXll7KPJ50vD
 bv15Hj8CrCLDiL9qc8T2toWJ986B1aWzLxMYzSF3dUaG14XgQGfzwY7QMpNCzfirzCs7+uJU
 5uMyARfO+OxAlRzzGzh75GBRAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7ozdFfEGexplrPoPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFW
 RqZK+nY2Kak5mWWpRfp2CXoZm2aUFvQKVzReesfawNgj0MXIySEhYCIx7+ov9i5GLg4hgaWM
 EjO+bWGGSMhInJzWwAphC0v8udbFBlH0iVHi2tN37CAJNgFDia63EAkRgU5GiWndH8FGMQsc
 YJboPn+SCaRKWMBbomfnH7BRLAKqEicar4J18wrYSpzf8RtqnbzE6g0HwGxOATuJpY+eAk3l
 AFpnK3G5JXcCI98CRoZVjCKppcW56bnFhnrFibnFpXnpesn5uZsYgdGz7djPzTsYL20MPsQo
 wMGoxMO7gWdFnBBrYllxZe4hRgkOZiUR3kcZy+KEeFMSK6tSi/Lji0pzUosPMZoC3TSRWUo0
 OR8Y2Xkl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhirZNyWPZyk
 uGX+rFKuDdFP/3oJRnsK9f9iD9q+6f/PCRPbH/3QK3ye6/dSerOlt6HCG9mu67JV2UtWleVp
 HJzPsPuaYd2lWW3if9Or5++au0FNMXvzRqGdet6yRVOmlc39J3YgMcarUeZR8BUvzteu1yfk
 z5rJdy4u+nOZvP97xg8z8w7NWXhFiaU4I9FQi7moOBEAQ0EbbbQCAAA=
X-CMS-MailID: 20200428132024eucas1p1c51178774db6fb4cab748522c86646cd
X-Msg-Generator: CA
X-RootMTR: 20200428132024eucas1p1c51178774db6fb4cab748522c86646cd
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132024eucas1p1c51178774db6fb4cab748522c86646cd
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132024eucas1p1c51178774db6fb4cab748522c86646cd@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 04/17] drm: etnaviv: fix sg_table nents vs.
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9l
dG5hdml2X2dlbS5jIHwgMTAgKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZp
di9ldG5hdml2X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYwpp
bmRleCBkYzllZjMwLi5hMjI0YTk3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZp
di9ldG5hdml2X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2Vt
LmMKQEAgLTI3LDcgKzI3LDggQEAgc3RhdGljIHZvaWQgZXRuYXZpdl9nZW1fc2NhdHRlcl9tYXAo
c3RydWN0IGV0bmF2aXZfZ2VtX29iamVjdCAqZXRuYXZpdl9vYmopCiAJICogYmVjYXVzZSBkaXNw
bGF5IGNvbnRyb2xsZXIsIEdQVSwgZXRjLiBhcmUgbm90IGNvaGVyZW50LgogCSAqLwogCWlmIChl
dG5hdml2X29iai0+ZmxhZ3MgJiBFVE5BX0JPX0NBQ0hFX01BU0spCi0JCWRtYV9tYXBfc2coZGV2
LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJCXNndC0+
bmVudHMgPSBkbWFfbWFwX3NnKGRldi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5vcmlnX25lbnRzLAor
CQkJCQlETUFfQklESVJFQ1RJT05BTCk7CiB9CiAKIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2VtX3Nj
YXR0ZXJsaXN0X3VubWFwKHN0cnVjdCBldG5hdml2X2dlbV9vYmplY3QgKmV0bmF2aXZfb2JqKQpA
QCAtNTEsNyArNTIsOCBAQCBzdGF0aWMgdm9pZCBldG5hdml2X2dlbV9zY2F0dGVybGlzdF91bm1h
cChzdHJ1Y3QgZXRuYXZpdl9nZW1fb2JqZWN0ICpldG5hdml2X29iagogCSAqIGRpc2NhcmQgdGhv
c2Ugd3JpdGVzLgogCSAqLwogCWlmIChldG5hdml2X29iai0+ZmxhZ3MgJiBFVE5BX0JPX0NBQ0hF
X01BU0spCi0JCWRtYV91bm1hcF9zZyhkZXYtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIERN
QV9CSURJUkVDVElPTkFMKTsKKwkJZG1hX3VubWFwX3NnKGRldi0+ZGV2LCBzZ3QtPnNnbCwgc2d0
LT5vcmlnX25lbnRzLAorCQkJICAgICBETUFfQklESVJFQ1RJT05BTCk7CiB9CiAKIC8qIGNhbGxl
ZCB3aXRoIGV0bmF2aXZfb2JqLT5sb2NrIGhlbGQgKi8KQEAgLTQwNSw3ICs0MDcsNyBAQCBpbnQg
ZXRuYXZpdl9nZW1fY3B1X3ByZXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHUzMiBvcCwK
IAogCWlmIChldG5hdml2X29iai0+ZmxhZ3MgJiBFVE5BX0JPX0NBQ0hFRCkgewogCQlkbWFfc3lu
Y19zZ19mb3JfY3B1KGRldi0+ZGV2LCBldG5hdml2X29iai0+c2d0LT5zZ2wsCi0JCQkJICAgIGV0
bmF2aXZfb2JqLT5zZ3QtPm5lbnRzLAorCQkJCSAgICBldG5hdml2X29iai0+c2d0LT5vcmlnX25l
bnRzLAogCQkJCSAgICBldG5hdml2X29wX3RvX2RtYV9kaXIob3ApKTsKIAkJZXRuYXZpdl9vYmot
Pmxhc3RfY3B1X3ByZXBfb3AgPSBvcDsKIAl9CkBAIC00MjIsNyArNDI0LDcgQEAgaW50IGV0bmF2
aXZfZ2VtX2NwdV9maW5pKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQogCQkvKiBmaW5pIHdp
dGhvdXQgYSBwcmVwIGlzIGFsbW9zdCBjZXJ0YWlubHkgYSB1c2Vyc3BhY2UgZXJyb3IgKi8KIAkJ
V0FSTl9PTihldG5hdml2X29iai0+bGFzdF9jcHVfcHJlcF9vcCA9PSAwKTsKIAkJZG1hX3N5bmNf
c2dfZm9yX2RldmljZShkZXYtPmRldiwgZXRuYXZpdl9vYmotPnNndC0+c2dsLAotCQkJZXRuYXZp
dl9vYmotPnNndC0+bmVudHMsCisJCQlldG5hdml2X29iai0+c2d0LT5vcmlnX25lbnRzLAogCQkJ
ZXRuYXZpdl9vcF90b19kbWFfZGlyKGV0bmF2aXZfb2JqLT5sYXN0X2NwdV9wcmVwX29wKSk7CiAJ
CWV0bmF2aXZfb2JqLT5sYXN0X2NwdV9wcmVwX29wID0gMDsKIAl9Ci0tIAoxLjkuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

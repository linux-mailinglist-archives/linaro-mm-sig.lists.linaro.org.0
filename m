Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8F71C3AAF
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:00:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2D6961992
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:00:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E32B666098; Mon,  4 May 2020 13:00:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6EB5D66464;
	Mon,  4 May 2020 12:54:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6747E66048
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 577CC66075; Mon,  4 May 2020 12:54:22 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id F034466048
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:15 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125415euoutp01134de2c67599f951fd01bf193a78dac7~L1GxIxCtK2809728097euoutp01E
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125415euoutp01134de2c67599f951fd01bf193a78dac7~L1GxIxCtK2809728097euoutp01E
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200504125414eucas1p2c3aae4ea1c2103b5760ec95eea53f9ea~L1GwyALRk2430824308eucas1p2b;
 Mon,  4 May 2020 12:54:14 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 3C.61.61286.67010BE5; Mon,  4
 May 2020 13:54:14 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125414eucas1p1dc1cbef1c50f430b738e74129babb95b~L1Gwh8X-Z0159401594eucas1p1z;
 Mon,  4 May 2020 12:54:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125414eusmtrp20b6692c293467c88086dd55a1390bf8d~L1GwhTF9k2826928269eusmtrp2O;
 Mon,  4 May 2020 12:54:14 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-fb-5eb010767dad
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 18.69.08375.67010BE5; Mon,  4
 May 2020 13:54:14 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125413eusmtip2609c8cbb739a553efe3a313818bcfbd5~L1Gv1V8bS0350503505eusmtip2M;
 Mon,  4 May 2020 12:54:13 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:45 +0200
Message-Id: <20200504125359.5678-7-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCKsWRmVeSWpSXmKPExsWy7djPc7plAhviDD4d1rboPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+DxvE5vFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNXi
 w9qvTA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB3FZZOSmpNZllqkb5fAlXGz6xhzwUyeijdbCxsY53J1MXJySAiYSJxb8IkF
 xBYSWMEo8XxmZhcjF5D9hVHi9fyfLBDOZ0aJSUsfsnUxcoB1LJueAhFfzijRuncOC1zH19sf
 2UFGsQkYSnS97WIDsUUEWhklTvTygBQxC1xmkph/tAlsn7CAv0TriadgDSwCqhINu66BxXkF
 bCQWNbezQ9wnL7F6wwFmkM2cArYSM3vVQeZICBxjlzh4YScLRI2LxLTP86DqhSVeHd8CZctI
 /N85nwmioZlR4uG5tewQTg+jxOWmGYwQVdYSd879AvuNWUBTYv0ufYiwo8TxjsMsEC/zSdx4
 KwgSZgYyJ22bzgwR5pXoaBOCqFaTmHV8HdzagxcuMUPYHhLXOpqhAXSYUeJ+UyPLBEb5WQjL
 FjAyrmIUTy0tzk1PLTbMSy3XK07MLS7NS9dLzs/dxAhMS6f/Hf+0g/HrpaRDjAIcjEo8vBGf
 18cJsSaWFVfmHmKU4GBWEuHd0QIU4k1JrKxKLcqPLyrNSS0+xCjNwaIkzmu86GWskEB6Yklq
 dmpqQWoRTJaJg1OqgXHWq78JkyIFc9Rbn8+fuu+M+R2Xad+rVPf3am7m/7f5jNu28w+8Ta2Z
 w5e7Wp52W/1oygtzsVnPyh+1/7vhtCf0SXH2zknHD7xbKS1/8caOO7sZFQ2W3V/sfWujv53d
 1ZzupRJrGfXU1h6NdQiMVpBnE3zL/O9G4crFHiECf+JZf9ftfHGevfOFEktxRqKhFnNRcSIA
 Dm1b60cDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsVy+t/xe7plAhviDB52iFv0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfJ63ic3iy5WHTBabHl9jtbi8aw6bxdojd9ktDn54wmrx
 Ye1XJgdejzXz1jB67P22gMVj56y77B7bvz1g9bjffZzJY/OSeo/b/x4ze0y+sZzRY/fNBjaP
 vi2rGD0+b5IL4I7SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3s0lJzcks
 Sy3St0vQy7jZdYy5YCZPxZuthQ2Mc7m6GDk4JARMJJZNT+li5OIQEljKKLGq9zxrFyMnUFxG
 4uS0BihbWOLPtS42EFtI4BOjRNfzMhCbTcBQoustSJyLQ0Sgk1FiWvdHdhCHWeA2k8SZuROY
 QaqEBXwlzj34DmazCKhKNOy6xgJi8wrYSCxqbmeH2CAvsXrDAWaQizgFbCVm9qpDLMuXuPv0
 H8sERr4FjAyrGEVSS4tz03OLDfWKE3OLS/PS9ZLzczcxAqNk27Gfm3cwXtoYfIhRgINRiYc3
 4vP6OCHWxLLiytxDjBIczEoivDtagEK8KYmVValF+fFFpTmpxYcYTYFumsgsJZqcD4zgvJJ4
 Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjCx5xuZ/Qm56Z8n+ie+r
 MKnMrvNf79J5a5lEQWbizanRYYs+POhVZkv5fOv3xE9xudvD4tZXLlzlnbto4rLKH9eZWhh2
 vD/vtkPr359dOW5TjXc+nNzCX3rjTOHfAptDFUE/xQ5wLrpq0KB4W29uq6XxpX/ia/3nzeFa
 4OCUXCHGml8aMn3rFSWW4oxEQy3mouJEAKiP7iioAgAA
X-CMS-MailID: 20200504125414eucas1p1dc1cbef1c50f430b738e74129babb95b
X-Msg-Generator: CA
X-RootMTR: 20200504125414eucas1p1dc1cbef1c50f430b738e74129babb95b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125414eucas1p1dc1cbef1c50f430b738e74129babb95b
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125414eucas1p1dc1cbef1c50f430b738e74129babb95b@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: lima@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Qiang Yu <yuq825@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 07/21] drm: lima: fix sg_table nents vs.
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2MiAwMC8yMV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzQvMzcz
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9nZW0uYyB8IDQgKystLQogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vbGltYS9saW1hX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2xpbWEvbGltYV9n
ZW0uYwppbmRleCA1NDA0ZTBkLi4zZWRkMmZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
bGltYS9saW1hX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMKQEAg
LTcwLDcgKzcwLDcgQEAgaW50IGxpbWFfaGVhcF9hbGxvYyhzdHJ1Y3QgbGltYV9ibyAqYm8sIHN0
cnVjdCBsaW1hX3ZtICp2bSkKIAogCWlmIChiby0+YmFzZS5zZ3QpIHsKIAkJZG1hX3VubWFwX3Nn
KGRldiwgYm8tPmJhc2Uuc2d0LT5zZ2wsCi0JCQkgICAgIGJvLT5iYXNlLnNndC0+bmVudHMsIERN
QV9CSURJUkVDVElPTkFMKTsKKwkJCSAgICAgYm8tPmJhc2Uuc2d0LT5vcmlnX25lbnRzLCBETUFf
QklESVJFQ1RJT05BTCk7CiAJCXNnX2ZyZWVfdGFibGUoYm8tPmJhc2Uuc2d0KTsKIAl9IGVsc2Ug
ewogCQliby0+YmFzZS5zZ3QgPSBrbWFsbG9jKHNpemVvZigqYm8tPmJhc2Uuc2d0KSwgR0ZQX0tF
Uk5FTCk7CkBAIC04MCw3ICs4MCw3IEBAIGludCBsaW1hX2hlYXBfYWxsb2Moc3RydWN0IGxpbWFf
Ym8gKmJvLCBzdHJ1Y3QgbGltYV92bSAqdm0pCiAJCX0KIAl9CiAKLQlkbWFfbWFwX3NnKGRldiwg
c2d0LnNnbCwgc2d0Lm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJc2d0Lm5lbnRzID0gZG1h
X21hcF9zZyhkZXYsIHNndC5zZ2wsIHNndC5vcmlnX25lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7
CiAKIAkqYm8tPmJhc2Uuc2d0ID0gc2d0OwogCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

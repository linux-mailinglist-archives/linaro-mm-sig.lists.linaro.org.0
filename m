Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A9F25DA48
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:46:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4577A66749
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:46:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3683866768; Fri,  4 Sep 2020 13:46:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D8AD6676E;
	Fri,  4 Sep 2020 13:36:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 75D2666744
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 661A366753; Fri,  4 Sep 2020 13:35:14 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id C305766744
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:01 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133501euoutp029550525a652042726c5dc389aea53d9e~xmAeXiVAo2890128901euoutp02f
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200904133501euoutp029550525a652042726c5dc389aea53d9e~xmAeXiVAo2890128901euoutp02f
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200904133500eucas1p1ae41c3c4948f784f6d3a773b51c1cd27~xmAeGUcdR0117201172eucas1p1s;
 Fri,  4 Sep 2020 13:35:00 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 8D.01.06456.482425F5; Fri,  4
 Sep 2020 14:35:00 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200904133500eucas1p231e3d2b7de8bca0f52339ac520b8acc6~xmAd086oh0694006940eucas1p2i;
 Fri,  4 Sep 2020 13:35:00 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133500eusmtrp2113c0e9f6e103ab5048de0d1726d3b03~xmAd0KCpP0977009770eusmtrp2B;
 Fri,  4 Sep 2020 13:35:00 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-3f-5f52428412b4
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 54.A0.06017.482425F5; Fri,  4
 Sep 2020 14:35:00 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133459eusmtip17d41314ad1ec08748b7c67e79b4bd95d~xmAdHYUiq1888418884eusmtip1S;
 Fri,  4 Sep 2020 13:34:59 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:52 +0200
Message-Id: <20200904131711.12950-12-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRj22zk7Oy5Xx6n5YRdpaaKQd+qAoikGByqK/RApUpeeVNqmbGqp
 RKLLaqVmGcmwJSJ4z5y3vKzyrplWTnSR84L+SEWMvNVIzdNR+/fc3u95eflwRNjPdcDj5Im0
 Qi6RijA+2tjze+ikKlgc4akpdCezh/o5ZG1BDZcszs5Gya3GPIQcWV3CyPLKbg5Z9M6PXBmZ
 5pC6mVEuaWgpxEhD5hdAVneZeGSGyoc0TfShZPuPWe6ZA1SVtgpQ+rUilGrWmHiUruIBRjWt
 TXGpyYe9HKqu5A71bXMGoZ4aSwHV+jUdo3I3PKmc+gpALeuOXhJc5vtH09K4ZFrhERDJjx1f
 q0ETuvm3MtbVWDpYwtXAEoeEL9TOf+CoAR8XEmUALpiMGEtWAFRpJwFLlgFsHcvh7o7MjW0g
 rFEKYKluEOyNDJdt8pgURnhB9aIaY7AtcRfAvmwrJoQQbQgsbjGjjGFDhMGGthHAYJRwhi9y
 s7Y3wXEBEQBVTSFsmyOsfP0eYbDlttxQMMtl3oHEBA+ul5TvrBQC1yo2EBbbwPneeh6LD8Ot
 5pccdiATwOmhah5LHgFoyCgAbMoPjg+ZMaYZIVxhTYsHKwdBQ/HbfzIk9kPjojUjI9vwSeNz
 hJUF8H6WkE2fgJreV3u17Z+Hd9ahoEHfuHPTPADnykY5j4Gj5n9ZEQAVwJ5OUspiaKWXnL7p
 rpTIlEnyGPeoeJkObH+wgc3en2/A6vC1DkDgQGQlsAgURwi5kmRliqwDQBwR2QqCBwfChYJo
 SUoqrYiPUCRJaWUHOISjInuBT/HcVSERI0mkb9B0Aq3YdTm4pUM6SLXr6rAzBU+XfIzUwx77
 +piDLk7eTqrU/HMzeJvr1ML1iwu2oaeLys+KNQ7HLC3EF8L77Af1znHexitp3k2hfjpFoh+d
 bJVS4hHYXjt827zvV35WpDbNeA/vXPK3MZutwwQeIZ2nsvhudv7Hocun83+k6JEo37pn38WI
 LjZIL0KVsRIvN0ShlPwF/3/fkVwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFIsWRmVeSWpSXmKPExsVy+t/xu7otTkHxBhtWi1r0njvJZLFxxnpW
 i0W9vSwW/7dNZLa48vU9m8XK1UeZLBbst7b4cuUhk8Wmx9dYLS7vmsNmcbn5IqPF2iN32S2a
 Wowt7t47wWJx8MMTVgd+jzXz1jB67P22gMVj56y77B6bVnWyeWz/9oDV4373cSaPzUvqPW7/
 e8zsMfnGckaP3Tcb2Dz6/xp49G1ZxejxeZNcAG+Unk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6R
 iaWeobF5rJWRqZK+nU1Kak5mWWqRvl2CXsadb+tZCo5yVTR972JrYHzP0cXIySEhYCLx8vpf
 5i5GLg4hgaWMEo2Pn7BBJGQkTk5rYIWwhSX+XOtigyj6xCix/c8kRpAEm4ChRNdbiISIQCej
 xLTuj+wgDrPAMWaJjY/fM4NUCQuESbSvnsIEYrMIqErM7W8Dsjk4eAXsJFq2u0BskJdYveEA
 WDknUHjrjCdgm4UEbCU+zFnMMoGRbwEjwypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzAeNp2
 7OeWHYxd74IPMQpwMCrx8DLYB8ULsSaWFVfmHmKU4GBWEuF1Ons6Tog3JbGyKrUoP76oNCe1
 +BCjKdBNE5mlRJPzgbGeVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mD
 U6qBcZJv3OajVXatrlKJHTE5R24bz9FYxf7X+Mi50sClz1+s51FctnSvR5x2ycbHc2zEBebM
 Vn7HKnttTuEGhewddr90klKfxM8KiLU5wxLln7BXblNk+NHcms/v8pdtYYgLvizVNvHHFD4W
 67X6vhkPZU5e94tSZOnzmTs5/0PBLNUv376JzI3WVGIpzkg01GIuKk4EAOitNhO9AgAA
X-CMS-MailID: 20200904133500eucas1p231e3d2b7de8bca0f52339ac520b8acc6
X-Msg-Generator: CA
X-RootMTR: 20200904133500eucas1p231e3d2b7de8bca0f52339ac520b8acc6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133500eucas1p231e3d2b7de8bca0f52339ac520b8acc6
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133500eucas1p231e3d2b7de8bca0f52339ac520b8acc6@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 11/30] drm: mediatek: use common helper
 for extracting pages array
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

VXNlIGNvbW1vbiBoZWxwZXIgZm9yIGNvbnZlcnRpbmcgYSBzZ190YWJsZSBvYmplY3QgaW50byBz
dHJ1Y3QKcGFnZSBwb2ludGVyIGFycmF5LgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3Nr
aSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgpSZXZpZXdlZC1ieTogUm9iaW4gTXVycGh5IDxy
b2Jpbi5tdXJwaHlAYXJtLmNvbT4KQWNrZWQtYnk6IENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5o
dUBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5j
IHwgOSArKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDcgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2Vt
LmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYwppbmRleCAzNjU0ZWM3
MzIwMjkuLjA1ODNlNTU3YWQzNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19kcm1fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2Vt
LmMKQEAgLTIzMyw5ICsyMzMsNyBAQCB2b2lkICptdGtfZHJtX2dlbV9wcmltZV92bWFwKHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqKQogewogCXN0cnVjdCBtdGtfZHJtX2dlbV9vYmogKm10a19n
ZW0gPSB0b19tdGtfZ2VtX29iaihvYmopOwogCXN0cnVjdCBzZ190YWJsZSAqc2d0OwotCXN0cnVj
dCBzZ19wYWdlX2l0ZXIgaXRlcjsKIAl1bnNpZ25lZCBpbnQgbnBhZ2VzOwotCXVuc2lnbmVkIGlu
dCBpID0gMDsKIAogCWlmIChtdGtfZ2VtLT5rdmFkZHIpCiAJCXJldHVybiBtdGtfZ2VtLT5rdmFk
ZHI7CkBAIC0yNDksMTEgKzI0Nyw4IEBAIHZvaWQgKm10a19kcm1fZ2VtX3ByaW1lX3ZtYXAoc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJaWYgKCFtdGtfZ2VtLT5wYWdlcykKIAkJZ290byBv
dXQ7CiAKLQlmb3JfZWFjaF9zZ19wYWdlKHNndC0+c2dsLCAmaXRlciwgc2d0LT5vcmlnX25lbnRz
LCAwKSB7Ci0JCW10a19nZW0tPnBhZ2VzW2krK10gPSBzZ19wYWdlX2l0ZXJfcGFnZSgmaXRlcik7
Ci0JCWlmIChpID4gbnBhZ2VzKQotCQkJYnJlYWs7Ci0JfQorCWRybV9wcmltZV9zZ190b19wYWdl
X2FkZHJfYXJyYXlzKHNndCwgbXRrX2dlbS0+cGFnZXMsIE5VTEwsIG5wYWdlcyk7CisKIAltdGtf
Z2VtLT5rdmFkZHIgPSB2bWFwKG10a19nZW0tPnBhZ2VzLCBucGFnZXMsIFZNX01BUCwKIAkJCSAg
ICAgICBwZ3Byb3Rfd3JpdGVjb21iaW5lKFBBR0VfS0VSTkVMKSk7CiAKLS0gCjIuMTcuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

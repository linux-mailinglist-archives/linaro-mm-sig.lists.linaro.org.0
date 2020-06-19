Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D42F2200773
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 13:03:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08D2C665A5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 11:03:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EDF8E665AF; Fri, 19 Jun 2020 11:03:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 556FB666F7;
	Fri, 19 Jun 2020 10:39:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A7249665B6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:38:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 99E52665CA; Fri, 19 Jun 2020 10:38:29 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id D3527665B6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:14 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103714euoutp01c76427a9a5283850cb336d7956daed73~Z66RKX4iR1849918499euoutp01l
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103714euoutp01c76427a9a5283850cb336d7956daed73~Z66RKX4iR1849918499euoutp01l
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103713eucas1p2bfa7862b2eb60a04b431790c764bde0f~Z66QuutqJ2893928939eucas1p2n;
 Fri, 19 Jun 2020 10:37:13 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 69.9C.06318.9559CEE5; Fri, 19
 Jun 2020 11:37:13 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103713eucas1p2f4b6b66a376a72d1bf62ea6d92572045~Z66QNXq7E2893928939eucas1p2m;
 Fri, 19 Jun 2020 10:37:13 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103713eusmtrp1266e674f1f9b8cb645d8fe34cedcb8bc~Z66QMkd2F0959609596eusmtrp1c;
 Fri, 19 Jun 2020 10:37:13 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-83-5eec9559bd19
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 95.1B.06017.8559CEE5; Fri, 19
 Jun 2020 11:37:12 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103712eusmtip203eb7fcd2157d32e06df1b14b71da113~Z66PS0x6h3164531645eusmtip2b;
 Fri, 19 Jun 2020 10:37:12 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:29 +0200
Message-Id: <20200619103636.11974-30-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe1BMURyes3fvY9M2t7U4EybWY8azUjgj09DIHMYYTMPQiMWdalSytyIz
 xlJWUtEDTVS7KpRekqWHKFKUNG12anox/IEkPTbVqOx2N/77ft/jfL855zCEbIB0YAKCQzlV
 sDJQQdmI9a9H36/af/2Hr3N97mIU1/hGhPrGuyn0MKWQROd/LkKT+gQCVTSM0ajF1EehyMxC
 CuU8qBEh7XN3dFe9BOVUjIjQUMsnESr+bCSRoew2hfJfddJIn6cmUdWvLyR62zlII61xjN4k
 x/pyPYnz0vMAHk/rJ3BX5UsxfjasFWPdgInEHcYKCj8Z/kji52l5NO6+UivCj7LO4faJzwRO
 ar0HcHmbmsJ9lR8oHF+SC3bZH7DZeIwLDAjnVE4eh238TWVZZEiP7emEljZKDS7PiAESBrJu
 UJf9SBQDbBgZex/ArtK3QBiGALwx2G9VBgHsSImhpiMJaRlW4R6AvboR0b9IoT6Dtrgo1gXG
 9AoJOXsRwLo4W4uJYGNJ+K2oyCwwzEwWwejsnRaPmF0Ck7NjCQuWsh6wdTKZENoc4YOiF1NY
 YuZ7oqpIyzmQ1TFQ01tOCqYtMKOhz4pnwu+1JbSA58H6pFixEIgE8FNjPi0MsQAaLqQAweUO
 OxrHpjYi2GWwsMxJoDfDnMbHwEJD1g629tpbaMIME/U3CYGWwmiNTHAvham1Bf9qq5qarftj
 2FZaQgkXlABgZPpL+hpwTP1fpgUgF8zhwvggP453DeZOreaVQXxYsN/qoyeCioH5J9ZP1Jqe
 gso/R6oBywCFrfSrd4+vjFSG8xFB1QAyhEIu9XxX7yuTHlNGnOFUJw6pwgI5vhrMZcSKOVLX
 O98Oylg/ZSh3nONCONW0KmIkDmrwbN+sc45zVzYZtems2yzz+3j/riyTOIk1XqlOJ0flxl3q
 moF4g/P28ZUP1xrm70kslWrIX21nI/Y2+MQrZabd/YlHvVf4FHmGNU9Otj/GMjdtJpD4bDBs
 dViwx8vRwTlKN7RQzysuDa97s63JbrmcnW0Y3L9jfXFNQV3D1Tu31ijEvL/SZTmh4pV/AYin
 7PWFAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsVy+t/xe7oRU9/EGdx+bmPRe+4kk8X7v/fZ
 LDbOWM9q0fhO2eL/tonMFnvO/GK3uPL1PZtF8+L1bBYrVx9lsliw39piWYOqxco9P5gsvlx5
 yGSx6fE1VovLu+awWaw9cpfdYtuaBlaLgx+esFqcuvuZ3WLBtV/sDiIe23ZvY/VYM28No8ff
 uR+ZPe7tO8zisffbAhaPhZ++snrcubaHzWP7twesHvvnrmH3uN99nMlj85J6j9v/HjN7TL6x
 nNFj980GNo/3+66yefRtWcUYIBilZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2Vk
 qqRvZ5OSmpNZllqkb5egl/F11xLWgtc8FROv3GRrYOzk7mLk5JAQMJGYOHc+UxcjF4eQwFJG
 iSPbVzJCJGQkTk5rYIWwhSX+XOtigyj6xCixZe5pFpAEm4ChRNdbiISIQCejxLTuj+wgDrPA
 DFaJdQfuATkcHMICFhIdS/1AGlgEVCWmLO1hBrF5BewkbvyfwgyxQV5i9YYDYDYnUPx1y0Gw
 zUICthLLF7xnnsDIt4CRYRWjSGppcW56brGRXnFibnFpXrpecn7uJkZghG479nPLDsaud8GH
 GAU4GJV4eF+EvI4TYk0sK67MPcQowcGsJMLrdPZ0nBBvSmJlVWpRfnxRaU5q8SFGU6CjJjJL
 iSbnA5NHXkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGxrz6IJso
 0buhAj+bHB44ri3fdHHT396nmQvvd1xYFrLK+Ny16fW7D7fq72N/P6V+v7XcrmNaSzZ/c7mr
 dvy35dziDdol0dWXL62siZtVx3M7fNJSnXX/XjQcca9vl2OfHsEUfs6y+/OE6JCURepsis8f
 He/XjXmx7fSKg7PindPn/t9+Im1JdooSS3FGoqEWc1FxIgBPMRjI5gIAAA==
X-CMS-MailID: 20200619103713eucas1p2f4b6b66a376a72d1bf62ea6d92572045
X-Msg-Generator: CA
X-RootMTR: 20200619103713eucas1p2f4b6b66a376a72d1bf62ea6d92572045
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103713eucas1p2f4b6b66a376a72d1bf62ea6d92572045
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103713eucas1p2f4b6b66a376a72d1bf62ea6d92572045@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 Daniel Vetter <daniel@ffwll.ch>, Joel Fernandes <joel@joelfernandes.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 29/36] staging: ion: remove dead code
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

aW9uX2hlYXBfcGFnZXNfemVybygpIGZ1bmN0aW9uIGlzIG5vdCB1c2VkIGF0IGFsbCwgc28gcmVt
b3ZlIGl0IHRvCnNpbXBsaWZ5IHRoZSBpb25faGVhcF9zZ2xpc3RfemVybygpIGZ1bmN0aW9uIGxh
dGVyLgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1
bmcuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uaCAgICAgIHwgMSAt
CiBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX2hlYXAuYyB8IDkgLS0tLS0tLS0tCiAy
IGZpbGVzIGNoYW5nZWQsIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy9hbmRyb2lkL2lvbi9pb24uaCBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24u
aAppbmRleCA3NDkxNGEyNjZlMjUuLmMxOTllODhhZmM2YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9z
dGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lv
bi9pb24uaApAQCAtMTc3LDcgKzE3Nyw2IEBAIHZvaWQgaW9uX2hlYXBfdW5tYXBfa2VybmVsKHN0
cnVjdCBpb25faGVhcCAqaGVhcCwgc3RydWN0IGlvbl9idWZmZXIgKmJ1ZmZlcik7CiBpbnQgaW9u
X2hlYXBfbWFwX3VzZXIoc3RydWN0IGlvbl9oZWFwICpoZWFwLCBzdHJ1Y3QgaW9uX2J1ZmZlciAq
YnVmZmVyLAogCQkgICAgICBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSk7CiBpbnQgaW9uX2hl
YXBfYnVmZmVyX3plcm8oc3RydWN0IGlvbl9idWZmZXIgKmJ1ZmZlcik7Ci1pbnQgaW9uX2hlYXBf
cGFnZXNfemVybyhzdHJ1Y3QgcGFnZSAqcGFnZSwgc2l6ZV90IHNpemUsIHBncHJvdF90IHBncHJv
dCk7CiAKIC8qKgogICogaW9uX2hlYXBfaW5pdF9zaHJpbmtlcgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9oZWFwLmMgYi9kcml2ZXJzL3N0YWdpbmcvYW5kcm9p
ZC9pb24vaW9uX2hlYXAuYwppbmRleCAwNzU1YjExMzQ4ZWQuLjljMjNiMjM4MmExZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9oZWFwLmMKKysrIGIvZHJpdmVy
cy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9oZWFwLmMKQEAgLTE0NSwxNSArMTQ1LDYgQEAgaW50
IGlvbl9oZWFwX2J1ZmZlcl96ZXJvKHN0cnVjdCBpb25fYnVmZmVyICpidWZmZXIpCiAJcmV0dXJu
IGlvbl9oZWFwX3NnbGlzdF96ZXJvKHRhYmxlLT5zZ2wsIHRhYmxlLT5uZW50cywgcGdwcm90KTsK
IH0KIAotaW50IGlvbl9oZWFwX3BhZ2VzX3plcm8oc3RydWN0IHBhZ2UgKnBhZ2UsIHNpemVfdCBz
aXplLCBwZ3Byb3RfdCBwZ3Byb3QpCi17Ci0Jc3RydWN0IHNjYXR0ZXJsaXN0IHNnOwotCi0Jc2df
aW5pdF90YWJsZSgmc2csIDEpOwotCXNnX3NldF9wYWdlKCZzZywgcGFnZSwgc2l6ZSwgMCk7Ci0J
cmV0dXJuIGlvbl9oZWFwX3NnbGlzdF96ZXJvKCZzZywgMSwgcGdwcm90KTsKLX0KLQogdm9pZCBp
b25faGVhcF9mcmVlbGlzdF9hZGQoc3RydWN0IGlvbl9oZWFwICpoZWFwLCBzdHJ1Y3QgaW9uX2J1
ZmZlciAqYnVmZmVyKQogewogCXNwaW5fbG9jaygmaGVhcC0+ZnJlZV9sb2NrKTsKLS0gCjIuMTcu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

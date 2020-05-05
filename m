Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC311C5145
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:51:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F9BF6186E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:51:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 23E5366075; Tue,  5 May 2020 08:51:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC6BF66227;
	Tue,  5 May 2020 08:47:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9682560B02
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8360866169; Tue,  5 May 2020 08:46:33 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 95AD066055
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:27 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084626euoutp01ac795eaa33d9f544439b04e2251ba6ac~MFXsOppN_0325703257euoutp01Y
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084626euoutp01ac795eaa33d9f544439b04e2251ba6ac~MFXsOppN_0325703257euoutp01Y
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084626eucas1p1325eb9a146d93c42f9c6bbe0718d6c57~MFXr2WheI2432424324eucas1p1y;
 Tue,  5 May 2020 08:46:26 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id CF.BF.61286.2E721BE5; Tue,  5
 May 2020 09:46:26 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084626eucas1p20753456727333c09718253ca5c32d98c~MFXresudS1348713487eucas1p2S;
 Tue,  5 May 2020 08:46:26 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084626eusmtrp1e1643544281fa3d0966324c1a3e1600a~MFXrd60qK0942509425eusmtrp13;
 Tue,  5 May 2020 08:46:26 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-94-5eb127e28dd9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C1.14.08375.1E721BE5; Tue,  5
 May 2020 09:46:25 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084625eusmtip183ea40c2ecca9ab414f2ba869cca3540~MFXq_Tir40580805808eusmtip15;
 Tue,  5 May 2020 08:46:25 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:45:53 +0200
Message-Id: <20200505084614.30424-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPKsWRmVeSWpSXmKPExsWy7djP87qP1DfGGWw7LmzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzeLQ1L2MFmuP3GW3OPjhCasD
 j8eaeWsYPS5fu8jssffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJBXBHcdmkpOZklqUW6dslcGX8XbiateC0UMX0d8eYGxg38XcxcnBICJhI3NqS1MXIxSEk
 sIJR4uGy7YxdjJxAzhdGiedzxSASnxklJpxoBkuANMzpX8oMkVjOKPHl4QYWCAeo43jnTVaQ
 KjYBQ4mut11sILaIQCujxIleHpAiZoEDTBJt714zgSSEBYIk3hy5xAJiswioSixf8JoN5CZe
 AVuJX2tFIbbJS6zecIAZxOYUsJN4fOkOG8gcCYFD7BJTbqxjhyhykfh+cz4rhC0s8er4Fqi4
 jMTpyT0sEA3NQM+dW8sO4fQwSlxumgH1kLXEnXO/wDYzC2hKrN+lDwkYR4n3UzUgTD6JG28F
 QYqZgcxJ26YzQ4R5JTrahCBmqEnMOr4ObuvBC5eYIWwPicOzd7FDwucoo8S33kvMExjlZyHs
 WsDIuIpRPLW0ODc9tdgwL7Vcrzgxt7g0L10vOT93EyMwGZ3+d/zTDsavl5IOMQpwMCrx8EZ8
 Xh8nxJpYVlyZe4hRgoNZSYR32Y8NcUK8KYmVValF+fFFpTmpxYcYpTlYlMR5jRe9jBUSSE8s
 Sc1OTS1ILYLJMnFwSjUwOmw9EHnPOrfkyq1VaX/CImP/XZ3yYNO8qX6XV5d+vXBra8JLUaND
 k5yytloZfJgk9eBBXvqS771Zmi11p4rLDp4N7NvJuflupGyN6/E5MismuHA3vp/a3pqlG3LZ
 8x3QqmXP9eMudG3eOc/8zdNP9nrrCpS8sji26pR6xEssaNh97+geoVuHlViKMxINtZiLihMB
 FNKWGUIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEIsWRmVeSWpSXmKPExsVy+t/xu7oP1TfGGexpsLHoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZnFo6l5Gi7VH7rJbHPzwhNWB
 x2PNvDWMHpevXWT22PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DL+LlzNWnBaqGL6u2PMDYyb+LsYOTkkBEwk5vQvZQaxhQSWMkocumUOEZeRODmtgRXCFpb4
 c62LrYuRC6jmE6PEwQfHwBJsAoYSXW8hEiICnYwS07o/soM4zALHmCQW/vrIAlIlLBAg8Xzm
 RyYQm0VAVWL5gtdAHRwcvAK2Er/WikJskJdYveEA2BWcAnYSjy/dYYO4qFDiw/nvrBMY+RYw
 MqxiFEktLc5Nzy021CtOzC0uzUvXS87P3cQIjI9tx35u3sF4aWPwIUYBDkYlHt6Iz+vjhFgT
 y4orcw8xSnAwK4nwLvuxIU6INyWxsiq1KD++qDQntfgQoynQTROZpUST84Gxm1cSb2hqaG5h
 aWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgVEjfW/Q9Y9ZTm3s+/I/aQXsXcjM
 4Vc+0fbgsXfbjJYWJYSd/smfopr4oTTS/LPi9RO2d1Uq/u1mvLfIZLPIugNVi1pfM504O/Xh
 8vsVDPLKCyNfq7tpL3zGeJqzK6RUgd1lz/8dL0884LqxTj436+hrhUuBjDuTl9U8/X35eILP
 qvkuJxZ0T01XYinOSDTUYi4qTgQAs9th7aUCAAA=
X-CMS-MailID: 20200505084626eucas1p20753456727333c09718253ca5c32d98c
X-Msg-Generator: CA
X-RootMTR: 20200505084626eucas1p20753456727333c09718253ca5c32d98c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084626eucas1p20753456727333c09718253ca5c32d98c
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084626eucas1p20753456727333c09718253ca5c32d98c@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Russell King <linux@armlinux.org.uk>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 04/25] drm: armada: fix common struct
 sg_table related issues
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
b3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBlbnRyaWVzIHBhc3NlZCB0byBkbWFfbWFwX3NnLiBUaGUK
c2dfdGFibGUtPm5lbnRzIGluIHR1cm4gaG9sZHMgdGhlIHJlc3VsdCBvZiB0aGUgZG1hX21hcF9z
ZyBjYWxsIGFzIHN0YXRlZAppbiBpbmNsdWRlL2xpbnV4L3NjYXR0ZXJsaXN0LmguIEEgY29tbW9u
IG1pc3Rha2Ugd2FzIHRvIGlnbm9yZSBhIHJlc3VsdApvZiB0aGUgZG1hX21hcF9zZyBmdW5jdGlv
biBhbmQgZG9uJ3QgdXNlIHRoZSBzZ190YWJsZS0+b3JpZ19uZW50cyBhdCBhbGwuCgpUbyBhdm9p
ZCBzdWNoIGlzc3VlcywgbGV0cyB1c2UgY29tbW9uIGRtYS1tYXBwaW5nIHdyYXBwZXJzIG9wZXJh
dGluZwpkaXJlY3RseSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgYW5kIGFkanVzdCBy
ZWZlcmVuY2VzIHRvIHRoZQpuZW50cyBhbmQgb3JpZ19uZW50cyByZXNwZWN0aXZlbHkuCgpTaWdu
ZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Ci0t
LQpGb3IgbW9yZSBpbmZvcm1hdGlvbiwgc2VlICdbUEFUQ0ggdjMgMDAvMjVdIERSTTogZml4IHN0
cnVjdCBzZ190YWJsZSBuZW50cwp2cy4gb3JpZ19uZW50cyBtaXN1c2UnIHRocmVhZDogaHR0cHM6
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZ3B1L2RybS9hcm1hZGEv
YXJtYWRhX2dlbS5jIHwgMTAgKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYXJtYWRh
L2FybWFkYV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jCmluZGV4
IDk3NjY4NWYuLjViNGY0OGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hcm1hZGEvYXJt
YWRhX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jCkBAIC00
MDcsOCArNDA3LDggQEAgaW50IGFybWFkYV9nZW1fcHdyaXRlX2lvY3RsKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCQlzZ19zZXRfcGFnZShzZywgcGFnZSwgUEFHRV9TSVpF
LCAwKTsKIAkJfQogCi0JCWlmIChkbWFfbWFwX3NnKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0
LT5uZW50cywgZGlyKSA9PSAwKSB7Ci0JCQludW0gPSBzZ3QtPm5lbnRzOworCQlpZiAoZG1hX21h
cF9zZ3RhYmxlKGF0dGFjaC0+ZGV2LCBzZ3QsIGRpcikpIHsKKwkJCW51bSA9IGNvdW50OwogCQkJ
Z290byByZWxlYXNlOwogCQl9CiAJfSBlbHNlIGlmIChkb2JqLT5wYWdlKSB7CkBAIC00MTgsNyAr
NDE4LDcgQEAgaW50IGFybWFkYV9nZW1fcHdyaXRlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIHZvaWQgKmRhdGEsCiAKIAkJc2dfc2V0X3BhZ2Uoc2d0LT5zZ2wsIGRvYmotPnBhZ2UsIGRv
YmotPm9iai5zaXplLCAwKTsKIAotCQlpZiAoZG1hX21hcF9zZyhhdHRhY2gtPmRldiwgc2d0LT5z
Z2wsIHNndC0+bmVudHMsIGRpcikgPT0gMCkKKwkJaWYgKGRtYV9tYXBfc2d0YWJsZShhdHRhY2gt
PmRldiwgc2d0LCBkaXIpKQogCQkJZ290byBmcmVlX3RhYmxlOwogCX0gZWxzZSBpZiAoZG9iai0+
bGluZWFyKSB7CiAJCS8qIFNpbmdsZSBjb250aWd1b3VzIHBoeXNpY2FsIHJlZ2lvbiAtIG5vIHN0
cnVjdCBwYWdlICovCkBAIC00NDksMTEgKzQ0OSwxMSBAQCBzdGF0aWMgdm9pZCBhcm1hZGFfZ2Vt
X3ByaW1lX3VubWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAog
CWludCBpOwogCiAJaWYgKCFkb2JqLT5saW5lYXIpCi0JCWRtYV91bm1hcF9zZyhhdHRhY2gtPmRl
diwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGRpcik7CisJCWRtYV91bm1hcF9zZ3RhYmxlKGF0dGFj
aC0+ZGV2LCBzZ3QsIGRpcik7CiAKIAlpZiAoZG9iai0+b2JqLmZpbHApIHsKIAkJc3RydWN0IHNj
YXR0ZXJsaXN0ICpzZzsKLQkJZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRzLCBp
KQorCQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+b3JpZ19uZW50cywgaSkKIAkJCXB1
dF9wYWdlKHNnX3BhZ2Uoc2cpKTsKIAl9CiAKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

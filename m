Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC312527A1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:45:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 799AA617DE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:45:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 656E961873; Wed, 26 Aug 2020 06:45:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B059666DC;
	Wed, 26 Aug 2020 06:36:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9F47E60749
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 92ADA665AA; Wed, 26 Aug 2020 06:35:46 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 43F1B60749
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:37 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063536euoutp013a59c3b9ddc7af60d3fad16f87be959c~uvetmuhQ_1716517165euoutp01k
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063536euoutp013a59c3b9ddc7af60d3fad16f87be959c~uvetmuhQ_1716517165euoutp01k
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063536eucas1p25c5d5de87b71359b29111176bb2cee4a~uvetR1RSu0398703987eucas1p2c;
 Wed, 26 Aug 2020 06:35:36 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id F3.33.06456.7B2064F5; Wed, 26
 Aug 2020 07:35:36 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063535eucas1p1a98e3295a64f14d475371ac0b003782f~uveswhcCT1942019420eucas1p1p;
 Wed, 26 Aug 2020 06:35:35 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063535eusmtrp137e167fd92381384774e4ac4e5ac322a~uvesv43Nj1091110911eusmtrp1V;
 Wed, 26 Aug 2020 06:35:35 +0000 (GMT)
X-AuditID: cbfec7f2-809ff70000001938-c7-5f4602b7af8f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 42.D0.06314.7B2064F5; Wed, 26
 Aug 2020 07:35:35 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063534eusmtip21435f3c414f0a9927d8816cfb94d420e~uvesM5GtN0092200922eusmtip2z;
 Wed, 26 Aug 2020 06:35:34 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:57 +0200
Message-Id: <20200826063316.23486-14-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+c7Zzs50s+MU/FJRGBSUpElBhwyt0DpEQnQzjNSVB5WcyqaW
 /tM0FZvOSyapZY4QbN4znctMc6WzzBXeWGpeUDHNaeWlEnLteMz++73P+7zv8/Lx4aionuuM
 R8XE07IYSbQYs+Fou34b9+mQE6H7M2sQUmV8i5BPi+q4pEWbj5IDq0sYqanqREh1uw+5MjCJ
 kA1TQ1yyv+UhRta8+cwjO75Nc8m6smHsqICqflQNqJdrag7VvDbBpcazDAj1rPwWNbIxhVIF
 pgpAvfikwKicxkpAGUzNCLXc4HbGNtjmSDgdHZVIy7x8w2wiB0sLsbgi25uLcxpUAdL5SsDH
 IXEQjr/PR5TABhcRTwD8MrTGY4sVAFNyVRy2WAYw4/sQ99/IcknqVqMCwLRRC7o9sjhRjzAu
 jPCGSrMSY9iRSAewWyVgTCihR2Bj+iCHaTgQF6FhXbHJHGIXzGmwAIaFhC/U9uo4bJw7rKp/
 hTLMt+qGrFyM1dt4cP6dvRLgVvaHC812rOwA5w2NPJZdYU9B9ualkLgN4KSxhscW2QD2pxYB
 1uUDR43rGLMIJfbAuhYvVj4Gm5R3MHa/HTSZ7RkZteJd7X2UlYUwM0PEunfDEkPtdmzHx74t
 CwX1ZX7s8+QD2DE4juYB95L/WWoAKoETnSCXRtBy7xj6hqdcIpUnxER4XouVNgDrP+rZMPzQ
 gdW+q3pA4EAsEKqxgFARV5IoT5LqAcRRsaPweG9PiEgYLklKpmWxobKEaFquBy44R+wkPPB4
 7oqIiJDE09dpOo6W/esiON9ZAWrGdIVpivKl9Z8egR+ahydK9WNdrh7eoufJfuO/ZnsFywun
 khQmpXQ2iPDgtwrMl4tP1xLV9y4F+rsoZ5pyNW3t5wI07cUPvoZ1h1jy/pSlp0SDUmxn5yG1
 W+vGzOuVw3FZquDzZy/oRnYECuFKm2p+HTHrfRHaGEROD59cEnPkkRLvvahMLvkL9KqiU0MD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xe7rbmdziDZ6ul7foPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4MfnrBarJ9/i82B
 x2PNvDWMHnu/LWDx2P7tAavH/e7jTB6bl9R73P73mNlj8o3ljB67bzawefRtWcXocfzGdiaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DKuzp3KVjCDu+Ldy5XMDYytnF2MnBwSAiYSn2c1sXQxcnEICSxllPj4ZD4zREJG4uS0BlYI
 W1jiz7UuNoiiT4wSS9f8YwJJsAkYSnS9hUiICHQySkzr/sgO4jALnGCSuLd3PiNIlbBAiMTj
 Vf1sIDaLgKpE36b/YHFeATuJbWd3sECskJdYveEA2GpOoPjxboh6IQFbidNrZzBPYORbwMiw
 ilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzBGth37uXkH46WNwYcYBTgYlXh4F7C5xguxJpYV
 V+YeYpTgYFYS4XU6ezpOiDclsbIqtSg/vqg0J7X4EKMp0FETmaVEk/OB8ZtXEm9oamhuYWlo
 bmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoExsOiDYNk3/0OXvWLWz4q67dmUrb6B
 h9/cZ4OJcxyv+7qbGV/T93p37+MymdNfVcg6bfuaa6eX1Vt/ZVyY2iq8fd9EnkUfny7L8a1Q
 mHBTsNyq+/xmr4LpRi92vQrfnvxcbaFE3vEyuRefedJbJfUj7HfrTi+dcXRuVNCNzyHFAsFJ
 Ox6qBWkosRRnJBpqMRcVJwIARoD5MKcCAAA=
X-CMS-MailID: 20200826063535eucas1p1a98e3295a64f14d475371ac0b003782f
X-Msg-Generator: CA
X-RootMTR: 20200826063535eucas1p1a98e3295a64f14d475371ac0b003782f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063535eucas1p1a98e3295a64f14d475371ac0b003782f
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063535eucas1p1a98e3295a64f14d475371ac0b003782f@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 13/32] drm: omapdrm: use common helper
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
aSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9vbWFwZHJt
L29tYXBfZ2VtLmMgfCAxNCArKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL29t
YXBkcm0vb21hcF9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtLmMKaW5k
ZXggZDBkMTJkNWRkNzZjLi5mZjBjNGIwYzNmZDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9vbWFwZHJtL29tYXBfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9n
ZW0uYwpAQCAtMTI5NywxMCArMTI5Nyw5IEBAIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb21hcF9n
ZW1fbmV3X2RtYWJ1ZihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzaXplX3Qgc2l6ZSwKIAkJb21h
cF9vYmotPmRtYV9hZGRyID0gc2dfZG1hX2FkZHJlc3Moc2d0LT5zZ2wpOwogCX0gZWxzZSB7CiAJ
CS8qIENyZWF0ZSBwYWdlcyBsaXN0IGZyb20gc2d0ICovCi0JCXN0cnVjdCBzZ19wYWdlX2l0ZXIg
aXRlcjsKIAkJc3RydWN0IHBhZ2UgKipwYWdlczsKIAkJdW5zaWduZWQgaW50IG5wYWdlczsKLQkJ
dW5zaWduZWQgaW50IGkgPSAwOworCQl1bnNpZ25lZCBpbnQgcmV0OwogCiAJCW5wYWdlcyA9IERJ
Vl9ST1VORF9VUChzaXplLCBQQUdFX1NJWkUpOwogCQlwYWdlcyA9IGtjYWxsb2MobnBhZ2VzLCBz
aXplb2YoKnBhZ2VzKSwgR0ZQX0tFUk5FTCk7CkBAIC0xMzExLDE0ICsxMzEwLDkgQEAgc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvbWFwX2dlbV9uZXdfZG1hYnVmKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIHNpemVfdCBzaXplLAogCQl9CiAKIAkJb21hcF9vYmotPnBhZ2VzID0gcGFnZXM7Ci0KLQkJ
Zm9yX2VhY2hfc2dfcGFnZShzZ3QtPnNnbCwgJml0ZXIsIHNndC0+b3JpZ19uZW50cywgMCkgewot
CQkJcGFnZXNbaSsrXSA9IHNnX3BhZ2VfaXRlcl9wYWdlKCZpdGVyKTsKLQkJCWlmIChpID4gbnBh
Z2VzKQotCQkJCWJyZWFrOwotCQl9Ci0KLQkJaWYgKFdBUk5fT04oaSAhPSBucGFnZXMpKSB7CisJ
CXJldCA9IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKHNndCwgcGFnZXMsIE5VTEws
CisJCQkJCQkgICAgICAgbnBhZ2VzKTsKKwkJaWYgKFdBUk5fT04ocmV0KSkgewogCQkJb21hcF9n
ZW1fZnJlZV9vYmplY3Qob2JqKTsKIAkJCW9iaiA9IEVSUl9QVFIoLUVOT01FTSk7CiAJCQlnb3Rv
IGRvbmU7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==

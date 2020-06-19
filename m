Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 815D62006D7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:40:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ABFD6665BA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:40:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9CCC36670A; Fri, 19 Jun 2020 10:40:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E5C46658C;
	Fri, 19 Jun 2020 10:37:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 60CC16659C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4EBD2665BA; Fri, 19 Jun 2020 10:37:02 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id ADBDF6659C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:56 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103655euoutp0233dfa509a3d49db86f4bb793690d37e4~Z65-0RSRb2242422424euoutp02F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:36:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103655euoutp0233dfa509a3d49db86f4bb793690d37e4~Z65-0RSRb2242422424euoutp02F
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103655eucas1p203c16efdd1ae8d5c522e56b6528b4c06~Z65-X3x462889328893eucas1p2j;
 Fri, 19 Jun 2020 10:36:55 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 6C.8D.05997.6459CEE5; Fri, 19
 Jun 2020 11:36:54 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103654eucas1p227a1d6926d008ef21ba4e0b68a8de210~Z65_vv1sk2893928939eucas1p2R;
 Fri, 19 Jun 2020 10:36:54 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103654eusmtrp1fa456b45408242fead0128e61b85a43d~Z65_vC34y0959609596eusmtrp1r;
 Fri, 19 Jun 2020 10:36:54 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-ce-5eec9546e73e
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 89.DA.06314.6459CEE5; Fri, 19
 Jun 2020 11:36:54 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103653eusmtip2fb6ea7e1b71335bb29b3d3fa436b9e9a~Z65_Fdj8S2581725817eusmtip2i;
 Fri, 19 Jun 2020 10:36:53 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:02 +0200
Message-Id: <20200619103636.11974-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfSyUcRzf7557nnvcPHo6ym+0bNeyanNImydKpRfP/KWprVXo8DjyuntQ
 0ualEudlXtaYiat5yXvdSaJWbnRhKMzuipNoCFNzNGbKedB/n+/n+/n8Pt999sMRUQdqg4dF
 xTLyKGmEGBPymz+s9DtceDTn71Sc60pl93XxqBdFjSj1tzkPoYaWFjCquraTRynfuVPGoXEe
 pZoYRqnB1hKMqu8YFVBPfr/kU2kZlSjV/msSpZrm8tDTFnRdaR2g3y4r+bSqJgOjXy1/Q+nS
 rov0WKaWR6vLk+iv6xMIXaCrAnSbPhmjc5pqAK3uSaQXVft9iKvCE8FMRFg8I3f0uCEMNWSk
 CmIGLG93ry+hycCwSwHMcEgeg5PGdEwBhLiIfAbgQq9CwA1GAPWVs4AbFgH8ka9Gti3FU7MI
 t6gCMG1wnLdjaRnS80wqjHSGinkFZsJW5AMAP2abm0QIqUTgymIaMC0sySCYkTqxEYjjfPIg
 LNP4mmiCPAl1+jaUS7ODtc/fbyabkR5w9n47anoHksMC2NC9JuBE52D5WOkWtoQ/tU1beB/s
 Kcjic4Z7AI731Qu4IQvAwdQiwKnc4UjfKma6AiEPw8ZWR44+A7NeT2zSkLSAuvndJhrZgPnN
 hQhHEzA9TcSp7WGxtmEntv3TwFZbNDR0ft8qOG+jrYpcNBfYFf8PUwJQA6yZODZSxrBHo5hb
 ElYaycZFySRB0ZEqsPG3eta1xhbQuhaoASQOxObE9KVZfxEqjWcTIjUA4ojYivDs7fEXEcHS
 hDuMPDpAHhfBsBpgi/PF1oTL0xk/ESmTxjLhDBPDyLe3PNzMJhl4IbIZ15GHRmLUqzagtcn2
 j5t1J/4FHvJzmV5OL9wji9HelcxjJauhkjBLnTQnxSZ6MKXXLNrzTb8sZIx1KicTdVMhhLdD
 RdXx6kndgfRA9WX7tVN7Yx/rVdfirxSWLITLpqF9lu/nCp+bbvLrZ9uL+r3yz/NcDN7qzOCy
 wCQxnw2VOh9B5Kz0H0PGf9BXAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xe7puU9/EGbxsF7ToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4Uft7JYtHUuY7U4
 +OEJq8WWNxNZHfg81sxbw+ix99sCFo9NqzrZPLZ/e8DqMe9koMf97uNMHpuX1Hvc/veY2WPy
 jeWMHrtvNrB59G1Zxeix+XS1x+dNcgG8UXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG
 5rFWRqZK+nY2Kak5mWWpRfp2CXoZ9zqb2AsuCVec+veVtYHxHn8XIyeHhICJxKznr5m7GLk4
 hASWMkpMO9HJCpGQkTg5rQHKFpb4c62LDaLoE6PEof5eNpAEm4ChRNdbiISIQCdQd/dHdhCH
 WWAFs8SrfXNZQKqEBRIlGnetB0pwcLAIqErMPxQMEuYVsJW4cXM31AZ5idUbDjCD2JwCdhKv
 Ww6CxYWAapYveM88gZFvASPDKkaR1NLi3PTcYkO94sTc4tK8dL3k/NxNjMAo2nbs5+YdjJc2
 Bh9iFOBgVOLhfRHyOk6INbGsuDL3EKMEB7OSCK/T2dNxQrwpiZVVqUX58UWlOanFhxhNgW6a
 yCwlmpwPjPC8knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2Mc5lX
 /b5i2C++cNmEpsWJIeEBZjUXQkyviPzIbf379fiZ2JzLugXL3jPXfoi/06glJLKK5btPgUSy
 6X/zTlZ283y1AwJrDh9UszktVDyrhnND7qqfZgLbT5/qtdvl6MTw7l+Ux3mp8L0BWuYy788v
 XBO4+V+eitiFuszl1/JmvFGNf7xp4qMjSizFGYmGWsxFxYkAqyN577gCAAA=
X-CMS-MailID: 20200619103654eucas1p227a1d6926d008ef21ba4e0b68a8de210
X-Msg-Generator: CA
X-RootMTR: 20200619103654eucas1p227a1d6926d008ef21ba4e0b68a8de210
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103654eucas1p227a1d6926d008ef21ba4e0b68a8de210
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103654eucas1p227a1d6926d008ef21ba4e0b68a8de210@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 02/36] drm: prime: use sgtable iterators
 in drm_prime_sg_to_page_addr_arrays()
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

UmVwbGFjZSB0aGUgY3VycmVudCBoYW5kLWNyYWZ0ZWQgY29kZSBmb3IgZXh0cmFjdGluZyBwYWdl
cyBhbmQgRE1BCmFkZHJlc3NlcyBmcm9tIHRoZSBnaXZlbiBzY2F0dGVybGlzdCBieSB0aGUgbXVj
aCBtb3JlIHJvYnVzdApjb2RlIGJhc2VkIG9uIHRoZSBnZW5lcmljIHNjYXR0ZXJsaXN0IGl0ZXJh
dG9ycyBhbmQgcmVjZW50bHkKaW50cm9kdWNlZCBzZ190YWJsZS1iYXNlZCB3cmFwcGVycy4gVGhl
IHJlc3VsdGluZyBjb2RlIGlzIHNpbXBsZSBhbmQKZWFzeSB0byB1bmRlcnN0YW5kLCBzbyB0aGUg
Y29tbWVudCBkZXNjcmliaW5nIHRoZSBvbGQgY29kZSBpcyBubwpsb25nZXIgbmVlZGVkLgoKU2ln
bmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyB8IDQ5ICsrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAzNCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKaW5kZXggMjI2Y2Q2YWQzOTg1Li5iNzE3ZTUyZTkw
OWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX3ByaW1lLmMKQEAgLTk5MCw0NSArOTkwLDI2IEBAIEVYUE9SVF9TWU1CT0wo
ZHJtX2dlbV9wcmltZV9pbXBvcnQpOwogaW50IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJy
YXlzKHN0cnVjdCBzZ190YWJsZSAqc2d0LCBzdHJ1Y3QgcGFnZSAqKnBhZ2VzLAogCQkJCSAgICAg
ZG1hX2FkZHJfdCAqYWRkcnMsIGludCBtYXhfZW50cmllcykKIHsKLQl1bnNpZ25lZCBjb3VudDsK
LQlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnOwotCXN0cnVjdCBwYWdlICpwYWdlOwotCXUzMiBwYWdl
X2xlbiwgcGFnZV9pbmRleDsKLQlkbWFfYWRkcl90IGFkZHI7Ci0JdTMyIGRtYV9sZW4sIGRtYV9p
bmRleDsKLQotCS8qCi0JICogU2NhdHRlcmxpc3QgZWxlbWVudHMgY29udGFpbnMgYm90aCBwYWdl
cyBhbmQgRE1BIGFkZHJlc3NlcywgYnV0Ci0JICogb25lIHNob3VkIG5vdCBhc3N1bWUgMToxIHJl
bGF0aW9uIGJldHdlZW4gdGhlbS4gVGhlIHNnLT5sZW5ndGggaXMKLQkgKiB0aGUgc2l6ZSBvZiB0
aGUgcGh5c2ljYWwgbWVtb3J5IGNodW5rIGRlc2NyaWJlZCBieSB0aGUgc2ctPnBhZ2UsCi0JICog
d2hpbGUgc2dfZG1hX2xlbihzZykgaXMgdGhlIHNpemUgb2YgdGhlIERNQSAoSU8gdmlydHVhbCkg
Y2h1bmsKLQkgKiBkZXNjcmliZWQgYnkgdGhlIHNnX2RtYV9hZGRyZXNzKHNnKS4KLQkgKi8KLQlw
YWdlX2luZGV4ID0gMDsKLQlkbWFfaW5kZXggPSAwOwotCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBz
Zywgc2d0LT5uZW50cywgY291bnQpIHsKLQkJcGFnZV9sZW4gPSBzZy0+bGVuZ3RoOwotCQlwYWdl
ID0gc2dfcGFnZShzZyk7Ci0JCWRtYV9sZW4gPSBzZ19kbWFfbGVuKHNnKTsKLQkJYWRkciA9IHNn
X2RtYV9hZGRyZXNzKHNnKTsKLQotCQl3aGlsZSAocGFnZXMgJiYgcGFnZV9sZW4gPiAwKSB7Ci0J
CQlpZiAoV0FSTl9PTihwYWdlX2luZGV4ID49IG1heF9lbnRyaWVzKSkKKwlzdHJ1Y3Qgc2dfZG1h
X3BhZ2VfaXRlciBkbWFfaXRlcjsKKwlzdHJ1Y3Qgc2dfcGFnZV9pdGVyIHBhZ2VfaXRlcjsKKwlz
dHJ1Y3QgcGFnZSAqKnAgPSBwYWdlczsKKwlkbWFfYWRkcl90ICphID0gYWRkcnM7CisKKwlpZiAo
cGFnZXMpIHsKKwkJZm9yX2VhY2hfc2d0YWJsZV9wYWdlKHNndCwgJnBhZ2VfaXRlciwgMCkgewor
CQkJaWYgKHAgLSBwYWdlcyA+PSBtYXhfZW50cmllcykKIAkJCQlyZXR1cm4gLTE7Ci0JCQlwYWdl
c1twYWdlX2luZGV4XSA9IHBhZ2U7Ci0JCQlwYWdlKys7Ci0JCQlwYWdlX2xlbiAtPSBQQUdFX1NJ
WkU7Ci0JCQlwYWdlX2luZGV4Kys7CisJCQkqcCsrID0gc2dfcGFnZV9pdGVyX3BhZ2UoJnBhZ2Vf
aXRlcik7CiAJCX0KLQkJd2hpbGUgKGFkZHJzICYmIGRtYV9sZW4gPiAwKSB7Ci0JCQlpZiAoV0FS
Tl9PTihkbWFfaW5kZXggPj0gbWF4X2VudHJpZXMpKQorCX0KKwlpZiAoYWRkcnMpIHsKKwkJZm9y
X2VhY2hfc2d0YWJsZV9kbWFfcGFnZShzZ3QsICZkbWFfaXRlciwgMCkgeworCQkJaWYgKGEgLSBh
ZGRycyA+PSBtYXhfZW50cmllcykKIAkJCQlyZXR1cm4gLTE7Ci0JCQlhZGRyc1tkbWFfaW5kZXhd
ID0gYWRkcjsKLQkJCWFkZHIgKz0gUEFHRV9TSVpFOwotCQkJZG1hX2xlbiAtPSBQQUdFX1NJWkU7
Ci0JCQlkbWFfaW5kZXgrKzsKKwkJCSphKysgPSBzZ19wYWdlX2l0ZXJfZG1hX2FkZHJlc3MoJmRt
YV9pdGVyKTsKIAkJfQogCX0KKwogCXJldHVybiAwOwogfQogRVhQT1JUX1NZTUJPTChkcm1fcHJp
bWVfc2dfdG9fcGFnZV9hZGRyX2FycmF5cyk7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

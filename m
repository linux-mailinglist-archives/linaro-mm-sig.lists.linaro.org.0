Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BC42E1D15AC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:36:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E406C66514
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:36:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D637966525; Wed, 13 May 2020 13:36:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BC4465FA0;
	Wed, 13 May 2020 13:33:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D870B65F8A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CB11565F91; Wed, 13 May 2020 13:33:05 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 2CD9C65F8A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:01 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133300euoutp013da159ed305cb5a659692c43d0be7af1~OmcLNmLnR2196121961euoutp01d
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133300euoutp013da159ed305cb5a659692c43d0be7af1~OmcLNmLnR2196121961euoutp01d
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133300eucas1p20002e9cdc628d3268278598f4364bece~OmcK5YtwM1009610096eucas1p2w;
 Wed, 13 May 2020 13:33:00 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id CE.F0.60679.C07FBBE5; Wed, 13
 May 2020 14:33:00 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133259eucas1p273f0e05005b7b1158d884295d35745fd~OmcKaiQ0k2378623786eucas1p2s;
 Wed, 13 May 2020 13:32:59 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133259eusmtrp1b523be1c96f1abf4612d97b3081404a1~OmcKZ24kJ1011910119eusmtrp1m;
 Wed, 13 May 2020 13:32:59 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-21-5ebbf70c6c31
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id BA.0A.08375.B07FBBE5; Wed, 13
 May 2020 14:32:59 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133258eusmtip1a63e165bb22888a2895f3f37f60fd350~OmcJuktVf3222032220eusmtip1z;
 Wed, 13 May 2020 13:32:58 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:12 +0200
Message-Id: <20200513133245.6408-5-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfSyUcRzf73m5e5izp6P5pZZ2G01bh972FBXNeNaWpba2WtTFk5ccdg8K
 a5G5IVpekjCj4sI5hTAm7hJJO4aZOG9jIwvJ27x35yH/fb7fz+fz/Xx/3/0IVNiMWxIBwWGM
 LFgSJOIZY9UtK9rjJsv13vbN3zEqRduGUB+zynFqqzoVpXoWZ3lUcelXhMpvdKQWekYRqmKs
 F6e663J5VFnzIJ8qmPuEUfLEIpxS/xnHqarfqbizKa3MUwK6YSkfoytKEnl0zdIITue1edLD
 z1oRuvLdE3pgcwyl0/sUgK7/GcOjn1eVALqyPZqerzh8VXDL2MmXCQqIYGR2F+4a+7dl1oLQ
 yv2PMmu7sRhQtC8JGBGQPAU1q9O8JGBMCMn3ANYUFGNcsQBg97CSzxXzAI5MpiG7lpaOSpQj
 FACu5uj2LGszctSg4pEOMGk6iWfA5mQ8gN9STAwilMxH4cq8HBgIM9IHjnyO3RZhpDVsTO7E
 DVhAOkHVy2E+F2cFSz80bQ81Is/DKV3jdhoku/hwpGUC40Su8PXbjB1sBqdaq3bMh2B7evKO
 IQ7AUW0ZnyuS9c97mgU4lSPUaVf1axD6/WxheZ2dAULSBTan23DQFPZNb18M1cO06lco1xbA
 BLmQm2EDs1tV/1PVnV0oh2n4I6EU4Q70BcBZhQZ5Aayy97LyASgBFkw4K/Vj2BPBzEMxK5Gy
 4cF+Yp8QaQXQ/632zdaFWlC3fk8DSAKITARUf723EJdEsJFSDYAEKjIXeJTrWwJfSWQUIwu5
 IwsPYlgNOEhgIgvByTe/vISknySMecAwoYxsl0UII8sYcMX+wPUNF5P7tblHGop1blkeizlb
 C2eQwNOu51zi3HXeSmWTxvmmdG3Oeuas+FK29oa8/FqGu3Xc46sD84nrpGeseqhLGD+lSCZB
 1Ea8oreGXTQb94o2PTp3W93797LKdrJArOpfjlVeTHQDKtAy0TjUETg43eRQKI4vTHAvEGGs
 v8ThGCpjJf8AktPkG1cDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xu7rc33fHGdxrVLLoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZrH2yF12i4Uft7JYtHUuY7U4
 +OEJq8WWNxNZHfg81sxbw+ix99sCFo9NqzrZPLZ/e8DqMe9koMf97uNMHpuX1Hvc/veY2WPy
 jeWMHrtvNrB59G1Zxeix+XS1x+dNcgG8UXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG
 5rFWRqZK+nY2Kak5mWWpRfp2CXoZJ6ftYCzYLFoxbcdllgbGZYJdjJwcEgImEsfOb2YGsYUE
 ljJKfG4uhYjLSJyc1sAKYQtL/LnWxdbFyAVU84lRYv+VfWAJNgFDia63EAkRgU5GiWndH9lB
 HGaBFcwSr/bNZQGpEhZIlGjZOAVsBYuAqsT+ngtg3bwCNhLrpt5nh1ghL7F6wwGwGk4BW4lX
 d/azQJyUL7F38T62CYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgRG0bZjPzfvYLy0
 MfgQowAHoxIPr8Wt3XFCrIllxZW5hxglOJiVRHj91gOFeFMSK6tSi/Lji0pzUosPMZoCHTWR
 WUo0OR8Y4Xkl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhgFOto3
 nBbydDOV/c2pbKEteHBj4rR4uSk+Ut88FKZV3F735WPhvlhrtabJv3aVHNB8brxM8KqSUt76
 ygXrDR3f1YjbdksLr//I8GtLeG+5g1zlooxk39Pa+zheuk364rHRpX1O2utPHp2coqKCB3Xa
 29zCdGySmfv7DtcJTKv66bBh05Xr15RYijMSDbWYi4oTAZ3DacK4AgAA
X-CMS-MailID: 20200513133259eucas1p273f0e05005b7b1158d884295d35745fd
X-Msg-Generator: CA
X-RootMTR: 20200513133259eucas1p273f0e05005b7b1158d884295d35745fd
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133259eucas1p273f0e05005b7b1158d884295d35745fd
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133259eucas1p273f0e05005b7b1158d884295d35745fd@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 05/38] drm: prime: use sgtable iterators
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
LS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNlZSAnW1BBVENIIHY1IDAwLzM4XSBEUk06IGZpeCBz
dHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9yaWdfbmVudHMgbWlzdXNlJyB0aHJlYWQ6Cmh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlvbW11LzIwMjAwNTEzMTMyMTE0LjYwNDYtMS1tLnN6
eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMg
fCA0NyArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAzMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1l
LmMKaW5kZXggMWQyZTVmZS4uZGZkZjRkNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Ry
bV9wcmltZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYwpAQCAtOTg1LDQ1ICs5
ODUsMjYgQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpkcm1fZ2VtX3ByaW1lX2ltcG9ydChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LAogaW50IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlz
KHN0cnVjdCBzZ190YWJsZSAqc2d0LCBzdHJ1Y3QgcGFnZSAqKnBhZ2VzLAogCQkJCSAgICAgZG1h
X2FkZHJfdCAqYWRkcnMsIGludCBtYXhfZW50cmllcykKIHsKLQl1bnNpZ25lZCBjb3VudDsKLQlz
dHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnOwotCXN0cnVjdCBwYWdlICpwYWdlOwotCXUzMiBwYWdlX2xl
biwgcGFnZV9pbmRleDsKLQlkbWFfYWRkcl90IGFkZHI7Ci0JdTMyIGRtYV9sZW4sIGRtYV9pbmRl
eDsKKwlzdHJ1Y3Qgc2dfZG1hX3BhZ2VfaXRlciBkbWFfaXRlcjsKKwlzdHJ1Y3Qgc2dfcGFnZV9p
dGVyIHBhZ2VfaXRlcjsKKwlzdHJ1Y3QgcGFnZSAqKnAgPSBwYWdlczsKKwlkbWFfYWRkcl90ICph
ID0gYWRkcnM7CiAKLQkvKgotCSAqIFNjYXR0ZXJsaXN0IGVsZW1lbnRzIGNvbnRhaW5zIGJvdGgg
cGFnZXMgYW5kIERNQSBhZGRyZXNzZXMsIGJ1dAotCSAqIG9uZSBzaG91ZCBub3QgYXNzdW1lIDE6
MSByZWxhdGlvbiBiZXR3ZWVuIHRoZW0uIFRoZSBzZy0+bGVuZ3RoIGlzCi0JICogdGhlIHNpemUg
b2YgdGhlIHBoeXNpY2FsIG1lbW9yeSBjaHVuayBkZXNjcmliZWQgYnkgdGhlIHNnLT5wYWdlLAot
CSAqIHdoaWxlIHNnX2RtYV9sZW4oc2cpIGlzIHRoZSBzaXplIG9mIHRoZSBETUEgKElPIHZpcnR1
YWwpIGNodW5rCi0JICogZGVzY3JpYmVkIGJ5IHRoZSBzZ19kbWFfYWRkcmVzcyhzZykuCi0JICov
Ci0JcGFnZV9pbmRleCA9IDA7Ci0JZG1hX2luZGV4ID0gMDsKLQlmb3JfZWFjaF9zZyhzZ3QtPnNn
bCwgc2csIHNndC0+bmVudHMsIGNvdW50KSB7Ci0JCXBhZ2VfbGVuID0gc2ctPmxlbmd0aDsKLQkJ
cGFnZSA9IHNnX3BhZ2Uoc2cpOwotCQlkbWFfbGVuID0gc2dfZG1hX2xlbihzZyk7Ci0JCWFkZHIg
PSBzZ19kbWFfYWRkcmVzcyhzZyk7Ci0KLQkJd2hpbGUgKHBhZ2VzICYmIHBhZ2VfbGVuID4gMCkg
ewotCQkJaWYgKFdBUk5fT04ocGFnZV9pbmRleCA+PSBtYXhfZW50cmllcykpCisJaWYgKHBhZ2Vz
KSB7CisJCWZvcl9lYWNoX3NndGFibGVfcGFnZShzZ3QsICZwYWdlX2l0ZXIsIDApIHsKKwkJCWlm
IChwIC0gcGFnZXMgPj0gbWF4X2VudHJpZXMpCiAJCQkJcmV0dXJuIC0xOwotCQkJcGFnZXNbcGFn
ZV9pbmRleF0gPSBwYWdlOwotCQkJcGFnZSsrOwotCQkJcGFnZV9sZW4gLT0gUEFHRV9TSVpFOwot
CQkJcGFnZV9pbmRleCsrOworCQkJKnArKyA9IHNnX3BhZ2VfaXRlcl9wYWdlKCZwYWdlX2l0ZXIp
OwogCQl9Ci0JCXdoaWxlIChhZGRycyAmJiBkbWFfbGVuID4gMCkgewotCQkJaWYgKFdBUk5fT04o
ZG1hX2luZGV4ID49IG1heF9lbnRyaWVzKSkKKwl9CisJaWYgKGFkZHJzKSB7CisJCWZvcl9lYWNo
X3NndGFibGVfZG1hX3BhZ2Uoc2d0LCAmZG1hX2l0ZXIsIDApIHsKKwkJCWlmIChhIC0gYWRkcnMg
Pj0gbWF4X2VudHJpZXMpCiAJCQkJcmV0dXJuIC0xOwotCQkJYWRkcnNbZG1hX2luZGV4XSA9IGFk
ZHI7Ci0JCQlhZGRyICs9IFBBR0VfU0laRTsKLQkJCWRtYV9sZW4gLT0gUEFHRV9TSVpFOwotCQkJ
ZG1hX2luZGV4Kys7CisJCQkqYSsrID0gc2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNzKCZkbWFfaXRl
cik7CiAJCX0KIAl9CisKIAlyZXR1cm4gMDsKIH0KIEVYUE9SVF9TWU1CT0woZHJtX3ByaW1lX3Nn
X3RvX3BhZ2VfYWRkcl9hcnJheXMpOwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

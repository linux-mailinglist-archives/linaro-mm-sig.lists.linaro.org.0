Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DAB1C3A7D
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 14:57:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A24A61992
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 12:57:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 27B0A66078; Mon,  4 May 2020 12:57:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2108766169;
	Mon,  4 May 2020 12:54:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ABE5366053
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 99B6061993; Mon,  4 May 2020 12:54:17 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 5F49161993
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:13 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125412euoutp01d7d94f74e88a69ce07e37ca074f4ad54~L1Guuj32m2860028600euoutp01j
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125412euoutp01d7d94f74e88a69ce07e37ca074f4ad54~L1Guuj32m2860028600euoutp01j
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125411eucas1p187c163f9e8fd81407167766963dbbde4~L1GuN24ZS1058810588eucas1p1c;
 Mon,  4 May 2020 12:54:11 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 22.12.60698.37010BE5; Mon,  4
 May 2020 13:54:11 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125411eucas1p1d516115c221176c0903d77336b563c26~L1Gts1o7x1172711727eucas1p1R;
 Mon,  4 May 2020 12:54:11 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125411eusmtrp280a77196c4cf0378539a7fe7a12ba0f5~L1GtsFZUI2826928269eusmtrp2E;
 Mon,  4 May 2020 12:54:11 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-40-5eb010739798
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 34.69.08375.37010BE5; Mon,  4
 May 2020 13:54:11 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125410eusmtip29d451bb482b7eb7481d4ed9f45c35f45~L1GtBHIfN0350503505eusmtip2L;
 Mon,  4 May 2020 12:54:10 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:41 +0200
Message-Id: <20200504125359.5678-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAKsWRmVeSWpSXmKPExsWy7djP87rFAhviDM78MrHoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZnFo6l5Gi7VH7rJbHPzwhNWB
 x2PNvDWMHpevXWT22PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkArijuGxSUnMyy1KL9O0SuDLed01lKbglWLGhp4e1gfEcXxcjJ4eEgInE0gmv2UFsIYEV
 jBLHP2l1MXIB2V8YJWau/s4O4XxmlLj5ehcTTMf6h+tYIRLLGSWut+1hgmtZunkWM0gVm4Ch
 RNfbLjYQW0SglVHiRC8PSBGzwAEmibZ3r8FGCQsESlxtagQrYhFQlbgzdSLYIbwCNhKbvp9g
 hVgnL7F6wwGgoRwcnAK2EjN71UHmSAgcYpfY/uov1EkuEtP2bmCGsIUlXh3fwg5hy0j83zmf
 CaKhmVHi4bm17BBOD6PE5aYZjBBV1hJ3zv1iA9nALKApsX6XPkTYUeL3vmesIGEJAT6JG28F
 QcLMQOakbdOZIcK8Eh1tQhDVahKzjq+DW3vwwiWoEg+J6dvcIOFzGOiC998YJzDKz0LYtYCR
 cRWjeGppcW56arFxXmq5XnFibnFpXrpecn7uJkZgOjr97/jXHYz7/iQdYhTgYFTi4Y34vD5O
 iDWxrLgy9xCjBAezkgjvjhagEG9KYmVValF+fFFpTmrxIUZpDhYlcV7jRS9jhQTSE0tSs1NT
 C1KLYLJMHJxSDYzpHm32pxJ2Xm/Y/3DWyt6JXxiDDQ6XaRhn5qr8vb34mv5uM8YE7Xdt7zqm
 pTtf/lX9rTpnxpnbk+vO8Eb84pgVyNwUeTTy+vsFwbdXnDzNb/lj2vvKzi9czrcfnj9anuYY
 oiCenCO8+lC2L9v/uf6Oj1l/3lOb+3/LwpyCT3aq9hHaVbE//GcosRRnJBpqMRcVJwIA8H0c
 GEMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEIsWRmVeSWpSXmKPExsVy+t/xe7rFAhviDBqfiln0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hszg0dS+jxdojd9ktDn54wurA
 47Fm3hpGj8vXLjJ77P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJ
 ehnvu6ayFNwSrNjQ08PawHiOr4uRk0NCwERi/cN1rF2MXBxCAksZJVZO2coOkZCRODmtgRXC
 Fpb4c62LDcQWEvjEKLFtOzOIzSZgKNH1FiTOxSEi0MkoMa37IzuIwyxwjEli4a+PLCBVwgL+
 Ev2t/8C6WQRUJe5MnQi2gVfARmLT9xNQG+QlVm84ADSVg4NTwFZiZq86xLJ8ibtP/7FMYORb
 wMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzA+th37uXkH46WNwYcYBTgYlXh4Iz6vjxNi
 TSwrrsw9xCjBwawkwrujBSjEm5JYWZValB9fVJqTWnyI0RToponMUqLJ+cDYzSuJNzQ1NLew
 NDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwNjwtWjqmlN9Dza7RPX92fDkxjPJ
 gm+R8sotSirvz7bx8kRVbdo56Z3/3yu2bzabGCuV79+8+FxPdOpbrT52ntVxb+tuR31ucuqZ
 t/uf8se7y6u0Y+UPCOVeTPGSvGW+8obpihnN3l5FP7K337mR/lEnKJz7yfLS/6/+zPjS8z6g
 +XjQBJvgOjklluKMREMt5qLiRACDSulppQIAAA==
X-CMS-MailID: 20200504125411eucas1p1d516115c221176c0903d77336b563c26
X-Msg-Generator: CA
X-RootMTR: 20200504125411eucas1p1d516115c221176c0903d77336b563c26
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125411eucas1p1d516115c221176c0903d77336b563c26
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125411eucas1p1d516115c221176c0903d77336b563c26@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Russell King <linux@armlinux.org.uk>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 03/21] drm: armada: fix sg_table nents
 vs. orig_nents misuse
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
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FybWFkYS9hcm1hZGFfZ2VtLmMgfCAxNCArKysrKysrKyst
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYXJtYWRhL2FybWFkYV9nZW0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jCmluZGV4IDk3NjY4NWYuLjc0OTY0N2YgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jCkBAIC00MDcsOCArNDA3LDEwIEBAIGludCBhcm1h
ZGFfZ2VtX3B3cml0ZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAog
CQkJc2dfc2V0X3BhZ2Uoc2csIHBhZ2UsIFBBR0VfU0laRSwgMCk7CiAJCX0KIAotCQlpZiAoZG1h
X21hcF9zZyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGRpcikgPT0gMCkgewot
CQkJbnVtID0gc2d0LT5uZW50czsKKwkJc2d0LT5uZW50cyA9IGRtYV9tYXBfc2coYXR0YWNoLT5k
ZXYsIHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVudHMsCisJCQkJCWRpcik7CisJCWlmIChzZ3QtPm5l
bnRzID09IDApIHsKKwkJCW51bSA9IHNndC0+b3JpZ19uZW50czsKIAkJCWdvdG8gcmVsZWFzZTsK
IAkJfQogCX0gZWxzZSBpZiAoZG9iai0+cGFnZSkgewpAQCAtNDE4LDcgKzQyMCw5IEBAIGludCBh
cm1hZGFfZ2VtX3B3cml0ZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRh
LAogCiAJCXNnX3NldF9wYWdlKHNndC0+c2dsLCBkb2JqLT5wYWdlLCBkb2JqLT5vYmouc2l6ZSwg
MCk7CiAKLQkJaWYgKGRtYV9tYXBfc2coYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRz
LCBkaXIpID09IDApCisJCXNndC0+bmVudHMgPSBkbWFfbWFwX3NnKGF0dGFjaC0+ZGV2LCBzZ3Qt
PnNnbCwgc2d0LT5vcmlnX25lbnRzLAorCQkJCQlkaXIpOworCQlpZiAoc2d0LT5uZW50cyA9PSAw
KQogCQkJZ290byBmcmVlX3RhYmxlOwogCX0gZWxzZSBpZiAoZG9iai0+bGluZWFyKSB7CiAJCS8q
IFNpbmdsZSBjb250aWd1b3VzIHBoeXNpY2FsIHJlZ2lvbiAtIG5vIHN0cnVjdCBwYWdlICovCkBA
IC00NDksMTEgKzQ1MywxMSBAQCBzdGF0aWMgdm9pZCBhcm1hZGFfZ2VtX3ByaW1lX3VubWFwX2Rt
YV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogCWludCBpOwogCiAJaWYg
KCFkb2JqLT5saW5lYXIpCi0JCWRtYV91bm1hcF9zZyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNn
dC0+bmVudHMsIGRpcik7CisJCWRtYV91bm1hcF9zZyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNn
dC0+b3JpZ19uZW50cywgZGlyKTsKIAogCWlmIChkb2JqLT5vYmouZmlscCkgewogCQlzdHJ1Y3Qg
c2NhdHRlcmxpc3QgKnNnOwotCQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+bmVudHMs
IGkpCisJCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzZywgc2d0LT5vcmlnX25lbnRzLCBpKQogCQkJ
cHV0X3BhZ2Uoc2dfcGFnZShzZykpOwogCX0KIAotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

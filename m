Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3DB1C3AAA
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 14:59:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86E5A61992
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 12:59:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 73CEB66169; Mon,  4 May 2020 12:59:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 122B86624C;
	Mon,  4 May 2020 12:54:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0CCF960B36
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EE6EC6606F; Mon,  4 May 2020 12:54:19 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 49BC360B36
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:15 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125414euoutp022a4c584a00759c5d0ae81a3ca1992ac3~L1Gwl9PB41778917789euoutp02V
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200504125414euoutp022a4c584a00759c5d0ae81a3ca1992ac3~L1Gwl9PB41778917789euoutp02V
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125414eucas1p102cc8208190adf70a6c931a13d161dcb~L1GwSbGfN1173511735eucas1p1a;
 Mon,  4 May 2020 12:54:14 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id F9.D2.60679.67010BE5; Mon,  4
 May 2020 13:54:14 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125413eucas1p23d4a2a1b9f3ffec973914228b0533d04~L1Gv5j4lt2227522275eucas1p2j;
 Mon,  4 May 2020 12:54:13 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504125413eusmtrp1b5c04b81695495550a5353122370e17a~L1Gv4zLML2497724977eusmtrp1W;
 Mon,  4 May 2020 12:54:13 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-9d-5eb010768123
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 45.06.07950.57010BE5; Mon,  4
 May 2020 13:54:13 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125412eusmtip2bd50e632461d52dfe361e3017e4a4c43~L1GvAWra40241002410eusmtip2H;
 Mon,  4 May 2020 12:54:12 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:44 +0200
Message-Id: <20200504125359.5678-6-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGc2c60wEZHArKFY2YJioQBUFIRkGi0Zh51MQHYgQtMmGxLdBh
 EXwQxIVUQDYjAmJZIjtlCyCLSFkKKTRsIaioVCABY9GETdGgDKP49p3//uf8595cApV0Yg5E
 qDKKVSllciluKWrq+2E8GkPVBhxLLiLoVOMAQtflaDH6d1MGSo+vfMXp8spehM5Lb0BoTac3
 XTqmBXRHIUIvj5sQun5mAqPHWvNxurrnvZju+jaL0Z25E+LTO5mqgirAdKxqRExx+wLCNK9O
 Y0zBwEXm40M9wjSU3GbebcygTNZkKWDa3iTgTFpjBWCW6vdfsLps6RPEykNjWJWb7zXLkLZp
 Ix6Rt+dm4WgDlgCSd6mBBQEpTzjS1IfxLKHKAOw2k2pgucnLAD4efAWEYgnAOuOyWA2IrY7m
 9HhBLwVQ87If3+7QjyQBfhROuUO1WY3zbEfdA7A/1Yo3oVQPCkc1E1smWyoQzqX2AX6qiDoI
 uwoieSQpH7iqixS2c4SVta9RXragTsGnqYf5KZB6K4aTdRpM8JyDhmc/EYFt4Wd9o1jgfdCQ
 lSISGpIANBmrxUKRAuDYnRwguLzhlHEd5xNQyhlqW90E+QwcWjejwoWt4aTZhpfRTcxsevJX
 JmHyfYngPgRz9TXbsV3Do6jADGzV1YuEx+0GsL3KKx045v7P0gBQAezZaE4RzHIeSjbWlZMp
 uGhlsOv1cEU92PxWhg39cgto/RWoAxQBpFak35I2QILJYrg4hQ5AApXakS13NyUySBYXz6rC
 r6qi5SynA3sJkdSePF604C+hgmVR7A2WjWBV/04RwsIhATjNG0769fRlOr9oc1Qo1bOPAuNL
 QVWs/nyY/9QwPVI2ZOgaUd9iLtSISw5w3Z4Zi+VJ5oREw5DXp0SP3oh552BEblys06xd8SzJ
 Sptec9Jlfx8szszdoTDZWp8wyeRnx6JsTFpydcW3Wxc796FdcSSMvJT/fCX7i4vFg932nFTE
 hcjcXVAVJ/sDtZ5v8lIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7qlAhviDNbv0LToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSxmT9jMZLFgv7XF8svrGS32LmSy+HLlIZPFpsfXWC0u75rDZrH2
 yF12i4MfnrBa7J91jd2B32PNvDWMHnu/LWDxWLznJZPH9m8PWD3mnQz0uN99nMlj85J6j9v/
 HjN7TL6xnNFj980GNo++LasYPT5vkgvgidKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0
 No+1MjJV0rezSUnNySxLLdK3S9DL2P3gHFvBbMmKhZc2szYwdoh2MXJwSAiYSGyfUNXFyMUh
 JLCUUWL/vQ6WLkZOoLiMxMlpDawQtrDEn2tdbBBFnxglHl2czgySYBMwlOh6C5EQEehklJjW
 /ZEdJMEscIZZ4vcGbxBbWCBB4ktjPwvINhYBVYmD8wpBTF4BG4lvhwoh5stLrN5wgBkkzClg
 KzGzVx0kLCSQL3H36T+WCYx8CxgZVjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgRGz7ZjP7fs
 YOx6F3yIUYCDUYmHd8PX9XFCrIllxZW5hxglOJiVRHh3tACFeFMSK6tSi/Lji0pzUosPMZoC
 XTSRWUo0OR8Y2Xkl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhh7
 br3cc0qS+dq6WtvIBdITq69fOKHrPX8L95raiLwluxRnHZl3aXOJ3JOn/YwfFtbnir6VXFGs
 Y3ClfTHzV756HuEtd8ysO5wtJwum2OeapH4Ilfz38b/0lIXXfTIWr3OLuaoud9uuzTpIIK58
 /p3VH5f2xbF+CE0QaN0jcP+I5rOSu58KDEOUWIozEg21mIuKEwFU8AbptAIAAA==
X-CMS-MailID: 20200504125413eucas1p23d4a2a1b9f3ffec973914228b0533d04
X-Msg-Generator: CA
X-RootMTR: 20200504125413eucas1p23d4a2a1b9f3ffec973914228b0533d04
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125413eucas1p23d4a2a1b9f3ffec973914228b0533d04
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125413eucas1p23d4a2a1b9f3ffec973914228b0533d04@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 06/21] drm: i915: fix sg_table nents vs.
 orig_nents misuse for dmabuf objects
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
bGwgYXMgc3RhdGVkCmluIGluY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaC4KClRoaXMgZHJpdmVy
IGNyZWF0aXZlbHkgdXNlcyBzZ190YWJsZS0+b3JpZ19uZW50cyB0byBzdG9yZSB0aGUgc2l6ZSBv
ZiB0aGUKYWxsb2NhdGUgc2NhdHRlcmxpc3QgYW5kIGlnbm9yZXMgdGhlIG51bWJlciBvZiB0aGUg
ZW50cmllcyByZXR1cm5lZCBieQpkbWFfbWFwX3NnIGZ1bmN0aW9uLiBUaGUgc2dfdGFibGUtPm9y
aWdfbmVudHMgaXMgKG1pcyl1c2VkIHRvIHByb3Blcmx5CmZyZWUgdGhlIChvdmVyKWFsbG9jYXRl
ZCBzY2F0dGVybGlzdC4KClRoaXMgcGF0Y2ggb25seSBmaXhlcyB0aGUgc2dfdGFibGUtPm5lbnRz
IGVudHJpZXMgaW4gdGhlIHNnX3RhYmxlIG9iamVjdHMKZXhwb3J0ZWQgYnkgdGhlIGRtYWJ1ZiBy
ZWxhdGVkIGZ1bmN0aW9ucywgc28gdGhlIG90aGVyIGRyaXZlcnMsIHdoaWNoCm1pZ2h0IHNoYXJl
IGJ1ZmZlcnMgd2l0aCBpOTE1IGNvdWxkIHJlbHkgb24gdGhlIG5lbnRzIGFuZCBvcmlnX25lbnRz
CnZhbHVlcy4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBz
YW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUgJ1tQQVRDSCB2MiAwMC8y
MV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmlnX25lbnRzIG1pc3VzZScg
dGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzQvMzczCi0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jICAgICAgIHwgOSArKysrKy0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19kbWFidWYuYyB8IDUgKysrLS0K
IDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwppbmRleCA3ZGI1YTc5Li45ODE1
OWRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVm
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCkBAIC00
OCw5ICs0OCwxMCBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICppOTE1X2dlbV9tYXBfZG1hX2J1
ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZQogCQlzcmMgPSBzZ19uZXh0KHNy
Yyk7CiAJfQogCi0JaWYgKCFkbWFfbWFwX3NnX2F0dHJzKGF0dGFjaG1lbnQtPmRldiwKLQkJCSAg
ICAgIHN0LT5zZ2wsIHN0LT5uZW50cywgZGlyLAotCQkJICAgICAgRE1BX0FUVFJfU0tJUF9DUFVf
U1lOQykpIHsKKwlzdC0+bmVudHMgPSBkbWFfbWFwX3NnX2F0dHJzKGF0dGFjaG1lbnQtPmRldiwK
KwkJCQkgICAgIHN0LT5zZ2wsIHN0LT5vcmlnX25lbnRzLCBkaXIsCisJCQkJICAgICBETUFfQVRU
Ul9TS0lQX0NQVV9TWU5DKTsKKwlpZiAoIXN0LT5uZW50cykgewogCQlyZXQgPSAtRU5PTUVNOwog
CQlnb3RvIGVycl9mcmVlX3NnOwogCX0KQEAgLTc0LDcgKzc1LDcgQEAgc3RhdGljIHZvaWQgaTkx
NV9nZW1fdW5tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50
LAogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBkbWFfYnVmX3RvX29iaihhdHRh
Y2htZW50LT5kbWFidWYpOwogCiAJZG1hX3VubWFwX3NnX2F0dHJzKGF0dGFjaG1lbnQtPmRldiwK
LQkJCSAgIHNnLT5zZ2wsIHNnLT5uZW50cywgZGlyLAorCQkJICAgc2ctPnNnbCwgc2ctPm9yaWdf
bmVudHMsIGRpciwKIAkJCSAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOwogCXNnX2ZyZWVfdGFi
bGUoc2cpOwogCWtmcmVlKHNnKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvbW9ja19kbWFidWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxm
dGVzdHMvbW9ja19kbWFidWYuYwppbmRleCBkZWJhZjdiLi41NzIzNTI1IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfZG1hYnVmLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2RtYWJ1Zi5jCkBAIC0yOCw3ICsy
OCw4IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKm1vY2tfbWFwX2RtYV9idWYoc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKIAkJc2cgPSBzZ19uZXh0KHNnKTsKIAl9CiAK
LQlpZiAoIWRtYV9tYXBfc2coYXR0YWNobWVudC0+ZGV2LCBzdC0+c2dsLCBzdC0+bmVudHMsIGRp
cikpIHsKKwlzdC0+bmVudHMgPSBkbWFfbWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgc3QtPnNnbCwg
c3QtPm9yaWdfbmVudHMsIGRpcik7CisJaWYgKCFzdC0+bmVudHMpIHsKIAkJZXJyID0gLUVOT01F
TTsKIAkJZ290byBlcnJfc3Q7CiAJfQpAQCAtNDYsNyArNDcsNyBAQCBzdGF0aWMgdm9pZCBtb2Nr
X3VubWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKIAkJ
CSAgICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnN0LAogCQkJICAgICAgIGVudW0gZG1hX2RhdGFfZGly
ZWN0aW9uIGRpcikKIHsKLQlkbWFfdW5tYXBfc2coYXR0YWNobWVudC0+ZGV2LCBzdC0+c2dsLCBz
dC0+bmVudHMsIGRpcik7CisJZG1hX3VubWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgc3QtPnNnbCwg
c3QtPm9yaWdfbmVudHMsIGRpcik7CiAJc2dfZnJlZV90YWJsZShzdCk7CiAJa2ZyZWUoc3QpOwog
fQotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==

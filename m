Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6C71CF17B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:22:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB3916189D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:22:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B825C618BF; Tue, 12 May 2020 09:22:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3420766053;
	Tue, 12 May 2020 09:04:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 192E3618C8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:04:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0D61A65F89; Tue, 12 May 2020 09:04:37 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 16923618C8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:11 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090110euoutp01993e9a31d1a8cad2ef77ea7d83970ddb~OPFi1Jdc22629726297euoutp01C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090110euoutp01993e9a31d1a8cad2ef77ea7d83970ddb~OPFi1Jdc22629726297euoutp01C
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090109eucas1p28fdb5bb29ed6b06e9e336a2e1e275255~OPFiY2PmA2661826618eucas1p2L;
 Tue, 12 May 2020 09:01:09 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id D1.6B.60698.5D56ABE5; Tue, 12
 May 2020 10:01:09 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090109eucas1p285ca10dceb29f43aae1c40814e2dec8d~OPFiICqKT2662326623eucas1p2O;
 Tue, 12 May 2020 09:01:09 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090109eusmtrp1824c3b6384cac839c061f9c0d9c734f6~OPFiGveko0183401834eusmtrp1R;
 Tue, 12 May 2020 09:01:09 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-fb-5eba65d51453
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 2F.E2.07950.5D56ABE5; Tue, 12
 May 2020 10:01:09 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090108eusmtip10b4755b58aa112adb5a9e915d5396de5~OPFhjWtln1283712837eusmtip1f;
 Tue, 12 May 2020 09:01:08 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:24 +0200
Message-Id: <20200512090058.14910-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSaUhUURjtzpv35jk68hzNuZgkDC0o5JL9eGBKYcQj+lEQUZnWlC+1HJcZ
 1xxRJp3GScWl0iRcwiWX0dx1LM1xR9Rcc0VNEdLMzC1FLMen+e+c852Pc+7HxRF+E2qGe/kE
 0BIfkbcQ47KrWjd7zgzSGjfbho9WZFx3B4ssTS1Byb9ViQg5sLaEkfmFLSwys8GBXB2YZpFl
 M0Mo2a95i5Hq5gkOmbVcySYVMbko2fhrFiUrfiSiFwypovQiQH1az2RTZQUxGFW9PoVS6R3X
 qckXbSyqPDuCGtuZQajk4TxA1Y1EYlR8RQGgyjvDqJWy49d4d7jn3WlvryBaYuN0n+uZN9MF
 /DTmISsZr0EkaBWogB4OiXOwPyearQJcnE+8BzBK2YUyZBXA3ldKFkNWAJxamOQcrKjq+jjM
 IA/A2Pnmw5XKrOeYzoURdlC1qNrDJkQ0gO1xBjoTQmQicHNFAVQAx42J23C74oTOwyZOwgX5
 EkuHeYQjnK/txZg0C1j44TOiw3qEE5zM2GYz+igHxvc5MvgSLEpP3deN4XxbxX5Tc9iZHLv3
 OEg8A3C6W81hSCyA/fJUwLgc4Hj3FqYrhBCWsERjw8gXoTZNtdcTEoZweNFIJyO7MKkqBWFk
 HlQq+Iz7FExrK/4f2/ilD2EwBVXz4/tXbNm9T9M3TgKwSDsMywSgAAjoQKnYg5ba+9DB1lKR
 WBro42H90FdcBna/VudO21oNqN9+oAUEDoQGPOXZWjc+KgqShoq1AOKI0IQX5bUr8dxFoU9p
 ie89SaA3LdWCYzhbKODZv/vuyic8RAH0E5r2oyUHUxauZxYJwk+/eeypLfXa5G9M3YoYat6Q
 TXE7XKuz/eRK/9+mwglSrK+R441+LyNTvnblJDnnDtEZ/fntgqSmIyUuEnv9Ype8uRu1hmNh
 Cv2tet4c3Wp0ZVQWPnS0KcSkY9FfdjXY3FItN5212YwfyU1wHkzbvqWW2S7fRB71/un5WXP3
 spAt9RTZWSESqegfSAa/TVYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xu7pXU3fFGbw6LWHRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyN
 zWOtjEyV9O1sUlJzMstSi/TtEvQylj8+y1iwS6bi8/xpjA2Mx8S7GDk5JARMJLp2X2LvYuTi
 EBJYyijR+/42O0RCRuLktAZWCFtY4s+1LjaIok+MEj933QErYhMwlOh6C5EQEehklJjW/RFs
 FLPACmaJV/vmsoBUCQuES/xdP5sNxGYRUJV43fSeCcTmFbCVeLXzIhvECnmJ1RsOMIPYnAJ2
 Evfn/wHrFRIolHh09S3LBEa+BYwMqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQLjaNuxn1t2
 MHa9Cz7EKMDBqMTD22G0M06INbGsuDL3EKMEB7OSCG9LJlCINyWxsiq1KD++qDQntfgQoynQ
 UROZpUST84ExnlcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgXFt
 +xFT6x6VxgNit3RnbOIN+tss1vber1yCf1lZQLnU12/hpVeXzy/55e5/+c3dL5WWKaa89+8X
 8wTOvPTPvHWN4zyf+Gxm5cQD3yM9Xn85fld98mTTN3abX6W6RriVWTLtX8ZZIJu19rRSguNV
 h2Mt807Hr94vzLTy3kKWYLf3DYonrzzLVVNiKc5INNRiLipOBABOOWz6uQIAAA==
X-CMS-MailID: 20200512090109eucas1p285ca10dceb29f43aae1c40814e2dec8d
X-Msg-Generator: CA
X-RootMTR: 20200512090109eucas1p285ca10dceb29f43aae1c40814e2dec8d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090109eucas1p285ca10dceb29f43aae1c40814e2dec8d
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090109eucas1p285ca10dceb29f43aae1c40814e2dec8d@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 04/38] drm: prime: add common helper to
 check scatterlist contiguity
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

SXQgaXMgYSBjb21tb24gb3BlcmF0aW9uIGRvbmUgYnkgRFJNIGRyaXZlcnMgdG8gY2hlY2sgdGhl
IGNvbnRpZ3VpdHkKb2YgdGhlIERNQS1tYXBwZWQgYnVmZmVyIGRlc2NyaWJlZCBieSBhIHNjYXR0
ZXJsaXN0IGluIHRoZQpzZ190YWJsZSBvYmplY3QuIExldCdzIGFkZCBhIGNvbW1vbiBoZWxwZXIg
Zm9yIHRoaXMgb3BlcmF0aW9uLgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5z
enlwcm93c2tpQHNhbXN1bmcuY29tPgotLS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNlZSAnW1BB
VENIIHY0IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9yaWdfbmVu
dHMgbWlzdXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDIw
MDUxMjA4NTcxMC4xNDY4OC0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS9ULwotLS0KIGRyaXZl
cnMvZ3B1L2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuYyB8IDIzICsrKy0tLS0tLS0tLS0tLS0tLS0t
LS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgICAgICAgICAgfCAyNiArKysrKysrKysr
KysrKysrKysrKysrKysrKwogaW5jbHVkZS9kcm0vZHJtX3ByaW1lLmggICAgICAgICAgICAgIHwg
IDIgKysKIDMgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fY21hX2hlbHBlci5jIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9nZW1fY21hX2hlbHBlci5jCmluZGV4IDEyZTk4ZmIuLjlmMmQxM2Ug
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9jbWFfaGVscGVyLmMKQEAgLTQ3MSwyNiArNDcxLDkgQEAg
c3RydWN0IGRybV9nZW1fb2JqZWN0ICoKIHsKIAlzdHJ1Y3QgZHJtX2dlbV9jbWFfb2JqZWN0ICpj
bWFfb2JqOwogCi0JaWYgKHNndC0+bmVudHMgIT0gMSkgewotCQkvKiBjaGVjayBpZiB0aGUgZW50
cmllcyBpbiB0aGUgc2dfdGFibGUgYXJlIGNvbnRpZ3VvdXMgKi8KLQkJZG1hX2FkZHJfdCBuZXh0
X2FkZHIgPSBzZ19kbWFfYWRkcmVzcyhzZ3QtPnNnbCk7Ci0JCXN0cnVjdCBzY2F0dGVybGlzdCAq
czsKLQkJdW5zaWduZWQgaW50IGk7Ci0KLQkJZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHMsIHNndC0+
bmVudHMsIGkpIHsKLQkJCS8qCi0JCQkgKiBzZ19kbWFfYWRkcmVzcyhzKSBpcyBvbmx5IHZhbGlk
IGZvciBlbnRyaWVzCi0JCQkgKiB0aGF0IGhhdmUgc2dfZG1hX2xlbihzKSAhPSAwCi0JCQkgKi8K
LQkJCWlmICghc2dfZG1hX2xlbihzKSkKLQkJCQljb250aW51ZTsKLQotCQkJaWYgKHNnX2RtYV9h
ZGRyZXNzKHMpICE9IG5leHRfYWRkcikKLQkJCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKLQot
CQkJbmV4dF9hZGRyID0gc2dfZG1hX2FkZHJlc3MocykgKyBzZ19kbWFfbGVuKHMpOwotCQl9Ci0J
fQorCS8qIGNoZWNrIGlmIHRoZSBlbnRyaWVzIGluIHRoZSBzZ190YWJsZSBhcmUgY29udGlndW91
cyAqLworCWlmIChkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShzZ3QpIDwgYXR0YWNoLT5k
bWFidWYtPnNpemUpCisJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwogCiAJLyogQ3JlYXRlIGEg
Q01BIEdFTSBidWZmZXIuICovCiAJY21hX29iaiA9IF9fZHJtX2dlbV9jbWFfY3JlYXRlKGRldiwg
YXR0YWNoLT5kbWFidWYtPnNpemUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9w
cmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCmluZGV4IDI4Mjc3NGUuLjFkMmU1
ZmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX3ByaW1lLmMKQEAgLTgyNiw2ICs4MjYsMzIgQEAgc3RydWN0IHNnX3RhYmxl
ICpkcm1fcHJpbWVfcGFnZXNfdG9fc2coc3RydWN0IHBhZ2UgKipwYWdlcywgdW5zaWduZWQgaW50
IG5yX3BhZ2UKIEVYUE9SVF9TWU1CT0woZHJtX3ByaW1lX3BhZ2VzX3RvX3NnKTsKIAogLyoqCisg
KiBkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZSAtIHJldHVybnMgdGhlIGNvbnRpZ3VvdXMg
c2l6ZSBvZiB0aGUgYnVmZmVyCisgKiBAc2d0OiBzZ190YWJsZSBkZXNjcmliaW5nIHRoZSBidWZm
ZXIgdG8gY2hlY2sKKyAqCisgKiBUaGlzIGhlbHBlciBjYWxjdWxhdGVzIHRoZSBjb250aWd1b3Vz
IHNpemUgaW4gdGhlIERNQSBhZGRyZXNzIHNwYWNlCisgKiBvZiB0aGUgdGhlIGJ1ZmZlciBkZXNj
cmliZWQgYnkgdGhlIHByb3ZpZGVkIHNnX3RhYmxlLgorICoKKyAqIFRoaXMgaXMgdXNlZnVsIGZv
ciBpbXBsZW1lbnRpbmcKKyAqICZkcm1fZ2VtX29iamVjdF9mdW5jcy5nZW1fcHJpbWVfaW1wb3J0
X3NnX3RhYmxlLgorICovCit1bnNpZ25lZCBsb25nIGRybV9wcmltZV9nZXRfY29udGlndW91c19z
aXplKHN0cnVjdCBzZ190YWJsZSAqc2d0KQoreworCWRtYV9hZGRyX3QgZXhwZWN0ZWQgPSBzZ19k
bWFfYWRkcmVzcyhzZ3QtPnNnbCk7CisJc3RydWN0IHNnX2RtYV9wYWdlX2l0ZXIgZG1hX2l0ZXI7
CisJdW5zaWduZWQgbG9uZyBzaXplID0gMDsKKworCWZvcl9lYWNoX3NndGFibGVfZG1hX3BhZ2Uo
c2d0LCAmZG1hX2l0ZXIsIDApIHsKKwkJaWYgKHNnX3BhZ2VfaXRlcl9kbWFfYWRkcmVzcygmZG1h
X2l0ZXIpICE9IGV4cGVjdGVkKQorCQkJYnJlYWs7CisJCWV4cGVjdGVkICs9IFBBR0VfU0laRTsK
KwkJc2l6ZSArPSBQQUdFX1NJWkU7CisJfQorCXJldHVybiBzaXplOworfQorRVhQT1JUX1NZTUJP
TChkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZSk7CisKKy8qKgogICogZHJtX2dlbV9wcmlt
ZV9leHBvcnQgLSBoZWxwZXIgbGlicmFyeSBpbXBsZW1lbnRhdGlvbiBvZiB0aGUgZXhwb3J0IGNh
bGxiYWNrCiAgKiBAb2JqOiBHRU0gb2JqZWN0IHRvIGV4cG9ydAogICogQGZsYWdzOiBmbGFncyBs
aWtlIERSTV9DTE9FWEVDIGFuZCBEUk1fUkRXUgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJt
X3ByaW1lLmggYi9pbmNsdWRlL2RybS9kcm1fcHJpbWUuaAppbmRleCA5YWY3NDIyLi40N2VmMTE2
IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fcHJpbWUuaAorKysgYi9pbmNsdWRlL2RybS9k
cm1fcHJpbWUuaApAQCAtOTIsNiArOTIsOCBAQCB2b2lkIGRybV9nZW1fdW5tYXBfZG1hX2J1Zihz
dHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCiBzdHJ1Y3QgZG1hX2J1ZiAqZHJtX2dl
bV9wcmltZV9leHBvcnQoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosCiAJCQkJICAgICBpbnQg
ZmxhZ3MpOwogCit1bnNpZ25lZCBsb25nIGRybV9wcmltZV9nZXRfY29udGlndW91c19zaXplKHN0
cnVjdCBzZ190YWJsZSAqc2d0KTsKKwogLyogaGVscGVyIGZ1bmN0aW9ucyBmb3IgaW1wb3J0aW5n
ICovCiBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmRybV9nZW1fcHJpbWVfaW1wb3J0X2RldihzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LAogCQkJCQkJc3RydWN0IGRtYV9idWYgKmRtYV9idWYsCi0tIAox
LjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6421BBF09
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:21:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E21F61993
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:21:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 715E566030; Tue, 28 Apr 2020 13:21:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D736461868;
	Tue, 28 Apr 2020 13:20:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C8B2B61792
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B06D1618E2; Tue, 28 Apr 2020 13:20:26 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id C319C61792
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:24 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132023euoutp02a39ba66598b40c2ba3155b4da1dd09f0~J-l4CBnRy2982129821euoutp02S
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200428132023euoutp02a39ba66598b40c2ba3155b4da1dd09f0~J-l4CBnRy2982129821euoutp02S
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200428132022eucas1p21ce0b832f79f0c400af0ca3e360302c7~J-l3m31dU2651426514eucas1p2G;
 Tue, 28 Apr 2020 13:20:22 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 5E.B1.60679.69D28AE5; Tue, 28
 Apr 2020 14:20:22 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132022eucas1p22f64f56bb61cf6ee73892a9fc9ce7e09~J-l3W-MeP1084310843eucas1p2P;
 Tue, 28 Apr 2020 13:20:22 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132022eusmtrp2ba1c070d9430d2c29256255a6a80a586~J-l3WMKUw2076720767eusmtrp2g;
 Tue, 28 Apr 2020 13:20:22 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-83-5ea82d96ecb7
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 76.96.08375.69D28AE5; Tue, 28
 Apr 2020 14:20:22 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132021eusmtip2cb467ccb74ffa948702f50d5df3361ca~J-l2xWzcX1116911169eusmtip2T;
 Tue, 28 Apr 2020 13:20:21 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:19:49 +0200
Message-Id: <20200428132005.21424-2-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrIKsWRmVeSWpSXmKPExsWy7djP87rTdFfEGbTdMLboPXeSyWLp+kZ2
 i40z1rNaNB06xWbxf9tEZosrX9+zWaxcfZTJYvaEzUwWC/ZbW3y58pDJYtPja6wWl3fNYbNY
 e+Quu8XBD09YLU7d/czuwO+xZt4aRo+93xaweNy5tofNY/u3B6we97uPM3lsXlLvcfvfY2aP
 yTeWM3rsvtnA5tG3ZRWjx+dNcgHcUVw2Kak5mWWpRfp2CVwZvXcjCtrkKtZMusnawNgl2cXI
 ySEhYCJx+PZG1i5GLg4hgRWMEisu/GODcL4wSlx8/o0ZwvnMKNFxfQ4jTMuqE73sEInljBL7
 l21igmv5snA+M0gVm4ChRNfbLjYQW0SglVHiRC8PSBGzwDZmiSfLj7CDJIQFPCR6nv8Ga2AR
 UJVovLcBrIFXwFZi3eKJzBDr5CVWbzgAZnMK2EksffQU7EAJgWvsErfn/WaBKHKReNe1nAnC
 FpZ4dXwLO4QtI/F/53wmiIZmRomH59ayQzg9jBKXm2ZAfWQtcefcL6CxHED3aUqs36UPEXaU
 WP/zDgtIWEKAT+LGW0GQMDOQOWnbdGaIMK9ER5sQRLWaxKzj6+DWHrxwCep+D4lnxzexQEJo
 IqPElm9HWScwys9CWLaAkXEVo3hqaXFuemqxUV5quV5xYm5xaV66XnJ+7iZGYMI6/e/4lx2M
 u/4kHWIU4GBU4uHdwLMiTog1say4MvcQowQHs5II76OMZXFCvCmJlVWpRfnxRaU5qcWHGKU5
 WJTEeY0XvYwVEkhPLEnNTk0tSC2CyTJxcEo1MPokdkzmqYpJdxXc8qip/uF8D3O5+W3TeM1f
 t2Vut+QrnXh9mWlaeCxzmo1y/eWF+4qvT5YK+pnDtu+H1PLztTbKmr4bdpZrbLj0weXxmv3a
 Wy/7ttwWWmhwTbCssYpfrKbSP9Oxx8n3coSLS3n3wu6W1+brrv2OYWP6l7M7VC86Rvr6l1tr
 lViKMxINtZiLihMBMjcQ91QDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7rTdFfEGWy4oGTRe+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQyeu9GFLTJVayZdJO1gbFLsouRk0NCwERi1Yle9i5GLg4hgaWM
 ElPm7WSCSMhInJzWwAphC0v8udbFBlH0iVFi7obX7CAJNgFDia63EAkRgU5GiWndH8FGMQsc
 YJboPn8SbJSwgIdEz/PfzCA2i4CqROO9DWwgNq+ArcS6xROZIVbIS6zecADM5hSwk1j66ClQ
 DQfQOluJyy25Exj5FjAyrGIUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiMnm3Hfm7ewXhpY/Ah
 RgEORiUe3g08K+KEWBPLiitzDzFKcDArifA+ylgWJ8SbklhZlVqUH19UmpNafIjRFOimicxS
 osn5wMjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAmDOx+qnA
 0xyzsJxl/Qvs6uaeLnrenZ50wKe08uDGcoYtGc8KT805Ub8ge3XGH0N5Ro2tOz8lVthNvb/I
 1PjFtyXfHM+UZ+75ahvG8ucY65ylP5VuP/vZoS06e1XgNA0b/n8vCne987FT/n1283eJU9ca
 F01cnx1a9bzTctWe2QmiVdoz6799zVZiKc5INNRiLipOBADvNBb8tAIAAA==
X-CMS-MailID: 20200428132022eucas1p22f64f56bb61cf6ee73892a9fc9ce7e09
X-Msg-Generator: CA
X-RootMTR: 20200428132022eucas1p22f64f56bb61cf6ee73892a9fc9ce7e09
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132022eucas1p22f64f56bb61cf6ee73892a9fc9ce7e09
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132022eucas1p22f64f56bb61cf6ee73892a9fc9ce7e09@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 01/17] drm: core: fix sg_table nents vs.
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2NhY2hl
LmMgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBl
ci5jIHwgNyArKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgICAgICAgICAgICB8
IDkgKysrKystLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDggZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9jYWNoZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9jYWNoZS5jCmluZGV4IDAzZTAxYjAuLjYzYmQ0OTcgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fY2FjaGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nh
Y2hlLmMKQEAgLTEyNyw3ICsxMjcsNyBAQCBzdGF0aWMgdm9pZCBkcm1fY2FjaGVfZmx1c2hfY2xm
bHVzaChzdHJ1Y3QgcGFnZSAqcGFnZXNbXSwKIAkJc3RydWN0IHNnX3BhZ2VfaXRlciBzZ19pdGVy
OwogCiAJCW1iKCk7IC8qQ0xGTFVTSCBpcyBvcmRlcmVkIG9ubHkgYnkgdXNpbmcgbWVtb3J5IGJh
cnJpZXJzKi8KLQkJZm9yX2VhY2hfc2dfcGFnZShzdC0+c2dsLCAmc2dfaXRlciwgc3QtPm5lbnRz
LCAwKQorCQlmb3JfZWFjaF9zZ19wYWdlKHN0LT5zZ2wsICZzZ19pdGVyLCBzdC0+b3JpZ19uZW50
cywgMCkKIAkJCWRybV9jbGZsdXNoX3BhZ2Uoc2dfcGFnZV9pdGVyX3BhZ2UoJnNnX2l0ZXIpKTsK
IAkJbWIoKTsgLypNYWtlIHN1cmUgdGhhdCBhbGwgY2FjaGUgbGluZSBlbnRyeSBpcyBmbHVzaGVk
Ki8KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwppbmRleCBkZjMxZTU3Li5m
NDdjYWE3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwpAQCAtMTE4LDcg
KzExOCw3IEBAIHZvaWQgZHJtX2dlbV9zaG1lbV9mcmVlX29iamVjdChzdHJ1Y3QgZHJtX2dlbV9v
YmplY3QgKm9iaikKIAl9IGVsc2UgewogCQlpZiAoc2htZW0tPnNndCkgewogCQkJZG1hX3VubWFw
X3NnKG9iai0+ZGV2LT5kZXYsIHNobWVtLT5zZ3QtPnNnbCwKLQkJCQkgICAgIHNobWVtLT5zZ3Qt
Pm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJCQkJICAgICBzaG1lbS0+c2d0LT5vcmlnX25l
bnRzLCBETUFfQklESVJFQ1RJT05BTCk7CiAJCQlzZ19mcmVlX3RhYmxlKHNobWVtLT5zZ3QpOwog
CQkJa2ZyZWUoc2htZW0tPnNndCk7CiAJCX0KQEAgLTM5Niw3ICszOTYsNyBAQCB2b2lkIGRybV9n
ZW1fc2htZW1fcHVyZ2VfbG9ja2VkKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQogCVdBUk5f
T04oIWRybV9nZW1fc2htZW1faXNfcHVyZ2VhYmxlKHNobWVtKSk7CiAKIAlkbWFfdW5tYXBfc2co
b2JqLT5kZXYtPmRldiwgc2htZW0tPnNndC0+c2dsLAotCQkgICAgIHNobWVtLT5zZ3QtPm5lbnRz
LCBETUFfQklESVJFQ1RJT05BTCk7CisJCSAgICAgc2htZW0tPnNndC0+b3JpZ19uZW50cywgRE1B
X0JJRElSRUNUSU9OQUwpOwogCXNnX2ZyZWVfdGFibGUoc2htZW0tPnNndCk7CiAJa2ZyZWUoc2ht
ZW0tPnNndCk7CiAJc2htZW0tPnNndCA9IE5VTEw7CkBAIC02MjMsNyArNjIzLDggQEAgc3RydWN0
IHNnX3RhYmxlICpkcm1fZ2VtX3NobWVtX2dldF9wYWdlc19zZ3Qoc3RydWN0IGRybV9nZW1fb2Jq
ZWN0ICpvYmopCiAJCWdvdG8gZXJyX3B1dF9wYWdlczsKIAl9CiAJLyogTWFwIHRoZSBwYWdlcyBm
b3IgdXNlIGJ5IHRoZSBoL3cuICovCi0JZG1hX21hcF9zZyhvYmotPmRldi0+ZGV2LCBzZ3QtPnNn
bCwgc2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCXNndC0+bmVudHMgPSBkbWFfbWFw
X3NnKG9iai0+ZGV2LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVudHMsCisJCQkJRE1BX0JJ
RElSRUNUSU9OQUwpOwogCiAJc2htZW0tPnNndCA9IHNndDsKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCmluZGV4
IDI4Mjc3NGUuLmYzZTJkMmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKQEAgLTYyNiw4ICs2MjYsOSBAQCBz
dHJ1Y3Qgc2dfdGFibGUgKmRybV9nZW1fbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqYXR0YWNoLAogCWVsc2UKIAkJc2d0ID0gb2JqLT5kZXYtPmRyaXZlci0+Z2VtX3ByaW1l
X2dldF9zZ190YWJsZShvYmopOwogCi0JaWYgKCFkbWFfbWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2
LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyLAotCQkJICAgICAgRE1BX0FUVFJfU0tJUF9DUFVf
U1lOQykpIHsKKwlzZ3QtPm5lbnRzID0gZG1hX21hcF9zZ19hdHRycyhhdHRhY2gtPmRldiwgc2d0
LT5zZ2wsIHNndC0+b3JpZ19uZW50cywKKwkJCQkgICAgICBkaXIsIERNQV9BVFRSX1NLSVBfQ1BV
X1NZTkMpOworCWlmICghc2d0LT5uZW50cykgewogCQlzZ19mcmVlX3RhYmxlKHNndCk7CiAJCWtm
cmVlKHNndCk7CiAJCXNndCA9IEVSUl9QVFIoLUVOT01FTSk7CkBAIC02NTIsNyArNjUzLDcgQEAg
dm9pZCBkcm1fZ2VtX3VubWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0
YWNoLAogCWlmICghc2d0KQogCQlyZXR1cm47CiAKLQlkbWFfdW5tYXBfc2dfYXR0cnMoYXR0YWNo
LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIsCisJZG1hX3VubWFwX3NnX2F0dHJzKGF0
dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5vcmlnX25lbnRzLCBkaXIsCiAJCQkgICBETUFfQVRU
Ul9TS0lQX0NQVV9TWU5DKTsKIAlzZ19mcmVlX3RhYmxlKHNndCk7CiAJa2ZyZWUoc2d0KTsKQEAg
LTk3NSw3ICs5NzYsNyBAQCBpbnQgZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXMoc3Ry
dWN0IHNnX3RhYmxlICpzZ3QsIHN0cnVjdCBwYWdlICoqcGFnZXMsCiAJICovCiAJcGFnZV9pbmRl
eCA9IDA7CiAJZG1hX2luZGV4ID0gMDsKLQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+
bmVudHMsIGNvdW50KSB7CisJZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm9yaWdfbmVu
dHMsIGNvdW50KSB7CiAJCXBhZ2VfbGVuID0gc2ctPmxlbmd0aDsKIAkJcGFnZSA9IHNnX3BhZ2Uo
c2cpOwogCQlkbWFfbGVuID0gc2dfZG1hX2xlbihzZyk7Ci0tIAoxLjkuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

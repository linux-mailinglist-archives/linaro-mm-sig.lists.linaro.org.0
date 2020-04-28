Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 271E41BBF7C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:28:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D2AF61792
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 13:28:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3A1D8619C4; Tue, 28 Apr 2020 13:28:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 807D1619F1;
	Tue, 28 Apr 2020 13:21:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DADE461951
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CEEBB619AC; Tue, 28 Apr 2020 13:20:38 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id CC4E061951
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:29 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200428132029euoutp01fcafbe6fe89c88e0ea5ad8749f3a28bd~J-l9XgCRo1812618126euoutp01e
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 13:20:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200428132029euoutp01fcafbe6fe89c88e0ea5ad8749f3a28bd~J-l9XgCRo1812618126euoutp01e
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200428132028eucas1p2186ba166ce39fbe9de18c170b40f2194~J-l9EfGAn2652726527eucas1p2P;
 Tue, 28 Apr 2020 13:20:28 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 48.B4.61286.C9D28AE5; Tue, 28
 Apr 2020 14:20:28 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200428132028eucas1p155a84ab14c6a6820b4c8240f01e98905~J-l8oHmZU3058230582eucas1p1V;
 Tue, 28 Apr 2020 13:20:28 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200428132028eusmtrp2596d757d384520465f7f2e4abf86e5bf~J-l8naNCZ2140321403eusmtrp2L;
 Tue, 28 Apr 2020 13:20:28 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-7b-5ea82d9c54af
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 70.E3.07950.C9D28AE5; Tue, 28
 Apr 2020 14:20:28 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200428132027eusmtip2b741095e65b1ade0da2d1555b2832bf6~J-l79aO_m1116911169eusmtip2X;
 Tue, 28 Apr 2020 13:20:27 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 28 Apr 2020 15:19:58 +0200
Message-Id: <20200428132005.21424-11-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428132005.21424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURiFc2famaFSHQqEG8QljWIwgBI1uQrBJUQnvGhIfDGIVpkASoF0
 AMEHRVwgKMhiENEoLkBZi4CALEEqWilSsCBCAKUsBk0QAxQoiWDHqfr2/ec/556bm0vhMq3Y
 lYqIimVVUYpIOSER1b21dHs98FKH7NRWb0Pphg4MFWqukOh5nkaMkrV6Aq3WZeGozzxDoJKy
 Nxi6n1mDoYJWXzTfZ8JQ9Xi/GPU2PiBQRfsIidp+ToiRfmSOPLCOKX9YDpiWhQIRM9zfTDD1
 C6Ni5stNHcbUPLvMDK2M40zOQDFgmgaTCCajthQwc9Ubj605IfELZSMj4lnVDv/TkvA7TbNk
 zD064evzb0QSGJSmATsK0rvhr6JskAYklIxWA6ix1GPCMA9gjimFFIY5ADOeGsDfyOt3BbZI
 MYCFA2bwL6KdmcJ4F0H7wLTpNIJnJ/o6gO/S7XkTTtfhcKK4neQXjnQgzG7tFfMsorfCqs9L
 OM9S2h9a1FO2uk2wrOrVH93OqheOTRL8QZA2krBnqJMQTAHwR02OjR3hd10tKbAbXH35CBMC
 VwE0GSpIYbgFYG9ynq3CFw4blq1pyno/D6hp3CHIB+HS42GSlyG9Fg5MO/AybsXsuru4IEth
 6g2Z4HaH+brKf7VtPUZcYAaazHrbo2YBmLRsJDPBpvz/ZQUAlAIXNo5ThrGcTxR7wZtTKLm4
 qDDvs9HKamD9WZ0rutkGYDae0QKaAnJ7aZW9OkQmVsRziUotgBQud5KOhReFyKShisSLrCr6
 lCoukuW0YD0lkrtIdz35dlJGhyli2fMsG8Oq/m4xys41CQRLk8cemeJyRysPyLqaU6rC540x
 WYfyPfYEcZH6zXLnAIejJTnubYHnEj6tpl/qEKv7j3f3ex7WdUUUOjOL+zqvH2VqNliCy71P
 76eQm9907orj4aCGF1v2tuUnf0y9XNsySROG96rulawbs0TsB3us8ghCntG5i5rbfYPXLP5y
 EReu8NmOqzjFb/bXJ8pVAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xe7pzdFfEGZxewmfRe+4kk8XS9Y3s
 FhtnrGe1aDp0is3i/7aJzBZXvr5ns1i5+iiTxewJm5ksFuy3tvhy5SGTxabH11gtLu+aw2ax
 9shddouDH56wWpy6+5ndgd9jzbw1jB57vy1g8bhzbQ+bx/ZvD1g97ncfZ/LYvKTe4/a/x8we
 k28sZ/TYfbOBzaNvyypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOt
 jEyV9O1sUlJzMstSi/TtEvQypuz+xF4wU6Di2caXbA2MN3m7GDk5JARMJA6fWMDYxcjFISSw
 lFFixoMdTBAJGYmT0xpYIWxhiT/Xutggij4xSqxYMxmsiE3AUKLrLURCRKCTUWJa90d2EIdZ
 4ACzRPf5k2BVwgJeEpP2XwYbxSKgKrHh3g9mEJtXwE7i54oXjBAr5CVWbzgAFucEii999BRo
 KgfQOluJyy25Exj5FjAyrGIUSS0tzk3PLTbSK07MLS7NS9dLzs/dxAiMn23Hfm7Zwdj1LvgQ
 owAHoxIP7waeFXFCrIllxZW5hxglOJiVRHgfZSyLE+JNSaysSi3Kjy8qzUktPsRoCnTTRGYp
 0eR8YGznlcQbmhqaW1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpg7KgNmeW3
 I3e37OTv6+YzN584e1GvJWZdufZqj76QrKBTPs+vCZvxzLBRT176SKfOuvh/Q4An48/VW5r7
 XG713tpYe2WKeWnk29fT939f96vedMIsr8cnm366Zk1RNve863fplXfwNGv+hs1qDqtbPPue
 RjBGzjs1b5aAMevHpAvn9/7vDH/wQYmlOCPRUIu5qDgRAGBApzi1AgAA
X-CMS-MailID: 20200428132028eucas1p155a84ab14c6a6820b4c8240f01e98905
X-Msg-Generator: CA
X-RootMTR: 20200428132028eucas1p155a84ab14c6a6820b4c8240f01e98905
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200428132028eucas1p155a84ab14c6a6820b4c8240f01e98905
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132028eucas1p155a84ab14c6a6820b4c8240f01e98905@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [RFC 10/17] drm: radeon: fix sg_table nents vs.
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3Jh
ZGVvbl90dG0uYyB8IDEwICsrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
YWRlb25fdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl90dG0uYwppbmRleCA1
ZDUwYzllLi40NzcwODgwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVv
bl90dG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl90dG0uYwpAQCAtNDgx
LDcgKzQ4MSw3IEBAIHN0YXRpYyBpbnQgcmFkZW9uX3R0bV90dF9waW5fdXNlcnB0cihzdHJ1Y3Qg
dHRtX3R0ICp0dG0pCiB7CiAJc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYgPSByYWRlb25fZ2V0
X3JkZXYodHRtLT5iZGV2KTsKIAlzdHJ1Y3QgcmFkZW9uX3R0bV90dCAqZ3R0ID0gKHZvaWQgKil0
dG07Ci0JdW5zaWduZWQgcGlubmVkID0gMCwgbmVudHM7CisJdW5zaWduZWQgcGlubmVkID0gMDsK
IAlpbnQgcjsKIAogCWludCB3cml0ZSA9ICEoZ3R0LT51c2VyZmxhZ3MgJiBSQURFT05fR0VNX1VT
RVJQVFJfUkVBRE9OTFkpOwpAQCAtNTIyLDggKzUyMiw4IEBAIHN0YXRpYyBpbnQgcmFkZW9uX3R0
bV90dF9waW5fdXNlcnB0cihzdHJ1Y3QgdHRtX3R0ICp0dG0pCiAJCWdvdG8gcmVsZWFzZV9zZzsK
IAogCXIgPSAtRU5PTUVNOwotCW5lbnRzID0gZG1hX21hcF9zZyhyZGV2LT5kZXYsIHR0bS0+c2ct
PnNnbCwgdHRtLT5zZy0+bmVudHMsIGRpcmVjdGlvbik7Ci0JaWYgKG5lbnRzID09IDApCisJdHRt
LT5zZy0+bmVudHMgPSBkbWFfbWFwX3NnKHJkZXYtPmRldiwgdHRtLT5zZy0+c2dsLAorCWlmICh0
dG0tPnNnLT5uZW50cyA9PSAwKQogCQlnb3RvIHJlbGVhc2Vfc2c7CiAKIAlkcm1fcHJpbWVfc2df
dG9fcGFnZV9hZGRyX2FycmF5cyh0dG0tPnNnLCB0dG0tPnBhZ2VzLApAQCAtNTU0LDkgKzU1NCw5
IEBAIHN0YXRpYyB2b2lkIHJhZGVvbl90dG1fdHRfdW5waW5fdXNlcnB0cihzdHJ1Y3QgdHRtX3R0
ICp0dG0pCiAJCXJldHVybjsKIAogCS8qIGZyZWUgdGhlIHNnIHRhYmxlIGFuZCBwYWdlcyBhZ2Fp
biAqLwotCWRtYV91bm1hcF9zZyhyZGV2LT5kZXYsIHR0bS0+c2ctPnNnbCwgdHRtLT5zZy0+bmVu
dHMsIGRpcmVjdGlvbik7CisJZG1hX3VubWFwX3NnKHJkZXYtPmRldiwgdHRtLT5zZy0+c2dsLCB0
dG0tPnNnLT5vcmlnX25lbnRzLCBkaXJlY3Rpb24pOwogCi0JZm9yX2VhY2hfc2dfcGFnZSh0dG0t
PnNnLT5zZ2wsICZzZ19pdGVyLCB0dG0tPnNnLT5uZW50cywgMCkgeworCWZvcl9lYWNoX3NnX3Bh
Z2UodHRtLT5zZy0+c2dsLCAmc2dfaXRlciwgdHRtLT5zZy0+b3JpZ19uZW50cywgMCkgewogCQlz
dHJ1Y3QgcGFnZSAqcGFnZSA9IHNnX3BhZ2VfaXRlcl9wYWdlKCZzZ19pdGVyKTsKIAkJaWYgKCEo
Z3R0LT51c2VyZmxhZ3MgJiBSQURFT05fR0VNX1VTRVJQVFJfUkVBRE9OTFkpKQogCQkJc2V0X3Bh
Z2VfZGlydHkocGFnZSk7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK

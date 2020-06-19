Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CD703200777
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 13:04:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC75C66597
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 11:04:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DEFFC6659C; Fri, 19 Jun 2020 11:04:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D794666FD;
	Fri, 19 Jun 2020 10:40:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 10B4466597
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:38:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 038DA665CB; Fri, 19 Jun 2020 10:38:33 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 090B4665CF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:17 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103716euoutp01e00ecbbadbd5029b5f5cfb1f40856af2~Z66TKnSYV1849718497euoutp01t
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103716euoutp01e00ecbbadbd5029b5f5cfb1f40856af2~Z66TKnSYV1849718497euoutp01t
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103715eucas1p178ac18d358f7b184d050b81e0692bc0f~Z66S2WkkY0708707087eucas1p1T;
 Fri, 19 Jun 2020 10:37:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 4F.9D.05997.B559CEE5; Fri, 19
 Jun 2020 11:37:15 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103715eucas1p12d01355499fbecb8632472b1b8230e6f~Z66SdoRi91690716907eucas1p1L;
 Fri, 19 Jun 2020 10:37:15 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103715eusmtrp151c83cc7d772b85505181748195fd8f4~Z66Sc413D1007310073eusmtrp1H;
 Fri, 19 Jun 2020 10:37:15 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-10-5eec955b45c4
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D8.1B.06017.B559CEE5; Fri, 19
 Jun 2020 11:37:15 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103714eusmtip2a2a161e08a6c2f452a3d0a0868c0a625~Z66R25A5u0247402474eusmtip2f;
 Fri, 19 Jun 2020 10:37:14 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:32 +0200
Message-Id: <20200619103636.11974-33-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfUhTYRTGee/Hdrc2uV2lvag0WiQkaZ/EBUPUFG4QZBR9krXssknbqi0t
 Q8g0paZZzj5smJiTsrnSVKzW+tgsZ4yW2Cgro4aWqZmCVrSmtes1++93nnOe9zkcXgKlHHgk
 kaU7zOp1So1CIMbaOn69iNt54WvGsqYnK+kz3mcIPWnqENK3Kxtx+k9bOUr7vo8K6EJLo4C+
 0fAUoWseJdATPj9CN/e9wumX9ioBffPJeyHtHOvHk6SMrdoGmN8BE2Ae/KjBmDs/PuLMoys2
 IfOhxI0wLXXHmXdTfShT0XMdMPff5AuYslYrYMab56dLdojX7GM1WTmsfmniHrG6+PkH/KCP
 PPr653ssH4xJjUBEQHIVDHbbUSMQExRZD6ClohfjiwkArZ7ATDEOYEv7KeSfpfpKP8YxRV4H
 0GPdNOv4OFQq5BoCcjk0jhgFHEeQRQB2npFwQyg5hMDqqtM41wgnN0Or/9o0Y+Qi6O4MTLOU
 TIQ9Zp+QT5PDhqbHKMeikD580olzD0HSK4S206aZlVLhoNeM8xwOh9ytM+Zo6KkoxXhDIYB+
 700hX5QC+LKgEvBTCbDXGwjtSoT2Wwwb7Ut5ORkWOhpwToZkGOwZmcvJaAhNbZdQXpbCU8UU
 Px0Dze5bs7HOrm6UZwZee2ZB+AuVA/gpYEHOAbn5f1gNAFYgY7MNWhVrWKFjj8QblFpDtk4V
 n3lA2wxCf8oz5Z64C+zBvS5AEkAhkX7ZPJxB4cocQ67WBSCBKiKkKc89GZR0nzL3GKs/sFuf
 rWENLhBFYAqZdGXt4C6KVCkPs/tZ9iCr/9dFCFFkPohqcm81p/YaI3x5LrVKU5Z2vyh6nfxb
 1YZdWme1LPFqYM69gdWWAknXZ7AkSVf+dpstOKU+Kqpb+DnTYhOHRdePTra2L9gyTyZxCM+n
 nUB+Fl9eHabIM629WBITGaScmpRNqapAip8dWL+d6FTE1cYmPJQf2thR1udIP6dJPqvADGrl
 8lhUb1D+BZXP3jBPAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xe7rRU9/EGRx+I2PRe+4kk8XfScfY
 LTbOWM9q8X/bRGaLK1/fs1k0L17PZrFy9VEmiwX7rS2+XHnIZLHp8TVWi8u75rBZrD1yl93i
 4IcnrA68HmvmrWH0+P1rEqPH3m8LWDy2f3vA6rF/7hp2j/vdx5k8Ni+p97j97zGzx+Qbyxk9
 dt9sYPPo27KK0ePzJrkAnig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07
 m5TUnMyy1CJ9uwS9jLaz91kLrghUXP9+l6WB8QNvFyMnh4SAicS8uU9Yuhi5OIQEljJKfPiz
 lA0iISNxcloDK4QtLPHnWhcbRNEnRomXZ0+xgyTYBAwlut5CJEQEOhklpnV/ZAdxmAU+MUkc
 uXYabJSwQJDEnvv/wDpYBFQljp/4BTaWV8BO4sasK+wQK+QlVm84wAxicwLFX7ccBKsRErCV
 WL7gPfMERr4FjAyrGEVSS4tz03OLjfSKE3OLS/PS9ZLzczcxAuNm27GfW3Ywdr0LPsQowMGo
 xMP7IuR1nBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosPMZoCHTWRWUo0OR8Y
 03kl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhjlXzWHHJ+mOOdG
 9Py/B5+2Rln7OZ7NemSlEL7oe5e4/7QdLJucOOWFuc6ZtRwreVLzsDa5RfrqWYtYpxkrr8YJ
 Trn8KEpAsSXm56FD33mZ8wRi/f4W8jT9vNJW9fxixFOJHcqRv5s11pecbxMtemPNaKnW4db0
 7g0z+15l4a63Ydfdrnb0X1ZiKc5INNRiLipOBAD1t5sVsQIAAA==
X-CMS-MailID: 20200619103715eucas1p12d01355499fbecb8632472b1b8230e6f
X-Msg-Generator: CA
X-RootMTR: 20200619103715eucas1p12d01355499fbecb8632472b1b8230e6f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103715eucas1p12d01355499fbecb8632472b1b8230e6f
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103715eucas1p12d01355499fbecb8632472b1b8230e6f@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 32/36] misc: fastrpc: fix common struct
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRtYV9t
YXBfc2coKSBmdW5jdGlvbgpyZXR1cm5zIHRoZSBudW1iZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmll
cyBpbiB0aGUgRE1BIGFkZHJlc3Mgc3BhY2UuCkhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMg
dG8gdGhlIGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKZG1hX3VubWFwX3NnIG11
c3QgYmUgY2FsbGVkIHdpdGggdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwpwYXNz
ZWQgdG8gdGhlIGRtYV9tYXBfc2coKS4KCnN0cnVjdCBzZ190YWJsZSBpcyBhIGNvbW1vbiBzdHJ1
Y3R1cmUgdXNlZCBmb3IgZGVzY3JpYmluZyBhIG5vbi1jb250aWd1b3VzCm1lbW9yeSBidWZmZXIs
IHVzZWQgY29tbW9ubHkgaW4gdGhlIERSTSBhbmQgZ3JhcGhpY3Mgc3Vic3lzdGVtcy4gSXQKY29u
c2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nl
cyAoc2dsIGVudHJ5KSwKYXMgd2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJp
ZXM6IENQVSBwYWdlcyAob3JpZ19uZW50cyBlbnRyeSkKYW5kIERNQSBtYXBwZWQgcGFnZXMgKG5l
bnRzIGVudHJ5KS4KCkl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0
byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKZW50cmllcywgY2FsbGluZyBETUEtbWFwcGlu
ZyBmdW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRyaWVzIG9yCmlnbm9yaW5nIHRo
ZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkgdGhlIGRtYV9tYXBfc2coKQpm
dW5jdGlvbi4KClRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBsZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFw
cGluZyB3cmFwcGVycyBvcGVyYXRpbmcKZGlyZWN0bHkgb24gdGhlIHN0cnVjdCBzZ190YWJsZSBv
YmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFnZQppdGVyYXRvcnMgd2hlcmUgcG9zc2libGUu
IFRoaXMsIGFsbW9zdCBhbHdheXMsIGhpZGVzIHJlZmVyZW5jZXMgdG8gdGhlCm5lbnRzIGFuZCBv
cmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xs
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL21pc2MvZmFzdHJwYy5jIHwg
NCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9mYXN0cnBjLmMgYi9kcml2ZXJzL21pc2MvZmFzdHJw
Yy5jCmluZGV4IDc5MzljNTVkYWNlYi4uOWQ2ODY3NzQ5MzE2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L21pc2MvZmFzdHJwYy5jCisrKyBiL2RyaXZlcnMvbWlzYy9mYXN0cnBjLmMKQEAgLTUxOCw3ICs1
MTgsNyBAQCBmYXN0cnBjX21hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0
dGFjaG1lbnQsCiAKIAl0YWJsZSA9ICZhLT5zZ3Q7CiAKLQlpZiAoIWRtYV9tYXBfc2coYXR0YWNo
bWVudC0+ZGV2LCB0YWJsZS0+c2dsLCB0YWJsZS0+bmVudHMsIGRpcikpCisJaWYgKCFkbWFfbWFw
X3NndGFibGUoYXR0YWNobWVudC0+ZGV2LCB0YWJsZSwgZGlyLCAwKSkKIAkJcmV0dXJuIEVSUl9Q
VFIoLUVOT01FTSk7CiAKIAlyZXR1cm4gdGFibGU7CkBAIC01MjgsNyArNTI4LDcgQEAgc3RhdGlj
IHZvaWQgZmFzdHJwY191bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0
dGFjaCwKIAkJCQkgIHN0cnVjdCBzZ190YWJsZSAqdGFibGUsCiAJCQkJICBlbnVtIGRtYV9kYXRh
X2RpcmVjdGlvbiBkaXIpCiB7Ci0JZG1hX3VubWFwX3NnKGF0dGFjaC0+ZGV2LCB0YWJsZS0+c2ds
LCB0YWJsZS0+bmVudHMsIGRpcik7CisJZG1hX3VubWFwX3NndGFibGUoYXR0YWNoLT5kZXYsIHRh
YmxlLCBkaXIsIDApOwogfQogCiBzdGF0aWMgdm9pZCBmYXN0cnBjX3JlbGVhc2Uoc3RydWN0IGRt
YV9idWYgKmRtYWJ1ZikKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK

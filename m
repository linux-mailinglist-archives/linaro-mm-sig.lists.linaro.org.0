Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CA11FF8D4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 18:10:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 443BF66591
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 16:10:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 38583665A6; Thu, 18 Jun 2020 16:10:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 12DA2666F4;
	Thu, 18 Jun 2020 15:43:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 88D0A665B5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:41:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 737FD665FB; Thu, 18 Jun 2020 15:41:47 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id DD810665B5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:37 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154037euoutp019b8bd13a3e3d9f196127a8d1c2c5ec32~ZrZ3yiWca1845018450euoutp01O
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200618154037euoutp019b8bd13a3e3d9f196127a8d1c2c5ec32~ZrZ3yiWca1845018450euoutp01O
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200618154036eucas1p12b1b5bb16a87b93f8c608072f0299566~ZrZ3iWPVL1755717557eucas1p1X;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id FA.1F.61286.4FA8BEE5; Thu, 18
 Jun 2020 16:40:36 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200618154036eucas1p2f4ba8a422fcf2843627d639cd193c90f~ZrZ25Z76N2945829458eucas1p20;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154036eusmtrp1db46a96eb0cf1f0c63cf7e0222937e54~ZrZ24q8NZ2230622306eusmtrp1M;
 Thu, 18 Jun 2020 15:40:36 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-ef-5eeb8af45f00
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 61.F9.07950.4FA8BEE5; Thu, 18
 Jun 2020 16:40:36 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154035eusmtip14307191b27018d21a029dcd22091c1ee~ZrZ2NS2vX0742307423eusmtip1X;
 Thu, 18 Jun 2020 15:40:35 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:52 +0200
Message-Id: <20200618153956.29558-32-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTcRTut7u7zeHqNgV/qGQMKkp8ocIlY5kU3T8CjcIoSJt5UUmnbL7/
 yNlUbL4nodk0S0vT+Wj5fmvqEnHkozJKTFymTtFyPnJpbbtq/33nO993vsPhsBBuO2rLChNG
 kyKhIJzHYNObBn9rnPQyXYCratMZz9IM0fAd+SATf11Yh+J/m/IQfGJ9hYFLy+oY+KvqARpe
 2u2F6ydmaLhq9iOKj7cpGHhN/xQT713Vot4cQlmiBIRhWw6Izo1SOtG88Q0luouVTGI6Q00j
 3pQnEV92ZxEif7ICEO2fJQwiu6EKEGuqY36Wt9jngsnwsFhS5MK/ww5NG5lGoyaw+E+bU3QJ
 WOXIgAULYh5Q+V1KM2EuVgmgznBZBthGrAfw3VI7ShVrADbXPkX2HWvKMiblqACwI+3IgSMj
 XUk3NRiYG5QtyxgmbI2lGkdlWZpECLZIgyWKh6ipYYVdhymNWWYRHTsBtf1S81QOxoejrRso
 leYAq+t7zMkWRn5YnWpeCWIaJtzp+LMnugiTX8r3sBVcVDcwKWwPh/Mz6ZRBCuCMpoZJFZkA
 jj8oBJTKC37VbBvXYBn3Ow3r2lwo+gJ89lYJTDTEDsPJ5aMmGjFCeVMBQtEcmJ7GpdQnYZG6
 9iC29/3Y3rUI2Dk/D6gL5QEoaV9CcoFD0f+wUgCqgA0ZI44IIcVuQjLOWSyIEMcIQ5zvRkao
 gPGlhnfVv1rA+lhQH8BYgGfJ8b6hC+CiglhxQkQfgCyEZ83xGRkO4HKCBQmJpCgyUBQTTor7
 gB2LzrPhuD9fuM3FQgTR5D2SjCJF+10ay8JWAvCzPvbhfj8eY8T9ueRcbbnkkgIcnwxy9awT
 yt0HPHJ19T8N+pSem1cVC/5aML7FH2I7kfN8/ayj59buSu/OWteLU9dWmnPinxRoD533dpy8
 0uhn51sTNPMoaXw0x8r3Q3O20MuQF2DHKEycq5Sw/Z0CV5LjCoptDF1prS3OuTy6OFTgdgYR
 iQX/APrcvXROAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xu7pful7HGSy6x2zRe+4kk8XfScfY
 LTbOWM9q8X/bRGaLK1/fs1k0L17PZrFy9VEmiwX7rS2+XHnIZLHp8TVWi8u75rBZrD1yl93i
 4IcnrA68HmvmrWH0+P1rEqPH3m8LWDy2f3vA6rF/7hp2j/vdx5k8Ni+p97j97zGzx+Qbyxk9
 dt9sYPPo27KK0ePzJrkAnig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07
 m5TUnMyy1CJ9uwS9jLaz91kLrghUXP9+l6WB8QNvFyMnh4SAicTnNYvZuxi5OIQEljJKzN16
 iAUiISNxcloDK4QtLPHnWhcbRNEnRonzCycxgSTYBAwlut5CJEQEOhklpnV/BBvFLPCJSeLI
 tdNsIFXCAkESa3vXMYLYLAKqEk+ONLOD2LwCdhIXd36DWiEvsXrDAWYQmxMofvp4K1hcSMBW
 4vmHNrYJjHwLGBlWMYqklhbnpucWG+kVJ+YWl+al6yXn525iBMbNtmM/t+xg7HoXfIhRgINR
 iYf3RcjrOCHWxLLiytxDjBIczEoivE5nT8cJ8aYkVlalFuXHF5XmpBYfYjQFOmois5Rocj4w
 pvNK4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTDufPqN/YNwekJH
 v/a9D02M4ZNydLbNmXxMW1v02vUI8dJpXxwFbXllmTtct34/v3/vmfPXb8uVaa/zuuZueWnK
 yfmfvlbzsM65yrf0Kq/EHFnTH/f3HlTl+LWx+0rcf81bf601VTM3V03p2HZ5RdUDoYe2FTL3
 siftNfj/+Kj+y3URXy/e4+ksVGIpzkg01GIuKk4EAEZmncmxAgAA
X-CMS-MailID: 20200618154036eucas1p2f4ba8a422fcf2843627d639cd193c90f
X-Msg-Generator: CA
X-RootMTR: 20200618154036eucas1p2f4ba8a422fcf2843627d639cd193c90f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154036eucas1p2f4ba8a422fcf2843627d639cd193c90f
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154036eucas1p2f4ba8a422fcf2843627d639cd193c90f@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v6 31/36] misc: fastrpc: fix common struct
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

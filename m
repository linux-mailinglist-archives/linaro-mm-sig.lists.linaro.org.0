Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C1F1D170C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 16:07:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E891B65F8C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 14:07:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DA42E65F8F; Wed, 13 May 2020 14:07:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 469F866561;
	Wed, 13 May 2020 13:37:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 36C8165FAC
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:36:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2850066539; Wed, 13 May 2020 13:36:53 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 454F165FAC
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:25 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133324euoutp01fe2b6d0509737ab2b2030a1a035320bc~OmchoxCr72196321963euoutp016
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133324euoutp01fe2b6d0509737ab2b2030a1a035320bc~OmchoxCr72196321963euoutp016
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133324eucas1p142c8a86befd97cefee286cdf022951dc~OmchRgFjH0785407854eucas1p1H;
 Wed, 13 May 2020 13:33:24 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id FB.D5.61286.427FBBE5; Wed, 13
 May 2020 14:33:24 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133323eucas1p1519f5901d2a4ee85b781fcc36e9601f7~OmchAzpyr2351423514eucas1p1e;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133323eusmtrp10172f55b09fa88e4e962360e4035a246~OmchAHACf1050610506eusmtrp1h;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-89-5ebbf724c6de
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id BF.47.07950.327FBBE5; Wed, 13
 May 2020 14:33:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133323eusmtip16dd11117bccd96d7b870b4e361de6129~OmcgSp9Av0693306933eusmtip1N;
 Wed, 13 May 2020 13:33:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:43 +0200
Message-Id: <20200513133245.6408-36-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGeXcuOy5Pnabgi0XS0MgolxR6RMtCPxxSog+BEKWuPKjpvOw4
 TSFamRVTlyahmZqYoum8tmZoeSudpZmpmddqaBcFzbxikbbtaH37vc//eXj+78tLIGIdZk+E
 R8WxiihZpAQXofqO1Z4DjiuNgQfrnwnp9J5XAro2pxqj1/WZCD2w9AOnH1W0C+jCZk86724s
 revKB/TigFFA100MYnR/Qx5OV74cF9Ktc5PYMZLRFmgB83y5EGXqlz9jzKdUg4B5XHyFGV2b
 QJisoVLANA6rcCY9eRZnNLpywCzU7Tq15YzIK4SNDI9nFdKjwaKwOVUHHmMUX2pSr2AqMLRN
 DawISB2GbzsaUDUQEWKqDEDN12HAHxYBbJyoxs0uMbUA4Id7bpuJd92ZQt5UCuCgdgHhTaZE
 WruPmXHKFapn1JawLZUCYGe6tTmAUIMCOPNnFjMPbKhg2F3ZLjQzSjlBo0FrYZI6Aq+maIR8
 mwOsqGmxFFiZ9OmxZpTXm4Sw8D7Jsy+8XXsT49kGTht0G9mdsCsrzXI3SCUDaOypFPKHNAD7
 r+UA3uUJx3p+mVYlTOs5w+oGKS8fh9/XZ1GzDKmtcGhmu1lGTHhHn43wMglv3RDz7j0w11D1
 r7a1tw/hmYFF+qmNx3oBYElOAZIBHHL/lxUCUA7sWCUnD2U51yg2wYWTyTllVKjLhWh5HTD9
 pa41w/xTsNR3vg1QBJBYk/RIY6AYk8VzifI2AAlEYkuerDZJZIgsMYlVRAcplJEs1wZ2EKjE
 jjxUNHVOTIXK4tgIlo1hFZtTAWFlrwJ2MSspfWpdgPe2Ip94Zzf6Y2cpuBjB/Xbxl/bimQEt
 vW7eSbspqV/o5GvdqKEk/qej/k1lnWeNJtVPOuK/JBStFjx0yC/2SKqNPZu57p4aNMoNP/AY
 VZ52KXNwytqvRqtOXM4p8bV9r1//In8yn6Fq+TaeUER2el3P7l1yd98rQbkwmes+RMHJ/gIq
 KpNhRwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7rK33fHGUyYq2fRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9tMWdqocWW03MZLb5cechksenxNVaLy7vmsFmsPXKX3eLg
 hyesDrwea+atYfTY+20Bi8f2bw9YPe53H2fy2Lyk3uP2v8fMHpNvLGf02H2zgc2jt/kdm0ff
 llWMHp83yQVwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJal
 FunbJehlfGg4xlbwUKhiX9d31gbGG/xdjJwcEgImEhfPTGTvYuTiEBJYyihxas4EVoiEjMTJ
 aQ1QtrDEn2tdbBBFnxglNp1+xQ6SYBMwlOh6C5EQEehklJjW/REswSxwj0li7zo/EFtYIE7i
 0K0+JhCbRUBV4uHxNWA1vAK2Eo2tfewQG+QlVm84wAxicwLFX93ZzwJiCwnkS+xdvI9tAiPf
 AkaGVYwiqaXFuem5xUZ6xYm5xaV56XrJ+bmbGIGRsu3Yzy07GLveBR9iFOBgVOLhtbi1O06I
 NbGsuDL3EKMEB7OSCK/feqAQb0piZVVqUX58UWlOavEhRlOgoyYyS4km5wOjOK8k3tDU0NzC
 0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA+M0pa8bnhzbMbOm4AFTgdZ+9dam
 VLsem4M/q0U/OCiZTbbPm3K+yuCF3cyoZqFv/b//PK3LcP6hlGVSHplUPnFPgwOv6pK9KYIv
 WPWyLmU4ikxd6vRWQSE2mvWbWmLkhLhb+2xkA1+mrcuTYxXZzJ+1VPbT4mUtL47FSu85cUho
 WcNFjktNXkosxRmJhlrMRcWJAIhhNxSqAgAA
X-CMS-MailID: 20200513133323eucas1p1519f5901d2a4ee85b781fcc36e9601f7
X-Msg-Generator: CA
X-RootMTR: 20200513133323eucas1p1519f5901d2a4ee85b781fcc36e9601f7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133323eucas1p1519f5901d2a4ee85b781fcc36e9601f7
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133323eucas1p1519f5901d2a4ee85b781fcc36e9601f7@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kvm@vger.kernel.org, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Kirti Wankhede <kwankhede@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 36/38] samples: vfio-mdev/mbochs: fix
 common struct sg_table related issues
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
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KCldoaWxlIHRvdWNoaW5nIHRoaXMgY29kZSwgYWxzbyBh
ZGQgbWlzc2luZyBjYWxsIHRvIGRtYV91bm1hcF9zZ3RhYmxlLgoKU2lnbmVkLW9mZi1ieTogTWFy
ZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgotLS0KRm9yIG1vcmUgaW5m
b3JtYXRpb24sIHNlZSAnW1BBVENIIHY1IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUg
bmVudHMKdnMuIG9yaWdfbmVudHMgbWlzdXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LWlvbW11LzIwMjAwNTEzMTMyMTE0LjYwNDYtMS1tLnN6eXByb3dza2lAc2Ftc3Vu
Zy5jb20vVC8KLS0tCiBzYW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYyB8IDMgKystCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2Ft
cGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMgYi9zYW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYwppbmRl
eCAzY2M1ZTU5Li5lMDMwNjg5IDEwMDY0NAotLS0gYS9zYW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMu
YworKysgYi9zYW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYwpAQCAtODQ2LDcgKzg0Niw3IEBAIHN0
YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKm1ib2Noc19tYXBfZG1hYnVmKHN0cnVjdCBkbWFfYnVmX2F0
dGFjaG1lbnQgKmF0LAogCWlmIChzZ19hbGxvY190YWJsZV9mcm9tX3BhZ2VzKHNnLCBkbWFidWYt
PnBhZ2VzLCBkbWFidWYtPnBhZ2Vjb3VudCwKIAkJCQkgICAgICAwLCBkbWFidWYtPm1vZGUuc2l6
ZSwgR0ZQX0tFUk5FTCkgPCAwKQogCQlnb3RvIGVycjI7Ci0JaWYgKCFkbWFfbWFwX3NnKGF0LT5k
ZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywgZGlyZWN0aW9uKSkKKwlpZiAoZG1hX21hcF9zZ3RhYmxl
KGF0LT5kZXYsIHNnLCBkaXJlY3Rpb24sIDApKQogCQlnb3RvIGVycjM7CiAKIAlyZXR1cm4gc2c7
CkBAIC04NjgsNiArODY4LDcgQEAgc3RhdGljIHZvaWQgbWJvY2hzX3VubWFwX2RtYWJ1ZihzdHJ1
Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdCwKIAogCWRldl9kYmcoZGV2LCAiJXM6ICVkXG4iLCBf
X2Z1bmNfXywgZG1hYnVmLT5pZCk7CiAKKwlkbWFfdW5tYXBfc2d0YWJsZShhdC0+ZGV2LCBzZywg
ZGlyZWN0aW9uLCAwKTsKIAlzZ19mcmVlX3RhYmxlKHNnKTsKIAlrZnJlZShzZyk7CiB9Ci0tIAox
LjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

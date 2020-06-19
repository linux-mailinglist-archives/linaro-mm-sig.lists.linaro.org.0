Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 920A3200759
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:56:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC9F56171B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:56:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AEBC56658C; Fri, 19 Jun 2020 10:56:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2356B666DB;
	Fri, 19 Jun 2020 10:38:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EB7126658C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DD0E6665BA; Fri, 19 Jun 2020 10:37:22 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id DA4846658C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:08 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103708euoutp015853e0259c70fb010f99c981dcae1ec1~Z66Ln-e4G1761017610euoutp01F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103708euoutp015853e0259c70fb010f99c981dcae1ec1~Z66Ln-e4G1761017610euoutp01F
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103707eucas1p229112886057d02323b32397966e0c5de~Z66LSoZF72889328893eucas1p20;
 Fri, 19 Jun 2020 10:37:07 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 57.9D.05997.3559CEE5; Fri, 19
 Jun 2020 11:37:07 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103707eucas1p1cdb34a10d5657bdd62fdf51fb7bf0146~Z66K3G1eI3246032460eucas1p1i;
 Fri, 19 Jun 2020 10:37:07 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103707eusmtrp17ea3e63d377e6d12e2717cc67c41c936~Z66K2WSIT0959609596eusmtrp1O;
 Fri, 19 Jun 2020 10:37:07 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-f1-5eec95530cff
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C7.EA.06314.3559CEE5; Fri, 19
 Jun 2020 11:37:07 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103706eusmtip2b2e007b640dda940d7a846dcb13a18a4~Z66KPSNT-0247402474eusmtip2d;
 Fri, 19 Jun 2020 10:37:06 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:21 +0200
Message-Id: <20200619103636.11974-22-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIKsWRmVeSWpSXmKPExsWy7djPc7rBU9/EGRy+rGXRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLA42XGS1Wrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x6Pp/TE2jzXz1jB67P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRXDYpqTmZZalF+nYJXBkfD75hLVgkUjH36gLGBsZ3Al2MnBwSAiYSkzsOsncxcnEI
 CaxglFj+/xobhPOFUaLz+zlGkCohgc+MEifWxsJ07Lu5jwmiaDmjxOUDu5jgOjbPX8wGUsUm
 YCjR9bYLzBYRaAXq7uUBKWIW2MkksahzD9BYDg5hAX+Je/fEQWpYBFQlPs/uZAGxeQXsJFYs
 PsAMsU1eYvUGCJsTKP665SAryBwJgV3sEld33WeBKHKRWDLnLDuELSzx6vgWKFtG4vTkHhaI
 hmZGiYfn1rJDOD1AdzfNYISospa4c+4XG8hFzAKaEut36UOEHSX2ztnNBBKWEOCTuPFWECTM
 DGRO2jadGSLMK9HRJgRRrSYx6/g6uLUHL1yCut9DYv76JhZIAE1klJg57zXLBEb5WQjLFjAy
 rmIUTy0tzk1PLTbKSy3XK07MLS7NS9dLzs/dxAhMSKf/Hf+yg3HXn6RDjAIcjEo8vC9CXscJ
 sSaWFVfmHmKU4GBWEuF1Ons6Tog3JbGyKrUoP76oNCe1+BCjNAeLkjiv8aKXsUIC6Yklqdmp
 qQWpRTBZJg5OqQbGgIv2xf/WhDvu5/i1Yvasfd73uG/P3yb8fL8Jp8olcUkJxvkzTrHPOG46
 p4ptmqnjhifTK+o0vp361RfzW3Ky1Pz7yzNmnsqONA1RcbGrmMQoNf2Eta/RraSDJ+O8U59n
 Ss2b7ev+Z7N8rVFe+yfbl+3bX6z/In3tgHVDGOMX3WtW+sL80T5+SizFGYmGWsxFxYkA8zKQ
 LUQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xe7rBU9/EGXQ+4bfoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFgcbLjBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxdojd9ktDn54wurA
 49H0/hibx5p5axg99n5bwOKx/dsDVo/73ceZPDYvqfe4/e8xs8fkG8sZPXbfbGDz6NuyitHj
 8ya5AO4oPZui/NKSVIWM/OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9O5uU1JzMstQifbsE
 vYyPB9+wFiwSqZh7dQFjA+M7gS5GTg4JAROJfTf3MXUxcnEICSxllGi4+4wZIiEjcXJaAyuE
 LSzx51oXG0TRJ0aJq5cvgSXYBAwlut5CJEQEOhklpnV/ZAdxmAX2M0lcPnKKHaRKWMBXYseX
 12AdLAKqEp9nd7KA2LwCdhIrFh+AWicvsXoDhM0JFH/dchCsXkjAVmL5gvfMExj5FjAyrGIU
 SS0tzk3PLTbUK07MLS7NS9dLzs/dxAiMkW3Hfm7ewXhpY/AhRgEORiUe3hchr+OEWBPLiitz
 DzFKcDArifA6nT0dJ8SbklhZlVqUH19UmpNafIjRFOioicxSosn5wPjNK4k3NDU0t7A0NDc2
 NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAKPPsX5vr5MdFyT/LlXZObF50ub9ww8p9
 5b2ZkwRP3xbfuXVZ8oE17swXFrXr6iyNe3b1rBa3mrJgwPSZkVeFY+rMry7X/DXxl8SZzn61
 P1zRb8/mfj3v/W7TvFa/LeyFbmdUylRElD5c8BP7IKOyL0AoY8o95lC7U3wrO8svMZ0TSzhS
 LbXhqxJLcUaioRZzUXEiAOtTM2+nAgAA
X-CMS-MailID: 20200619103707eucas1p1cdb34a10d5657bdd62fdf51fb7bf0146
X-Msg-Generator: CA
X-RootMTR: 20200619103707eucas1p1cdb34a10d5657bdd62fdf51fb7bf0146
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103707eucas1p1cdb34a10d5657bdd62fdf51fb7bf0146
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103707eucas1p1cdb34a10d5657bdd62fdf51fb7bf0146@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Eric Anholt <eric@anholt.net>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 21/36] drm: v3d: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IEVyaWMgQW5ob2x0IDxlcmlj
QGFuaG9sdC5uZXQ+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfbW11LmMgfCAxMyArKysr
KystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92M2QvdjNkX21tdS5jIGIvZHJpdmVycy9n
cHUvZHJtL3YzZC92M2RfbW11LmMKaW5kZXggM2I4MWVhMjhjMGJiLi41YTQ1MzUzMjkwMWYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92M2QvdjNkX21tdS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS92M2QvdjNkX21tdS5jCkBAIC05MCwxOCArOTAsMTcgQEAgdm9pZCB2M2RfbW11X2luc2Vy
dF9wdGVzKHN0cnVjdCB2M2RfYm8gKmJvKQogCXN0cnVjdCB2M2RfZGV2ICp2M2QgPSB0b192M2Rf
ZGV2KHNobWVtX29iai0+YmFzZS5kZXYpOwogCXUzMiBwYWdlID0gYm8tPm5vZGUuc3RhcnQ7CiAJ
dTMyIHBhZ2VfcHJvdCA9IFYzRF9QVEVfV1JJVEVBQkxFIHwgVjNEX1BURV9WQUxJRDsKLQl1bnNp
Z25lZCBpbnQgY291bnQ7Ci0Jc3RydWN0IHNjYXR0ZXJsaXN0ICpzZ2w7CisJc3RydWN0IHNnX2Rt
YV9wYWdlX2l0ZXIgZG1hX2l0ZXI7CiAKLQlmb3JfZWFjaF9zZyhzaG1lbV9vYmotPnNndC0+c2ds
LCBzZ2wsIHNobWVtX29iai0+c2d0LT5uZW50cywgY291bnQpIHsKLQkJdTMyIHBhZ2VfYWRkcmVz
cyA9IHNnX2RtYV9hZGRyZXNzKHNnbCkgPj4gVjNEX01NVV9QQUdFX1NISUZUOworCWZvcl9lYWNo
X3NndGFibGVfZG1hX3BhZ2Uoc2htZW1fb2JqLT5zZ3QsICZkbWFfaXRlciwgMCkgeworCQlkbWFf
YWRkcl90IGRtYV9hZGRyID0gc2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNzKCZkbWFfaXRlcik7CisJ
CXUzMiBwYWdlX2FkZHJlc3MgPSBkbWFfYWRkciA+PiBWM0RfTU1VX1BBR0VfU0hJRlQ7CiAJCXUz
MiBwdGUgPSBwYWdlX3Byb3QgfCBwYWdlX2FkZHJlc3M7CiAJCXUzMiBpOwogCi0JCUJVR19PTihw
YWdlX2FkZHJlc3MgKyAoc2dfZG1hX2xlbihzZ2wpID4+IFYzRF9NTVVfUEFHRV9TSElGVCkgPj0K
KwkJQlVHX09OKHBhZ2VfYWRkcmVzcyArIChQQUdFX1NJWkUgPj4gVjNEX01NVV9QQUdFX1NISUZU
KSA+PQogCQkgICAgICAgQklUKDI0KSk7Ci0KLQkJZm9yIChpID0gMDsgaSA8IHNnX2RtYV9sZW4o
c2dsKSA+PiBWM0RfTU1VX1BBR0VfU0hJRlQ7IGkrKykKKwkJZm9yIChpID0gMDsgaSA8IFBBR0Vf
U0laRSA+PiBWM0RfTU1VX1BBR0VfU0hJRlQ7IGkrKykKIAkJCXYzZC0+cHRbcGFnZSsrXSA9IHB0
ZSArIGk7CiAJfQogCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==

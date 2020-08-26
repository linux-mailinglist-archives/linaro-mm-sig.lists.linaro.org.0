Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5388C2527F5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:59:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8089260749
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:59:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6F61761873; Wed, 26 Aug 2020 06:59:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB80B66704;
	Wed, 26 Aug 2020 06:38:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 49E2660C32
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:37:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3AA8961813; Wed, 26 Aug 2020 06:37:00 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 86FE066572
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:47 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063546euoutp02a9780217518c77e50de2e18e253864be~uve3Me5dj1535715357euoutp02F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200826063546euoutp02a9780217518c77e50de2e18e253864be~uve3Me5dj1535715357euoutp02F
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063546eucas1p248e3327a2574966e6260f8ea4243a18c~uve27uU5X0403504035eucas1p2_;
 Wed, 26 Aug 2020 06:35:46 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 59.BD.05997.2C2064F5; Wed, 26
 Aug 2020 07:35:46 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063546eucas1p268558dcd08ac9b43843f9f5e23da227d~uve2fzbFv0398703987eucas1p2r;
 Wed, 26 Aug 2020 06:35:46 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063546eusmtrp1324e39600c0b1709cb7b91c674f0a758~uve2fFvRB1167511675eusmtrp1M;
 Wed, 26 Aug 2020 06:35:46 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-ed-5f4602c23e0d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B0.E0.06314.1C2064F5; Wed, 26
 Aug 2020 07:35:45 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063545eusmtip2148831d8e511c634dd22bec68983ea60~uve14XvZb0092300923eusmtip2U;
 Wed, 26 Aug 2020 06:35:45 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:14 +0200
Message-Id: <20200826063316.23486-31-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrMKsWRmVeSWpSXmKPExsWy7djP87qHmNziDT68kLXoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2mDO10GLL6bmMFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWB16PNfPWMHrs/baAxWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObR2/yOzaNv
 yypGj8+b5AK4o7hsUlJzMstSi/TtErgyfm/bxF6wRLDi1o78BsaNfF2MnBwSAiYSbe2XGbsY
 uTiEBFYwSnx/tZYFwvnCKHHnxE4WkCohgc+MEp++x8N0rO9bDdWxnFGid9d0JriOM1fmMoNU
 sQkYSnS97WIDsUUEWhklTvTygBQxC1xjknj79x1rFyMHh7BAgsSnV6kgNSwCqhLPph8C6+UV
 sJOY1/qIDWKbvMTqDQfA4pxA8ePd/VDxfewSO4/EQNguEnfetjFC2MISr45vYYewZSROT+4B
 e0dCoJlR4uG5tewQTg+jxOWmGVAd1hJ3zv1iAzmIWUBTYv0ufYiwo0T3uknMIGEJAT6JG28F
 QcLMQOakbdOhwrwSHW1CENVqErOOr4Nbe/DCJWYI20Oie+N5Nkj4TGSUeDP9IfMERvlZCMsW
 MDKuYhRPLS3OTU8tNspLLdcrTswtLs1L10vOz93ECExKp/8d/7KDcdefpEOMAhyMSjy8C9hc
 44VYE8uKK3MPMUpwMCuJ8DqdPR0nxJuSWFmVWpQfX1Sak1p8iFGag0VJnNd40ctYIYH0xJLU
 7NTUgtQimCwTB6dUA+OU74IBMS0vucr3ZHVH7+uVTr/jXntVNFgm02oxx793fImpnqG6U+9d
 nXLmWK0Cd1/XLLNPN7RVfHZLvj188cKthwerP+04vObfls4Xz0yyUwraz23gsP6T2K9V7Vjt
 vNJp3+8+s5yO9+F+rHIymgFcyzy1tIv/Fb07a1S6v2N+wExW7m2BHEosxRmJhlrMRcWJAKtM
 O5tGAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsVy+t/xe7oHmdziDb6vtbToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2mDO10GLL6bmMFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWB16PNfPWMHrs/baAxWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObR2/yOzaNv
 yypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstS
 i/TtEvQyfm/bxF6wRLDi1o78BsaNfF2MnBwSAiYS6/tWM3YxcnEICSxllPj5aSIrREJG4uS0
 BihbWOLPtS42iKJPjBKHf19jB0mwCRhKdL2FSIgIdDJKTOv+CJZgFrjHJLF3nR+ILSwQJ/Gi
 /ysbiM0ioCrxbPohZhCbV8BOYl7rIzaIDfISqzccAItzAsWPd/eDxYUEbCVOr53BPIGRbwEj
 wypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzAONl27OfmHYyXNgYfYhTgYFTi4V3A5hovxJpY
 VlyZe4hRgoNZSYTX6ezpOCHelMTKqtSi/Pii0pzU4kOMpkBHTWSWEk3OB8ZwXkm8oamhuYWl
 obmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGRsu2U4X6kaYfvvde3DRTdfW1pKJj
 l2V3bww7cEX3+YmKl0rMtrNUezkDopax21noP7DjmaHGtro+5aG64EVHpZfTQtITnsZH2mzy
 DCqQmsTD6HZt0cTgpAtaNzdGlxSt3+reNuf2Y8MfLVczbF8tnp4c8cMk0EhskYlH7ZJPbQdC
 XHfadyrdVWIpzkg01GIuKk4EAOSPyuupAgAA
X-CMS-MailID: 20200826063546eucas1p268558dcd08ac9b43843f9f5e23da227d
X-Msg-Generator: CA
X-RootMTR: 20200826063546eucas1p268558dcd08ac9b43843f9f5e23da227d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063546eucas1p268558dcd08ac9b43843f9f5e23da227d
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063546eucas1p268558dcd08ac9b43843f9f5e23da227d@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kvm@vger.kernel.org, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Kirti Wankhede <kwankhede@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 30/32] samples: vfio-mdev/mbochs: fix
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
ZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgotLS0KIHNhbXBsZXMvdmZp
by1tZGV2L21ib2Nocy5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zYW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYyBi
L3NhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5jCmluZGV4IDNjYzVlNTkyMTY4Mi4uZTAzMDY4OTE3
MjczIDEwMDY0NAotLS0gYS9zYW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYworKysgYi9zYW1wbGVz
L3ZmaW8tbWRldi9tYm9jaHMuYwpAQCAtODQ2LDcgKzg0Niw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc2df
dGFibGUgKm1ib2Noc19tYXBfZG1hYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0LAog
CWlmIChzZ19hbGxvY190YWJsZV9mcm9tX3BhZ2VzKHNnLCBkbWFidWYtPnBhZ2VzLCBkbWFidWYt
PnBhZ2Vjb3VudCwKIAkJCQkgICAgICAwLCBkbWFidWYtPm1vZGUuc2l6ZSwgR0ZQX0tFUk5FTCkg
PCAwKQogCQlnb3RvIGVycjI7Ci0JaWYgKCFkbWFfbWFwX3NnKGF0LT5kZXYsIHNnLT5zZ2wsIHNn
LT5uZW50cywgZGlyZWN0aW9uKSkKKwlpZiAoZG1hX21hcF9zZ3RhYmxlKGF0LT5kZXYsIHNnLCBk
aXJlY3Rpb24sIDApKQogCQlnb3RvIGVycjM7CiAKIAlyZXR1cm4gc2c7CkBAIC04NjgsNiArODY4
LDcgQEAgc3RhdGljIHZvaWQgbWJvY2hzX3VubWFwX2RtYWJ1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50ICphdCwKIAogCWRldl9kYmcoZGV2LCAiJXM6ICVkXG4iLCBfX2Z1bmNfXywgZG1hYnVm
LT5pZCk7CiAKKwlkbWFfdW5tYXBfc2d0YWJsZShhdC0+ZGV2LCBzZywgZGlyZWN0aW9uLCAwKTsK
IAlzZ19mcmVlX3RhYmxlKHNnKTsKIAlrZnJlZShzZyk7CiB9Ci0tIAoyLjE3LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

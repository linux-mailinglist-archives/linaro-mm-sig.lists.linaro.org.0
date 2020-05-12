Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AF51CF1F0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:50:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFF39618C8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:50:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A372561957; Tue, 12 May 2020 09:50:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6B4665FAD;
	Tue, 12 May 2020 09:08:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 46FEB66547
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:08:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 37B1865FAA; Tue, 12 May 2020 09:08:11 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id B5C2B65FAF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:30 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090129euoutp011a55d8aaaf93462d14eb15f86af9a43e~OPF1MVgNc2641626416euoutp01R
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090129euoutp011a55d8aaaf93462d14eb15f86af9a43e~OPF1MVgNc2641626416euoutp01R
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090129eucas1p2e54bcc15c8de5a27e05eb20ec668d4ef~OPF06qyG02180321803eucas1p2C;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 3F.67.61286.9E56ABE5; Tue, 12
 May 2020 10:01:29 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090129eucas1p2e67c8a9adafb202970a59c3412cd887a~OPF0orOhz2661826618eucas1p2n;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090129eusmtrp1cc27ec6d1a740863c5c174195c999886~OPF0n7TdP0188101881eusmtrp1f;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-b4-5eba65e97ca9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id AC.03.07950.9E56ABE5; Tue, 12
 May 2020 10:01:29 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090128eusmtip14ace71a0d963c54a40acb63ce54fcc29~OPF0Csyzt1181011810eusmtip1w;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:56 +0200
Message-Id: <20200512090058.14910-36-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCKsWRmVeSWpSXmKPExsWy7djPc7ovU3fFGXyerWTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9tMWdqocWW03MZLb5cechksenxNVaLy7vmsFmsPXKX3eLg
 hyesDrwea+atYfTY+20Bi8f2bw9YPe53H2fy2Lyk3uP2v8fMHpNvLGf02H2zgc2jt/kdm0ff
 llWMHp83yQVwR3HZpKTmZJalFunbJXBlHGvkLLglVDG9o5+tgfEyfxcjJ4eEgInE3NVTWEBs
 IYEVjBIr7ll0MXIB2V8YJZaffcYO4XxmlHi9dCkTTMfMl/uhEssZJT6/fMIM13J0/RRGkCo2
 AUOJrrddbCC2iEAro8SJXh6QImaBa0wSb/++Y+1i5OAQFkiQWP+aG6SGRUBV4lnXNLBeXgE7
 idYFzewQ2+QlVm84wAxicwLF78//wwIyR0LgELvEm3MXmSGKXCRa1v6HOk9Y4tXxLVDNMhKn
 J/dANTQzSjw8t5YdwulhlLjcNIMRospa4s65X2wgFzELaEqs36UPEXaUeHvyKBNIWEKAT+LG
 W0GQMDOQOWnbdGaIMK9ER5sQRLWaxKzj6+DWHrxwCeo0D4lDX+axQQLoKKPEnrMvmCcwys9C
 WLaAkXEVo3hqaXFuemqxYV5quV5xYm5xaV66XnJ+7iZGYFo6/e/4px2MXy8lHWIU4GBU4uHt
 MNoZJ8SaWFZcmXuIUYKDWUmEtyUTKMSbklhZlVqUH19UmpNafIhRmoNFSZzXeNHLWCGB9MSS
 1OzU1ILUIpgsEwenVANj38EnC+87sVhn8htIVHO7zDLco1Jz2cp2+T0Z3wMPdG+deLL81INN
 DD9jVe26uD0FcmfNUOXVz8049rFQ+bpJ7dnPqsJcHoViXKFe5hMK1eO3hW3uilv528p9QmWO
 s+6LVSf3ty8+cOHMQp/Dh881aRzf80/EO/fO6SaOmrO6v38+nqnLy1ahxFKckWioxVxUnAgA
 Y96ihUcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKIsWRmVeSWpSXmKPExsVy+t/xu7ovU3fFGazp5bfoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2mDO10GLL6bmMFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWB16PNfPWMHrs/baAxWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObR2/yOzaNv
 yypGj8+b5AK4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstS
 i/TtEvQyjjVyFtwSqpje0c/WwHiZv4uRk0NCwERi5sv97F2MXBxCAksZJf5P2ccOkZCRODmt
 gRXCFpb4c62LDcQWEvjEKLHmRiGIzSZgKNH1FiTOxSEi0MkoMa37I1gzs8A9Jom96/xAbGGB
 OIkT+1eBDWIRUJV41jWNEcTmFbCTaF3QDLVMXmL1hgPMIDYnUPz+/D8sEMsKJR5dfcsygZFv
 ASPDKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMAo2Xbs55YdjF3vgg8xCnAwKvHwdhjtjBNi
 TSwrrsw9xCjBwawkwtuSCRTiTUmsrEotyo8vKs1JLT7EaAp01ERmKdHkfGAE55XEG5oamltY
 GpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYJx4rCTj8sS0OqO3sY+XX356vPtV
 +PfVNmcmXtL+4rhp4V3D43yL8y6y1G/bs1vnzNRSkz7267tSP8g1fWK4dWlhyGLx5t981sGM
 RYLqTEdC1TJbFVyUGZXNnm8+Ncd8ue18Z9ddc9lOn/658dK6i/5+oT8fCPXtPdpQ/bN9f6rs
 KYuAJXZcakJKLMUZiYZazEXFiQCA1aSZqAIAAA==
X-CMS-MailID: 20200512090129eucas1p2e67c8a9adafb202970a59c3412cd887a
X-Msg-Generator: CA
X-RootMTR: 20200512090129eucas1p2e67c8a9adafb202970a59c3412cd887a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090129eucas1p2e67c8a9adafb202970a59c3412cd887a
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090129eucas1p2e67c8a9adafb202970a59c3412cd887a@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kvm@vger.kernel.org, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Kirti Wankhede <kwankhede@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 36/38] samples: vfio-mdev/mbochs: fix
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
b3JtYXRpb24sIHNlZSAnW1BBVENIIHY0IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUg
bmVudHMKdnMuIG9yaWdfbmVudHMgbWlzdXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2RyaS1kZXZlbC8yMDIwMDUxMjA4NTcxMC4xNDY4OC0xLW0uc3p5cHJvd3NraUBzYW1zdW5n
LmNvbS9ULwotLS0KIHNhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5jIHwgMyArKy0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zYW1w
bGVzL3ZmaW8tbWRldi9tYm9jaHMuYyBiL3NhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5jCmluZGV4
IDNjYzVlNTkuLmYyYzYyZTAgMTAwNjQ0Ci0tLSBhL3NhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5j
CisrKyBiL3NhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5jCkBAIC04NDYsNyArODQ2LDcgQEAgc3Rh
dGljIHN0cnVjdCBzZ190YWJsZSAqbWJvY2hzX21hcF9kbWFidWYoc3RydWN0IGRtYV9idWZfYXR0
YWNobWVudCAqYXQsCiAJaWYgKHNnX2FsbG9jX3RhYmxlX2Zyb21fcGFnZXMoc2csIGRtYWJ1Zi0+
cGFnZXMsIGRtYWJ1Zi0+cGFnZWNvdW50LAogCQkJCSAgICAgIDAsIGRtYWJ1Zi0+bW9kZS5zaXpl
LCBHRlBfS0VSTkVMKSA8IDApCiAJCWdvdG8gZXJyMjsKLQlpZiAoIWRtYV9tYXBfc2coYXQtPmRl
diwgc2ctPnNnbCwgc2ctPm5lbnRzLCBkaXJlY3Rpb24pKQorCWlmIChkbWFfbWFwX3NndGFibGUo
YXQtPmRldiwgc2csIGRpcmVjdGlvbikpCiAJCWdvdG8gZXJyMzsKIAogCXJldHVybiBzZzsKQEAg
LTg2OCw2ICs4NjgsNyBAQCBzdGF0aWMgdm9pZCBtYm9jaHNfdW5tYXBfZG1hYnVmKHN0cnVjdCBk
bWFfYnVmX2F0dGFjaG1lbnQgKmF0LAogCiAJZGV2X2RiZyhkZXYsICIlczogJWRcbiIsIF9fZnVu
Y19fLCBkbWFidWYtPmlkKTsKIAorCWRtYV91bm1hcF9zZ3RhYmxlKGF0LT5kZXYsIHNnLCBkaXJl
Y3Rpb24pOwogCXNnX2ZyZWVfdGFibGUoc2cpOwogCWtmcmVlKHNnKTsKIH0KLS0gCjEuOS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

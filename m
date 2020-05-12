Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D411CF1E4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:47:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CE94619B1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:47:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3A14B618C8; Tue, 12 May 2020 09:47:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E754466547;
	Tue, 12 May 2020 09:08:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2A14461900
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:08:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 19E686654B; Tue, 12 May 2020 09:08:01 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id E5DA961900
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:28 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090128euoutp02c7c176d46d62b9d42b8a218c1f591a0b~OPFzjCC2g0455404554euoutp02T
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090128euoutp02c7c176d46d62b9d42b8a218c1f591a0b~OPFzjCC2g0455404554euoutp02T
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090127eucas1p29cf72b429b59cdb7355ad7d1473bda4b~OPFzRZ7iF2661826618eucas1p2j;
 Tue, 12 May 2020 09:01:27 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 3D.67.61286.7E56ABE5; Tue, 12
 May 2020 10:01:27 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090127eucas1p19889d83b1c750dcdc869323e8d1946a3~OPFy9MUqQ2838128381eucas1p1P;
 Tue, 12 May 2020 09:01:27 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090127eusmtrp1a3807a059ca1740ced7a4d55072ad119~OPFy8bt4b0183401834eusmtrp11;
 Tue, 12 May 2020 09:01:27 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-ae-5eba65e70eaf
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E6.03.07950.7E56ABE5; Tue, 12
 May 2020 10:01:27 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090126eusmtip178d4ef6401588445a17a097376736bca~OPFyE8_nj1257212572eusmtip1x;
 Tue, 12 May 2020 09:01:26 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:53 +0200
Message-Id: <20200512090058.14910-33-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0iTURjGO/uuk2afU/BgYTAyS8hbQaeMKCo6CUH1R2EXbeWXl9yUfWkp
 UZoWNjUyqdbKKRpa3rbmWjUt71pq66KEkTrLQrSraTexy9bX5b/f+5z3OQ/P4bCEfITyYePU
 B3iNWpmgoN1Ia/s3+6IR3hYZ/O51CMqz35OgazojhX5a8wlU3z3FoMrxYYB6P72nUWapkUZX
 K9skqLghDGXpS0g02ftcgszDTyjUY7tEo1zTdQqdnNTTqLp1gEFl5mkJavrwkkLfbAZylSeu
 MlQBPHinhcS3PxeT+JZ+gMHmipM0vvF5iMINhVUMduR0SHDt5aP42Y9hAhf0lQNc9zSdxnmZ
 72h8ylIB8ITZd9Os7W4rovmEuBReE7Ryt1us5dQrMmmcO1Sb42DSgc5dC1gWckvg/aYoLXBj
 5dwVAL/XZwNxmASwp+gCJQ4TAE4Yssm/joKzy0S9HEBb8xvmn6PTMeZ0SFmaC4Hat1raxV7c
 cQDv5s10McF1k7D762IXe3IRMDdvnHQxyfnBp52Nv/dl3EpoOjP4+x7IzYWVpkbCxVKn7iia
 Jl1hkMtnYd/XSSAurYUv2jJIkT3hWIeFEXkO7CrI/WPIBPC5vZoRh1xnuWO6P+4w2G+fol3d
 CG4hNNqCRHk1nDYW0WJld9j31kMs4A7PWM8ToiyD2Sfk4vZ8qO+o+Rfb9PAxITKGFx6YaPGB
 2gC0GtqZ02Cu/n9YMQAVwJtPFlQxvBCi5g8GCkqVkKyOCdybqDID5/fr+tHx8Sb49HhPM+BY
 oJgpyw69FSmnlClCqqoZQJZQeMmy4pySLFqZmsZrEqM0yQm80Axms6TCW7a4ZHSXnItRHuD3
 83wSr/l7KmGlPunA58sMYV6l31LVfZ0uOGOn9/J+8tJ06Pes9ROvh8Jlm63YgOfFn4u46HGo
 q+5lzZGhmK37Wi3sGr+oHFn+F6lxja1c3TIatO3RyIbQ1rMO++EFYE5ZeOEW35KNfgFVvqrw
 tPh1Pe7+z5hef2pEWrfjZqPinDajZMZU6VikKbPaAhSkEKsMCSA0gvIX/dPjWHoDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFIsWRmVeSWpSXmKPExsVy+t/xu7rPU3fFGew/JW3Re+4kk8XGGetZ
 Lf5vm8hssefML3aL1R8fM1pc+fqezaJ58Xo2i5WrjzJZLNhvbdEyaxGLxZcrD5ksNj2+xmpx
 edccNoueDVtZLTq/zGKzWHvkLrvFsk1/mCwOfnjCavFz1zwWB2GPNfPWMHrc23eYxWPvtwUs
 Hjtn3WX32LSqk81j+7cHrB77565h97jffZzJY/OSeo/b/x4ze0y+sZzRY/fNBjaP3uZ3bB59
 W1YxenzeJBfAH6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mW
 WqRvl6CXsaXvKUvBR4GKzd332RsYZ/B1MXJwSAiYSEyeatnFyMUhJLCUUeLB43bGLkZOoLiM
 xMlpDawQtrDEn2tdbBBFnxglZnf/ZAJJsAkYSnS9hUiICHQySkzr/sgO4jAL3GCRmLvlAztI
 lbBAuMTZF5+YQWwWAVWJm6cOsIHYvAJ2Ehsm3YNaIS+xesMBsBpOoPj9+X9YQGwhgUKJR1ff
 skxg5FvAyLCKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMB63Hfu5ZQdj17vgQ4wCHIxKPLwd
 RjvjhFgTy4orcw8xSnAwK4nwtmQChXhTEiurUovy44tKc1KLDzGaAh01kVlKNDkfmCrySuIN
 TQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwiq5apvhvq99i+812f2y9
 i9+/fLOft7Pv2DomAQH+f+wTryZvXtdWEbXVSXHSRsZFYW4su2cyBZw9NfvwSqOkhp0xy2Yy
 CwldF7iw5HmzhMiFuRczAvr2mj1z+NV5OPX6g1zBjP5EFpWpGkf21KxVOLxdIfpv0oJFHVd2
 Gc5cXRj99cu56XlfI5VYijMSDbWYi4oTAfqsapLdAgAA
X-CMS-MailID: 20200512090127eucas1p19889d83b1c750dcdc869323e8d1946a3
X-Msg-Generator: CA
X-RootMTR: 20200512090127eucas1p19889d83b1c750dcdc869323e8d1946a3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090127eucas1p19889d83b1c750dcdc869323e8d1946a3
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090127eucas1p19889d83b1c750dcdc869323e8d1946a3@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 33/38] staging: tegra-vde: fix common
 struct sg_table related issues
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2NCAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwv
MjAyMDA1MTIwODU3MTAuMTQ2ODgtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBk
cml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2lvbW11LmMgfCA0ICsrLS0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9pb21tdS5jIGIvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3RlZ3JhLXZkZS9pb21tdS5jCmluZGV4IDZhZjg2M2QuLmFkZjhkYzcgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvaW9tbXUuYworKysgYi9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvdGVncmEtdmRlL2lvbW11LmMKQEAgLTM2LDggKzM2LDggQEAgaW50IHRlZ3Jh
X3ZkZV9pb21tdV9tYXAoc3RydWN0IHRlZ3JhX3ZkZSAqdmRlLAogCiAJYWRkciA9IGlvdmFfZG1h
X2FkZHIoJnZkZS0+aW92YSwgaW92YSk7CiAKLQlzaXplID0gaW9tbXVfbWFwX3NnKHZkZS0+ZG9t
YWluLCBhZGRyLCBzZ3QtPnNnbCwgc2d0LT5uZW50cywKLQkJCSAgICBJT01NVV9SRUFEIHwgSU9N
TVVfV1JJVEUpOworCXNpemUgPSBpb21tdV9tYXBfc2d0YWJsZSh2ZGUtPmRvbWFpbiwgYWRkciwg
c2d0LAorCQkJCSBJT01NVV9SRUFEIHwgSU9NTVVfV1JJVEUpOwogCWlmICghc2l6ZSkgewogCQlf
X2ZyZWVfaW92YSgmdmRlLT5pb3ZhLCBpb3ZhKTsKIAkJcmV0dXJuIC1FTlhJTzsKLS0gCjEuOS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

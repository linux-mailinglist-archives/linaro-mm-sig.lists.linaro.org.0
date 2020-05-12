Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4661CF1AA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:33:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE87061734
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:33:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BE6C2618EF; Tue, 12 May 2020 09:33:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25875664EB;
	Tue, 12 May 2020 09:06:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 81EFE664E8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:06:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 66AFE65F98; Tue, 12 May 2020 09:06:28 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 1E9B765F98
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:18 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090117euoutp01cadc493bc7a07d12f9cb7182bea64deb~OPFpfWWT92636326363euoutp01E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090117euoutp01cadc493bc7a07d12f9cb7182bea64deb~OPFpfWWT92636326363euoutp01E
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090117eucas1p17d792157b650a40117110aadd5469cfe~OPFpNIKo11613916139eucas1p1e;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 80.67.61286.CD56ABE5; Tue, 12
 May 2020 10:01:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090116eucas1p24662e01574c0700cfe6d474280bb8df5~OPFo3pf0f0955009550eucas1p2s;
 Tue, 12 May 2020 09:01:16 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090116eusmtrp14004cd9fd0a34e696f88b67d4572d6b9~OPFo27p7f0188101881eusmtrp1J;
 Tue, 12 May 2020 09:01:16 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-74-5eba65dc25ff
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 39.F2.07950.CD56ABE5; Tue, 12
 May 2020 10:01:16 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090116eusmtip1dc725179573278247b96449deb5612c7~OPFoQBfKf1148011480eusmtip1V;
 Tue, 12 May 2020 09:01:15 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:36 +0200
Message-Id: <20200512090058.14910-16-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTURzm7Ow+XK5u0/D0MGlhj5GZFXTBsoIeF4LsBVFRuvI6V27ZppYR
 KFpiy0drkTZkrXc+eplYTiydjxnqLBVZK1tlZIpiNC3N0Ha7s/77ft/j9x1+HBJKGrA5pFKd
 yGrU8ngpLhJWNI7ZQ96xlkMrMk1r6Rz7SwH9uOAhRk9W6CHdOTKE04W9rYAuKmkQ0OYX4fRw
 50cBXdbThdH6F60E3WEpxOn79d0E3Xt9FNK13z5jdLehHmyYwZSaSgFT/cMsZCqN3QTz9McH
 jHFdsAmYJ7dSmbcTPZAxOO4CpupNGs7YLE6CyS0vBoy7bP4O3/2itTFsvDKZ1YRGRIviLpcM
 4QnWhae+OVtgGnAF6oAPiajVSF8yCjgsoe4B1GfbpQMiDx4GaMBdJOAHN0D6az1wKtFy2Uzw
 wl2APmUY4L/I8wGDgHPhVBjSDepwDvtT5wBqyvHlTJAyQvTVOv5X8KMiUV7ThCdNkkIqGF29
 uY+jxVQEqnY1A74tCJU8qvnb7OPhXdd+C7k9iHISyFE/ivGmTZ49fTiP/VC/rZzg8TzUbMj2
 BjIA+mi/T/BDNkAd6QXeinD0zv4L514BqaXooSWUpzeimrMtGEcjajpyDM7kaOiBlyryIU+L
 UVamhHcvQkbbg3+1ta/avddiUFWj23utBoDqHpvgRRBk/F9mBqAYBLBJWpWC1Yap2ZPLtXKV
 NkmtWH7kuKoMeD5X84Tt+zMw0n7YCigSSH3FWSsrD0kwebI2RWUFiIRSf/FZpYcSx8hTTrOa
 41GapHhWawVzSaE0QLzqRt9BCaWQJ7LHWDaB1UypAtJnThoIIdMty87kfmjrSJ+MVS849X7a
 7jGIxWYEti15nWUyhtz2C1q8LZOYt/1ApCyxblbv3q13RHn5rlalfU/f5jdRRcFblO3rg3/u
 dFS8lF0JTSGfn2eOhvdfKuv64pwcdvqnzthRnh+b35F0evzEePSYebZpsKp3dc26NU1hcG9C
 s0ImFWrj5GEyqNHK/wCS0IPcWAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsVy+t/xu7p3UnfFGSyfqmbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLOc/PMlqsXH2UyWLBfmuLL1ceMllsenyN1WLi/rPsFpd3zWGzWHvkLrvF
 84U/mC0OfnjCanF38hFGB36PNfPWMHrs/baAxWPnrLvsHtu/PWD1uN99nMlj85J6j9v/HjN7
 TL6xnNFj980GNo/ju26xe/RtWcXo8XmTXABPlJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYml
 nqGxeayVkamSvp1NSmpOZllqkb5dgl7GlNXv2QoOKVd8uHWGuYHxvmwXIyeHhICJxJkpC9i7
 GLk4hASWMkr8+tXGBJGQkTg5rYEVwhaW+HOtiw2i6BOjRO/OZSwgCTYBQ4mutxAJEYFORolp
 3R/BRjELLGGW6Jt6iQ2kSljAV2Jf1xegURwcLAKqEjMXR4KEeQXsJPbeP80IsUFeYvWGA8wg
 NidQ/P78P2ALhAQKJR5dfcsygZFvASPDKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMBI2nbs
 55YdjF3vgg8xCnAwKvHwdhjtjBNiTSwrrsw9xCjBwawkwtuSCRTiTUmsrEotyo8vKs1JLT7E
 aAp000RmKdHkfGCU55XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRq
 YNy8f4OprtfytY+M/PPPnm7adSffXvT5je7LCaZua7bPqTFl0P78evJKHk8lf4Ga2MJWv/B4
 RZHMV9XysbUepqvmxk1ire28toDnyrLZR+w35T3hmc5sfSXt4anTpS/vCG5lvF37oHsFc/rc
 eRGBexVYY9PWmnTwnHjLdutgzAcpyX6JqbXx3kosxRmJhlrMRcWJAKePAWK6AgAA
X-CMS-MailID: 20200512090116eucas1p24662e01574c0700cfe6d474280bb8df5
X-Msg-Generator: CA
X-RootMTR: 20200512090116eucas1p24662e01574c0700cfe6d474280bb8df5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090116eucas1p24662e01574c0700cfe6d474280bb8df5
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090116eucas1p24662e01574c0700cfe6d474280bb8df5@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: freedreno@lists.freedesktop.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 16/38] drm: msm: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2NCAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwv
MjAyMDA1MTIwODU3MTAuMTQ2ODgtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyAgICB8IDEzICsrKysrLS0tLS0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX2dwdW1tdS5jIHwgMTQgKysrKysrLS0tLS0tLS0KIGRyaXZlcnMv
Z3B1L2RybS9tc20vbXNtX2lvbW11LmMgIHwgIDIgKy0KIDMgZmlsZXMgY2hhbmdlZCwgMTIgaW5z
ZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L21zbS9tc21fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwppbmRleCA1YTZh
NzlmLi42MzE4YzIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwpAQCAtNTMsMTEgKzUzLDEwIEBAIHN0
YXRpYyB2b2lkIHN5bmNfZm9yX2RldmljZShzdHJ1Y3QgbXNtX2dlbV9vYmplY3QgKm1zbV9vYmop
CiAJc3RydWN0IGRldmljZSAqZGV2ID0gbXNtX29iai0+YmFzZS5kZXYtPmRldjsKIAogCWlmIChn
ZXRfZG1hX29wcyhkZXYpICYmIElTX0VOQUJMRUQoQ09ORklHX0FSTTY0KSkgewotCQlkbWFfc3lu
Y19zZ19mb3JfZGV2aWNlKGRldiwgbXNtX29iai0+c2d0LT5zZ2wsCi0JCQltc21fb2JqLT5zZ3Qt
Pm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJCWRtYV9zeW5jX3NndGFibGVfZm9yX2Rldmlj
ZShkZXYsIG1zbV9vYmotPnNndCwKKwkJCQkJICAgIERNQV9CSURJUkVDVElPTkFMKTsKIAl9IGVs
c2UgewotCQlkbWFfbWFwX3NnKGRldiwgbXNtX29iai0+c2d0LT5zZ2wsCi0JCQltc21fb2JqLT5z
Z3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJCWRtYV9tYXBfc2d0YWJsZShkZXYsIG1z
bV9vYmotPnNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDApOwogCX0KIH0KIApAQCAtNjYsMTEgKzY1
LDkgQEAgc3RhdGljIHZvaWQgc3luY19mb3JfY3B1KHN0cnVjdCBtc21fZ2VtX29iamVjdCAqbXNt
X29iaikKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBtc21fb2JqLT5iYXNlLmRldi0+ZGV2OwogCiAJ
aWYgKGdldF9kbWFfb3BzKGRldikgJiYgSVNfRU5BQkxFRChDT05GSUdfQVJNNjQpKSB7Ci0JCWRt
YV9zeW5jX3NnX2Zvcl9jcHUoZGV2LCBtc21fb2JqLT5zZ3QtPnNnbCwKLQkJCW1zbV9vYmotPnNn
dC0+bmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKKwkJZG1hX3N5bmNfc2d0YWJsZV9mb3JfY3B1
KGRldiwgbXNtX29iai0+c2d0LCBETUFfQklESVJFQ1RJT05BTCk7CiAJfSBlbHNlIHsKLQkJZG1h
X3VubWFwX3NnKGRldiwgbXNtX29iai0+c2d0LT5zZ2wsCi0JCQltc21fb2JqLT5zZ3QtPm5lbnRz
LCBETUFfQklESVJFQ1RJT05BTCk7CisJCWRtYV91bm1hcF9zZ3RhYmxlKGRldiwgbXNtX29iai0+
c2d0LCBETUFfQklESVJFQ1RJT05BTCwgMCk7CiAJfQogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vbXNtL21zbV9ncHVtbXUuYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dwdW1t
dS5jCmluZGV4IDM0OTgwZDguLjVkOGRhNGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9t
c20vbXNtX2dwdW1tdS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dwdW1tdS5jCkBA
IC0zNSwyMSArMzUsMTkgQEAgc3RhdGljIGludCBtc21fZ3B1bW11X21hcChzdHJ1Y3QgbXNtX21t
dSAqbW11LCB1aW50NjRfdCBpb3ZhLAogewogCXN0cnVjdCBtc21fZ3B1bW11ICpncHVtbXUgPSB0
b19tc21fZ3B1bW11KG1tdSk7CiAJdW5zaWduZWQgaWR4ID0gKGlvdmEgLSBHUFVNTVVfVkFfU1RB
UlQpIC8gR1BVTU1VX1BBR0VfU0laRTsKLQlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnOworCXN0cnVj
dCBzZ19kbWFfcGFnZV9pdGVyIGRtYV9pdGVyOwogCXVuc2lnbmVkIHByb3RfYml0cyA9IDA7Ci0J
dW5zaWduZWQgaSwgajsKIAogCWlmIChwcm90ICYgSU9NTVVfV1JJVEUpCiAJCXByb3RfYml0cyB8
PSAxOwogCWlmIChwcm90ICYgSU9NTVVfUkVBRCkKIAkJcHJvdF9iaXRzIHw9IDI7CiAKLQlmb3Jf
ZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+bmVudHMsIGkpIHsKLQkJZG1hX2FkZHJfdCBhZGRy
ID0gc2ctPmRtYV9hZGRyZXNzOwotCQlmb3IgKGogPSAwOyBqIDwgc2ctPmxlbmd0aCAvIEdQVU1N
VV9QQUdFX1NJWkU7IGorKywgaWR4KyspIHsKLQkJCWdwdW1tdS0+dGFibGVbaWR4XSA9IGFkZHIg
fCBwcm90X2JpdHM7Ci0JCQlhZGRyICs9IEdQVU1NVV9QQUdFX1NJWkU7Ci0JCX0KKwlmb3JfZWFj
aF9zZ3RhYmxlX2RtYV9wYWdlKHNndCwgJmRtYV9pdGVyLCAwKSB7CisJCWRtYV9hZGRyX3QgYWRk
ciA9IHNnX3BhZ2VfaXRlcl9kbWFfYWRkcmVzcygmZG1hX2l0ZXIpOworCisJCUJVSUxEX0JVR19P
TihHUFVNTVVfUEFHRV9TSVpFICE9IFBBR0VfU0laRSk7CisJCWdwdW1tdS0+dGFibGVbaWR4Kytd
ID0gYWRkciB8IHByb3RfYml0czsKIAl9CiAKIAkvKiB3ZSBjYW4gaW1wcm92ZSBieSBkZWZlcnJp
bmcgZmx1c2ggZm9yIG11bHRpcGxlIG1hcCgpICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vbXNtL21zbV9pb21tdS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21faW9tbXUuYwppbmRl
eCBhZDU4Y2ZlLi5kMzIyYjM5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9p
b21tdS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2lvbW11LmMKQEAgLTQzLDcgKzQz
LDcgQEAgc3RhdGljIGludCBtc21faW9tbXVfbWFwKHN0cnVjdCBtc21fbW11ICptbXUsIHVpbnQ2
NF90IGlvdmEsCiAJc3RydWN0IG1zbV9pb21tdSAqaW9tbXUgPSB0b19tc21faW9tbXUobW11KTsK
IAlzaXplX3QgcmV0OwogCi0JcmV0ID0gaW9tbXVfbWFwX3NnKGlvbW11LT5kb21haW4sIGlvdmEs
IHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBwcm90KTsKKwlyZXQgPSBpb21tdV9tYXBfc2d0YWJsZShp
b21tdS0+ZG9tYWluLCBpb3ZhLCBzZ3QsIHByb3QpOwogCVdBUk5fT04oIXJldCk7CiAKIAlyZXR1
cm4gKHJldCA9PSBsZW4pID8gMCA6IC1FSU5WQUw7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

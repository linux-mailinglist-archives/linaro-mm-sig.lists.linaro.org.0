Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBC51CF1C9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:40:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73FC061957
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:40:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 66E8B61831; Tue, 12 May 2020 09:40:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F7106650F;
	Tue, 12 May 2020 09:07:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 90651618D7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:07:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8139B65F93; Tue, 12 May 2020 09:07:03 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id BC26E65F9E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:22 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090121euoutp01be5c0e72d6b5aa3e06a4db1ce93f39b1~OPFt0QUGR2643526435euoutp01C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090121euoutp01be5c0e72d6b5aa3e06a4db1ce93f39b1~OPFt0QUGR2643526435euoutp01C
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090121eucas1p2e0453552b936596e63c57e2ffe651687~OPFtkCzEu2662326623eucas1p2Z;
 Tue, 12 May 2020 09:01:21 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 26.67.61286.1E56ABE5; Tue, 12
 May 2020 10:01:21 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090121eucas1p2f20e300f70ff54da15fe49cc6690f608~OPFtOVjFD3099030990eucas1p2J;
 Tue, 12 May 2020 09:01:21 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090121eusmtrp114eb01c10205f43f3b8ec4069a88301c~OPFtNqoRl0188101881eusmtrp1S;
 Tue, 12 May 2020 09:01:21 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-91-5eba65e14e27
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id FF.F2.07950.1E56ABE5; Tue, 12
 May 2020 10:01:21 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090120eusmtip125f29dafed6f117e46b6797a94f9c83a~OPFss8QdI1148011480eusmtip1Z;
 Tue, 12 May 2020 09:01:20 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:44 +0200
Message-Id: <20200512090058.14910-24-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRju2znbzqar07T80EpYGWSpzRsHDCkQOv+M6FeRNvOgw2s7as1+
 ZJql85LOQpHIqeXUadOpSy3TabpiMUMtFLM1VoKCeZkapVmbZ+W/5/byPHx8GCLsYHtj0tQM
 SpYqSRZx+Kh+5OdogJXqjTmpGPYnSsxvWUR7lZZN/NGXI8TE2iKHGLg9DogmzTCLUPVHEKsT
 Vhahs31kE+O9jzhE6+sZLmFY+so+7U7mLo5wyJbHLYDsW1eh5PP1L2zSUmRkkR1PbpHTWzaE
 rJhUA/LFVA6HLO1sBqRdd+ic20X+qXgqWZpFyYIir/ATJ+93cdI/77vxYy4PyQGVQgXgYRAP
 hfWqDZYC8DEh3gjgTHUnypBVALW1s1yG2AHU6BXov5NaQxNgDDWAo23zOyem6RmWM8XBxVCx
 oOA4sSeeD+CbEndnCMF7WLCu8CVwGh54NKwytHOdGMX94Eb35rYuwCOhqqGBzdT5Qk3bAOLE
 PIduqdncboP4Ky60dPUgTCgKPm2d5zLYA84bO134ADRVFLsO8gC0mlu5DCkGcDy3CjCpCPjJ
 /MuxFXPsOwa1vUGMfAY+yL0HnDLEd8PJhb1OGXFApb4SYWQBLLjresmjsNr47H+t4f2YaxoJ
 J1wThPgwcJAltAz4Vu+UqQBoBl5UJp2SQNHiVOp6IC1JoTNTEwKvpqXogOMrmbaMK91gbSxu
 EOAYELkLCoJ7YoRsSRYtTxkEEENEnoI7UockiJfIsylZWqwsM5miB4EPhoq8BCF1c5eFeIIk
 g0qiqHRK9s9lYTzvHBBtPTsevTiHzm4WKYfafytt58uu+UvDSXGV33cfzYVSt357duxDnenI
 0OG44xoMF+//wLeZ0/KnDipDS4NVXuVNJxp5QTe1eWr7RIvMEyzzkpfVe4wh8XM2+0pSYmGN
 Xhl2aVeAhlZFfZPml2mDwuX1YaPvwGQL3Scvt1pEKJ0oEfsjMlryF/RPXCNGAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsVy+t/xu7oPU3fFGcx7KWzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLA42XGS1Wrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x6Pp/TE2jzXz1jB67P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJ
 ehk3+reyFdwTrfj+spm5gXG6UBcjJ4eEgInEwoMrGbsYuTiEBJYySmx538wGkZCRODmtgRXC
 Fpb4c62LDaLoE6PErQnHGUESbAKGEl1vIRIiAp2MEtO6P7KDOMwC+5kkLh85xQ5SJSzgKzHt
 UQ9YB4uAqsTvHX/AbF4BO4kFy5ZBrZCXWL3hADOIzQkUvz//DwuILSRQKPHo6luWCYx8CxgZ
 VjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgTGyLZjP7fsYOx6F3yIUYCDUYmHt8NoZ5wQa2JZ
 cWXuIUYJDmYlEd6WTKAQb0piZVVqUX58UWlOavEhRlOgoyYyS4km5wPjN68k3tDU0NzC0tDc
 2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA6OZjejcJaFac5a9mLLMOeuJxv8/WxVU
 2zn5DGbKLJdMfPXLulT4F+PEHKYQZvV3f++v2n3bccLtW2H3jEv+P9f8b/fK5fC7C4L7PWzO
 nnq4z7Rfq+LqyY3iZ79q6RzrfhJVtCP4RNCu7zbuOmEp5Rb665ILpD2yFrgcO71hrkrHq4df
 q/5dqIlSYinOSDTUYi4qTgQACgdpdqcCAAA=
X-CMS-MailID: 20200512090121eucas1p2f20e300f70ff54da15fe49cc6690f608
X-Msg-Generator: CA
X-RootMTR: 20200512090121eucas1p2f20e300f70ff54da15fe49cc6690f608
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090121eucas1p2f20e300f70ff54da15fe49cc6690f608
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090121eucas1p2f20e300f70ff54da15fe49cc6690f608@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Eric Anholt <eric@anholt.net>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 24/38] drm: v3d: fix common struct
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
cml2ZXJzL2dwdS9kcm0vdjNkL3YzZF9tbXUuYyB8IDE3ICsrKysrKystLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vdjNkL3YzZF9tbXUuYyBiL2RyaXZlcnMvZ3B1L2RybS92M2QvdjNk
X21tdS5jCmluZGV4IDNiODFlYTIuLjE3NWMyNTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS92M2QvdjNkX21tdS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92M2QvdjNkX21tdS5jCkBAIC05
MCwxOSArOTAsMTYgQEAgdm9pZCB2M2RfbW11X2luc2VydF9wdGVzKHN0cnVjdCB2M2RfYm8gKmJv
KQogCXN0cnVjdCB2M2RfZGV2ICp2M2QgPSB0b192M2RfZGV2KHNobWVtX29iai0+YmFzZS5kZXYp
OwogCXUzMiBwYWdlID0gYm8tPm5vZGUuc3RhcnQ7CiAJdTMyIHBhZ2VfcHJvdCA9IFYzRF9QVEVf
V1JJVEVBQkxFIHwgVjNEX1BURV9WQUxJRDsKLQl1bnNpZ25lZCBpbnQgY291bnQ7Ci0Jc3RydWN0
IHNjYXR0ZXJsaXN0ICpzZ2w7CisJc3RydWN0IHNnX2RtYV9wYWdlX2l0ZXIgZG1hX2l0ZXI7CiAK
LQlmb3JfZWFjaF9zZyhzaG1lbV9vYmotPnNndC0+c2dsLCBzZ2wsIHNobWVtX29iai0+c2d0LT5u
ZW50cywgY291bnQpIHsKLQkJdTMyIHBhZ2VfYWRkcmVzcyA9IHNnX2RtYV9hZGRyZXNzKHNnbCkg
Pj4gVjNEX01NVV9QQUdFX1NISUZUOworCWZvcl9lYWNoX3NndGFibGVfZG1hX3BhZ2Uoc2htZW1f
b2JqLT5zZ3QsICZkbWFfaXRlciwgMCkgeworCQlkbWFfYWRkcl90IGRtYV9hZGRyID0gc2dfcGFn
ZV9pdGVyX2RtYV9hZGRyZXNzKCZkbWFfaXRlcik7CisJCXUzMiBwYWdlX2FkZHJlc3MgPSBkbWFf
YWRkciA+PiBWM0RfTU1VX1BBR0VfU0hJRlQ7CiAJCXUzMiBwdGUgPSBwYWdlX3Byb3QgfCBwYWdl
X2FkZHJlc3M7Ci0JCXUzMiBpOwogCi0JCUJVR19PTihwYWdlX2FkZHJlc3MgKyAoc2dfZG1hX2xl
bihzZ2wpID4+IFYzRF9NTVVfUEFHRV9TSElGVCkgPj0KLQkJICAgICAgIEJJVCgyNCkpOwotCi0J
CWZvciAoaSA9IDA7IGkgPCBzZ19kbWFfbGVuKHNnbCkgPj4gVjNEX01NVV9QQUdFX1NISUZUOyBp
KyspCi0JCQl2M2QtPnB0W3BhZ2UrK10gPSBwdGUgKyBpOworCQlCVUlMRF9CVUdfT04oVjNEX01N
VV9QQUdFX1NISUZUICE9IFBBR0VfU0laRSk7CisJCUJVR19PTihwYWdlX2FkZHJlc3MgKyAxID49
IEJJVCgyNCkpOworCQl2M2QtPnB0W3BhZ2UrK10gPSBwdGU7CiAJfQogCiAJV0FSTl9PTl9PTkNF
KHBhZ2UgLSBiby0+bm9kZS5zdGFydCAhPQotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D05D71D1698
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:57:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F366F65F88
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:57:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E82DB65F98; Wed, 13 May 2020 13:57:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE99265F9C;
	Wed, 13 May 2020 13:35:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5771165F98
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:35:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 485B865F99; Wed, 13 May 2020 13:35:35 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 89F3365F9A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:15 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133314euoutp01fc9c78b18e3eacb07c0b105c971cb37e~OmcYmhBQ_2146121461euoutp01M
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133314euoutp01fc9c78b18e3eacb07c0b105c971cb37e~OmcYmhBQ_2146121461euoutp01M
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133314eucas1p12b362cce72951b2e10d5b146ddad21b8~OmcYU4Aiq0384603846eucas1p1W;
 Wed, 13 May 2020 13:33:14 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 31.D5.61286.A17FBBE5; Wed, 13
 May 2020 14:33:14 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133314eucas1p1a607b556e32887e7f5ca60eb09a476c6~OmcYDZxCx2633026330eucas1p1N;
 Wed, 13 May 2020 13:33:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133314eusmtrp126725da789068de919a73c6c40156f9a~OmcYCxzPl1049110491eusmtrp1X;
 Wed, 13 May 2020 13:33:14 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-65-5ebbf71ad87a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 6C.1A.08375.A17FBBE5; Wed, 13
 May 2020 14:33:14 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133313eusmtip13987a33839912ac1a5a620fabb4c42ad~OmcXcH7xo2932629326eusmtip1h;
 Wed, 13 May 2020 13:33:13 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:31 +0200
Message-Id: <20200513133245.6408-24-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIKsWRmVeSWpSXmKPExsWy7djP87pS33fHGZyfJWfRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLA42XGS1Wrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x6Pp/TE2jzXz1jB67P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRXDYpqTmZZalF+nYJXBmTd1xgK7gvWtH74zRLA+MMoS5GTg4JAROJ7e+PMHUxcnEI
 CaxglJj6+TkbSEJI4AujxKQXqhCJz4wSs54vYe9i5ADrmLlSHSK+nFHi0ZkrbBAOUMPBz22M
 IN1sAoYSXW+7wCaJCLQySpzo5QEpYhbYySSxqHMPWJGwgL/E+v3NzCA2i4CqxMm9x8HivAK2
 Ei/+TmKGuE9eYvWGA2A2J1D81Z39LCCDJAQOsUvs3POIBaLIReLMkcmsELawxKvjW9ghbBmJ
 05N7oBqaGSUenlvLDuH0MEpcbprBCFFlLXHn3C82kOeYBTQl1u/Shwg7Suxdt5UJ4mc+iRtv
 BUHCzEDmpG3TmSHCvBIdbdBwVJOYdXwd3NqDFy5B3e8h8XbbAnZICB1mlOicOp19AqP8LIRl
 CxgZVzGKp5YW56anFhvmpZbrFSfmFpfmpesl5+duYgQmpNP/jn/awfj1UtIhRgEORiUeXotb
 u+OEWBPLiitzDzFKcDArifD6rQcK8aYkVlalFuXHF5XmpBYfYpTmYFES5zVe9DJWSCA9sSQ1
 OzW1ILUIJsvEwSnVwCh4Us5NY7+2a1zExZvaIndnz87jPGL80j+t2MaloN9jYWnpZBnnffPn
 GUfu5JG25YqJM7jEtN435VDOhnceLhcuP555zWT3xejdt3lnveqrW7L9jIrmn8DQT/Xn2/l2
 MM+p6UvmcTfq3xJq6OwkULoimmFNbcjfrTuepT540jT79SrewKXmK5VYijMSDbWYi4oTAerz
 /PZEAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xu7pS33fHGbydyGvRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLA42XGS1Wrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x6Pp/TE2jzXz1jB67P22gMVj+7cHrB73u48zeWxeUu9x+99jZo/JN5Yzeuy+2cDm0bdlFaPH
 501yAdxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJ
 ehmTd1xgK7gvWtH74zRLA+MMoS5GDg4JAROJmSvVuxi5OIQEljJKbJkxn72LkRMoLiNxcloD
 K4QtLPHnWhcbRNEnRom5P/tYQBJsAoYSXW8hEiICnYwS07o/soM4zAL7mSQuHzkFNkpYwFfi
 0NTlTCA2i4CqxMm9xxlBbF4BW4kXfycxQ6yQl1i94QCYzQkUf3VnP9gGIYF8ib2L97FNYORb
 wMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzBCth37uXkH46WNwYcYBTgYlXh4LW7tjhNi
 TSwrrsw9xCjBwawkwuu3HijEm5JYWZValB9fVJqTWnyI0RToqInMUqLJ+cDozSuJNzQ1NLew
 NDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwJg0LWLhGbmDu+OOvL8vvqioaf3t
 BZyKqi7NHzeFL4i884V1+bat2e8WKtXZ/L56hWePYuahYtf9us+jHuQVealX/Pw8b+H1Fc++
 Zrr7+PvnzD9nYzBpRtKxpVPs/279FhX3f2veyoUPU74uXXx1r2b5XzZLd+OqC+687LvaxaZ5
 SLbv7M0PStutxFKckWioxVxUnAgAchFgG6YCAAA=
X-CMS-MailID: 20200513133314eucas1p1a607b556e32887e7f5ca60eb09a476c6
X-Msg-Generator: CA
X-RootMTR: 20200513133314eucas1p1a607b556e32887e7f5ca60eb09a476c6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133314eucas1p1a607b556e32887e7f5ca60eb09a476c6
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133314eucas1p1a607b556e32887e7f5ca60eb09a476c6@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Eric Anholt <eric@anholt.net>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 24/38] drm: v3d: fix common struct
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
J1tQQVRDSCB2NSAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1pb21t
dS8yMDIwMDUxMzEzMjExNC42MDQ2LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tL1QvCi0tLQog
ZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfbW11LmMgfCAxNyArKysrKysrLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfbW11LmMgYi9kcml2ZXJzL2dwdS9kcm0vdjNkL3Yz
ZF9tbXUuYwppbmRleCAzYjgxZWEyLi4xNzVjMjU3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vdjNkL3YzZF9tbXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdjNkL3YzZF9tbXUuYwpAQCAt
OTAsMTkgKzkwLDE2IEBAIHZvaWQgdjNkX21tdV9pbnNlcnRfcHRlcyhzdHJ1Y3QgdjNkX2JvICpi
bykKIAlzdHJ1Y3QgdjNkX2RldiAqdjNkID0gdG9fdjNkX2RldihzaG1lbV9vYmotPmJhc2UuZGV2
KTsKIAl1MzIgcGFnZSA9IGJvLT5ub2RlLnN0YXJ0OwogCXUzMiBwYWdlX3Byb3QgPSBWM0RfUFRF
X1dSSVRFQUJMRSB8IFYzRF9QVEVfVkFMSUQ7Ci0JdW5zaWduZWQgaW50IGNvdW50OwotCXN0cnVj
dCBzY2F0dGVybGlzdCAqc2dsOworCXN0cnVjdCBzZ19kbWFfcGFnZV9pdGVyIGRtYV9pdGVyOwog
Ci0JZm9yX2VhY2hfc2coc2htZW1fb2JqLT5zZ3QtPnNnbCwgc2dsLCBzaG1lbV9vYmotPnNndC0+
bmVudHMsIGNvdW50KSB7Ci0JCXUzMiBwYWdlX2FkZHJlc3MgPSBzZ19kbWFfYWRkcmVzcyhzZ2wp
ID4+IFYzRF9NTVVfUEFHRV9TSElGVDsKKwlmb3JfZWFjaF9zZ3RhYmxlX2RtYV9wYWdlKHNobWVt
X29iai0+c2d0LCAmZG1hX2l0ZXIsIDApIHsKKwkJZG1hX2FkZHJfdCBkbWFfYWRkciA9IHNnX3Bh
Z2VfaXRlcl9kbWFfYWRkcmVzcygmZG1hX2l0ZXIpOworCQl1MzIgcGFnZV9hZGRyZXNzID0gZG1h
X2FkZHIgPj4gVjNEX01NVV9QQUdFX1NISUZUOwogCQl1MzIgcHRlID0gcGFnZV9wcm90IHwgcGFn
ZV9hZGRyZXNzOwotCQl1MzIgaTsKIAotCQlCVUdfT04ocGFnZV9hZGRyZXNzICsgKHNnX2RtYV9s
ZW4oc2dsKSA+PiBWM0RfTU1VX1BBR0VfU0hJRlQpID49Ci0JCSAgICAgICBCSVQoMjQpKTsKLQot
CQlmb3IgKGkgPSAwOyBpIDwgc2dfZG1hX2xlbihzZ2wpID4+IFYzRF9NTVVfUEFHRV9TSElGVDsg
aSsrKQotCQkJdjNkLT5wdFtwYWdlKytdID0gcHRlICsgaTsKKwkJQlVJTERfQlVHX09OKFYzRF9N
TVVfUEFHRV9TSElGVCAhPSBQQUdFX1NJWkUpOworCQlCVUdfT04ocGFnZV9hZGRyZXNzICsgMSA+
PSBCSVQoMjQpKTsKKwkJdjNkLT5wdFtwYWdlKytdID0gcHRlOwogCX0KIAogCVdBUk5fT05fT05D
RShwYWdlIC0gYm8tPm5vZGUuc3RhcnQgIT0KLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

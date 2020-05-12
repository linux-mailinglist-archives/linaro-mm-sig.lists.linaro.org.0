Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E36E1CF1D7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:44:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AF7560723
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:44:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4C20661734; Tue, 12 May 2020 09:44:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35CA86652F;
	Tue, 12 May 2020 09:07:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6A8D865F9C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:07:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 57BD265FA3; Tue, 12 May 2020 09:07:22 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 35C6B65FA8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:25 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090124euoutp018329cf0ba5d726336dafbf47ec153901~OPFwFVmwg2633726337euoutp01Z
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090124euoutp018329cf0ba5d726336dafbf47ec153901~OPFwFVmwg2633726337euoutp01Z
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090124eucas1p265e4e9dd93c75212ba63656fb938b50c~OPFvzaAVR3098030980eucas1p2L;
 Tue, 12 May 2020 09:01:24 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 43.32.60679.4E56ABE5; Tue, 12
 May 2020 10:01:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090123eucas1p25758ba07ba913e5a3eeca13c7f386fdb~OPFvg8iwk0955009550eucas1p21;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090123eusmtrp2069e92e9280ffb857217ee8c202a2166~OPFveJxoI0472704727eusmtrp2S;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-ca-5eba65e4061e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 39.45.08375.3E56ABE5; Tue, 12
 May 2020 10:01:23 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090123eusmtip197b92c77ed49de95c4ac3bbe1e827748~OPFu4RjmH0854008540eusmtip1K;
 Tue, 12 May 2020 09:01:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:48 +0200
Message-Id: <20200512090058.14910-28-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTQRyHnd3tdkHWrIWECYiYIgRM5NS4WiVoMO6DD8QHRYxIlRWItJCW
 02gkiEfLEUWNWAmHmqCUu4TaGsIlVEJFTgELIoJGMagJyCEIdlnQt2++/2/mN5kMgYp0Aici
 Rp7AKuTSWDFui9W1LXTunGCN4b7zXTid3dmO0NV5lQJ6pe42Svf9+oHTz7StCF3UIKFn+sYQ
 umb8rYDuNebjtGpGg9PlL0eEdNPPCQG9YCzAgkimrKAMMPWzRRhj0IwIGf3sBwEzmmlCGN2T
 K4xleRxl7gyWAObFUBrO5NSWAma6ZmvIxjDb/ZFsbEwSq/AJjLCNnuvXY/G5LinV3RosDdQ7
 qoENAaldsCXdgHEsop4COGUJ53kGQFOuRA1srTwNYHaNHlvf0NVXCfhQCYCP3+3hQ9YN3dUP
 EG6AU35QPaXGOXagrgH4KtuOC6HURwSqBrpRbmBPHYOLxbrVkzDKHWY23bU2EARJBcI6Qwhf
 5gq1VY2rcRurHi1cWrtEmxCqByQ8B8N6nXbN28NJU62Q5y1wxVCIcL2QugrgWGe5kF9kAdib
 ngf4lAQOd/7GuWKU8oKVRh9eH4Rm/SDgNKQ2wcGpzZxGrZhbdx/lNQlvXhfxaQ+oMVX8q23q
 6kF5ZuBckRbn36cVwOLPY8gt4Kr5X1YEQClwZBOVsihW6S9nk72VUpkyUR7lfS5OVgOsX6lj
 2TTzHBiXzjYDigBiO9LX1xAuEkiTlKmyZgAJVOxAZsRYFRkpTb3IKuLOKBJjWWUzcCYwsSMZ
 8OjraREVJU1gL7BsPKtYnyKEjVMauDGtDf6u/qLasDhfmfUm4pvbpYjQ5IqjS/ea9Qe2H8rP
 eNimKTPuDtVT5infE/0nGyyuYVWGQU+3P+KhDo/F9uMu2uWxRK8e877Le09Zcs05wWQkLWpR
 nQ9SRb/vasx0dx52t+jN0rwV1bbDRxwDXttNVid9IlWBKfLsYn/PHJkYU0ZL/XagCqX0Ly90
 QFNGAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7qPU3fFGdzdpGnRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzaLzyyw2i7VH7rJbHPzwhNXi
 5655LA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl/H96naWgkmyFRsvzmJpYNwr3sXIySEhYCJx4cp6xi5GLg4hgaWMEqtfHGCESMhI
 nJzWwAphC0v8udbFBlH0iVHi8t6rYEVsAoYSXW8hEiICnYwS07o/soM4zAKvmCQ+/GkFqxIW
 CJC4f38lE4jNIqAq0X1wCksXIwcHr4CdxLadARAb5CVWbzjADGJzAoXvz//DAmILCRRKPLr6
 lmUCI98CRoZVjCKppcW56bnFhnrFibnFpXnpesn5uZsYgbGy7djPzTsYL20MPsQowMGoxMPb
 YbQzTog1say4MvcQowQHs5IIb0smUIg3JbGyKrUoP76oNCe1+BCjKdBNE5mlRJPzgXGcVxJv
 aGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBMezqRys51xtxRa8fNYtk
 Z3no8b/a8Sc0cOKC9vmHPvy+feHPZBHlqiazVSVLp7rdP346v2G+w0LvmvtdJWX3Mu10NXK2
 O8VtNz6meuS01VTfxWmPfBaIMD00j9v6l8dR/csyJ47GD6+c+NX3Z/3RCLQXXVsTfYQ5dbKD
 7c9X3z98ETnR678lTImlOCPRUIu5qDgRAOclplOrAgAA
X-CMS-MailID: 20200512090123eucas1p25758ba07ba913e5a3eeca13c7f386fdb
X-Msg-Generator: CA
X-RootMTR: 20200512090123eucas1p25758ba07ba913e5a3eeca13c7f386fdb
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090123eucas1p25758ba07ba913e5a3eeca13c7f386fdb
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090123eucas1p25758ba07ba913e5a3eeca13c7f386fdb@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 28/38] drm: host1x: fix common struct
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
cml2ZXJzL2dwdS9ob3N0MXgvam9iLmMgfCAyMiArKysrKysrKy0tLS0tLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMgYi9kcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMKaW5k
ZXggYTEwNjQzYS4uNDgzMmI1NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvaG9zdDF4L2pvYi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2hvc3QxeC9qb2IuYwpAQCAtMTY2LDExICsxNjYsOSBAQCBzdGF0
aWMgdW5zaWduZWQgaW50IHBpbl9qb2Ioc3RydWN0IGhvc3QxeCAqaG9zdCwgc3RydWN0IGhvc3Qx
eF9qb2IgKmpvYikKIAkJCQlnb3RvIHVucGluOwogCQkJfQogCi0JCQllcnIgPSBkbWFfbWFwX3Nn
KGRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGRpcik7Ci0JCQlpZiAoIWVycikgewotCQkJCWVy
ciA9IC1FTk9NRU07CisJCQllcnIgPSBkbWFfbWFwX3NndGFibGUoZGV2LCBzZ3QsIGRpciwgMCk7
CisJCQlpZiAoZXJyKQogCQkJCWdvdG8gdW5waW47Ci0JCQl9CiAKIAkJCWpvYi0+dW5waW5zW2pv
Yi0+bnVtX3VucGluc10uZGV2ID0gZGV2OwogCQkJam9iLT51bnBpbnNbam9iLT5udW1fdW5waW5z
XS5kaXIgPSBkaXI7CkBAIC0yMTcsNyArMjE1LDcgQEAgc3RhdGljIHVuc2lnbmVkIGludCBwaW5f
am9iKHN0cnVjdCBob3N0MXggKmhvc3QsIHN0cnVjdCBob3N0MXhfam9iICpqb2IpCiAJCX0KIAog
CQlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX1RFR1JBX0hPU1QxWF9GSVJFV0FMTCkgJiYgaG9zdC0+
ZG9tYWluKSB7Ci0JCQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+bmVudHMsIGopCisJ
CQlmb3JfZWFjaF9zZ3RhYmxlX3NnKHNndCwgc2csIGopCiAJCQkJZ2F0aGVyX3NpemUgKz0gc2ct
Pmxlbmd0aDsKIAkJCWdhdGhlcl9zaXplID0gaW92YV9hbGlnbigmaG9zdC0+aW92YSwgZ2F0aGVy
X3NpemUpOwogCkBAIC0yMjksOSArMjI3LDkgQEAgc3RhdGljIHVuc2lnbmVkIGludCBwaW5fam9i
KHN0cnVjdCBob3N0MXggKmhvc3QsIHN0cnVjdCBob3N0MXhfam9iICpqb2IpCiAJCQkJZ290byB1
bnBpbjsKIAkJCX0KIAotCQkJZXJyID0gaW9tbXVfbWFwX3NnKGhvc3QtPmRvbWFpbiwKKwkJCWVy
ciA9IGlvbW11X21hcF9zZ3RhYmxlKGhvc3QtPmRvbWFpbiwKIAkJCQkJaW92YV9kbWFfYWRkcigm
aG9zdC0+aW92YSwgYWxsb2MpLAotCQkJCQlzZ3QtPnNnbCwgc2d0LT5uZW50cywgSU9NTVVfUkVB
RCk7CisJCQkJCXNndCwgSU9NTVVfUkVBRCk7CiAJCQlpZiAoZXJyID09IDApIHsKIAkJCQlfX2Zy
ZWVfaW92YSgmaG9zdC0+aW92YSwgYWxsb2MpOwogCQkJCWVyciA9IC1FSU5WQUw7CkBAIC0yNDEs
MTIgKzIzOSw5IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pvYihzdHJ1Y3QgaG9zdDF4ICpo
b3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQkJam9iLT51bnBpbnNbam9iLT5udW1fdW5w
aW5zXS5zaXplID0gZ2F0aGVyX3NpemU7CiAJCQlwaHlzX2FkZHIgPSBpb3ZhX2RtYV9hZGRyKCZo
b3N0LT5pb3ZhLCBhbGxvYyk7CiAJCX0gZWxzZSBpZiAoc2d0KSB7Ci0JCQllcnIgPSBkbWFfbWFw
X3NnKGhvc3QtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsCi0JCQkJCSBETUFfVE9fREVWSUNF
KTsKLQkJCWlmICghZXJyKSB7Ci0JCQkJZXJyID0gLUVOT01FTTsKKwkJCWVyciA9IGRtYV9tYXBf
c2d0YWJsZShob3N0LT5kZXYsIHNndCwgRE1BX1RPX0RFVklDRSwgMCk7CisJCQlpZiAoZXJyKQog
CQkJCWdvdG8gdW5waW47Ci0JCQl9CiAKIAkJCWpvYi0+dW5waW5zW2pvYi0+bnVtX3VucGluc10u
ZGlyID0gRE1BX1RPX0RFVklDRTsKIAkJCWpvYi0+dW5waW5zW2pvYi0+bnVtX3VucGluc10uZGV2
ID0gaG9zdC0+ZGV2OwpAQCAtNjQ3LDggKzY0Miw3IEBAIHZvaWQgaG9zdDF4X2pvYl91bnBpbihz
dHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQl9CiAKIAkJaWYgKHVucGluLT5kZXYgJiYgc2d0KQot
CQkJZG1hX3VubWFwX3NnKHVucGluLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLAotCQkJCSAg
ICAgdW5waW4tPmRpcik7CisJCQlkbWFfdW5tYXBfc2d0YWJsZSh1bnBpbi0+ZGV2LCBzZ3QsIHVu
cGluLT5kaXIsIDApOwogCiAJCWhvc3QxeF9ib191bnBpbihkZXYsIHVucGluLT5ibywgc2d0KTsK
IAkJaG9zdDF4X2JvX3B1dCh1bnBpbi0+Ym8pOwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

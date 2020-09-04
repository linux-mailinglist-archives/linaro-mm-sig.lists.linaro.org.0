Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBF625DAB0
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:56:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D5306660D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:56:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 01E2B66768; Fri,  4 Sep 2020 13:56:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 211406678E;
	Fri,  4 Sep 2020 13:37:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 299FD665AA
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:36:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1BDDB6660D; Fri,  4 Sep 2020 13:36:25 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 063E66674E
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:09 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133508euoutp019ef9733382b07bc867091629f89518a5~xmAlFGHCo0637106371euoutp01R
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200904133508euoutp019ef9733382b07bc867091629f89518a5~xmAlFGHCo0637106371euoutp01R
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133507eucas1p295c82eee7f3f5f66d185e12641b0be97~xmAkzCyXP0693606936eucas1p2V;
 Fri,  4 Sep 2020 13:35:07 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id BE.66.05997.B82425F5; Fri,  4
 Sep 2020 14:35:07 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133507eucas1p1d164b469647e3904da7f272413341e4c~xmAkgIgJA0116001160eucas1p14;
 Fri,  4 Sep 2020 13:35:07 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133507eusmtrp2ab02774ebff16dbcbbecb63ac6c157f3~xmAkfTyF50977009770eusmtrp2V;
 Fri,  4 Sep 2020 13:35:07 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-72-5f52428bb5c9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 7F.A0.06017.B82425F5; Fri,  4
 Sep 2020 14:35:07 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133507eusmtip148cedeecc0144c4e071b05b3336969ca~xmAj72YGi1939819398eusmtip17;
 Fri,  4 Sep 2020 13:35:07 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:17:04 +0200
Message-Id: <20200904131711.12950-24-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGvTPT6VCoDoXIDQgkTTDRRBbFOAaCSAxOeCIYl2AEC4xAWNMC
 Ai+iIkIpBDQG0hhANCK0bAVZ6tqqFEULyi6yCTEgEJBNUAJ2GJC37/znP/c/ObkEKmrk2RKR
 sQmMNFYSLcYFWEPLavuhbJ+AYNfJD8eoHON7hKotrOZRGw35KNW1NItT5ap3CFXyyoNa7BpF
 KM1YD4/q1N7HqaxFJU5Vvh3kU7q5cR61qi3CvIW0ukgN6BfLJRjdrBzk043LIzx6ONuA0HWP
 rtED62MofbevDNDP+tNwOre+AtALGgd/80CBZxgTHZnESF28Lgsi1P19aHyvXXL9whqSBu7t
 lQMzApLusDtvGmVZRD4BcEnvJAcCEy8CONzRhnPFAoB/MxTo9oR6ZRTjGmUAquTd+M7I9SyM
 deGkG5TPyHGWrclbALbmWLAmlPyOwKzez5tPWZFnoDa9F7CMkU4wu6lgUxeSXnB0Mh3n4hyh
 qub1pm5m0p8WjvPYhyDZwocvlTqMM52CzdU9W2wFfxrq+RzvgxvNxQg3cBPAUWMlnysUAHbe
 KAScywN+M/4xxRGm/Q7Aaq0LJ5+Ec49vY6wMyd2wb8aSlVET3mlgF2VlIczMEHHu/VBpqPof
 q+v4snUuGk61GlHuQvkAzg+t43nAUbkTVgJABbBhEmUx4YzscCxz1VkmiZElxoY7h8bFaIDp
 O7WtGxabgHYtRA9IAogthLtOBASLeJIkWUqMHkACFVsLfT61BYmEYZKUVEYaFyxNjGZkemBH
 YGIb4ZHSyUsiMlySwEQxTDwj3e4ihJltGqjAokKKpx+qzsenmQ/bT/T8mBB7lCncNVNf3U/v
 +bhRUDmr8Us2iNNhfEKgT5HxQq5DYb3OV4BQpW1H/Zdov9mhUKRFd7bWO6h9pTIqzzudiG5R
 1Kl5A/N1rliiZU1kVSZ1sVrhlFwed4Wa+OXbbf9An+qpfP7meNM5z5HfwWJMFiFxO4hKZZJ/
 XKXwiEoDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsVy+t/xu7rdTkHxBiduqlj0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs+j8MovNYu2Ru+wWBz88YbX4
 uWseiwOvx5p5axg99n5bwOKxc9Zddo/t3x6wetzvPs7ksXlJvcftf4+ZPSbfWM7osftmA5tH
 35ZVjB6fN8kFcEfp2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSW
 pRbp2yXoZay5eYO54Lp0xZbPf5gaGKeKdTFyckgImEis+fGQpYuRi0NIYCmjxKdFS1khEjIS
 J6c1QNnCEn+udbFBFH1ilNh14jUjSIJNwFCi6y1EQkSgk1FiWvdHdhCHWeAVk8SHP61gVcIC
 gRLXp9xmArFZBFQlundMZwaxeQXsJB6+bGGDWCEvsXrDAbA4J1B864wnYKuFBGwlPsxZzDKB
 kW8BI8MqRpHU0uLc9NxiI73ixNzi0rx0veT83E2MwGjZduznlh2MXe+CDzEKcDAq8fAy2AfF
 C7EmlhVX5h5ilOBgVhLhdTp7Ok6INyWxsiq1KD++qDQntfgQoynQUROZpUST84GRnFcSb2hq
 aG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgbHu0A2e9b2HO8Xljx259kXq
 jdq1MMmwjUZa8TwHRItVN+Xc6XZvux7S8lJZW06kVSBsOttVoVlr7/vX/Gi9JRtqsPG81yOd
 Z0ULf7d3ehmvPmCp/OVudvXfJSe8jaZ8nXyYV8Lx8c/txfLP/H6IcJxZJiwz51DGpkxBkT7/
 gnLXF0VvP17YdFqJpTgj0VCLuag4EQDLA0werAIAAA==
X-CMS-MailID: 20200904133507eucas1p1d164b469647e3904da7f272413341e4c
X-Msg-Generator: CA
X-RootMTR: 20200904133507eucas1p1d164b469647e3904da7f272413341e4c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133507eucas1p1d164b469647e3904da7f272413341e4c
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133507eucas1p1d164b469647e3904da7f272413341e4c@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 23/30] drm: host1x: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+Ci0tLQogZHJpdmVycy9ncHUvaG9zdDF4L2pvYi5jIHwgMjIgKysr
KysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMTQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvaG9zdDF4L2pvYi5jIGIvZHJp
dmVycy9ncHUvaG9zdDF4L2pvYi5jCmluZGV4IDg5YjZjMTRiNzM5Mi4uODJkMGE2MGJhM2Y3IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMKKysrIGIvZHJpdmVycy9ncHUvaG9z
dDF4L2pvYi5jCkBAIC0xNzAsMTEgKzE3MCw5IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pv
YihzdHJ1Y3QgaG9zdDF4ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQkJCWdvdG8g
dW5waW47CiAJCQl9CiAKLQkJCWVyciA9IGRtYV9tYXBfc2coZGV2LCBzZ3QtPnNnbCwgc2d0LT5u
ZW50cywgZGlyKTsKLQkJCWlmICghZXJyKSB7Ci0JCQkJZXJyID0gLUVOT01FTTsKKwkJCWVyciA9
IGRtYV9tYXBfc2d0YWJsZShkZXYsIHNndCwgZGlyLCAwKTsKKwkJCWlmIChlcnIpCiAJCQkJZ290
byB1bnBpbjsKLQkJCX0KIAogCQkJam9iLT51bnBpbnNbam9iLT5udW1fdW5waW5zXS5kZXYgPSBk
ZXY7CiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLmRpciA9IGRpcjsKQEAgLTIyOCw3
ICsyMjYsNyBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHBpbl9qb2Ioc3RydWN0IGhvc3QxeCAqaG9z
dCwgc3RydWN0IGhvc3QxeF9qb2IgKmpvYikKIAkJfQogCiAJCWlmIChob3N0LT5kb21haW4pIHsK
LQkJCWZvcl9lYWNoX3NnKHNndC0+c2dsLCBzZywgc2d0LT5uZW50cywgaikKKwkJCWZvcl9lYWNo
X3NndGFibGVfc2coc2d0LCBzZywgaikKIAkJCQlnYXRoZXJfc2l6ZSArPSBzZy0+bGVuZ3RoOwog
CQkJZ2F0aGVyX3NpemUgPSBpb3ZhX2FsaWduKCZob3N0LT5pb3ZhLCBnYXRoZXJfc2l6ZSk7CiAK
QEAgLTI0MCw5ICsyMzgsOSBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHBpbl9qb2Ioc3RydWN0IGhv
c3QxeCAqaG9zdCwgc3RydWN0IGhvc3QxeF9qb2IgKmpvYikKIAkJCQlnb3RvIHB1dDsKIAkJCX0K
IAotCQkJZXJyID0gaW9tbXVfbWFwX3NnKGhvc3QtPmRvbWFpbiwKKwkJCWVyciA9IGlvbW11X21h
cF9zZ3RhYmxlKGhvc3QtPmRvbWFpbiwKIAkJCQkJaW92YV9kbWFfYWRkcigmaG9zdC0+aW92YSwg
YWxsb2MpLAotCQkJCQlzZ3QtPnNnbCwgc2d0LT5uZW50cywgSU9NTVVfUkVBRCk7CisJCQkJCXNn
dCwgSU9NTVVfUkVBRCk7CiAJCQlpZiAoZXJyID09IDApIHsKIAkJCQlfX2ZyZWVfaW92YSgmaG9z
dC0+aW92YSwgYWxsb2MpOwogCQkJCWVyciA9IC1FSU5WQUw7CkBAIC0yNTIsMTIgKzI1MCw5IEBA
IHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pvYihzdHJ1Y3QgaG9zdDF4ICpob3N0LCBzdHJ1Y3Qg
aG9zdDF4X2pvYiAqam9iKQogCQkJam9iLT51bnBpbnNbam9iLT5udW1fdW5waW5zXS5zaXplID0g
Z2F0aGVyX3NpemU7CiAJCQlwaHlzX2FkZHIgPSBpb3ZhX2RtYV9hZGRyKCZob3N0LT5pb3ZhLCBh
bGxvYyk7CiAJCX0gZWxzZSBpZiAoc2d0KSB7Ci0JCQllcnIgPSBkbWFfbWFwX3NnKGhvc3QtPmRl
diwgc2d0LT5zZ2wsIHNndC0+bmVudHMsCi0JCQkJCSBETUFfVE9fREVWSUNFKTsKLQkJCWlmICgh
ZXJyKSB7Ci0JCQkJZXJyID0gLUVOT01FTTsKKwkJCWVyciA9IGRtYV9tYXBfc2d0YWJsZShob3N0
LT5kZXYsIHNndCwgRE1BX1RPX0RFVklDRSwgMCk7CisJCQlpZiAoZXJyKQogCQkJCWdvdG8gcHV0
OwotCQkJfQogCiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLmRpciA9IERNQV9UT19E
RVZJQ0U7CiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLmRldiA9IGhvc3QtPmRldjsK
QEAgLTY2MCw4ICs2NTUsNyBAQCB2b2lkIGhvc3QxeF9qb2JfdW5waW4oc3RydWN0IGhvc3QxeF9q
b2IgKmpvYikKIAkJfQogCiAJCWlmICh1bnBpbi0+ZGV2ICYmIHNndCkKLQkJCWRtYV91bm1hcF9z
Zyh1bnBpbi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywKLQkJCQkgICAgIHVucGluLT5kaXIp
OworCQkJZG1hX3VubWFwX3NndGFibGUodW5waW4tPmRldiwgc2d0LCB1bnBpbi0+ZGlyLCAwKTsK
IAogCQlob3N0MXhfYm9fdW5waW4oZGV2LCB1bnBpbi0+Ym8sIHNndCk7CiAJCWhvc3QxeF9ib19w
dXQodW5waW4tPmJvKTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK

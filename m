Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B3825DA23
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:41:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11B0B6677E
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:41:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F337D667A4; Fri,  4 Sep 2020 13:41:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E87966760;
	Fri,  4 Sep 2020 13:35:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4723A6174E
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 393AB6674A; Fri,  4 Sep 2020 13:35:06 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id B23986174E
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:56 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133455euoutp02b7a3b4f3abfb8bdad157426879004ab6~xmAZoAz712842328423euoutp02t
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200904133455euoutp02b7a3b4f3abfb8bdad157426879004ab6~xmAZoAz712842328423euoutp02t
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133455eucas1p2f2951946214baee213a1a55534e8cbcb~xmAZMeb3v1447714477eucas1p2K;
 Fri,  4 Sep 2020 13:34:55 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 3F.29.06318.F72425F5; Fri,  4
 Sep 2020 14:34:55 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200904133455eucas1p27e43b99c981ff756aafcb9599e71bff7~xmAY5ya4c0143201432eucas1p2f;
 Fri,  4 Sep 2020 13:34:55 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200904133455eusmtrp247c68124a363d0bab8f69d75c116f3df~xmAY2H42b0905709057eusmtrp2Y;
 Fri,  4 Sep 2020 13:34:55 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-84-5f52427f3ece
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id EB.90.06017.F72425F5; Fri,  4
 Sep 2020 14:34:55 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133454eusmtip1e69b6f8104f32e82f7a868610fe5aa01~xmAYQ8p3W1888418884eusmtip1P;
 Fri,  4 Sep 2020 13:34:54 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:44 +0200
Message-Id: <20200904131711.12950-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCKsWRmVeSWpSXmKPExsWy7djPc7r1TkHxBk8/y1j0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xcKPW1ks2jqXsVoc
 /PCE1WLLm4msDnwea+atYfTY+20Bi8emVZ1sHtu/PWD1mHcy0ON+93Emj81L6j1u/3vM7DH5
 xnJGj903G9g8+rasYvTYfLra4/MmuQDeKC6blNSczLLUIn27BK6Mh/PLCxaqVSw9cJ+9gfG9
 fBcjJ4eEgInEhzvtzF2MXBxCAisYJa6uuc8O4XxhlHiy5iIbhPOZUeLw383MMC2/T1xigUgs
 Z5T49uQRE1zLv9mfGEGq2AQMJbredrGB2CICrYwSJ3p5QIqYBRYwS/z83AZWJCwQKLFh9QwW
 EJtFQFXizpy/YCt4BWwlZm7/ygixTl5i9YYDYHFOATuJrTOesIIMkhC4xi7xedZNFogiF4lT
 Ey9DNQhLvDq+hR3ClpH4v3M+E0RDM6PEw3Nr2SGcHkaJy00zoDqsJe6c+wV0KwfQfZoS63fp
 Q4QdJa4f2cQIEpYQ4JO48VYQJMwMZE7aNp0ZIswr0dEmBFGtJjHr+Dq4tQcvXIIGl4fEqWmT
 oSE0kVGi6V472wRG+VkIyxYwMq5iFE8tLc5NTy02zkst1ytOzC0uzUvXS87P3cQITFun/x3/
 uoNx35+kQ4wCHIxKPLwM9kHxQqyJZcWVuYcYJTiYlUR4nc6ejhPiTUmsrEotyo8vKs1JLT7E
 KM3BoiTOa7zoZayQQHpiSWp2ampBahFMlomDU6qBsU7ZKf19/+HE8q87PQMXHA9UvxximZCg
 1/VqRl/a85MbxXj1apQ/xf1msVi6SeFOwaJ/ujqygi8zLiwWnXeroSb/d6Kk9qn907X/rtt9
 kvNam4ocx4zkeyvb2CVt2IxPXVt9/Mxb79mZd5LN5ym4heoyLPv9pq1zvfQrg2MxO98/vS/u
 zBzxW4mlOCPRUIu5qDgRAFtR+SJXAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xu7r1TkHxBvOnsVv0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xcKPW1ks2jqXsVoc
 /PCE1WLLm4msDnwea+atYfTY+20Bi8emVZ1sHtu/PWD1mHcy0ON+93Emj81L6j1u/3vM7DH5
 xnJGj903G9g8+rasYvTYfLra4/MmuQDeKD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj
 81grI1MlfTublNSczLLUIn27BL2Mh/PLCxaqVSw9cJ+9gfG9fBcjJ4eEgInE7xOXWLoYuTiE
 BJYySiz4co4RIiEjcXJaAyuELSzx51oXG0TRJ0aJ9R8/M4Mk2AQMJbreQiREBDoZJaZ1f2QH
 cZgFVjBLvNo3lwWkSljAX+LnlAlsIDaLgKrEnTl/wbp5BWwlZm7/CrVOXmL1hgNgcU4BO4mt
 M56ArRYCqvkwZzHLBEa+BYwMqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQKjaNuxn1t2MHa9
 Cz7EKMDBqMTDy2AfFC/EmlhWXJl7iFGCg1lJhNfp7Ok4Id6UxMqq1KL8+KLSnNTiQ4ymQEdN
 ZJYSTc4HRnheSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQZGwx2L
 S/auLzF4lLN+R4/yCVnZ08+PBuyZpxbWo1S5iHfR1I7vwafb3wkn6Maqnty1/evVZ/0HvzEY
 2roIebrcmTzp559ZTFknLQM3R7I/ScoOiGKM3+LkP/Om85TVMsFSmqt1hZz/h9+MOWh43kxN
 2aRrmp/MhPn5Z5N/LWz5fuJI+8lZD/x4lViKMxINtZiLihMBFhrwHLgCAAA=
X-CMS-MailID: 20200904133455eucas1p27e43b99c981ff756aafcb9599e71bff7
X-Msg-Generator: CA
X-RootMTR: 20200904133455eucas1p27e43b99c981ff756aafcb9599e71bff7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133455eucas1p27e43b99c981ff756aafcb9599e71bff7
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133455eucas1p27e43b99c981ff756aafcb9599e71bff7@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 03/30] drm: core: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IEFuZHJ6ZWogSGFqZGEgPGEu
aGFqZGFAc2Ftc3VuZy5jb20+ClJldmlld2VkLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBo
eUBhcm0uY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fY2FjaGUuYyAgICAgICAgICAgIHwg
IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jIHwgMTQgKysrKysr
KysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyAgICAgICAgICAgIHwgMTEgKysr
KysrLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9jYWNoZS5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9jYWNoZS5jCmluZGV4IDAzZTAxYjAwMGY3YS4uMGZlM2M0OTYwMDJhIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2NhY2hlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9jYWNoZS5jCkBAIC0xMjcsNyArMTI3LDcgQEAgZHJtX2NsZmx1c2hfc2coc3RydWN0IHNn
X3RhYmxlICpzdCkKIAkJc3RydWN0IHNnX3BhZ2VfaXRlciBzZ19pdGVyOwogCiAJCW1iKCk7IC8q
Q0xGTFVTSCBpcyBvcmRlcmVkIG9ubHkgYnkgdXNpbmcgbWVtb3J5IGJhcnJpZXJzKi8KLQkJZm9y
X2VhY2hfc2dfcGFnZShzdC0+c2dsLCAmc2dfaXRlciwgc3QtPm5lbnRzLCAwKQorCQlmb3JfZWFj
aF9zZ3RhYmxlX3BhZ2Uoc3QsICZzZ19pdGVyLCAwKQogCQkJZHJtX2NsZmx1c2hfcGFnZShzZ19w
YWdlX2l0ZXJfcGFnZSgmc2dfaXRlcikpOwogCQltYigpOyAvKk1ha2Ugc3VyZSB0aGF0IGFsbCBj
YWNoZSBsaW5lIGVudHJ5IGlzIGZsdXNoZWQqLwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVt
X2hlbHBlci5jCmluZGV4IDRiN2NmYmFjNGRhYS4uNDdkODIxMTIyMWYyIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwpAQCAtMTI2LDggKzEyNiw4IEBAIHZvaWQgZHJtX2dl
bV9zaG1lbV9mcmVlX29iamVjdChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKIAkJZHJtX3By
aW1lX2dlbV9kZXN0cm95KG9iaiwgc2htZW0tPnNndCk7CiAJfSBlbHNlIHsKIAkJaWYgKHNobWVt
LT5zZ3QpIHsKLQkJCWRtYV91bm1hcF9zZyhvYmotPmRldi0+ZGV2LCBzaG1lbS0+c2d0LT5zZ2ws
Ci0JCQkJICAgICBzaG1lbS0+c2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOworCQkJZG1h
X3VubWFwX3NndGFibGUob2JqLT5kZXYtPmRldiwgc2htZW0tPnNndCwKKwkJCQkJICBETUFfQklE
SVJFQ1RJT05BTCwgMCk7CiAJCQlzZ19mcmVlX3RhYmxlKHNobWVtLT5zZ3QpOwogCQkJa2ZyZWUo
c2htZW0tPnNndCk7CiAJCX0KQEAgLTQyNCw4ICs0MjQsNyBAQCB2b2lkIGRybV9nZW1fc2htZW1f
cHVyZ2VfbG9ja2VkKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQogCiAJV0FSTl9PTighZHJt
X2dlbV9zaG1lbV9pc19wdXJnZWFibGUoc2htZW0pKTsKIAotCWRtYV91bm1hcF9zZyhvYmotPmRl
di0+ZGV2LCBzaG1lbS0+c2d0LT5zZ2wsCi0JCSAgICAgc2htZW0tPnNndC0+bmVudHMsIERNQV9C
SURJUkVDVElPTkFMKTsKKwlkbWFfdW5tYXBfc2d0YWJsZShvYmotPmRldi0+ZGV2LCBzaG1lbS0+
c2d0LCBETUFfQklESVJFQ1RJT05BTCwgMCk7CiAJc2dfZnJlZV90YWJsZShzaG1lbS0+c2d0KTsK
IAlrZnJlZShzaG1lbS0+c2d0KTsKIAlzaG1lbS0+c2d0ID0gTlVMTDsKQEAgLTY5NywxMiArNjk2
LDE3IEBAIHN0cnVjdCBzZ190YWJsZSAqZHJtX2dlbV9zaG1lbV9nZXRfcGFnZXNfc2d0KHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqKQogCQlnb3RvIGVycl9wdXRfcGFnZXM7CiAJfQogCS8qIE1h
cCB0aGUgcGFnZXMgZm9yIHVzZSBieSB0aGUgaC93LiAqLwotCWRtYV9tYXBfc2cob2JqLT5kZXYt
PmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKKwlyZXQgPSBk
bWFfbWFwX3NndGFibGUob2JqLT5kZXYtPmRldiwgc2d0LCBETUFfQklESVJFQ1RJT05BTCwgMCk7
CisJaWYgKHJldCkKKwkJZ290byBlcnJfZnJlZV9zZ3Q7CiAKIAlzaG1lbS0+c2d0ID0gc2d0Owog
CiAJcmV0dXJuIHNndDsKIAorZXJyX2ZyZWVfc2d0OgorCXNnX2ZyZWVfdGFibGUoc2d0KTsKKwlr
ZnJlZShzZ3QpOwogZXJyX3B1dF9wYWdlczoKIAlkcm1fZ2VtX3NobWVtX3B1dF9wYWdlcyhzaG1l
bSk7CiAJcmV0dXJuIEVSUl9QVFIocmV0KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fcHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYwppbmRleCBjNWU3OTZkNGE0
ODkuLmI4YzdmMDY4YTVhNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYwpAQCAtNjE3LDYgKzYxNyw3IEBAIHN0
cnVjdCBzZ190YWJsZSAqZHJtX2dlbV9tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICphdHRhY2gsCiB7CiAJc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSBhdHRhY2gtPmRt
YWJ1Zi0+cHJpdjsKIAlzdHJ1Y3Qgc2dfdGFibGUgKnNndDsKKwlpbnQgcmV0OwogCiAJaWYgKFdB
Uk5fT04oZGlyID09IERNQV9OT05FKSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7CkBAIC02
MjYsMTEgKzYyNywxMiBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRybV9nZW1fbWFwX2RtYV9idWYoc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAogCWVsc2UKIAkJc2d0ID0gb2JqLT5kZXYt
PmRyaXZlci0+Z2VtX3ByaW1lX2dldF9zZ190YWJsZShvYmopOwogCi0JaWYgKCFkbWFfbWFwX3Nn
X2F0dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyLAotCQkJICAgICAg
RE1BX0FUVFJfU0tJUF9DUFVfU1lOQykpIHsKKwlyZXQgPSBkbWFfbWFwX3NndGFibGUoYXR0YWNo
LT5kZXYsIHNndCwgZGlyLAorCQkJICAgICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CisJaWYg
KHJldCkgewogCQlzZ19mcmVlX3RhYmxlKHNndCk7CiAJCWtmcmVlKHNndCk7Ci0JCXNndCA9IEVS
Ul9QVFIoLUVOT01FTSk7CisJCXNndCA9IEVSUl9QVFIocmV0KTsKIAl9CiAKIAlyZXR1cm4gc2d0
OwpAQCAtNjUyLDggKzY1NCw3IEBAIHZvaWQgZHJtX2dlbV91bm1hcF9kbWFfYnVmKHN0cnVjdCBk
bWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKIAlpZiAoIXNndCkKIAkJcmV0dXJuOwogCi0JZG1h
X3VubWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyLAot
CQkJICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CisJZG1hX3VubWFwX3NndGFibGUoYXR0YWNo
LT5kZXYsIHNndCwgZGlyLCBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsKIAlzZ19mcmVlX3RhYmxl
KHNndCk7CiAJa2ZyZWUoc2d0KTsKIH0KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BAB20076A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 13:00:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CDC6665A5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 11:00:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F3DE1665AF; Fri, 19 Jun 2020 11:00:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 983E4665D9;
	Fri, 19 Jun 2020 10:39:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 262BA665B5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:38:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1628F666D0; Fri, 19 Jun 2020 10:38:26 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 92935665B5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:11 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103710euoutp01ff3943ef33ea8c9c6d8ae5cd108dee29~Z66OHQqh91849718497euoutp01e
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103710euoutp01ff3943ef33ea8c9c6d8ae5cd108dee29~Z66OHQqh91849718497euoutp01e
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200619103710eucas1p1b26b19044fdf0ab23ddf00e8af5dac02~Z66NuxP790706007060eucas1p1v;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B6.9C.06318.6559CEE5; Fri, 19
 Jun 2020 11:37:10 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103710eucas1p1873c8ebb37e6717a5864c31d10b50efd~Z66NYik2Q0708007080eucas1p16;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103710eusmtrp1e00a23e8c33180e37d7e2e5e3c29611b~Z66NXlFAw0949709497eusmtrp1h;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-79-5eec955600b0
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B9.EA.06314.5559CEE5; Fri, 19
 Jun 2020 11:37:09 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103709eusmtip229150f3f49532456da9435edbf1b0eb1~Z66Mp5_mW0244902449eusmtip2r;
 Fri, 19 Jun 2020 10:37:09 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:25 +0200
Message-Id: <20200619103636.11974-26-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMKsWRmVeSWpSXmKPExsWy7djPc7phU9/EGTQ+ErPoPXeSyWLjjPWs
 Fhent7JY/N82kdniytf3bBYrVx9lsliw39pizk0jiy9XHjJZbHp8jdXi8q45bBZrj9xltzj4
 4Qmrxfctk5kc+DzWzFvD6LH32wIWj+3fHrB63O8+zuSxeUm9x+1/j5k9Jt9Yzuhx+MMVFo/d
 NxvYPD4+vcXi0bdlFaPH+i1XWTw+b5IL4I3isklJzcksSy3St0vgylh/4xJLwUmxivdbdrM0
 MG4R6mLk4JAQMJFYspSni5GLQ0hgBaPEk5OLmCGcL4wSzxfuYYdwPjNKbJ3/EijDCdYxc8cZ
 qMRyRol9rc8Y4VoObd/DBlLFJmAo0fW2C8wWEWhllDjRC7aEWaCbWWLq2lWsIAlhgSCJm1dO
 gRWxCKhKbO5ZyQ5i8wrYSdz5fZ4VYp28xOoNB8BWcwLFX7cchIrfY5f4810fwnaRuHz5EhOE
 LSzx6vgWdghbRuL05B4WkMUSAs2MEg/PrWWHcHoYJS43zWCEqLKWuHPuFxsoOJgFNCXW79KH
 hIyjxLb2JAiTT+LGW0GQYmYgc9K26cwQYV6JjjYhiBlqErOOr4PbevDCJWhgeUjsOreIFRI+
 ExklWk81sE1glJ+FsGsBI+MqRvHU0uLc9NRi47zUcr3ixNzi0rx0veT83E2MwKR1+t/xrzsY
 9/1JOsQowMGoxMP7IuR1nBBrYllxZe4hRgkOZiURXqezp+OEeFMSK6tSi/Lji0pzUosPMUpz
 sCiJ8xovehkrJJCeWJKanZpakFoEk2Xi4JRqYLwT/ipGNpPvOOvPqRvf2Om+fMrheqTk+OfG
 C8VibYFHdjT12zinPnt5S9z5gpPui09HrGU2tn/UeelfGLT7f2/Wx1UJe1i93Zz4Juf4H9t4
 0XnOgjrZozxr3wcv5vrRua7b7lkg5x1ZkZ87Z6Vw8PrwVSzXXB2rHTnN7F16wevZ62Iue7w/
 lKXEUpyRaKjFXFScCAAwPjcEVgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xe7qhU9/EGTx5bmnRe+4kk8XGGetZ
 LS5Ob2Wx+L9tIrPFla/v2SxWrj7KZLFgv7XFnJtGFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWi+9bJjM58HmsmbeG0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNHj8IcrLB67
 bzaweXx8eovFo2/LKkaP9Vuusnh83iQXwBulZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqln
 aGwea2VkqqRvZ5OSmpNZllqkb5egl7H+xiWWgpNiFe+37GZpYNwi1MXIySEhYCIxc8cZ9i5G
 Lg4hgaWMEhd+LmWESMhInJzWwAphC0v8udbFBlH0iVHi2KUTbCAJNgFDia63EAkRgU5GiWnd
 H8FGMQtMZpZ4tvo6UxcjB4ewQIBEX2MVSAOLgKrE5p6V7CA2r4CdxJ3f56E2yEus3nCAGcTm
 BIq/bjkIFhcSsJVYvuA98wRGvgWMDKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzEC42jbsZ+b
 dzBe2hh8iFGAg1GJh/dFyOs4IdbEsuLK3EOMEhzMSiK8TmdPxwnxpiRWVqUW5ccXleakFh9i
 NAU6aiKzlGhyPjDG80riDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1
 MAYtmJk782PZ2r5F3zsVHNIjv+Yu3Xu89pmp2/9nkfUX1sz6tKHq/P6wz6erXv9b7VFlqM9l
 4nT46qrvrT8vHhLTU3jNlHIgfafeCYFoj0/u7udYuO96SC4qVv/55vWEKb7di+ZOETjhp6Nv
 vzb50zlu4+NFZgyz0iPcC1ZvnXRq6WKeLcDQiVNiKc5INNRiLipOBABev5EouQIAAA==
X-CMS-MailID: 20200619103710eucas1p1873c8ebb37e6717a5864c31d10b50efd
X-Msg-Generator: CA
X-RootMTR: 20200619103710eucas1p1873c8ebb37e6717a5864c31d10b50efd
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103710eucas1p1873c8ebb37e6717a5864c31d10b50efd
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103710eucas1p1873c8ebb37e6717a5864c31d10b50efd@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Juergen Gross <jgross@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 25/36] xen: gntdev: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KQWNrZWQtYnk6IEp1ZXJnZW4gR3Jvc3MgPGpncm9z
c0BzdXNlLmNvbT4KLS0tCiBkcml2ZXJzL3hlbi9nbnRkZXYtZG1hYnVmLmMgfCAxMyArKysrKyst
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMveGVuL2dudGRldi1kbWFidWYuYyBiL2RyaXZlcnMveGVuL2du
dGRldi1kbWFidWYuYwppbmRleCA3NWQzYmI5NDhiZjMuLmJhNmNhZDg3MTU2OCAxMDA2NDQKLS0t
IGEvZHJpdmVycy94ZW4vZ250ZGV2LWRtYWJ1Zi5jCisrKyBiL2RyaXZlcnMveGVuL2dudGRldi1k
bWFidWYuYwpAQCAtMjQ3LDEwICsyNDcsOSBAQCBzdGF0aWMgdm9pZCBkbWFidWZfZXhwX29wc19k
ZXRhY2goc3RydWN0IGRtYV9idWYgKmRtYV9idWYsCiAKIAkJaWYgKHNndCkgewogCQkJaWYgKGdu
dGRldl9kbWFidWZfYXR0YWNoLT5kaXIgIT0gRE1BX05PTkUpCi0JCQkJZG1hX3VubWFwX3NnX2F0
dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwKLQkJCQkJCSAgIHNndC0+bmVudHMsCi0JCQkJCQkg
ICBnbnRkZXZfZG1hYnVmX2F0dGFjaC0+ZGlyLAotCQkJCQkJICAgRE1BX0FUVFJfU0tJUF9DUFVf
U1lOQyk7CisJCQkJZG1hX3VubWFwX3NndGFibGUoYXR0YWNoLT5kZXYsIHNndCwKKwkJCQkJCSAg
Z250ZGV2X2RtYWJ1Zl9hdHRhY2gtPmRpciwKKwkJCQkJCSAgRE1BX0FUVFJfU0tJUF9DUFVfU1lO
Qyk7CiAJCQlzZ19mcmVlX3RhYmxlKHNndCk7CiAJCX0KIApAQCAtMjg4LDggKzI4Nyw4IEBAIGRt
YWJ1Zl9leHBfb3BzX21hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFj
aCwKIAlzZ3QgPSBkbWFidWZfcGFnZXNfdG9fc2d0KGdudGRldl9kbWFidWYtPnBhZ2VzLAogCQkJ
CSAgZ250ZGV2X2RtYWJ1Zi0+bnJfcGFnZXMpOwogCWlmICghSVNfRVJSKHNndCkpIHsKLQkJaWYg
KCFkbWFfbWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGly
LAotCQkJCSAgICAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpKSB7CisJCWlmIChkbWFfbWFwX3Nn
dGFibGUoYXR0YWNoLT5kZXYsIHNndCwgZGlyLAorCQkJCSAgICBETUFfQVRUUl9TS0lQX0NQVV9T
WU5DKSkgewogCQkJc2dfZnJlZV90YWJsZShzZ3QpOwogCQkJa2ZyZWUoc2d0KTsKIAkJCXNndCA9
IEVSUl9QVFIoLUVOT01FTSk7CkBAIC02MjUsNyArNjI0LDcgQEAgZG1hYnVmX2ltcF90b19yZWZz
KHN0cnVjdCBnbnRkZXZfZG1hYnVmX3ByaXYgKnByaXYsIHN0cnVjdCBkZXZpY2UgKmRldiwKIAog
CS8qIE5vdyBjb252ZXJ0IHNndCB0byBhcnJheSBvZiBwYWdlcyBhbmQgY2hlY2sgZm9yIHBhZ2Ug
dmFsaWRpdHkuICovCiAJaSA9IDA7Ci0JZm9yX2VhY2hfc2dfcGFnZShzZ3QtPnNnbCwgJnNnX2l0
ZXIsIHNndC0+bmVudHMsIDApIHsKKwlmb3JfZWFjaF9zZ3RhYmxlX3BhZ2Uoc2d0LCAmc2dfaXRl
ciwgMCkgewogCQlzdHJ1Y3QgcGFnZSAqcGFnZSA9IHNnX3BhZ2VfaXRlcl9wYWdlKCZzZ19pdGVy
KTsKIAkJLyoKIAkJICogQ2hlY2sgaWYgcGFnZSBpcyB2YWxpZDogdGhpcyBjYW4gaGFwcGVuIGlm
IHdlIGFyZSBnaXZlbgotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=

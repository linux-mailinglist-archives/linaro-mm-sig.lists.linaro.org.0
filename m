Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E581C3ADB
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 15:05:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C55966055
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2020 13:05:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4136F6615F; Mon,  4 May 2020 13:05:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD52966518;
	Mon,  4 May 2020 12:55:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EA78B6650F
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:55:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C8D0D66513; Mon,  4 May 2020 12:55:05 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 70F696606F
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:20 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504125419euoutp01b06f3916c4c4b14ae2c2b8425d94044b~L1G1X34a92848128481euoutp01_
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2020 12:54:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504125419euoutp01b06f3916c4c4b14ae2c2b8425d94044b~L1G1X34a92848128481euoutp01_
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504125419eucas1p13f96494d03af14a472a7468fc3e170cf~L1G075V3x1058810588eucas1p1i;
 Mon,  4 May 2020 12:54:19 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id CE.D2.60679.B7010BE5; Mon,  4
 May 2020 13:54:19 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200504125418eucas1p190ccb7626f969de8c6d53d216ea12a96~L1G0om3GJ1174211742eucas1p1c;
 Mon,  4 May 2020 12:54:18 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200504125418eusmtrp21cec5b9ca8d0de30aeeacfc622a49999~L1G0n1nws2826928269eusmtrp2U;
 Mon,  4 May 2020 12:54:18 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-ab-5eb0107bf1dc
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 6A.69.08375.A7010BE5; Mon,  4
 May 2020 13:54:18 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504125418eusmtip225eeda603c17f6f2568f2a347c8f0b38~L1Gz-sE3x0241302413eusmtip2Y;
 Mon,  4 May 2020 12:54:18 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Mon,  4 May 2020 14:53:51 +0200
Message-Id: <20200504125359.5678-13-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504125359.5678-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSezBUUQDG59x79+61WV3LjDM0qW3SE6nM3BmPamjm1h+V/rFD1JbrMezS
 LvKYhgplo9LLq8GUQR5LXnlMRFibbPKIUoMoZUIzWEOiXZf67zu/7/vON3PmEKigimNOBEhD
 GZlUHCTEeVh124LGOpos8943MsijkjVqhHqWVsqhVqpTUKp3bhqnnha1IlROowP17aMapWZ7
 RxCqfPQ9h+qpe4RTJS2fuVTTrzEOld+ZhR/m08VZxYB+oc3B6OfaYQ49dFOF0BW5MfTg8ihK
 3xvIB3T9h1icnm7ow+lblYWAninffGqDB8/RhwkKCGdkts7neP593cNYyAMYoZpPA7FgyEQB
 DAhIHoQPO4sRBeARArIAwNmJK0BvCMhZAJXtl1ljBsDWiQ7OemP8TQpgjXwAp3LLOOxB18jr
 T1pN4aQdVEwqcL02JeMBbE821IdQ8jsCE/5UrG6YkG4wMbUe02uM3A4rqm+vcj7pBGszBjB2
 zhIWlb1EFYAgDHQ8PXmH/h5IvubCwfYiwGZcYfxgGs5qEzihquSyehNcqc1G2MI1AEc0JVz2
 kARgz9W0tbYD/KRZxPULKLkLltbZsvgIvJ83h+kxJI3gwKSxHqM6ebc6FWUxH95IELBpK5ih
 Uv6bberqXovQcDLOnn2fVwAWaH8jd4Blxv+tHAAKgRkTJpf4MfL9UuaSjVwskYdJ/WwuBEvK
 ge4zdSyrZmtA3dL5ZkASQGjIF82Uegs44nB5pKQZQAIVmvJr4nSI7yOOjGJkwWdlYUGMvBlY
 EJjQjH/g8Q8vAeknDmUCGSaEka27CGFgHgu2nmgjxMePbVF6Oj8xcteOS0ezbHydAuNb3Pum
 Fr+mZqbE1HvtrS2JmPGwCDiZmGls9e6nlfDiSkOEo8hlz5lGEddKVLX01jA/aGffRt9Qt0Uf
 pb1rp3N/Vvr8mPWCRuIxue26unTULVx9Wnm0QhuFbzxU1eWizl7BMkU541+iPYWY3F9stxuV
 ycV/AbKNHBlIAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xe7pVAhviDOYuNbboPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2eHbrJLPFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNVi
 +dl5bA68HmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HN4/2+q2we
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl3H10gOWgqkSFce/z2BsYLwv3MXIySEhYCLx/MxExi5GLg4hgaWMEt0HmxghEjIS
 J6c1sELYwhJ/rnWxQRR9YpS4+GkdWIJNwFCi6y1EQkSgk1FiWvdHdhCHWeADk8S/v//YQKqE
 BfwlZq/cCDaWRUBVYvO2fjCbV8BWYuesGywQK+QlVm84wNzFyMHBCRSf2asOEhYSyJe4+/Qf
 ywRGvgWMDKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzECY2XbsZ+bdzBe2hh8iFGAg1GJhzfi
 8/o4IdbEsuLK3EOMEhzMSiK8O1qAQrwpiZVVqUX58UWlOanFhxhNgW6ayCwlmpwPjOO8knhD
 U0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MIekHj505vuwz6x4F8QOb
 dM8erzvxK5azf57GuabPUhVpmxVuZ7p6TV2TwWS4746f8Y4Cl1X3Vvz90vzQWv+BhNS7Cd9/
 GL/7cvJtR6Xormu7Xhm/spLOPMOXwsC0ewrbM6/UlXn5vwNV/ij8/3JqtvO3p7+Wfd9xL+Xi
 GsMNOro5DqmvbMRfcSmxFGckGmoxFxUnAgAuUHJ8qwIAAA==
X-CMS-MailID: 20200504125418eucas1p190ccb7626f969de8c6d53d216ea12a96
X-Msg-Generator: CA
X-RootMTR: 20200504125418eucas1p190ccb7626f969de8c6d53d216ea12a96
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125418eucas1p190ccb7626f969de8c6d53d216ea12a96
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125418eucas1p190ccb7626f969de8c6d53d216ea12a96@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, virtualization@lists.linux-foundation.org,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v2 13/21] drm: virtio: fix sg_table nents
 vs. orig_nents misuse
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9z
ZyByZXR1cm5zIHRoZQpudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRk
cmVzcyBzcGFjZS4gSG93ZXZlciB0aGUKc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19m
b3Jfe2RldmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQpjYWxsZWQgd2l0aCB0aGUg
b3JpZ2luYWwgbnVtYmVyIG9mIGVudHJpZXMgcGFzc2VkIHRvIGRtYV9tYXBfc2cuIFRoZQpzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCmluIGluY2x1ZGUvbGludXgvc2NhdHRlcmxpc3QuaC4gQWRhcHQgdGhlIGNv
ZGUgdG8gb2JleSB0aG9zZSBydWxlcy4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2MiAwMC8yMV0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzQvMzcz
Ci0tLQogZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X29iamVjdC5jIHwgMTEgKysrKysr
LS0tLS0KIGRyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV92cS5jICAgICB8ICA4ICsrKyst
LS0tCiAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X29iamVjdC5jIGIvZHJp
dmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X29iamVjdC5jCmluZGV4IDZjY2JkMDEuLjEyZjZi
ZWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9vYmplY3QuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfb2JqZWN0LmMKQEAgLTczLDcgKzcz
LDggQEAgdm9pZCB2aXJ0aW9fZ3B1X2NsZWFudXBfb2JqZWN0KHN0cnVjdCB2aXJ0aW9fZ3B1X29i
amVjdCAqYm8pCiAJCWlmIChzaG1lbS0+cGFnZXMpIHsKIAkJCWlmIChzaG1lbS0+bWFwcGVkKSB7
CiAJCQkJZG1hX3VubWFwX3NnKHZnZGV2LT52ZGV2LT5kZXYucGFyZW50LAotCQkJCQkgICAgIHNo
bWVtLT5wYWdlcy0+c2dsLCBzaG1lbS0+bWFwcGVkLAorCQkJCQkgICAgIHNobWVtLT5wYWdlcy0+
c2dsLAorCQkJCQkgICAgIHNobWVtLT5wYWdlcy0+b3JpZ19uZW50cywKIAkJCQkJICAgICBETUFf
VE9fREVWSUNFKTsKIAkJCQlzaG1lbS0+bWFwcGVkID0gMDsKIAkJCX0KQEAgLTE1NywxMyArMTU4
LDEzIEBAIHN0YXRpYyBpbnQgdmlydGlvX2dwdV9vYmplY3Rfc2htZW1faW5pdChzdHJ1Y3Qgdmly
dGlvX2dwdV9kZXZpY2UgKnZnZGV2LAogCX0KIAogCWlmICh1c2VfZG1hX2FwaSkgewotCQlzaG1l
bS0+bWFwcGVkID0gZG1hX21hcF9zZyh2Z2Rldi0+dmRldi0+ZGV2LnBhcmVudCwKKwkJc2htZW0t
PnBhZ2VzLT5uZW50cyA9IGRtYV9tYXBfc2codmdkZXYtPnZkZXYtPmRldi5wYXJlbnQsCiAJCQkJ
CSAgIHNobWVtLT5wYWdlcy0+c2dsLAotCQkJCQkgICBzaG1lbS0+cGFnZXMtPm5lbnRzLAorCQkJ
CQkgICBzaG1lbS0+cGFnZXMtPm9yaWdfbmVudHMsCiAJCQkJCSAgIERNQV9UT19ERVZJQ0UpOwot
CQkqbmVudHMgPSBzaG1lbS0+bWFwcGVkOworCQkqbmVudHMgPSBzaG1lbS0+bWFwcGVkID0gc2ht
ZW0tPnBhZ2VzLT5uZW50czsKIAl9IGVsc2UgewotCQkqbmVudHMgPSBzaG1lbS0+cGFnZXMtPm5l
bnRzOworCQkqbmVudHMgPSBzaG1lbS0+cGFnZXMtPm9yaWdfbmVudHM7CiAJfQogCiAJKmVudHMg
PSBrbWFsbG9jX2FycmF5KCpuZW50cywgc2l6ZW9mKHN0cnVjdCB2aXJ0aW9fZ3B1X21lbV9lbnRy
eSksCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfdnEuYyBiL2Ry
aXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV92cS5jCmluZGV4IDllNjYzYTUuLjY2MTMyNWIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV92cS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV92cS5jCkBAIC02MDQsOCArNjA0LDggQEAgdm9p
ZCB2aXJ0aW9fZ3B1X2NtZF90cmFuc2Zlcl90b19ob3N0XzJkKHN0cnVjdCB2aXJ0aW9fZ3B1X2Rl
dmljZSAqdmdkZXYsCiAKIAlpZiAodXNlX2RtYV9hcGkpCiAJCWRtYV9zeW5jX3NnX2Zvcl9kZXZp
Y2UodmdkZXYtPnZkZXYtPmRldi5wYXJlbnQsCi0JCQkJICAgICAgIHNobWVtLT5wYWdlcy0+c2ds
LCBzaG1lbS0+cGFnZXMtPm5lbnRzLAotCQkJCSAgICAgICBETUFfVE9fREVWSUNFKTsKKwkJCQkg
ICAgICAgc2htZW0tPnBhZ2VzLT5zZ2wsCisJCQkJICAgICAgIHNobWVtLT5wYWdlcy0+b3JpZ19u
ZW50cywgRE1BX1RPX0RFVklDRSk7CiAKIAljbWRfcCA9IHZpcnRpb19ncHVfYWxsb2NfY21kKHZn
ZGV2LCAmdmJ1Ziwgc2l6ZW9mKCpjbWRfcCkpOwogCW1lbXNldChjbWRfcCwgMCwgc2l6ZW9mKCpj
bWRfcCkpOwpAQCAtMTAyMCw4ICsxMDIwLDggQEAgdm9pZCB2aXJ0aW9fZ3B1X2NtZF90cmFuc2Zl
cl90b19ob3N0XzNkKHN0cnVjdCB2aXJ0aW9fZ3B1X2RldmljZSAqdmdkZXYsCiAKIAlpZiAodXNl
X2RtYV9hcGkpCiAJCWRtYV9zeW5jX3NnX2Zvcl9kZXZpY2UodmdkZXYtPnZkZXYtPmRldi5wYXJl
bnQsCi0JCQkJICAgICAgIHNobWVtLT5wYWdlcy0+c2dsLCBzaG1lbS0+cGFnZXMtPm5lbnRzLAot
CQkJCSAgICAgICBETUFfVE9fREVWSUNFKTsKKwkJCQkgICAgICAgc2htZW0tPnBhZ2VzLT5zZ2ws
CisJCQkJICAgICAgIHNobWVtLT5wYWdlcy0+b3JpZ19uZW50cywgRE1BX1RPX0RFVklDRSk7CiAK
IAljbWRfcCA9IHZpcnRpb19ncHVfYWxsb2NfY21kKHZnZGV2LCAmdmJ1Ziwgc2l6ZW9mKCpjbWRf
cCkpOwogCW1lbXNldChjbWRfcCwgMCwgc2l6ZW9mKCpjbWRfcCkpOwotLSAKMS45LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

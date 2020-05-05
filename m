Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4D11C516D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:57:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D219666169
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:57:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C4B0A661BF; Tue,  5 May 2020 08:57:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CC9166518;
	Tue,  5 May 2020 08:47:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D274166055
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C114F66227; Tue,  5 May 2020 08:46:44 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 97B3D66055
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:33 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084632euoutp01611fb3c85ca3bd43f3196df462a9d602~MFXx2pGq80326103261euoutp01j
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084632euoutp01611fb3c85ca3bd43f3196df462a9d602~MFXx2pGq80326103261euoutp01j
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505084632eucas1p2d45e2c46abed0e4d841221f23e54430a~MFXxgVDd71349613496eucas1p2t;
 Tue,  5 May 2020 08:46:32 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 9E.32.60679.8E721BE5; Tue,  5
 May 2020 09:46:32 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084632eucas1p2e37c536205c057984c5f0355f6ffe1c2~MFXxGm1jv1349613496eucas1p2s;
 Tue,  5 May 2020 08:46:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084632eusmtrp161c3ad3c98b21e209a3f22510eaaa5f0~MFXxF0_BD0942309423eusmtrp1d;
 Tue,  5 May 2020 08:46:32 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-44-5eb127e876ca
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1B.21.07950.7E721BE5; Tue,  5
 May 2020 09:46:31 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084631eusmtip1f8d52dc1beb59c58a573a19e21f1a522~MFXwhMSaa0522005220eusmtip1z;
 Tue,  5 May 2020 08:46:31 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:46:03 +0200
Message-Id: <20200505084614.30424-14-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOKsWRmVeSWpSXmKPExsWy7djPc7ov1DfGGbx6JmXRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8ezWSWaLL1ceMllsenyN1eLyrjlsFmuP3GW3OPjhCavF
 8rPz2Bx4PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObx/t9V9k8
 +rasYvT4vEkugDuKyyYlNSezLLVI3y6BK+Ptxg2MBd+kK5a0nGBpYJwk3sXIySEhYCLxc04b
 YxcjF4eQwApGiT+/5zNDOF8YJc6efgqV+cwoceL3XTaYlqtrJkElljNKzPr2kRWupWvdOVaQ
 KjYBQ4mut11gHSICrUDtvTwgRcwCL5gk2v5uBmrn4BAWCJLYuYkJpIZFQFXi1fJ2dhCbV8BO
 ouXPP6ht8hKrNxxgBrE5geKPL91hA5kjIXCMXWLPy22MEEUuEqff3WGGsIUlXh3fwg5hy0ic
 ntzDAtHQzCjx8Nxadginh1HictMMqG5riTvnfrGBXMQsoCmxfpc+RNhRouN7KxNIWEKAT+LG
 W0GQMDOQOWnbdGaIMK9ER5sQRLWaxKzj6+DWHrxwCeocD4k9m6ezQwLoKKPE3689rBMY5Wch
 LFvAyLiKUTy1tDg3PbXYKC+1XK84Mbe4NC9dLzk/dxMjMDmd/nf8yw7GXX+SDjEKcDAq8fBG
 fF4fJ8SaWFZcmXuIUYKDWUmEd9mPDXFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeY0XvYwVEkhP
 LEnNTk0tSC2CyTJxcEo1MIZOqOvuidnHe1/zZUPF409PXqzzdZIvf+PGMUeRoct9z5zb1zbU
 nGM4q5UiaGiXYX/n9IaSWa/VzJYUHpC1bnZsvPn6xzd7209vT5UlvXon2d3xK7pc01VCKml9
 2gezHYeMpyZ5H1Auak9IXri1bqVTnttlj0cqPa9MFl782x0++XfbujVla5VYijMSDbWYi4oT
 ARvVeRdKAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7rP1TfGGfR9srLoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2eHbrJLPFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNVi
 +dl5bA68HmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HN4/2+q2we
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl/F24wbGgm/SFUtaTrA0ME4S72Lk5JAQMJG4umYSYxcjF4eQwFJGiV0PvjJBJGQk
 Tk5rYIWwhSX+XOtiA7GFBD4xSpz6qA9iswkYSnS9BYlzcYgIdDJKTOv+yA7iMAt8YJL49/cf
 WIewQIDE84V3mEFsFgFViVfL29lBbF4BO4mWPxA1EgLyEqs3HACr4QSKP750B2pbocSH899Z
 JzDyLWBkWMUoklpanJueW2ykV5yYW1yal66XnJ+7iREYK9uO/dyyg7HrXfAhRgEORiUe3g1f
 18cJsSaWFVfmHmKU4GBWEuFd9mNDnBBvSmJlVWpRfnxRaU5q8SFGU6CjJjJLiSbnA+M4ryTe
 0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QD4+77kuoWQo/cLtYr7BAu
 Wunyui2C79iV/QZbexZZSkQJWodH/z/6SUt8cqDlzM9eSQL2iTr21qv2xNTt59pVEPv0VESl
 Sc/cygzvU4/trX/OZvsqMTP530Qf1SADNYFbYssXZbYnPAj7dT7VrdX8UM079UOZT9/Mmsiy
 95rTRdtrwvPC/x6RVGIpzkg01GIuKk4EAB9rENmrAgAA
X-CMS-MailID: 20200505084632eucas1p2e37c536205c057984c5f0355f6ffe1c2
X-Msg-Generator: CA
X-RootMTR: 20200505084632eucas1p2e37c536205c057984c5f0355f6ffe1c2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084632eucas1p2e37c536205c057984c5f0355f6ffe1c2
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084632eucas1p2e37c536205c057984c5f0355f6ffe1c2@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, virtualization@lists.linux-foundation.org,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 14/25] drm: virtio: fix common struct
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9z
ZyByZXR1cm5zIHRoZQpudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRk
cmVzcyBzcGFjZS4gSG93ZXZlciB0aGUKc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19m
b3Jfe2RldmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQpjYWxsZWQgd2l0aCB0aGUg
b3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBlbnRyaWVzIHBhc3NlZCB0byBkbWFfbWFwX3NnLiBUaGUK
c2dfdGFibGUtPm5lbnRzIGluIHR1cm4gaG9sZHMgdGhlIHJlc3VsdCBvZiB0aGUgZG1hX21hcF9z
ZyBjYWxsIGFzIHN0YXRlZAppbiBpbmNsdWRlL2xpbnV4L3NjYXR0ZXJsaXN0LmguIEEgY29tbW9u
IG1pc3Rha2Ugd2FzIHRvIGlnbm9yZSBhIHJlc3VsdApvZiB0aGUgZG1hX21hcF9zZyBmdW5jdGlv
biBhbmQgZG9uJ3QgdXNlIHRoZSBzZ190YWJsZS0+b3JpZ19uZW50cyBhdCBhbGwuCgpUbyBhdm9p
ZCBzdWNoIGlzc3VlcywgbGV0cyB1c2UgY29tbW9uIGRtYS1tYXBwaW5nIHdyYXBwZXJzIG9wZXJh
dGluZwpkaXJlY3RseSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgYW5kIGFkanVzdCBy
ZWZlcmVuY2VzIHRvIHRoZQpuZW50cyBhbmQgb3JpZ19uZW50cyByZXNwZWN0aXZlbHkuCgpTaWdu
ZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Ci0t
LQpGb3IgbW9yZSBpbmZvcm1hdGlvbiwgc2VlICdbUEFUQ0ggdjMgMDAvMjVdIERSTTogZml4IHN0
cnVjdCBzZ190YWJsZSBuZW50cwp2cy4gb3JpZ19uZW50cyBtaXN1c2UnIHRocmVhZDogaHR0cHM6
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZ3B1L2RybS92aXJ0aW8v
dmlydGdwdV9vYmplY3QuYyB8IDE3ICsrKysrKysrLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0v
dmlydGlvL3ZpcnRncHVfdnEuYyAgICAgfCAxMCArKysrLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQs
IDEyIGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS92aXJ0aW8vdmlydGdwdV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8v
dmlydGdwdV9vYmplY3QuYwppbmRleCA2Y2NiZDAxLi41ZmUxNTNjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vdmlydGlvL3ZpcnRncHVfb2JqZWN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L3ZpcnRpby92aXJ0Z3B1X29iamVjdC5jCkBAIC03Miw5ICs3Miw4IEBAIHZvaWQgdmlydGlvX2dw
dV9jbGVhbnVwX29iamVjdChzdHJ1Y3QgdmlydGlvX2dwdV9vYmplY3QgKmJvKQogCiAJCWlmIChz
aG1lbS0+cGFnZXMpIHsKIAkJCWlmIChzaG1lbS0+bWFwcGVkKSB7Ci0JCQkJZG1hX3VubWFwX3Nn
KHZnZGV2LT52ZGV2LT5kZXYucGFyZW50LAotCQkJCQkgICAgIHNobWVtLT5wYWdlcy0+c2dsLCBz
aG1lbS0+bWFwcGVkLAotCQkJCQkgICAgIERNQV9UT19ERVZJQ0UpOworCQkJCWRtYV91bm1hcF9z
Z3RhYmxlKHZnZGV2LT52ZGV2LT5kZXYucGFyZW50LAorCQkJCQkgICAgIHNobWVtLT5wYWdlcywg
RE1BX1RPX0RFVklDRSk7CiAJCQkJc2htZW0tPm1hcHBlZCA9IDA7CiAJCQl9CiAKQEAgLTE1Nywx
MyArMTU2LDEzIEBAIHN0YXRpYyBpbnQgdmlydGlvX2dwdV9vYmplY3Rfc2htZW1faW5pdChzdHJ1
Y3QgdmlydGlvX2dwdV9kZXZpY2UgKnZnZGV2LAogCX0KIAogCWlmICh1c2VfZG1hX2FwaSkgewot
CQlzaG1lbS0+bWFwcGVkID0gZG1hX21hcF9zZyh2Z2Rldi0+dmRldi0+ZGV2LnBhcmVudCwKLQkJ
CQkJICAgc2htZW0tPnBhZ2VzLT5zZ2wsCi0JCQkJCSAgIHNobWVtLT5wYWdlcy0+bmVudHMsCi0J
CQkJCSAgIERNQV9UT19ERVZJQ0UpOwotCQkqbmVudHMgPSBzaG1lbS0+bWFwcGVkOworCQlyZXQg
PSBkbWFfbWFwX3NndGFibGUodmdkZXYtPnZkZXYtPmRldi5wYXJlbnQsCisJCQkJICAgICAgc2ht
ZW0tPnBhZ2VzLCBETUFfVE9fREVWSUNFKTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CisJ
CSpuZW50cyA9IHNobWVtLT5tYXBwZWQgPSBzaG1lbS0+cGFnZXMtPm5lbnRzOwogCX0gZWxzZSB7
Ci0JCSpuZW50cyA9IHNobWVtLT5wYWdlcy0+bmVudHM7CisJCSpuZW50cyA9IHNobWVtLT5wYWdl
cy0+b3JpZ19uZW50czsKIAl9CiAKIAkqZW50cyA9IGttYWxsb2NfYXJyYXkoKm5lbnRzLCBzaXpl
b2Yoc3RydWN0IHZpcnRpb19ncHVfbWVtX2VudHJ5KSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS92aXJ0aW8vdmlydGdwdV92cS5jIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1
X3ZxLmMKaW5kZXggOWU2NjNhNS4uYzMyOTE0NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3ZpcnRpby92aXJ0Z3B1X3ZxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1
X3ZxLmMKQEAgLTYwMyw5ICs2MDMsOCBAQCB2b2lkIHZpcnRpb19ncHVfY21kX3RyYW5zZmVyX3Rv
X2hvc3RfMmQoc3RydWN0IHZpcnRpb19ncHVfZGV2aWNlICp2Z2RldiwKIAlzdHJ1Y3QgdmlydGlv
X2dwdV9vYmplY3Rfc2htZW0gKnNobWVtID0gdG9fdmlydGlvX2dwdV9zaG1lbShibyk7CiAKIAlp
ZiAodXNlX2RtYV9hcGkpCi0JCWRtYV9zeW5jX3NnX2Zvcl9kZXZpY2UodmdkZXYtPnZkZXYtPmRl
di5wYXJlbnQsCi0JCQkJICAgICAgIHNobWVtLT5wYWdlcy0+c2dsLCBzaG1lbS0+cGFnZXMtPm5l
bnRzLAotCQkJCSAgICAgICBETUFfVE9fREVWSUNFKTsKKwkJZG1hX3N5bmNfc2d0YWJsZV9mb3Jf
ZGV2aWNlKHZnZGV2LT52ZGV2LT5kZXYucGFyZW50LAorCQkJCQkgICAgc2htZW0tPnBhZ2VzLCBE
TUFfVE9fREVWSUNFKTsKIAogCWNtZF9wID0gdmlydGlvX2dwdV9hbGxvY19jbWQodmdkZXYsICZ2
YnVmLCBzaXplb2YoKmNtZF9wKSk7CiAJbWVtc2V0KGNtZF9wLCAwLCBzaXplb2YoKmNtZF9wKSk7
CkBAIC0xMDE5LDkgKzEwMTgsOCBAQCB2b2lkIHZpcnRpb19ncHVfY21kX3RyYW5zZmVyX3RvX2hv
c3RfM2Qoc3RydWN0IHZpcnRpb19ncHVfZGV2aWNlICp2Z2RldiwKIAlzdHJ1Y3QgdmlydGlvX2dw
dV9vYmplY3Rfc2htZW0gKnNobWVtID0gdG9fdmlydGlvX2dwdV9zaG1lbShibyk7CiAKIAlpZiAo
dXNlX2RtYV9hcGkpCi0JCWRtYV9zeW5jX3NnX2Zvcl9kZXZpY2UodmdkZXYtPnZkZXYtPmRldi5w
YXJlbnQsCi0JCQkJICAgICAgIHNobWVtLT5wYWdlcy0+c2dsLCBzaG1lbS0+cGFnZXMtPm5lbnRz
LAotCQkJCSAgICAgICBETUFfVE9fREVWSUNFKTsKKwkJZG1hX3N5bmNfc2d0YWJsZV9mb3JfZGV2
aWNlKHZnZGV2LT52ZGV2LT5kZXYucGFyZW50LAorCQkJCQkgICAgc2htZW0tPnBhZ2VzLCBETUFf
VE9fREVWSUNFKTsKIAogCWNtZF9wID0gdmlydGlvX2dwdV9hbGxvY19jbWQodmdkZXYsICZ2YnVm
LCBzaXplb2YoKmNtZF9wKSk7CiAJbWVtc2V0KGNtZF9wLCAwLCBzaXplb2YoKmNtZF9wKSk7Ci0t
IAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

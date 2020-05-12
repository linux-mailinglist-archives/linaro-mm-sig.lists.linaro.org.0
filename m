Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F15A1CF1D2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:42:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8FAED60723
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:42:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7E12C61892; Tue, 12 May 2020 09:42:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DCF46652E;
	Tue, 12 May 2020 09:07:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E692465F9B
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:07:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C839965F9D; Tue, 12 May 2020 09:07:13 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 0FEDD65F9C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:24 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090123euoutp019ef06a8f74b584a2981f11f81a7a8989~OPFvBWvUb2641626416euoutp01J
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090123euoutp019ef06a8f74b584a2981f11f81a7a8989~OPFvBWvUb2641626416euoutp01J
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090122eucas1p261bda11ecce3f0986a08dd7a66c45daf~OPFuqO2qs2664426644eucas1p2e;
 Tue, 12 May 2020 09:01:22 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id F0.32.60679.2E56ABE5; Tue, 12
 May 2020 10:01:22 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090122eucas1p155db33deb51b4bbc34c0a012e4a7361d~OPFuY736x1182811828eucas1p1H;
 Tue, 12 May 2020 09:01:22 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090122eusmtrp1cda9124151a91853171a8b98db77cc03~OPFuYOyYf0188101881eusmtrp1U;
 Tue, 12 May 2020 09:01:22 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-c2-5eba65e22014
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E1.03.07950.2E56ABE5; Tue, 12
 May 2020 10:01:22 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090121eusmtip12477076dd64f37cd14e4b1fc4ce7b421~OPFtwX24C1181011810eusmtip1q;
 Tue, 12 May 2020 09:01:21 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:46 +0200
Message-Id: <20200512090058.14910-26-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKKsWRmVeSWpSXmKPExsWy7djP87qPUnfFGcx/bGLRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVq8OXKM0eLyrjlsFmuP3GW3OPjhCavF
 51PH2Bx4PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJebyb/5YtgDuKyyYlNSezLLVI3y6BK+PVnXfMBackKq7/lWxgPCbSxcjJISFgItH7dxtT
 FyMXh5DACkaJ5ysbGCGcL4wSx7eeY4NwPjNKtO9oBSrjAGtparaFiC9nlNh/6wsTXEfrhE1s
 IHPZBAwlut52gdkiAq2MEid6eUCKmAX+MUlM/juLCSQhLBAk0bRiK1gRi4CqxOuvl1hANvAK
 2EncvCoBcZ+8xOoNB5hBbE6g8P35f1hA5kgIHGOXaL14hRmiyEXib083G4QtLPHq+BZ2CFtG
 4vTkHqiGZkaJh+fWskM4PYwSl5tmMEJUWUvcOfeLDWQzs4CmxPpd+hBhR4n/e7cxQ7zMJ3Hj
 rSBImBnInLRtOlSYV6KjTQiiWk1i1vF1cGsPXrgEdZqHxIXlP9ghAXQUGFpnnzJPYJSfhbBs
 ASPjKkbx1NLi3PTUYqO81HK94sTc4tK8dL3k/NxNjMDEdPrf8S87GHf9STrEKMDBqMTDa2Cw
 M06INbGsuDL3EKMEB7OSCG9LJlCINyWxsiq1KD++qDQntfgQozQHi5I4r/Gil7FCAumJJanZ
 qakFqUUwWSYOTqkGxu0rL01OXKw/u7Pg9zTVgJ5YpQCticcev3tbaPyh+NPvE2vWmb5+Njfp
 kHF1XO/pt5xB5euFub8qLP37funWBIPMulkhdrkf2vxay/3fGHO0pMxXXnjh/cLL2+Kfclx9
 +/7Zf8tTvm+ii/ldZlol9FYxzRVsPG7HusBzlu259avvLj2oNEfL9L4SS3FGoqEWc1FxIgBg
 0/iQSAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsVy+t/xu7qPUnfFGUzqkbPoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC3eHDnGaHF51xw2i7VH7rJbHPzwhNXi
 86ljbA68HmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkPN7Nf8sWwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl/HqzjvmglMSFdf/SjYwHhPpYuTgkBAwkWhqtu1i5OIQEljKKNFwq4Wpi5ETKC4j
 cXJaAyuELSzx51oXG0TRJ0aJO/sfMYIk2AQMJbreQiREBDoZJaZ1f2QHcZgFWpgl9r75xwZS
 JSwQIPF54h2wUSwCqhKvv15iAVnNK2AncfOqBMQGeYnVGw4wg9icQOH78/+wgNhCAoUSj66+
 ZZnAyLeAkWEVo0hqaXFuem6xkV5xYm5xaV66XnJ+7iZGYJxsO/Zzyw7GrnfBhxgFOBiVeHg7
 jHbGCbEmlhVX5h5ilOBgVhLhbckECvGmJFZWpRblxxeV5qQWH2I0BbppIrOUaHI+MIbzSuIN
 TQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwnmV5v4r/mf1+p/j319+n
 bZnOlp++b1m+6VTH+0a2m302vnn/eOc05b8Sh2z5pk/8EjFrvsnadGPP25WHFusVH2BSNY8x
 OvBigw67oP/cNH2elacuhwur/Iro3CLic0Oq3qVIsWjdL6GoUP25M/eYT9jAbV48+esdiwcu
 6TesNmjEP5POP1x3WImlOCPRUIu5qDgRAJndOeSpAgAA
X-CMS-MailID: 20200512090122eucas1p155db33deb51b4bbc34c0a012e4a7361d
X-Msg-Generator: CA
X-RootMTR: 20200512090122eucas1p155db33deb51b4bbc34c0a012e4a7361d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090122eucas1p155db33deb51b4bbc34c0a012e4a7361d
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090122eucas1p155db33deb51b4bbc34c0a012e4a7361d@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 26/38] drm: vmwgfx: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KQWNrZWQtYnk6IFJvbGFuZCBTY2hlaWRlZ2dlciA8
c3JvbGFuZEB2bXdhcmUuY29tPgotLS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNlZSAnW1BBVENI
IHY0IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9yaWdfbmVudHMg
bWlzdXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDIwMDUx
MjA4NTcxMC4xNDY4OC0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS9ULwotLS0KIGRyaXZlcnMv
Z3B1L2RybS92bXdnZngvdm13Z2Z4X3R0bV9idWZmZXIuYyB8IDE3ICsrKystLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMKaW5kZXggYmYwYmM0Ni4uNDll
ZDZhZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfdHRtX2J1ZmZl
ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3R0bV9idWZmZXIuYwpAQCAt
MzYyLDggKzM2Miw3IEBAIHN0YXRpYyB2b2lkIHZtd190dG1fdW5tYXBfZnJvbV9kbWEoc3RydWN0
IHZtd190dG1fdHQgKnZtd190dCkKIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSB2bXdfdHQtPmRl
dl9wcml2LT5kZXYtPmRldjsKIAotCWRtYV91bm1hcF9zZyhkZXYsIHZtd190dC0+c2d0LnNnbCwg
dm13X3R0LT5zZ3QubmVudHMsCi0JCURNQV9CSURJUkVDVElPTkFMKTsKKwlkbWFfdW5tYXBfc2d0
YWJsZShkZXYsIHZtd190dC0+c2d0LCBETUFfQklESVJFQ1RJT05BTCwgMCk7CiAJdm13X3R0LT5z
Z3QubmVudHMgPSB2bXdfdHQtPnNndC5vcmlnX25lbnRzOwogfQogCkBAIC0zODMsMTYgKzM4Miw4
IEBAIHN0YXRpYyB2b2lkIHZtd190dG1fdW5tYXBfZnJvbV9kbWEoc3RydWN0IHZtd190dG1fdHQg
KnZtd190dCkKIHN0YXRpYyBpbnQgdm13X3R0bV9tYXBfZm9yX2RtYShzdHJ1Y3Qgdm13X3R0bV90
dCAqdm13X3R0KQogewogCXN0cnVjdCBkZXZpY2UgKmRldiA9IHZtd190dC0+ZGV2X3ByaXYtPmRl
di0+ZGV2OwotCWludCByZXQ7Ci0KLQlyZXQgPSBkbWFfbWFwX3NnKGRldiwgdm13X3R0LT5zZ3Qu
c2dsLCB2bXdfdHQtPnNndC5vcmlnX25lbnRzLAotCQkJIERNQV9CSURJUkVDVElPTkFMKTsKLQlp
ZiAodW5saWtlbHkocmV0ID09IDApKQotCQlyZXR1cm4gLUVOT01FTTsKIAotCXZtd190dC0+c2d0
Lm5lbnRzID0gcmV0OwotCi0JcmV0dXJuIDA7CisJcmV0dXJuIGRtYV9tYXBfc2d0YWJsZShkZXYs
IHZtd190dC0+c2d0LCBETUFfQklESVJFQ1RJT05BTCwgMCk7CiB9CiAKIC8qKgpAQCAtNDQ5LDEw
ICs0NDAsMTAgQEAgc3RhdGljIGludCB2bXdfdHRtX21hcF9kbWEoc3RydWN0IHZtd190dG1fdHQg
KnZtd190dCkKIAkJaWYgKHVubGlrZWx5KHJldCAhPSAwKSkKIAkJCWdvdG8gb3V0X3NnX2FsbG9j
X2ZhaWw7CiAKLQkJaWYgKHZzZ3QtPm51bV9wYWdlcyA+IHZtd190dC0+c2d0Lm5lbnRzKSB7CisJ
CWlmICh2c2d0LT5udW1fcGFnZXMgPiB2bXdfdHQtPnNndC5vcmlnX25lbnRzKSB7CiAJCQl1aW50
NjRfdCBvdmVyX2FsbG9jID0KIAkJCQlzZ2xfc2l6ZSAqICh2c2d0LT5udW1fcGFnZXMgLQotCQkJ
CQkgICAgdm13X3R0LT5zZ3QubmVudHMpOworCQkJCQkgICAgdm13X3R0LT5zZ3Qub3JpZ19uZW50
cyk7CiAKIAkJCXR0bV9tZW1fZ2xvYmFsX2ZyZWUoZ2xvYiwgb3Zlcl9hbGxvYyk7CiAJCQl2bXdf
dHQtPnNnX2FsbG9jX3NpemUgLT0gb3Zlcl9hbGxvYzsKLS0gCjEuOS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

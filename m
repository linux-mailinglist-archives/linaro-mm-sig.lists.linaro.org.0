Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E102527D5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:53:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D44B60C32
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:53:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3E8C860749; Wed, 26 Aug 2020 06:53:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B7D9D666EE;
	Wed, 26 Aug 2020 06:37:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A71A261873
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9934F61957; Wed, 26 Aug 2020 06:35:58 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id BF73E619B1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:41 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063541euoutp01501552c7d0169293fc2d98766f53ea90~uvex2YARd2036820368euoutp01G
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063541euoutp01501552c7d0169293fc2d98766f53ea90~uvex2YARd2036820368euoutp01G
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200826063540eucas1p1fa771d0d12a16019b38b6781139b76f3~uvexkORMn1942019420eucas1p12;
 Wed, 26 Aug 2020 06:35:40 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 38.33.06456.CB2064F5; Wed, 26
 Aug 2020 07:35:40 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063540eucas1p2e9f9f9133322205269e50fd01bf64bcc~uvexO8El00398703987eucas1p2j;
 Wed, 26 Aug 2020 06:35:40 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063540eusmtrp142d1b05208bb0883fcd3f873e0393449~uvexORqk51091110911eusmtrp1g;
 Wed, 26 Aug 2020 06:35:40 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-d4-5f4602bcd9ea
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 2B.D0.06314.CB2064F5; Wed, 26
 Aug 2020 07:35:40 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063539eusmtip271a55f25d7314543ff4ee5312e504022~uvewhmrp22993829938eusmtip2j;
 Wed, 26 Aug 2020 06:35:39 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:05 +0200
Message-Id: <20200826063316.23486-22-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTURzn3Neu5uQ2hZ00EkZmBb5I6pIhaVoXUojwS6LZ0ssU5yabWtaH
 hqXWdOYrUlEzEcxtpk1T0cpHuhnz1RSxMkw0SHFa+QizrM2b9u33PL//h0OiglbcjUyUpbIK
 mVgqIhyxVuPGsPcL5Gys351SL1oz/Aahn5U24vSf1kKUHl9bJuh6XT9CV3cF0qvjMwhtmJ3A
 6cU+I6DHOioIuqHvI4/u+TqH07p7waf5jL5KD5iX69UY07b+CWemc00I01x7i/mwNYsyxZN1
 gOl8pyKY/BYtYFYMB5ilR1biwp4ox1PxrDQxnVX4Bl1xTNCWjOIpBcLr0/pBXAVqXNTAgYRU
 ABwZ6uCpgSMpoJ4A2P56COHIKoCVZXqUIysAvq/4TOxU2n4ZcM6oA1A9pcN2K5v9DxB7iqD8
 odqq3m64UlkADmic7CGU+o1Ay2wRbjdcqItwtqQetWOM8oS5qnZgx3wqCI7NzWDcnAfUNXVv
 Zxxsuin3PmF/CFJGHizS1eJcKBQa+1v+3ecCF0wtPA7vh+biPIwr3AZwZriBx5E8AMcySwGX
 CoRTwz9tbdJ23xHY2OHLycFw5e0Gbpch5QwnrXvtMmqDRa0PUU7mw7vZAi59CJabnu7O9oxa
 UA4zsNOytj0koAoBzF6ILQAe5f+3qgHQAiGbpkyWsEp/GXvNRylOVqbJJD5x8mQDsP0m85bp
 eztYs1ztBRQJRE78aiIsVoCL05UZyb0AkqjIlR8yZL4s4MeLM26wCnmsIk3KKnuBO4mJhPxj
 NfMxAkoiTmWTWDaFVey4COngpgLSruyk/PAIPMLQPLF0Yl+hsydmCY0SDjLC+sPn/QPbvT0S
 AlzdDQ6rxKsvPapv5WavmpyyH3SEuaonO7MpLmU5yVee5TcSGRYefS5RI93w04TEWKPPtFnc
 unUnnw9oJfrNcp5KnnTQytvscHPPvXSh8vh8ZNXi/KAx53HLzT4RpkwQ+x9FFUrxX7oNnXhJ
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xe7p7mNziDR79EbToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC3eHDnGaHF51xw2i7VH7rJbHPzwhNVi
 daejA6/HmnlrGD32flvA4rH92wNWj/vdx5k8Ni+p97j97zGzx+Qbyxk9dt9sYPPo27KK0ePz
 JjmPd/PfsgVwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJal
 FunbJehlrJpygbVggnjF/TVnWBsYFwl3MXJySAiYSGz/s4m1i5GLQ0hgKaPEmmXTWSASMhIn
 pzWwQtjCEn+udbFBFH1ilNj06CIjSIJNwFCi6y1EQkSgk1FiWvdHdpAEs0Azs8T5l7UgtrBA
 gMSkhY+ZQGwWAVWJ7oYdYM28AnYSl588hNomL7F6wwFmEJsTKH68u58NxBYSsJU4vXYG8wRG
 vgWMDKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzECI2XbsZ+bdzBe2hh8iFGAg1GJh3cBm2u8
 EGtiWXFl7iFGCQ5mJRFep7On44R4UxIrq1KL8uOLSnNSiw8xmgIdNZFZSjQ5HxjFeSXxhqaG
 5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGPVXlHy5cNBhUY9xp81XBks9
 22cT/i6Y+/vQV9stGjmPZBfe2HGvb8/XmdevFlt8veC1a9507/I6lcvTWJtSBRMmNZ5sfe4l
 Oeuco9M+xT4zvcciRs2K/5vmX159Y//iJXOTHaNvTZ5hxjlhnfSzrHOLat80X7Y7Pq3GuHiH
 0/Y7gjE5Zo6mZ2yUWIozEg21mIuKEwFTiCgyqgIAAA==
X-CMS-MailID: 20200826063540eucas1p2e9f9f9133322205269e50fd01bf64bcc
X-Msg-Generator: CA
X-RootMTR: 20200826063540eucas1p2e9f9f9133322205269e50fd01bf64bcc
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063540eucas1p2e9f9f9133322205269e50fd01bf64bcc
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063540eucas1p2e9f9f9133322205269e50fd01bf64bcc@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Roland Scheidegger <sroland@vmware.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 21/32] drm: vmwgfx: fix common struct
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
c3JvbGFuZEB2bXdhcmUuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3R0
bV9idWZmZXIuYyB8IDE3ICsrKystLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
dm13Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dm
eF90dG1fYnVmZmVyLmMKaW5kZXggYWI1MjRhYjNiMGI0Li5mMmYyYmZmMWVlZGYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3R0bV9idWZmZXIuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMKQEAgLTM2Miw4ICszNjIsNyBA
QCBzdGF0aWMgdm9pZCB2bXdfdHRtX3VubWFwX2Zyb21fZG1hKHN0cnVjdCB2bXdfdHRtX3R0ICp2
bXdfdHQpCiB7CiAJc3RydWN0IGRldmljZSAqZGV2ID0gdm13X3R0LT5kZXZfcHJpdi0+ZGV2LT5k
ZXY7CiAKLQlkbWFfdW5tYXBfc2coZGV2LCB2bXdfdHQtPnNndC5zZ2wsIHZtd190dC0+c2d0Lm5l
bnRzLAotCQlETUFfQklESVJFQ1RJT05BTCk7CisJZG1hX3VubWFwX3NndGFibGUoZGV2LCAmdm13
X3R0LT5zZ3QsIERNQV9CSURJUkVDVElPTkFMLCAwKTsKIAl2bXdfdHQtPnNndC5uZW50cyA9IHZt
d190dC0+c2d0Lm9yaWdfbmVudHM7CiB9CiAKQEAgLTM4MywxNiArMzgyLDggQEAgc3RhdGljIHZv
aWQgdm13X3R0bV91bm1hcF9mcm9tX2RtYShzdHJ1Y3Qgdm13X3R0bV90dCAqdm13X3R0KQogc3Rh
dGljIGludCB2bXdfdHRtX21hcF9mb3JfZG1hKHN0cnVjdCB2bXdfdHRtX3R0ICp2bXdfdHQpCiB7
CiAJc3RydWN0IGRldmljZSAqZGV2ID0gdm13X3R0LT5kZXZfcHJpdi0+ZGV2LT5kZXY7Ci0JaW50
IHJldDsKLQotCXJldCA9IGRtYV9tYXBfc2coZGV2LCB2bXdfdHQtPnNndC5zZ2wsIHZtd190dC0+
c2d0Lm9yaWdfbmVudHMsCi0JCQkgRE1BX0JJRElSRUNUSU9OQUwpOwotCWlmICh1bmxpa2VseShy
ZXQgPT0gMCkpCi0JCXJldHVybiAtRU5PTUVNOwogCi0Jdm13X3R0LT5zZ3QubmVudHMgPSByZXQ7
Ci0KLQlyZXR1cm4gMDsKKwlyZXR1cm4gZG1hX21hcF9zZ3RhYmxlKGRldiwgJnZtd190dC0+c2d0
LCBETUFfQklESVJFQ1RJT05BTCwgMCk7CiB9CiAKIC8qKgpAQCAtNDQ5LDEwICs0NDAsMTAgQEAg
c3RhdGljIGludCB2bXdfdHRtX21hcF9kbWEoc3RydWN0IHZtd190dG1fdHQgKnZtd190dCkKIAkJ
aWYgKHVubGlrZWx5KHJldCAhPSAwKSkKIAkJCWdvdG8gb3V0X3NnX2FsbG9jX2ZhaWw7CiAKLQkJ
aWYgKHZzZ3QtPm51bV9wYWdlcyA+IHZtd190dC0+c2d0Lm5lbnRzKSB7CisJCWlmICh2c2d0LT5u
dW1fcGFnZXMgPiB2bXdfdHQtPnNndC5vcmlnX25lbnRzKSB7CiAJCQl1aW50NjRfdCBvdmVyX2Fs
bG9jID0KIAkJCQlzZ2xfc2l6ZSAqICh2c2d0LT5udW1fcGFnZXMgLQotCQkJCQkgICAgdm13X3R0
LT5zZ3QubmVudHMpOworCQkJCQkgICAgdm13X3R0LT5zZ3Qub3JpZ19uZW50cyk7CiAKIAkJCXR0
bV9tZW1fZ2xvYmFsX2ZyZWUoZ2xvYiwgb3Zlcl9hbGxvYyk7CiAJCQl2bXdfdHQtPnNnX2FsbG9j
X3NpemUgLT0gb3Zlcl9hbGxvYzsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

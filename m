Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2A625277C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:39:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 764106670F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:39:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6661766703; Wed, 26 Aug 2020 06:39:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7BD36617D4;
	Wed, 26 Aug 2020 06:35:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 62BFC6186A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4CB6D60C32; Wed, 26 Aug 2020 06:35:35 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id E4F5C60C32
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:29 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063529euoutp0154fd205472fe764043732717cc7a76bc~uvemvbggc1716517165euoutp01U
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063529euoutp0154fd205472fe764043732717cc7a76bc~uvemvbggc1716517165euoutp01U
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063528eucas1p289c656f3ef14d247c6b181df73e16488~uvemdgP310402804028eucas1p2a;
 Wed, 26 Aug 2020 06:35:28 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B9.4D.06318.0B2064F5; Wed, 26
 Aug 2020 07:35:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063528eucas1p1502c849c0fd337245541e1b31352d87f~uvemGl-s61803218032eucas1p19;
 Wed, 26 Aug 2020 06:35:28 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063528eusmtrp1bfb6b96be83a09b2e38717a14e7948a0~uvemF5n7K1091110911eusmtrp1D;
 Wed, 26 Aug 2020 06:35:28 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-ca-5f4602b04aeb
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A0.C0.06314.0B2064F5; Wed, 26
 Aug 2020 07:35:28 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063527eusmtip28ab83232986f8ae1bda3d490ae7fca75~uveldpj100092600926eusmtip28;
 Wed, 26 Aug 2020 06:35:27 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:32:46 +0200
Message-Id: <20200826063316.23486-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSazBUYRieb8/FWVlzLMY320V2Kl3JaJozbl2G5vSniybNmCltnDBY2nVJ
 KkrEumW32KExm9lJsS65ZYRYamlDE5ntQsSMS6RymdEYsg7173mf93m+533f+QiE34oJiGBx
 JCMRi0KFuCla+3qhe18F55jf/tr7e6iMrg4O9UxZjlHLtdkI1Ts3jVNPS15xKNVLV2q2d4hD
 VQ73YVRP/UOcKm3rN6Ee/apBqeTUxxjV8nMEo6ons7HD5rSmQAPoxnkVSlcWp+L08/lBjC7o
 OE1/TdNx6Cp1PP15aRihFYYiQL/4mIDTmdXFgK7Sx9EzlVtO8XxN3QKY0OBoRuLocdE0KGUq
 B4m4Y3VVU5CMJYA0Uga4BCQPQPXdFEQGTAk++QTAH1WNQAaIlWIWwD57lp8BUN0ygK8b8rU5
 gG0UAdhg0K0VK4aEoiVgVOGkE5RNyVYdVmQSgO0ZZkYRQqoQuDCTvCqyJP2hQj6NGjFKboep
 C32YEfNId9giH+OwcbawpKIZMWIu6QF1aVm48SFIfjKBGUmFazN5wrKaXoTFlnBCV23C4k1Q
 r0hHWUMigENdpSZskQ5gz20lYFWu8EvXH9y4NULuguX1jix9BI5rMlePAUlzaJiyMNLICpTX
 5iIszYMpyXxWvQPm6cr+xba8e782Dg07DTUoe6FsAAcm2pF7wDbvf5gKgGJgw0RJwwIZqbOY
 iXGQisKkUeJAB//wsEqw8rX0S7q5OtC0eEkLSAIIzXgq3MuPj4mipbFhWgAJRGjFO9qpv8Dn
 BYhirzGScD9JVCgj1YKNBCq04TkXjp/nk4GiSCaEYSIYyXqXQ3AFCcAr1yzI+6Ru9PLI4siH
 eR/Uhm9v5/Ltutw6MTQu2utN7i3rrfWGyenjTQf73B8MdlekLmUFv80ztxid8Dk3GrxT3aqo
 HzzLnbyxLDfLsdsWouCo93JjfMTfN58xDDJjJ/J9vd0afl9xaW7LnBZ06TcQ0TfTC5TK/kMC
 T0FdfFt/thCVBomcdiMSqegvl4MralYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGIsWRmVeSWpSXmKPExsVy+t/xe7obmNziDRa1iVr0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xcKPW1ks2jqXsVoc
 /PCE1WLLm4msDnwea+atYfTY+20Bi8emVZ1sHtu/PWD1mHcy0ON+93Emj81L6j1u/3vM7DH5
 xnJGj903G9g8+rasYvTYfLra4/MmuQDeKD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj
 81grI1MlfTublNSczLLUIn27BL2MjrfTmAtaRCrWzGtjbWDsFuhi5OSQEDCRmH1oGmMXIxeH
 kMBSRoneW29ZIBIyEienNbBC2MISf651sUEUfWKUePTrIhtIgk3AUKLrLURCRKCTUWJa90d2
 EIdZYAWzxKt9c8FGCQskShz58JQRxGYRUJXo/HkNbCyvgK3EwUkvmCBWyEus3nCAGcTmFLCT
 ON7dD7ZBCKjm9NoZzBMY+RYwMqxiFEktLc5Nzy021CtOzC0uzUvXS87P3cQIjKNtx35u3sF4
 aWPwIUYBDkYlHt4FbK7xQqyJZcWVuYcYJTiYlUR4nc6ejhPiTUmsrEotyo8vKs1JLT7EaAp0
 1ERmKdHkfGCM55XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYJy0
 qGBZ+hm19NNnWmu/Ln18PN3R/XDs6qxHDJyJEY73amXqdm9+FD/vuMvNs31m3W5/AyR9NBY8
 ZLkp1GZr+XT1FIPzgdfesH1RzHr8bt3RFO2sCTM26Xt0tGQH3az+taEh3VEyfsok/kfec1vy
 Lz08dqFvo/RUXq59czXjsqcwcjYvlVvzLE+JpTgj0VCLuag4EQBU2Jh7uQIAAA==
X-CMS-MailID: 20200826063528eucas1p1502c849c0fd337245541e1b31352d87f
X-Msg-Generator: CA
X-RootMTR: 20200826063528eucas1p1502c849c0fd337245541e1b31352d87f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063528eucas1p1502c849c0fd337245541e1b31352d87f
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063528eucas1p1502c849c0fd337245541e1b31352d87f@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 02/32] drm: prime: use sgtable iterators
 in drm_prime_sg_to_page_addr_arrays()
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

UmVwbGFjZSB0aGUgY3VycmVudCBoYW5kLWNyYWZ0ZWQgY29kZSBmb3IgZXh0cmFjdGluZyBwYWdl
cyBhbmQgRE1BCmFkZHJlc3NlcyBmcm9tIHRoZSBnaXZlbiBzY2F0dGVybGlzdCBieSB0aGUgbXVj
aCBtb3JlIHJvYnVzdApjb2RlIGJhc2VkIG9uIHRoZSBnZW5lcmljIHNjYXR0ZXJsaXN0IGl0ZXJh
dG9ycyBhbmQgcmVjZW50bHkKaW50cm9kdWNlZCBzZ190YWJsZS1iYXNlZCB3cmFwcGVycy4gVGhl
IHJlc3VsdGluZyBjb2RlIGlzIHNpbXBsZSBhbmQKZWFzeSB0byB1bmRlcnN0YW5kLCBzbyB0aGUg
Y29tbWVudCBkZXNjcmliaW5nIHRoZSBvbGQgY29kZSBpcyBubwpsb25nZXIgbmVlZGVkLgoKU2ln
bmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgpS
ZXZpZXdlZC1ieTogQW5kcnplaiBIYWpkYSA8YS5oYWpkYUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgfCA0OSArKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMzQgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9wcmltZS5jCmluZGV4IDRlZDVlZDFmMDc4Yy4uNWQxODFiZjYwYTQ0IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9wcmltZS5jCkBAIC05OTAsNDUgKzk5MCwyNiBAQCBFWFBPUlRfU1lNQk9MKGRybV9nZW1f
cHJpbWVfaW1wb3J0KTsKIGludCBkcm1fcHJpbWVfc2dfdG9fcGFnZV9hZGRyX2FycmF5cyhzdHJ1
Y3Qgc2dfdGFibGUgKnNndCwgc3RydWN0IHBhZ2UgKipwYWdlcywKIAkJCQkgICAgIGRtYV9hZGRy
X3QgKmFkZHJzLCBpbnQgbWF4X2VudHJpZXMpCiB7Ci0JdW5zaWduZWQgY291bnQ7Ci0Jc3RydWN0
IHNjYXR0ZXJsaXN0ICpzZzsKLQlzdHJ1Y3QgcGFnZSAqcGFnZTsKLQl1MzIgcGFnZV9sZW4sIHBh
Z2VfaW5kZXg7Ci0JZG1hX2FkZHJfdCBhZGRyOwotCXUzMiBkbWFfbGVuLCBkbWFfaW5kZXg7Ci0K
LQkvKgotCSAqIFNjYXR0ZXJsaXN0IGVsZW1lbnRzIGNvbnRhaW5zIGJvdGggcGFnZXMgYW5kIERN
QSBhZGRyZXNzZXMsIGJ1dAotCSAqIG9uZSBzaG91ZCBub3QgYXNzdW1lIDE6MSByZWxhdGlvbiBi
ZXR3ZWVuIHRoZW0uIFRoZSBzZy0+bGVuZ3RoIGlzCi0JICogdGhlIHNpemUgb2YgdGhlIHBoeXNp
Y2FsIG1lbW9yeSBjaHVuayBkZXNjcmliZWQgYnkgdGhlIHNnLT5wYWdlLAotCSAqIHdoaWxlIHNn
X2RtYV9sZW4oc2cpIGlzIHRoZSBzaXplIG9mIHRoZSBETUEgKElPIHZpcnR1YWwpIGNodW5rCi0J
ICogZGVzY3JpYmVkIGJ5IHRoZSBzZ19kbWFfYWRkcmVzcyhzZykuCi0JICovCi0JcGFnZV9pbmRl
eCA9IDA7Ci0JZG1hX2luZGV4ID0gMDsKLQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+
bmVudHMsIGNvdW50KSB7Ci0JCXBhZ2VfbGVuID0gc2ctPmxlbmd0aDsKLQkJcGFnZSA9IHNnX3Bh
Z2Uoc2cpOwotCQlkbWFfbGVuID0gc2dfZG1hX2xlbihzZyk7Ci0JCWFkZHIgPSBzZ19kbWFfYWRk
cmVzcyhzZyk7Ci0KLQkJd2hpbGUgKHBhZ2VzICYmIHBhZ2VfbGVuID4gMCkgewotCQkJaWYgKFdB
Uk5fT04ocGFnZV9pbmRleCA+PSBtYXhfZW50cmllcykpCisJc3RydWN0IHNnX2RtYV9wYWdlX2l0
ZXIgZG1hX2l0ZXI7CisJc3RydWN0IHNnX3BhZ2VfaXRlciBwYWdlX2l0ZXI7CisJc3RydWN0IHBh
Z2UgKipwID0gcGFnZXM7CisJZG1hX2FkZHJfdCAqYSA9IGFkZHJzOworCisJaWYgKHBhZ2VzKSB7
CisJCWZvcl9lYWNoX3NndGFibGVfcGFnZShzZ3QsICZwYWdlX2l0ZXIsIDApIHsKKwkJCWlmIChw
IC0gcGFnZXMgPj0gbWF4X2VudHJpZXMpCiAJCQkJcmV0dXJuIC0xOwotCQkJcGFnZXNbcGFnZV9p
bmRleF0gPSBwYWdlOwotCQkJcGFnZSsrOwotCQkJcGFnZV9sZW4gLT0gUEFHRV9TSVpFOwotCQkJ
cGFnZV9pbmRleCsrOworCQkJKnArKyA9IHNnX3BhZ2VfaXRlcl9wYWdlKCZwYWdlX2l0ZXIpOwog
CQl9Ci0JCXdoaWxlIChhZGRycyAmJiBkbWFfbGVuID4gMCkgewotCQkJaWYgKFdBUk5fT04oZG1h
X2luZGV4ID49IG1heF9lbnRyaWVzKSkKKwl9CisJaWYgKGFkZHJzKSB7CisJCWZvcl9lYWNoX3Nn
dGFibGVfZG1hX3BhZ2Uoc2d0LCAmZG1hX2l0ZXIsIDApIHsKKwkJCWlmIChhIC0gYWRkcnMgPj0g
bWF4X2VudHJpZXMpCiAJCQkJcmV0dXJuIC0xOwotCQkJYWRkcnNbZG1hX2luZGV4XSA9IGFkZHI7
Ci0JCQlhZGRyICs9IFBBR0VfU0laRTsKLQkJCWRtYV9sZW4gLT0gUEFHRV9TSVpFOwotCQkJZG1h
X2luZGV4Kys7CisJCQkqYSsrID0gc2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNzKCZkbWFfaXRlcik7
CiAJCX0KIAl9CisKIAlyZXR1cm4gMDsKIH0KIEVYUE9SVF9TWU1CT0woZHJtX3ByaW1lX3NnX3Rv
X3BhZ2VfYWRkcl9hcnJheXMpOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA4C1C516F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:58:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 659DD66078
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:58:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5669B66079; Tue,  5 May 2020 08:58:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7246A66519;
	Tue,  5 May 2020 08:47:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6574066227
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 447F166240; Tue,  5 May 2020 08:46:45 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 1C30F60B02
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:34 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084633euoutp01795de8b09469e0730d8db119ff82e146~MFXyRDCoV0374703747euoutp01U
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084633euoutp01795de8b09469e0730d8db119ff82e146~MFXyRDCoV0374703747euoutp01U
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505084632eucas1p2f773ae8b6ee1cfb0d83b128d41d732ec~MFXx_MDk40589305893eucas1p2G;
 Tue,  5 May 2020 08:46:32 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 9F.32.60679.8E721BE5; Tue,  5
 May 2020 09:46:32 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084632eucas1p231212e9cea88e755da8eaf1fb012d2c6~MFXxtJVWN1348713487eucas1p2Y;
 Tue,  5 May 2020 08:46:32 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084632eusmtrp19f6cd394ccc3bafa11d1d506307d9e5c~MFXxnuoHk0942309423eusmtrp1e;
 Tue,  5 May 2020 08:46:32 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-46-5eb127e8f794
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id EA.14.08375.8E721BE5; Tue,  5
 May 2020 09:46:32 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084631eusmtip146cf05a90e8510094663b002af942cae~MFXxCbuYK0106101061eusmtip18;
 Tue,  5 May 2020 08:46:31 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:46:04 +0200
Message-Id: <20200505084614.30424-15-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSeUgUYRzlm5mdHc2taZX8sEjcKFHwKv+YNKxUaKQCkSLtsDYd1FoPdr0p
 MqWD9cBVcUXMxMr71tYLMa/1olXUzMzKTQs114xV8TbXMfvvvfd77/sdfATKV3BMiICgUEYc
 JBQJcH1MoVzps5oyr/S2bR5xoBJV3QhVmVHOobYUMpQaWvyNU4XFHQiV0+xILQypEapqYphD
 zbYrATXYkIVTpe1fuFTL/CSH0vYo8XM8uiS7BNBNSzkYXbs0zqG/xXcidPXrR/TnzQmUTh3J
 B3TjpxicTqopArS26ig991KDu++7rn/GlxEFhDNiG6c7+v69mu9oyJxhZFrCGicGvCelQI+A
 pD2cm2zDpECf4JMFANanZeAsWQDwa1cSlyVaAKeWqxEpIHYiHWu2rJ4P4OKzLGQv8UMzCnTv
 4qQdlGqkuA4bkU8A7Eo00JlQchOBqRuZiK5gSHrAZnnejgkjj8NXH+ZRHeaRTrAwW85lBzSF
 xRXvdnS9bX1iYGxnPkj2cKHsZwHGmlyhWr3EYbEhnOms2Q0fgb2pCRgbiANQrSrlsiQBwMHY
 DMC6HOGYahXXLYeSFrC8wYaVz8PkokSc3Xk/HNEc1MnoNkxRyFFW5sHnT/ms+wTM7Czba9vS
 P7BroWFt4zX2QB0A9s/K8WRgmvm/Vw4ARcCYCZME+jGSk0FMhLVEGCgJC/Kz9gkOrALbv6l3
 s3OhDjSs320FJAEEBjxPbbk3nyMMl0QFtgJIoAIjXt5yhTef5yuMimbEwbfFYSJG0goOE5jA
 mHcqd/oWn/QThjL3GSaEEf+rIoSeSQwwUnoR6e5WxwpPX5C5Zc28Vb3hypDhSovasi2z9NgX
 Bzyu+NjfTFWBwW7kbKRbesShxz5+0x4KYb3LH/OLmjJ7S4SqN37gmTt6+erGQ9dLWNe6UqSM
 GJdPCyzirEQpzqvNzk3a8F8JWw73WiIVXjdW4j7GxS/1zdS31bkMR9eYCTCJv9DOEhVLhH8B
 gsmbzUkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7ov1DfGGfw8oWDRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVq8OXKM0eLyrjlsFmuP3GW3OPjhCavF
 51PH2Bx4PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJebyb/5YtgDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+P020fMBe+EK6b0/GZtYDwr0MXIwSEhYCJx9LdBFyMXh5DAUkaJM8u7WLsYOYHi
 MhInpzVA2cISf651sUEUfWKUeLD3ERNIgk3AUKLrLURCRKCTUWJa90d2EIdZoIVZYu+bf2wg
 K4QFAiRO7k4CaWARUJVYfPUDM4jNK2AnsXLedHaIDfISqzccAItzAsUfX7rDBmILCRRKfDj/
 nXUCI98CRoZVjCKppcW56bnFhnrFibnFpXnpesn5uZsYgZGy7djPzTsYL20MPsQowMGoxMMb
 8Xl9nBBrYllxZe4hRgkOZiUR3mU/NsQJ8aYkVlalFuXHF5XmpBYfYjQFOmois5Rocj4wivNK
 4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTByfuZ60+i4tuir1ZpN
 s99FKZatjPrX/NNoRWGmRdH0ifveHpDaVsfy23xJJ99S0e1yBU+e7rs5TZe3Vm5BS6SQ72cN
 21fbf0eWZT585t7iXye5T9CieNrECw5vL9Tcmbp+/xfWL7zCH9y69x1tEjtzQ/aI57x9S91i
 she4y1YbnHqvsWlmTuUSJZbijERDLeai4kQAPqcqVaoCAAA=
X-CMS-MailID: 20200505084632eucas1p231212e9cea88e755da8eaf1fb012d2c6
X-Msg-Generator: CA
X-RootMTR: 20200505084632eucas1p231212e9cea88e755da8eaf1fb012d2c6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084632eucas1p231212e9cea88e755da8eaf1fb012d2c6
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084632eucas1p231212e9cea88e755da8eaf1fb012d2c6@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 15/25] drm: vmwgfx: fix common struct
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
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZ3B1L2RybS92bXdnZngv
dm13Z2Z4X3R0bV9idWZmZXIuYyB8IDE3ICsrKystLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vdm13
Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMKaW5kZXggYmYwYmM0Ni4uZTUwYWU4YiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfdHRtX2J1ZmZlci5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3R0bV9idWZmZXIuYwpAQCAtMzYyLDggKzM2Miw3IEBA
IHN0YXRpYyB2b2lkIHZtd190dG1fdW5tYXBfZnJvbV9kbWEoc3RydWN0IHZtd190dG1fdHQgKnZt
d190dCkKIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSB2bXdfdHQtPmRldl9wcml2LT5kZXYtPmRl
djsKIAotCWRtYV91bm1hcF9zZyhkZXYsIHZtd190dC0+c2d0LnNnbCwgdm13X3R0LT5zZ3QubmVu
dHMsCi0JCURNQV9CSURJUkVDVElPTkFMKTsKKwlkbWFfdW5tYXBfc2d0YWJsZShkZXYsIHZtd190
dC0+c2d0LCBETUFfQklESVJFQ1RJT05BTCk7CiAJdm13X3R0LT5zZ3QubmVudHMgPSB2bXdfdHQt
PnNndC5vcmlnX25lbnRzOwogfQogCkBAIC0zODMsMTYgKzM4Miw4IEBAIHN0YXRpYyB2b2lkIHZt
d190dG1fdW5tYXBfZnJvbV9kbWEoc3RydWN0IHZtd190dG1fdHQgKnZtd190dCkKIHN0YXRpYyBp
bnQgdm13X3R0bV9tYXBfZm9yX2RtYShzdHJ1Y3Qgdm13X3R0bV90dCAqdm13X3R0KQogewogCXN0
cnVjdCBkZXZpY2UgKmRldiA9IHZtd190dC0+ZGV2X3ByaXYtPmRldi0+ZGV2OwotCWludCByZXQ7
Ci0KLQlyZXQgPSBkbWFfbWFwX3NnKGRldiwgdm13X3R0LT5zZ3Quc2dsLCB2bXdfdHQtPnNndC5v
cmlnX25lbnRzLAotCQkJIERNQV9CSURJUkVDVElPTkFMKTsKLQlpZiAodW5saWtlbHkocmV0ID09
IDApKQotCQlyZXR1cm4gLUVOT01FTTsKIAotCXZtd190dC0+c2d0Lm5lbnRzID0gcmV0OwotCi0J
cmV0dXJuIDA7CisJcmV0dXJuIGRtYV9tYXBfc2d0YWJsZShkZXYsIHZtd190dC0+c2d0LCBETUFf
QklESVJFQ1RJT05BTCk7CiB9CiAKIC8qKgpAQCAtNDQ5LDEwICs0NDAsMTAgQEAgc3RhdGljIGlu
dCB2bXdfdHRtX21hcF9kbWEoc3RydWN0IHZtd190dG1fdHQgKnZtd190dCkKIAkJaWYgKHVubGlr
ZWx5KHJldCAhPSAwKSkKIAkJCWdvdG8gb3V0X3NnX2FsbG9jX2ZhaWw7CiAKLQkJaWYgKHZzZ3Qt
Pm51bV9wYWdlcyA+IHZtd190dC0+c2d0Lm5lbnRzKSB7CisJCWlmICh2c2d0LT5udW1fcGFnZXMg
PiB2bXdfdHQtPnNndC5vcmlnX25lbnRzKSB7CiAJCQl1aW50NjRfdCBvdmVyX2FsbG9jID0KIAkJ
CQlzZ2xfc2l6ZSAqICh2c2d0LT5udW1fcGFnZXMgLQotCQkJCQkgICAgdm13X3R0LT5zZ3QubmVu
dHMpOworCQkJCQkgICAgdm13X3R0LT5zZ3Qub3JpZ19uZW50cyk7CiAKIAkJCXR0bV9tZW1fZ2xv
YmFsX2ZyZWUoZ2xvYiwgb3Zlcl9hbGxvYyk7CiAJCQl2bXdfdHQtPnNnX2FsbG9jX3NpemUgLT0g
b3Zlcl9hbGxvYzsKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=

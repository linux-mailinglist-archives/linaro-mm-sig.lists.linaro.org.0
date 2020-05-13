Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D66A1D16E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 16:03:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C86A619AC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 14:03:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6D93765F8F; Wed, 13 May 2020 14:03:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0584265FA4;
	Wed, 13 May 2020 13:36:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BA9D665FA1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:36:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AB56166525; Wed, 13 May 2020 13:36:32 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 418D265FA1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:21 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133320euoutp02f97b3f859206837a84f2cda60458f593~Omcd6eoQ-0033500335euoutp02h
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133320euoutp02f97b3f859206837a84f2cda60458f593~Omcd6eoQ-0033500335euoutp02h
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133320eucas1p238f7c2d468dcb4322b9908f86ae9b64b~Omcdi7sx22029120291eucas1p2l;
 Wed, 13 May 2020 13:33:20 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id F6.D5.61286.027FBBE5; Wed, 13
 May 2020 14:33:20 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133319eucas1p2eaae7e606163ec1b211a07a80a52655d~OmcdJV3VD1009610096eucas1p2T;
 Wed, 13 May 2020 13:33:19 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133319eusmtrp1e9453a6aa118cc06986aae2b66588d44~OmcdIhu9s1050610506eusmtrp1a;
 Wed, 13 May 2020 13:33:19 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-79-5ebbf720de7a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 73.2A.08375.F17FBBE5; Wed, 13
 May 2020 14:33:19 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133318eusmtip1d8476743c7e5537dc0f4e87e16e8aa14~OmccMjpFT3222032220eusmtip1F;
 Wed, 13 May 2020 13:33:18 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:38 +0200
Message-Id: <20200513133245.6408-31-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfUzMcRzH973fYw/Hr5P5LjZ2lk1bpbH5Wh5K/vhiw8ZfRhz9djVd5X6V
 aOOKM51EMhJxylN1uVS7rEupuENpJ+m5SPmjptKzorjrd/jv9Xm/P5/v+7PPviwhG6G82Iio
 WF4dpYiU066kyTLd4Ltiyhy6piudRpca3kjQ8OwnGj3NNFIoaWgl+m1KJ1BF/QyDmiaGaXQ2
 10ijvIJXEqSvCkQPNd4or+KHBI039UhQcW8zhT6U36ZR4csuBpkMGgpVf++j0NuuMQbpm2eY
 IE9sMpsobLhjAHg2e4TA3ZW1JH4+qSfxvdEJCnc2V9C4bPIzhauyDQz+dNEqwSX3z+COuV4C
 Z7Q+AtjcpqHxcOVHGqeV5oM9HvtdN4bxkRHxvNp/82HX8BT9CyrmizSh2mIiNWDITQdcWMit
 g8bKXqADrqyMewxgyeUUSizGAUy7NuJ0xgDsT71K/h1Jq81yGo8AbLFOMf9G3s0ZaUcXzQVA
 3aBunj05LYCvL7k7mggulYL9RUXzxiIOwaTZccrBJOcNpyztwMFSbhPUmeudccthQdELwsEu
 dn2gs8qpZ7MwZSJR5G1QW/gViLwIDlhLGZGXwbqMVNIRDLmzAPY0FDJikQrgh+RM50Qg7GyY
 sW/E2tdbDY3l/g6EXDCsuxAi4gLYOujhaCbseNV0gxBlKbxwXia+sQpmWZ/8S622NRIiY9hn
 bHIeqxZAS0opcwUsz/qfpQcgHyzh4wSVkhcCovgTfoJCJcRFKf2ORquKgf0j1s1ZR5+BicYj
 NYBjgdxditrNoTJKES+cVNUAyBJyT+kuo12ShilOnuLV0YfUcZG8UAOWsqR8iXRtTv9BGadU
 xPLHeD6GV/91JayLlwacm23VWrrdElQ2eY8v7jDezenYYlm8/nhS2233hSHKoV6P97s37Hzw
 9qdPVVnxDIptlBR7Hg3+VhlkO7V2w6/cvedkucp1W4cSk28l2ZaSY0f2uuSE27putuwIDjh9
 /eYBi0fbdtNd7XRWhFConV49OZieV98dmqE3eMf/yjQce75PTgrhigAfQi0o/gCt2DPrhAMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrCIsWRmVeSWpSXmKPExsVy+t/xu7ry33fHGSx7qmbRe+4kk8X7v/fZ
 LDbOWM9q0fhO2eL/tonMFnvO/GK3uPL1PZtF8+L1bBYrVx9lsliw39piWYOqxco9P5gsvlx5
 yGSx6fE1VovLu+awWaw9cpfdYtuaBlaLgx+esFqcuvuZ3WLBtV/sDiIe23ZvY/VYM28No8ff
 uR+ZPe7tO8zisffbAhaPhZ++snrcubaHzWP7twesHvvnrmH3uN99nMlj85J6j9v/HjN7TL6x
 nNFj980GNo/3+66yefRtWcUYIBilZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2Vk
 qqRvZ5OSmpNZllqkb5egl9G54ABrwSPeioPHtrE0ML7j7mLk5JAQMJHoOzyLsYuRi0NIYCmj
 xLyuN8wQCRmJk9MaWCFsYYk/17rYIIo+MUqsfX2QCSTBJmAo0fUWIiEi0MkoMa37IzuIwyww
 g1Vi3YF77CBVwgIWEo1/v4CNYhFQlfh+7BYjiM0rYCvRtfsMC8QKeYnVGw6AreYEir+6sx8s
 LiSQL7F38T62CYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgTG6LZjPzfvYLy0MfgQ
 owAHoxIPr8Wt3XFCrIllxZW5hxglOJiVRHj91gOFeFMSK6tSi/Lji0pzUosPMZoCHTWRWUo0
 OR+YPvJK4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTCqJfYtk3ie
 06H49L3fTsGqzR7/qi893jJ5WeiSjQ+8dJwa5p1Z9aha+bzFR3unq6XPW9v5/jod0emOb9JT
 bLvDrdKhbdW6lk3meOctk6Pv310v6Ox6+fg1+/WrK/4F1grOSVIw+6Y/ZX/qigCfVSfTNluW
 5MjO6Q08si1V9XA7/4Yyl7WMfWZKLMUZiYZazEXFiQAXpYPF5wIAAA==
X-CMS-MailID: 20200513133319eucas1p2eaae7e606163ec1b211a07a80a52655d
X-Msg-Generator: CA
X-RootMTR: 20200513133319eucas1p2eaae7e606163ec1b211a07a80a52655d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133319eucas1p2eaae7e606163ec1b211a07a80a52655d
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133319eucas1p2eaae7e606163ec1b211a07a80a52655d@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 Daniel Vetter <daniel@ffwll.ch>, Joel Fernandes <joel@joelfernandes.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 31/38] staging: ion: remove dead code
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

aW9uX2hlYXBfcGFnZXNfemVybygpIGZ1bmN0aW9uIGlzIG5vdCB1c2VkIGF0IGFsbCwgc28gcmVt
b3ZlIGl0IHRvCnNpbXBsaWZ5IHRoZSBpb25faGVhcF9zZ2xpc3RfemVybygpIGZ1bmN0aW9uIGxh
dGVyLgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1
bmcuY29tPgotLS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNlZSAnW1BBVENIIHY1IDAwLzM4XSBE
Uk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9yaWdfbmVudHMgbWlzdXNlJyB0aHJl
YWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlvbW11LzIwMjAwNTEzMTMyMTE0LjYw
NDYtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBkcml2ZXJzL3N0YWdpbmcvYW5k
cm9pZC9pb24vaW9uLmggICAgICB8IDEgLQogZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lv
bl9oZWFwLmMgfCA5IC0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxMCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmggYi9kcml2ZXJz
L3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmgKaW5kZXggNzQ5MTRhMi4uYzE5OWU4OCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5oCisrKyBiL2RyaXZlcnMvc3Rh
Z2luZy9hbmRyb2lkL2lvbi9pb24uaApAQCAtMTc3LDcgKzE3Nyw2IEBAIHN0cnVjdCBpb25faGVh
cCB7CiBpbnQgaW9uX2hlYXBfbWFwX3VzZXIoc3RydWN0IGlvbl9oZWFwICpoZWFwLCBzdHJ1Y3Qg
aW9uX2J1ZmZlciAqYnVmZmVyLAogCQkgICAgICBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSk7
CiBpbnQgaW9uX2hlYXBfYnVmZmVyX3plcm8oc3RydWN0IGlvbl9idWZmZXIgKmJ1ZmZlcik7Ci1p
bnQgaW9uX2hlYXBfcGFnZXNfemVybyhzdHJ1Y3QgcGFnZSAqcGFnZSwgc2l6ZV90IHNpemUsIHBn
cHJvdF90IHBncHJvdCk7CiAKIC8qKgogICogaW9uX2hlYXBfaW5pdF9zaHJpbmtlcgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9oZWFwLmMgYi9kcml2ZXJzL3N0
YWdpbmcvYW5kcm9pZC9pb24vaW9uX2hlYXAuYwppbmRleCAwNzU1YjExLi45YzIzYjIzIDEwMDY0
NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX2hlYXAuYworKysgYi9kcml2
ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX2hlYXAuYwpAQCAtMTQ1LDE1ICsxNDUsNiBAQCBp
bnQgaW9uX2hlYXBfYnVmZmVyX3plcm8oc3RydWN0IGlvbl9idWZmZXIgKmJ1ZmZlcikKIAlyZXR1
cm4gaW9uX2hlYXBfc2dsaXN0X3plcm8odGFibGUtPnNnbCwgdGFibGUtPm5lbnRzLCBwZ3Byb3Qp
OwogfQogCi1pbnQgaW9uX2hlYXBfcGFnZXNfemVybyhzdHJ1Y3QgcGFnZSAqcGFnZSwgc2l6ZV90
IHNpemUsIHBncHJvdF90IHBncHJvdCkKLXsKLQlzdHJ1Y3Qgc2NhdHRlcmxpc3Qgc2c7Ci0KLQlz
Z19pbml0X3RhYmxlKCZzZywgMSk7Ci0Jc2dfc2V0X3BhZ2UoJnNnLCBwYWdlLCBzaXplLCAwKTsK
LQlyZXR1cm4gaW9uX2hlYXBfc2dsaXN0X3plcm8oJnNnLCAxLCBwZ3Byb3QpOwotfQotCiB2b2lk
IGlvbl9oZWFwX2ZyZWVsaXN0X2FkZChzdHJ1Y3QgaW9uX2hlYXAgKmhlYXAsIHN0cnVjdCBpb25f
YnVmZmVyICpidWZmZXIpCiB7CiAJc3Bpbl9sb2NrKCZoZWFwLT5mcmVlX2xvY2spOwotLSAKMS45
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

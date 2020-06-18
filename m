Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3741D1FF8EF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 18:14:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59F9266583
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jun 2020 16:14:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4E2EB66597; Thu, 18 Jun 2020 16:14:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EFCDC66700;
	Thu, 18 Jun 2020 15:43:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BEC646654B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AEA3A66572; Thu, 18 Jun 2020 15:40:52 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 5F8DB66592
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:35 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154034euoutp023dca7deb4ed21f365cf978f262117147~ZrZ1eMRiU1486314863euoutp02E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2020 15:40:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154034euoutp023dca7deb4ed21f365cf978f262117147~ZrZ1eMRiU1486314863euoutp02E
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154034eucas1p200b642aad46f9f3dadb0b4d779961134~ZrZ05QFtV0500605006eucas1p28;
 Thu, 18 Jun 2020 15:40:34 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id AB.60.60698.1FA8BEE5; Thu, 18
 Jun 2020 16:40:33 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154033eucas1p1d061fbc72e2eed8d475ab170f9a2fbf0~ZrZ0kWFUk1545515455eucas1p1h;
 Thu, 18 Jun 2020 15:40:33 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154033eusmtrp18f40620951e8b03018ca5f7fe0349d57~ZrZ0jmufx2230622306eusmtrp1I;
 Thu, 18 Jun 2020 15:40:33 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-46-5eeb8af11c95
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8F.E9.07950.1FA8BEE5; Thu, 18
 Jun 2020 16:40:33 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154032eusmtip12f8eaf6349a9de5197cc02bcf8153741~ZrZzqdGAz2806328063eusmtip1H;
 Thu, 18 Jun 2020 15:40:32 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2020 17:39:49 +0200
Message-Id: <20200618153956.29558-29-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTURzu7D52Z66uS+pQkbUwe/rAoENFmEUc6B/BQKw0r3mxSKdtviqi
 9baplSlkkrVKXb6aL5bNqWXWylcPbWipaQ9rjlJTo6SszWv53/f7Hr/vx+EwhGyEms/sV8Tx
 SgUXJaedSMPjn8/WDGtsod7JI+tRWutTERr8/ZZGZVl6Ch3/uhT9MaQTyNQ8LkbtY4M0OnlL
 T6OCokcipK3bgPLV7qjA9EOERtv7RKj8vYVCbcarNCpp6BYjQ7GaQg+GPlCosXtEjLSWcbGf
 KzZUGyhcfK0Y4N85wwTuqX1I4prvWhLf+DZG4S6LicZ3v/dSuC6nWIzfpphFuCL3GH4z8Z7A
 GR06gKs71TQerH1F4/OVhSDAZafTxgg+an8Cr/TaFOa0b8yYS8XanJPS2ztpNTg3UwMkDGTX
 Qos2k9QAJ0bG3gbQ1P9tahgF8GdKCSEMIwD2dHwg/0X6G8qmBB2AWacypyMV6nbC4aJZH6j5
 oqEd2JU9DeCTNGeHiWBTKWgtLZ0U5rAIvh4+IXZgknWHPXkDwIGl7CZ471S6SKhzg0Wl9yeX
 Sux8k/k05VgE2SsMLDivEwumrdAwmg0EPAcOmCun+IWwKSOVFAInAexrLRELQyqAbSeyphIb
 YFfruP0kxn7fCqg3egn0Zvip7j5w0JCdBTu+uDhowg4vGS4TAi2FyWdkgnsZzDbf+V/74PlL
 QsAYGt/YKOGF0gEc7GoBF4Fb9nSZFoBCMI+PV0VH8ipfBZ/oqeKiVfGKSM+9MdHlwP4VmybM
 Y1Wg9ld4PWAZIHeWft5hC5VRXILqUHQ9gAwhd5X6tzSFyqQR3KHDvDJmjzI+ilfVgwUMKZ8n
 9b1pDZGxkVwcf4DnY3nlP1XESOarAZ9vPbj8SCB51vtjQ6HNvzxt94Uobl2IzK3Xs9f6InFb
 qV9HAOcx5DHDRR3utaX34Vp9LVmfEqc7npe5oDGszTM4yGsoqUL+buLoEmOgT2vyubmh24ck
 4MVLi7Uvoc2w+sAu0zbJ7ODrjRM5T4ICVupqFAv1jUEJVSGLm1NWVS3KkJOqfZzPSkKp4v4C
 KvQFAYYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsVy+t/xu7ofu17HGTy8omLRe+4kk8X7v/fZ
 LDbOWM9q0fhO2eL/tonMFnvO/GK3uPL1PZtF8+L1bBYrVx9lsliw39piWYOqxco9P5gsvlx5
 yGSx6fE1VovLu+awWaw9cpfdYtuaBlaLgx+esFqcuvuZ3WLBtV/sDiIe23ZvY/VYM28No8ff
 uR+ZPe7tO8zisffbAhaPhZ++snrcubaHzWP7twesHvvnrmH3uN99nMlj85J6j9v/HjN7TL6x
 nNFj980GNo/3+66yefRtWcUYIBilZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2Vk
 qqRvZ5OSmpNZllqkb5egl/F11xLWgtc8FROv3GRrYOzk7mLk5JAQMJF4dmQjM4gtJLCUUeL5
 wSiIuIzEyWkNrBC2sMSfa11sXYxcQDWfGCVeT9kA1sAmYCjR9RYiISLQySgxrfsjO4jDLDCD
 VWLdgXvsIFXCAhYStz42gdksAqoS95a+YgSxeQXsJHa2TGSCWCEvsXrDAbCpnEDx08dbWSFO
 spV4/qGNbQIj3wJGhlWMIqmlxbnpucVGesWJucWleel6yfm5mxiBEbrt2M8tOxi73gUfYhTg
 YFTi4X0R8jpOiDWxrLgy9xCjBAezkgiv09nTcUK8KYmVValF+fFFpTmpxYcYTYGOmsgsJZqc
 D0weeSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGPUEubtXTN8g
 sOd1HP+nN69mJRaITfZyf6XR22582vTcPrdnCbtdJzD8je6f9rOo+zi38qZcH9kn1o6Clm4i
 Aa6z7s/aG8ylEGIy9/hvKRHJmr0Vy7bl8N+pfxUrKBW9bAFj3XmVx6KnHK5WmCQyOZeu3Sv3
 sWVbzcnLNln2gdOY76Y+7cr4oMRSnJFoqMVcVJwIAKInuRrmAgAA
X-CMS-MailID: 20200618154033eucas1p1d061fbc72e2eed8d475ab170f9a2fbf0
X-Msg-Generator: CA
X-RootMTR: 20200618154033eucas1p1d061fbc72e2eed8d475ab170f9a2fbf0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154033eucas1p1d061fbc72e2eed8d475ab170f9a2fbf0
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154033eucas1p1d061fbc72e2eed8d475ab170f9a2fbf0@eucas1p1.samsung.com>
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
Subject: [Linaro-mm-sig] [PATCH v6 28/36] staging: ion: remove dead code
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
bmcuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uaCAgICAgIHwgMSAt
CiBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX2hlYXAuYyB8IDkgLS0tLS0tLS0tCiAy
IGZpbGVzIGNoYW5nZWQsIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy9hbmRyb2lkL2lvbi9pb24uaCBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24u
aAppbmRleCA3NDkxNGEyNjZlMjUuLmMxOTllODhhZmM2YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9z
dGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lv
bi9pb24uaApAQCAtMTc3LDcgKzE3Nyw2IEBAIHZvaWQgaW9uX2hlYXBfdW5tYXBfa2VybmVsKHN0
cnVjdCBpb25faGVhcCAqaGVhcCwgc3RydWN0IGlvbl9idWZmZXIgKmJ1ZmZlcik7CiBpbnQgaW9u
X2hlYXBfbWFwX3VzZXIoc3RydWN0IGlvbl9oZWFwICpoZWFwLCBzdHJ1Y3QgaW9uX2J1ZmZlciAq
YnVmZmVyLAogCQkgICAgICBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSk7CiBpbnQgaW9uX2hl
YXBfYnVmZmVyX3plcm8oc3RydWN0IGlvbl9idWZmZXIgKmJ1ZmZlcik7Ci1pbnQgaW9uX2hlYXBf
cGFnZXNfemVybyhzdHJ1Y3QgcGFnZSAqcGFnZSwgc2l6ZV90IHNpemUsIHBncHJvdF90IHBncHJv
dCk7CiAKIC8qKgogICogaW9uX2hlYXBfaW5pdF9zaHJpbmtlcgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9oZWFwLmMgYi9kcml2ZXJzL3N0YWdpbmcvYW5kcm9p
ZC9pb24vaW9uX2hlYXAuYwppbmRleCAwNzU1YjExMzQ4ZWQuLjljMjNiMjM4MmExZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9oZWFwLmMKKysrIGIvZHJpdmVy
cy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9oZWFwLmMKQEAgLTE0NSwxNSArMTQ1LDYgQEAgaW50
IGlvbl9oZWFwX2J1ZmZlcl96ZXJvKHN0cnVjdCBpb25fYnVmZmVyICpidWZmZXIpCiAJcmV0dXJu
IGlvbl9oZWFwX3NnbGlzdF96ZXJvKHRhYmxlLT5zZ2wsIHRhYmxlLT5uZW50cywgcGdwcm90KTsK
IH0KIAotaW50IGlvbl9oZWFwX3BhZ2VzX3plcm8oc3RydWN0IHBhZ2UgKnBhZ2UsIHNpemVfdCBz
aXplLCBwZ3Byb3RfdCBwZ3Byb3QpCi17Ci0Jc3RydWN0IHNjYXR0ZXJsaXN0IHNnOwotCi0Jc2df
aW5pdF90YWJsZSgmc2csIDEpOwotCXNnX3NldF9wYWdlKCZzZywgcGFnZSwgc2l6ZSwgMCk7Ci0J
cmV0dXJuIGlvbl9oZWFwX3NnbGlzdF96ZXJvKCZzZywgMSwgcGdwcm90KTsKLX0KLQogdm9pZCBp
b25faGVhcF9mcmVlbGlzdF9hZGQoc3RydWN0IGlvbl9oZWFwICpoZWFwLCBzdHJ1Y3QgaW9uX2J1
ZmZlciAqYnVmZmVyKQogewogCXNwaW5fbG9jaygmaGVhcC0+ZnJlZV9sb2NrKTsKLS0gCjIuMTcu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E2447200767
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 12:58:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15A3F66597
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 10:58:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 080366659D; Fri, 19 Jun 2020 10:58:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61020666E6;
	Fri, 19 Jun 2020 10:39:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BD8B8665C3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B0862665E8; Fri, 19 Jun 2020 10:37:35 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 12503665C3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:10 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103709euoutp02c358cbdbebf3c0f9f8fa42aa82eb63fc~Z66MpT65D2242222422euoutp02i
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200619103709euoutp02c358cbdbebf3c0f9f8fa42aa82eb63fc~Z66MpT65D2242222422euoutp02i
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103708eucas1p25d569a3ec93e3c5820c85efc4a2a9704~Z66MU8EqH1691016910eucas1p2A;
 Fri, 19 Jun 2020 10:37:08 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 99.9D.05997.4559CEE5; Fri, 19
 Jun 2020 11:37:08 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103708eucas1p230ca99e915e759bc0e93cd844c91b311~Z66MCvAPT2888828888eucas1p2p;
 Fri, 19 Jun 2020 10:37:08 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103708eusmtrp1d5e2caf48e4b7e049f4152b025863c12~Z66MCGLp40949709497eusmtrp1d;
 Fri, 19 Jun 2020 10:37:08 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-f7-5eec9554b36b
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A1.1B.06017.4559CEE5; Fri, 19
 Jun 2020 11:37:08 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103707eusmtip28e525a8905d6ccea6dc0ac791343f768~Z66LbZHa70244902449eusmtip2q;
 Fri, 19 Jun 2020 10:37:07 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:23 +0200
Message-Id: <20200619103636.11974-24-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGKsWRmVeSWpSXmKPExsWy7djP87ohU9/EGXw8aWzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVq8OXKM0eLyrjlsFmuP3GW3OPjhCavF
 6k5HB16PNfPWMHrs/baAxWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObRt2UVo8fn
 TXIe7+a/ZQvgjuKySUnNySxLLdK3S+DKaG5uYC+YIF7xufcLSwPjIuEuRk4OCQETibN7drF2
 MXJxCAmsYJRYt+8JlPOFUeLEj2Y2COczo0TD48/sMC2X7u2HqlrOKLFy+x2Elr0L17CCVLEJ
 GEp0ve1iA7FFBFqBZvXygBQxC/xlkrj0eBJYkbBAkMSvPZ1AYzk4WARUJfr3gh3FK2An8fzh
 WSaIbfISqzccYAaxOYHir1sOgi2TEDjELjH7yFMWiCIXiVMHnrNB2MISr45vgTpVRuL05B4W
 iIZmRomH59ayQzg9jBKXm2YwQlRZS9w594sN5ApmAU2J9bv0IcKOEhsvLmYGCUsI8EnceCsI
 EmYGMidtmw4V5pXoaBOCqFaTmHV8HdzagxcuMUPYHhJvN9xihATQRGAwvlrHOoFRfhbCsgWM
 jKsYxVNLi3PTU4uN8lLL9YoTc4tL89L1kvNzNzECU9Ppf8e/7GDc9SfpEKMAB6MSD++LkNdx
 QqyJZcWVuYcYJTiYlUR4nc6ejhPiTUmsrEotyo8vKs1JLT7EKM3BoiTOa7zoZayQQHpiSWp2
 ampBahFMlomDU6qBUXzDgxrL+tsNZbF3ngoHGsnNvWNc3l97f7ennFFX3Vqx94LyNXN/B8Zk
 W0aKXTcSb1N4yNqWFF1mc4Q7Nbk7vjvaJmDmlun7FmqVmu8LVpyptmOec8S0aa0yl4pme3vr
 ztyiualVvKmo76Jr6E2VvNnpfFcjH9TMXeRtwMq749PcWYbP9ZiVWIozEg21mIuKEwESs3Y4
 SQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsVy+t/xe7ohU9/EGWz5oWTRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVq8OXKM0eLyrjlsFmuP3GW3OPjhCavF
 6k5HB16PNfPWMHrs/baAxWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObRt2UVo8fn
 TXIe7+a/ZQvgjtKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxL
 LdK3S9DLaG5uYC+YIF7xufcLSwPjIuEuRk4OCQETiUv39rN2MXJxCAksZZQ4/+c4K0RCRuLk
 tAYoW1jiz7UuNoiiT4wSB49OAEuwCRhKdL2FSIgIdDJKTOv+yA6SYBZoZpY4/7IWxBYWCJD4
 fOQ1UJyDg0VAVaJ/L9hmXgE7iecPzzJBLJCXWL3hADOIzQkUf91yEGy+kICtxPIF75knMPIt
 YGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERgn24793LKDsetd8CFGAQ5GJR7eFyGv44RY
 E8uKK3MPMUpwMCuJ8DqdPR0nxJuSWFmVWpQfX1Sak1p8iNEU6KaJzFKiyfnAGM4riTc0NTS3
 sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cC4qkHoZszCrXx6FiotsSyN85rr
 vrvFyJyboNofei/6rl7Cuztv44JdZ5/1maWT+qVYuGqii6T85yqGDe/r1+y1X9xi0u5RtkNk
 gXHDZ4tJrn8zO5oTOVdUyH6On1Ty6NOCgyy3X0Zx75tgPvGd3r4vC9bMmGo6TZ5rr8uLRUtu
 6LE4KCYwdVorsRRnJBpqMRcVJwIAJj6XtakCAAA=
X-CMS-MailID: 20200619103708eucas1p230ca99e915e759bc0e93cd844c91b311
X-Msg-Generator: CA
X-RootMTR: 20200619103708eucas1p230ca99e915e759bc0e93cd844c91b311
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103708eucas1p230ca99e915e759bc0e93cd844c91b311
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103708eucas1p230ca99e915e759bc0e93cd844c91b311@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Roland Scheidegger <sroland@vmware.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 23/36] drm: vmwgfx: fix common struct
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
eF90dG1fYnVmZmVyLmMKaW5kZXggYmYwYmM0Njk3OTU5Li44NjFjMzgzYzk3ODAgMTAwNjQ0Ci0t
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

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 495661C5183
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 11:05:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68A0066072
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 09:05:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5D41866076; Tue,  5 May 2020 09:05:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63E606656A;
	Tue,  5 May 2020 08:48:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E78AB60F57
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D95FF66078; Tue,  5 May 2020 08:46:53 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 4A94A66075
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:39 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084638euoutp027f20c8099a45f14c98cfe6cc9d56d0ba~MFX3Iv1Sj2628726287euoutp02u
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084638euoutp027f20c8099a45f14c98cfe6cc9d56d0ba~MFX3Iv1Sj2628726287euoutp02u
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505084638eucas1p2f64e6e9e159f32f6a5075d0f6fe56f6d~MFX22A1302337523375eucas1p2A;
 Tue,  5 May 2020 08:46:38 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 8B.CF.61286.EE721BE5; Tue,  5
 May 2020 09:46:38 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084637eucas1p2c6d4b880698e8db97a8a9468692befe1~MFX2ekOHW1058410584eucas1p26;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084637eusmtrp10bd85c1ae40dc41b984d18a142bc75ac~MFX2d2rLe0969509695eusmtrp1D;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-bd-5eb127ee01b8
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 70.24.08375.DE721BE5; Tue,  5
 May 2020 09:46:37 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084637eusmtip141ccbb722e7764196913fe16c0e77997~MFX15Hfo30686606866eusmtip1O;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:46:12 +0200
Message-Id: <20200505084614.30424-23-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGvTOd6bQwOBQSrkUhKVEjRpbowyQoLvFhTHwwPhg0EagygrEt
 0AIC0YALRmohFFBI3dAoSymyyKIsURBathRDRUEhgiUSCRQEZNEIMhnAt+/85/z3Pzm5BCpp
 wKTERVUcq1bJFTJcLKg1L1n3OHZWhgYUZhN0hrUDob8Z+1G6Mr8co1dq9Sj94dcUTpeUtiF0
 wZsgeu7DCEJX2T9itK3+AU6XtQ4J6bs9CyjdPD2KHSIZ0yMTYJrmCwTMa8OQkNFN3MSYuvlh
 jPl6x4IwL5+lMF+W7SiT018EmIaBVJzJrDYCZrbK64TzGfH+CFZxMYFV+weHi6NKyvRIzMDm
 RGPHe0EqyCa1QERAah+0P+xEtUBMSKhiAEeL0hG+mAOw/ZoD8MUsgAZ9Dli35P19gvGNIgCN
 5nxswzJzP0vITeFUINROanGO3am01bcynDlGKQcCW2d9OXajjkNdbgnGsYDaDhduTqwyQZBU
 MDTVKfgwb1ha8RblWLQq23sHcS4LUlYhfFRvWtvoKPxTnC7k2Q2OW6rXeCvsytEJeMMNAEes
 ZUK+0AFou56/5g6Cg9bfOJeMUrtgeb0/Lx+G5oxPAk6GlAvsn3Tl93eB2bV5KC+T8PYtCT+9
 AxosLzZim9/3ojwzcGB0Eufv0wZgdWOXMAt4G/6HFQBgBB5svEYZyWoCVexlP41cqYlXRfqd
 j1ZWgdUv1bVsmXkFfvWeawEUAWTOZMhseagEkydokpQtABKozJ0sXKwIlZAR8qRkVh0dpo5X
 sJoW4EkIZB7k3qc/zkqoSHkce4llY1j1ehchRNJUkHY6V7psqEECpizG/oJ3WZFOGfknF50W
 leHHbLHTxiM9rpUhK+pun7jdeF8MXS8VdXvKXMY6pVUHyfHG2APft91P2rJpJibM4WU2xw43
 6bW24SV9YtqFku4+YcSpz95jRlOEqKUh4Pm9K/YaWebj9p8Y2WhL9mlN2X1VN+awygSaKHmg
 L6rWyP8BKu1GI04DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xu7pv1TfGGez/qWPRe+4kk8WjVTeY
 LTbOWM9q8X/bRGaLK1/fs1msXH2UyWLBfmuLL1ceMllsenyN1eLyrjlsFmuP3GW3mHr+O7PF
 wQ9PWB14PdbMW8PosffbAhaPnbPusnv0vGlh9dj+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexsq1E5kKbvJXrDp5gaWBcRJvFyMnh4SAicT0vwtZuxi5OIQEljJKdF49
 wgKRkJE4Oa2BFcIWlvhzrYsNougTo8T19ulMIAk2AUOJrrcQCRGBTkaJad0f2UEcZoFvTBKT
 lt5iA6kSFvCR6JmyEmwUi4CqxPeWN0A2BwevgJ3Emu05EBvkJVZvOMAMYnMChR9fugPWKiRQ
 KPHh/HfWCYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgRGzbZjPzfvYLy0MfgQowAH
 oxIPb8Tn9XFCrIllxZW5hxglOJiVRHiX/dgQJ8SbklhZlVqUH19UmpNafIjRFOimicxSosn5
 wIjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAKC9wImTvmqdq
 Nscb4zNXJJnoSZze5/Sp9sWs13vCzu732OT2WH3ZlD3M73YeOhycIV/gdLHzc9fXtBmHP69M
 untffKl6a7JX46etvcrcznymB9g72s5JHvR4+/wXr87v23MdHIwYf1tVGpwJW7vOMM6pfet7
 U4PMFoMaoweRSrdvmTy/n2ejpcRSnJFoqMVcVJwIAEZ4Vb+wAgAA
X-CMS-MailID: 20200505084637eucas1p2c6d4b880698e8db97a8a9468692befe1
X-Msg-Generator: CA
X-RootMTR: 20200505084637eucas1p2c6d4b880698e8db97a8a9468692befe1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084637eucas1p2c6d4b880698e8db97a8a9468692befe1
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084637eucas1p2c6d4b880698e8db97a8a9468692befe1@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Alexandre Bounine <alex.bou9@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matt Porter <mporter@kernel.crashing.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 23/25] rapidio: fix common struct
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
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvcmFwaWRpby9kZXZpY2Vz
L3Jpb19tcG9ydF9jZGV2LmMgfCA4ICsrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFwaWRpby9kZXZp
Y2VzL3Jpb19tcG9ydF9jZGV2LmMgYi9kcml2ZXJzL3JhcGlkaW8vZGV2aWNlcy9yaW9fbXBvcnRf
Y2Rldi5jCmluZGV4IDQwMjk2MzcuLmRmN2RiYTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcmFwaWRp
by9kZXZpY2VzL3Jpb19tcG9ydF9jZGV2LmMKKysrIGIvZHJpdmVycy9yYXBpZGlvL2RldmljZXMv
cmlvX21wb3J0X2NkZXYuYwpAQCAtNTc0LDggKzU3NCw3IEBAIHN0YXRpYyB2b2lkIGRtYV9yZXFf
ZnJlZShzdHJ1Y3Qga3JlZiAqcmVmKQogCXN0cnVjdCBtcG9ydF9jZGV2X3ByaXYgKnByaXYgPSBy
ZXEtPnByaXY7CiAJdW5zaWduZWQgaW50IGk7CiAKLQlkbWFfdW5tYXBfc2cocmVxLT5kbWFjaC0+
ZGV2aWNlLT5kZXYsCi0JCSAgICAgcmVxLT5zZ3Quc2dsLCByZXEtPnNndC5uZW50cywgcmVxLT5k
aXIpOworCWRtYV91bm1hcF9zZ3RhYmxlKHJlcS0+ZG1hY2gtPmRldmljZS0+ZGV2LCByZXEtPnNn
dCwgcmVxLT5kaXIpOwogCXNnX2ZyZWVfdGFibGUoJnJlcS0+c2d0KTsKIAlpZiAocmVxLT5wYWdl
X2xpc3QpIHsKIAkJZm9yIChpID0gMDsgaSA8IHJlcS0+bnJfcGFnZXM7IGkrKykKQEAgLTkyNyw5
ICs5MjYsOCBAQCBzdGF0aWMgaW50IGRvX2RtYV9yZXF1ZXN0KHN0cnVjdCBtcG9ydF9kbWFfcmVx
ICpyZXEsCiAJCQkJeGZlci0+b2Zmc2V0LCB4ZmVyLT5sZW5ndGgpOwogCX0KIAotCW5lbnRzID0g
ZG1hX21hcF9zZyhjaGFuLT5kZXZpY2UtPmRldiwKLQkJCSAgIHJlcS0+c2d0LnNnbCwgcmVxLT5z
Z3QubmVudHMsIGRpcik7Ci0JaWYgKG5lbnRzID09IDApIHsKKwlyZXQgPSBkbWFfbWFwX3NndGFi
bGUoY2hhbi0+ZGV2aWNlLT5kZXYsIHJlcS0+c2d0LCBkaXIpOworCWlmIChyZXQpIHsKIAkJcm1j
ZF9lcnJvcigiRmFpbGVkIHRvIG1hcCBTRyBsaXN0Iik7CiAJCXJldCA9IC1FRkFVTFQ7CiAJCWdv
dG8gZXJyX3BnOwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==

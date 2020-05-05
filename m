Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF351C5173
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 11:00:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B2DAC66218
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 09:00:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A84B9664DE; Tue,  5 May 2020 09:00:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3094E66521;
	Tue,  5 May 2020 08:47:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CD32866072
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C1C9D66227; Tue,  5 May 2020 08:46:47 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id A8A5266072
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:34 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084633euoutp0105e46bbfd71732fda2c98a00099bb974~MFXyzgWzQ0325703257euoutp01m
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084633euoutp0105e46bbfd71732fda2c98a00099bb974~MFXyzgWzQ0325703257euoutp01m
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084633eucas1p1bef72d98018191e2ab095d6b5cde6d45~MFXyiloBc0600906009eucas1p1M;
 Tue,  5 May 2020 08:46:33 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 26.CF.61286.9E721BE5; Tue,  5
 May 2020 09:46:33 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084633eucas1p26a6a3f44c64955aadec834bed027e522~MFXyIHf071949019490eucas1p2L;
 Tue,  5 May 2020 08:46:33 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084633eusmtrp153afdf239488ef4df2fa03d0ecbc82de~MFXyHcV0-0942309423eusmtrp1f;
 Tue,  5 May 2020 08:46:33 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-ad-5eb127e955d2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1C.21.07950.9E721BE5; Tue,  5
 May 2020 09:46:33 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084632eusmtip1c357efec5cd7eb62ab62b23c5f3547be~MFXxkQbKo0309503095eusmtip1v;
 Tue,  5 May 2020 08:46:32 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:46:05 +0200
Message-Id: <20200505084614.30424-16-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSWUwTURTldZYODcWxgrwgkaRECSqb+jEJ2GD0YyLRoPHDmIiMMkEjBdIC
 ikvEBaIFZNOACEioAVlqWWohKCrVUhFlKQVBKC5IEAxr2dxQygD+nXuWe5KbSyAiPeZMnI6I
 ZmURTLgYF6Daxh+tnsPulcE+qbWuVEpLE4+qzFZjVHtWAkr91aYjlGlmHKdKyvQ8quC5H5Xb
 s52aNn3mUVUDXRjVUZeLU6pXZj7VMPEVo+Y0mbwAe7o8vxzQ9bMFKF0z+wmjPyYZeHT1g8t0
 78IAQmd2FwP65YQJpZ/0xOP05OAHlL6lKQW0WtOJ0paqjUHCowL/UDb8dCwr85aECE615+l5
 UWrROa26C48HqWsUwJaA5E5YfuUNogACQkQ+BNCiKALcMA1gWpuBxw0WAJvfTyErkeqnv5eF
 YgA7u77xVyOD34eWXDjpCxWjCtyKHcgEAF+n2FlNCJmEwDuqUswqrCMPwbrmjKUASm6Cpg71
 4lqCEJISqGty59pcYVnFiyWL7SI9YOzDrXsg+YEPvwzOAc60F9akf8E4vA6OGDR8DrvA5sxk
 lAtcA/Bzi4rPDckAdlzNXk77wb6Wn7i1GSE9oLrOm6N3w6HEEtRKQ9Iedo+utdLIIszQZiEc
 LYQ3EkWcezPMMTxarW1oMy5fi4Zz983LB9YDaB7rw9OAa87/sgIASoETGyOXhrFy3wj2rJec
 kcpjIsK8TkZKq8DiczUvGKZqwYzxhA6QBBDbCY9Y1MEijImVx0l1ABKI2EFYNF8RLBKGMnHn
 WVnkcVlMOCvXgQ0EKnYS7igcPiYiw5ho9gzLRrGyFZVH2DrHA9U0dbtB6WPcpWMMtN/44W+X
 kEmNW1D69fz9IaFO2/r3MWZHlxcFgSmF0sB+F0wY4GbpmdQGNSkl4+7nplz9I3uJxnLil/n7
 26E5paDeJBiR5j0btgF3AySJ7xoSlZ7zDhcvCu7taT24fupPhY3DyGOPm3GOW7N9L1SMHbiA
 8MWo/BTjuwWRyZl/hn1cLlgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xu7ov1TfGGTxYz27Re+4kk8XGGetZ
 LS5Ob2Wx+L9tIrPFla/v2SxWrj7KZLFgv7XFnJtGFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWi+9bJjM58HmsmbeG0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNHj8IcrLB67
 bzaweXx8eovFo2/LKkaP9Vuusnh83iQXwBulZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqln
 aGwea2VkqqRvZ5OSmpNZllqkb5egl3Fx7lGmgvVCFdvWX2NrYOzn72Lk5JAQMJHYvOcPE4gt
 JLCUUeJJkxFEXEbi5LQGVghbWOLPtS62LkYuoJpPjBLPLu8ES7AJGEp0vYVIiAh0MkpM6/7I
 DuIwC0xmlni2+jrYWGGBAIlFR64zgtgsAqoSVy6vB4pzcPAK2EkcOqkOsUFeYvWGA8wgNidQ
 +PGlO2wQFxVKfDj/nXUCI98CRoZVjCKppcW56bnFRnrFibnFpXnpesn5uZsYgVG07djPLTsY
 u94FH2IU4GBU4uHd8HV9nBBrYllxZe4hRgkOZiUR3mU/NsQJ8aYkVlalFuXHF5XmpBYfYjQF
 umkis5Rocj4wwvNK4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTDu
 UKrVPM4bzCF1Rs89/+CqWlVf/+m3Nz0Uq9jHW7mCn9V2sj0Dq9CK5+f/xGmdtCs6dGH2izPP
 TOpb7qtK7ZjNFStx7MMcgbuFi2JdO1N81jyVul7o5Km09tfWf99qnjaJfW/rbVdf9W+C8Uc7
 n3l/7lz0F2UIXV9mu3ebqaqBdMv2pOSXD4qUWIozEg21mIuKEwEKUxAkuAIAAA==
X-CMS-MailID: 20200505084633eucas1p26a6a3f44c64955aadec834bed027e522
X-Msg-Generator: CA
X-RootMTR: 20200505084633eucas1p26a6a3f44c64955aadec834bed027e522
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084633eucas1p26a6a3f44c64955aadec834bed027e522
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084633eucas1p26a6a3f44c64955aadec834bed027e522@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Juergen Gross <jgross@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 16/25] xen: gntdev: fix common struct
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
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMveGVuL2dudGRldi1kbWFi
dWYuYyB8IDcgKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3hlbi9nbnRkZXYtZG1hYnVmLmMgYi9kcml2
ZXJzL3hlbi9nbnRkZXYtZG1hYnVmLmMKaW5kZXggNzVkM2JiOS4uNGIyMjc4NSAxMDA2NDQKLS0t
IGEvZHJpdmVycy94ZW4vZ250ZGV2LWRtYWJ1Zi5jCisrKyBiL2RyaXZlcnMveGVuL2dudGRldi1k
bWFidWYuYwpAQCAtMjQ3LDggKzI0Nyw3IEBAIHN0YXRpYyB2b2lkIGRtYWJ1Zl9leHBfb3BzX2Rl
dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZiwKIAogCQlpZiAoc2d0KSB7CiAJCQlpZiAoZ250
ZGV2X2RtYWJ1Zl9hdHRhY2gtPmRpciAhPSBETUFfTk9ORSkKLQkJCQlkbWFfdW5tYXBfc2dfYXR0
cnMoYXR0YWNoLT5kZXYsIHNndC0+c2dsLAotCQkJCQkJICAgc2d0LT5uZW50cywKKwkJCQlkbWFf
dW5tYXBfc2d0YWJsZV9hdHRycyhhdHRhY2gtPmRldiwgc2d0LAogCQkJCQkJICAgZ250ZGV2X2Rt
YWJ1Zl9hdHRhY2gtPmRpciwKIAkJCQkJCSAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOwogCQkJ
c2dfZnJlZV90YWJsZShzZ3QpOwpAQCAtMjg4LDcgKzI4Nyw3IEBAIHN0YXRpYyB2b2lkIGRtYWJ1
Zl9leHBfb3BzX2RldGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZiwKIAlzZ3QgPSBkbWFidWZf
cGFnZXNfdG9fc2d0KGdudGRldl9kbWFidWYtPnBhZ2VzLAogCQkJCSAgZ250ZGV2X2RtYWJ1Zi0+
bnJfcGFnZXMpOwogCWlmICghSVNfRVJSKHNndCkpIHsKLQkJaWYgKCFkbWFfbWFwX3NnX2F0dHJz
KGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyLAorCQlpZiAoZG1hX21hcF9z
Z3RhYmxlX2F0dHJzKGF0dGFjaC0+ZGV2LCBzZ3QsIGRpciwKIAkJCQkgICAgICBETUFfQVRUUl9T
S0lQX0NQVV9TWU5DKSkgewogCQkJc2dfZnJlZV90YWJsZShzZ3QpOwogCQkJa2ZyZWUoc2d0KTsK
QEAgLTYyNSw3ICs2MjQsNyBAQCBzdGF0aWMgc3RydWN0IGdudGRldl9kbWFidWYgKmRtYWJ1Zl9p
bXBfYWxsb2Nfc3RvcmFnZShpbnQgY291bnQpCiAKIAkvKiBOb3cgY29udmVydCBzZ3QgdG8gYXJy
YXkgb2YgcGFnZXMgYW5kIGNoZWNrIGZvciBwYWdlIHZhbGlkaXR5LiAqLwogCWkgPSAwOwotCWZv
cl9lYWNoX3NnX3BhZ2Uoc2d0LT5zZ2wsICZzZ19pdGVyLCBzZ3QtPm5lbnRzLCAwKSB7CisJZm9y
X2VhY2hfc2dfcGFnZShzZ3QtPnNnbCwgJnNnX2l0ZXIsIHNndC0+b3JpZ19uZW50cywgMCkgewog
CQlzdHJ1Y3QgcGFnZSAqcGFnZSA9IHNnX3BhZ2VfaXRlcl9wYWdlKCZzZ19pdGVyKTsKIAkJLyoK
IAkJICogQ2hlY2sgaWYgcGFnZSBpcyB2YWxpZDogdGhpcyBjYW4gaGFwcGVuIGlmIHdlIGFyZSBn
aXZlbgotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==

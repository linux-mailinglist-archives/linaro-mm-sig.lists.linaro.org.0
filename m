Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7412C1B6D70
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:46:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9932F619C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:46:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7D260619D7; Fri, 24 Apr 2020 05:46:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B99FE6650F;
	Fri, 24 Apr 2020 05:29:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 39B8066635
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2C8966663B; Wed,  8 Apr 2020 12:01:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id A0AD166635
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:00:54 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Nj-0005ML-NB; Wed, 08 Apr 2020 12:00:37 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Date: Wed,  8 Apr 2020 13:59:16 +0200
Message-Id: <20200408115926.1467567-19-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH 18/28] mm: enforce that vmap can't map pages
	executable
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VG8gaGVscCBlbmZvcmNpbmcgdGhlIFdeWCBwcm90ZWN0aW9uIGRvbid0IGFsbG93IHJlbWFwcGlu
ZyBleGlzdGluZwpwYWdlcyBhcyBleGVjdXRhYmxlLgoKQmFzZWQgb24gcGF0Y2ggZnJvbSBQZXRl
ciBaaWpsc3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0
b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Ci0tLQogYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0YWJs
ZV90eXBlcy5oIHwgNiArKysrKysKIGluY2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS5oICAgICAg
ICB8IDQgKysrKwogbW0vdm1hbGxvYy5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQog
MyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0YWJsZV90eXBlcy5oIGIvYXJjaC94ODYvaW5j
bHVkZS9hc20vcGd0YWJsZV90eXBlcy5oCmluZGV4IDk0Nzg2N2YxMTJlYS4uMmU3YzQ0MmNjNjE4
IDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlX3R5cGVzLmgKKysrIGIv
YXJjaC94ODYvaW5jbHVkZS9hc20vcGd0YWJsZV90eXBlcy5oCkBAIC0yODIsNiArMjgyLDEyIEBA
IHR5cGVkZWYgc3RydWN0IHBncHJvdCB7IHBncHJvdHZhbF90IHBncHJvdDsgfSBwZ3Byb3RfdDsK
IAogdHlwZWRlZiBzdHJ1Y3QgeyBwZ2R2YWxfdCBwZ2Q7IH0gcGdkX3Q7CiAKK3N0YXRpYyBpbmxp
bmUgcGdwcm90X3QgcGdwcm90X254KHBncHJvdF90IHByb3QpCit7CisJcmV0dXJuIF9fcGdwcm90
KHBncHJvdF92YWwocHJvdCkgfCBfUEFHRV9OWCk7Cit9CisjZGVmaW5lIHBncHJvdF9ueCBwZ3By
b3RfbngKKwogI2lmZGVmIENPTkZJR19YODZfUEFFCiAKIC8qCmRpZmYgLS1naXQgYS9pbmNsdWRl
L2FzbS1nZW5lcmljL3BndGFibGUuaCBiL2luY2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS5oCmlu
ZGV4IDMyOWI4YzhjYTcwMy4uOGM1ZjljMjk2OThiIDEwMDY0NAotLS0gYS9pbmNsdWRlL2FzbS1n
ZW5lcmljL3BndGFibGUuaAorKysgYi9pbmNsdWRlL2FzbS1nZW5lcmljL3BndGFibGUuaApAQCAt
NDkxLDYgKzQ5MSwxMCBAQCBzdGF0aWMgaW5saW5lIGludCBhcmNoX3VubWFwX29uZShzdHJ1Y3Qg
bW1fc3RydWN0ICptbSwKICNkZWZpbmUgZmx1c2hfdGxiX2ZpeF9zcHVyaW91c19mYXVsdCh2bWEs
IGFkZHJlc3MpIGZsdXNoX3RsYl9wYWdlKHZtYSwgYWRkcmVzcykKICNlbmRpZgogCisjaWZuZGVm
IHBncHJvdF9ueAorI2RlZmluZSBwZ3Byb3RfbngocHJvdCkJKHByb3QpCisjZW5kaWYKKwogI2lm
bmRlZiBwZ3Byb3Rfbm9uY2FjaGVkCiAjZGVmaW5lIHBncHJvdF9ub25jYWNoZWQocHJvdCkJKHBy
b3QpCiAjZW5kaWYKZGlmZiAtLWdpdCBhL21tL3ZtYWxsb2MuYyBiL21tL3ZtYWxsb2MuYwppbmRl
eCA3MzU2YjNmMDdiZDguLjMzNGM3NTI1MWRkYiAxMDA2NDQKLS0tIGEvbW0vdm1hbGxvYy5jCisr
KyBiL21tL3ZtYWxsb2MuYwpAQCAtMjM5MCw3ICsyMzkwLDcgQEAgdm9pZCAqdm1hcChzdHJ1Y3Qg
cGFnZSAqKnBhZ2VzLCB1bnNpZ25lZCBpbnQgY291bnQsCiAJaWYgKCFhcmVhKQogCQlyZXR1cm4g
TlVMTDsKIAotCWlmIChtYXBfa2VybmVsX3JhbmdlKCh1bnNpZ25lZCBsb25nKWFyZWEtPmFkZHIs
IHNpemUsIHByb3QsCisJaWYgKG1hcF9rZXJuZWxfcmFuZ2UoKHVuc2lnbmVkIGxvbmcpYXJlYS0+
YWRkciwgc2l6ZSwgcGdwcm90X254KHByb3QpLAogCQkJcGFnZXMpIDwgMCkgewogCQl2dW5tYXAo
YXJlYS0+YWRkcik7CiAJCXJldHVybiBOVUxMOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

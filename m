Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D61E91B6DF0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:16:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06F4A61887
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:16:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F0160619CF; Fri, 24 Apr 2020 06:16:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B3C5619BF;
	Fri, 24 Apr 2020 05:30:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0B1D966048
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F05CD6606F; Tue, 14 Apr 2020 13:15:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 29EE066048
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:15:25 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLOy-0007Ax-40; Tue, 14 Apr 2020 13:14:56 +0000
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
Date: Tue, 14 Apr 2020 15:13:38 +0200
Message-Id: <20200414131348.444715-20-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200414131348.444715-1-hch@lst.de>
References: <20200414131348.444715-1-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 19/29] mm: enforce that vmap can't map pages
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
ZyBleGlzdGluZwpwYWdlcyBhcyBleGVjdXRhYmxlLgoKeDg2IGJpdHMgZnJvbSBQZXRlciBaaWps
c3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+LAphcm02NCBiaXRzIGZyb20gTWFyayBSdXRsYW5k
IDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGggSGVsbHdp
ZyA8aGNoQGxzdC5kZT4KQWNrZWQtYnk6IFBldGVyIFppamxzdHJhIChJbnRlbCkgPHBldGVyekBp
bmZyYWRlYWQub3JnPgotLS0KIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJsZS5oICAgICB8
IDMgKysrCiBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlX3R5cGVzLmggfCA2ICsrKysrKwog
aW5jbHVkZS9hc20tZ2VuZXJpYy9wZ3RhYmxlLmggICAgICAgIHwgNCArKysrCiBtbS92bWFsbG9j
LmMgICAgICAgICAgICAgICAgICAgICAgICAgfCAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDE0IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2luY2x1
ZGUvYXNtL3BndGFibGUuaCBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJsZS5oCmluZGV4
IDUzOGM4NWU2MmY4Ni4uNDcwOTUyMTZkNmE4IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2luY2x1
ZGUvYXNtL3BndGFibGUuaAorKysgYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BndGFibGUuaApA
QCAtNDA3LDYgKzQwNyw5IEBAIHN0YXRpYyBpbmxpbmUgcG1kX3QgcG1kX21rZGV2bWFwKHBtZF90
IHBtZCkKICNkZWZpbmUgX19wZ3Byb3RfbW9kaWZ5KHByb3QsbWFzayxiaXRzKSBcCiAJX19wZ3By
b3QoKHBncHJvdF92YWwocHJvdCkgJiB+KG1hc2spKSB8IChiaXRzKSkKIAorI2RlZmluZSBwZ3By
b3RfbngocHJvdCkgXAorCV9fcGdwcm90X21vZGlmeShwcm90LCAwLCBQVEVfUFhOKQorCiAvKgog
ICogTWFyayB0aGUgcHJvdCB2YWx1ZSBhcyB1bmNhY2hlYWJsZSBhbmQgdW5idWZmZXJhYmxlLgog
ICovCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlX3R5cGVzLmggYi9h
cmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlX3R5cGVzLmgKaW5kZXggOTQ3ODY3ZjExMmVhLi4y
ZTdjNDQyY2M2MTggMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2luY2x1ZGUvYXNtL3BndGFibGVfdHlw
ZXMuaAorKysgYi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlX3R5cGVzLmgKQEAgLTI4Miw2
ICsyODIsMTIgQEAgdHlwZWRlZiBzdHJ1Y3QgcGdwcm90IHsgcGdwcm90dmFsX3QgcGdwcm90OyB9
IHBncHJvdF90OwogCiB0eXBlZGVmIHN0cnVjdCB7IHBnZHZhbF90IHBnZDsgfSBwZ2RfdDsKIAor
c3RhdGljIGlubGluZSBwZ3Byb3RfdCBwZ3Byb3RfbngocGdwcm90X3QgcHJvdCkKK3sKKwlyZXR1
cm4gX19wZ3Byb3QocGdwcm90X3ZhbChwcm90KSB8IF9QQUdFX05YKTsKK30KKyNkZWZpbmUgcGdw
cm90X254IHBncHJvdF9ueAorCiAjaWZkZWYgQ09ORklHX1g4Nl9QQUUKIAogLyoKZGlmZiAtLWdp
dCBhL2luY2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS5oIGIvaW5jbHVkZS9hc20tZ2VuZXJpYy9w
Z3RhYmxlLmgKaW5kZXggMzI5YjhjOGNhNzAzLi44YzVmOWMyOTY5OGIgMTAwNjQ0Ci0tLSBhL2lu
Y2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS5oCisrKyBiL2luY2x1ZGUvYXNtLWdlbmVyaWMvcGd0
YWJsZS5oCkBAIC00OTEsNiArNDkxLDEwIEBAIHN0YXRpYyBpbmxpbmUgaW50IGFyY2hfdW5tYXBf
b25lKHN0cnVjdCBtbV9zdHJ1Y3QgKm1tLAogI2RlZmluZSBmbHVzaF90bGJfZml4X3NwdXJpb3Vz
X2ZhdWx0KHZtYSwgYWRkcmVzcykgZmx1c2hfdGxiX3BhZ2Uodm1hLCBhZGRyZXNzKQogI2VuZGlm
CiAKKyNpZm5kZWYgcGdwcm90X254CisjZGVmaW5lIHBncHJvdF9ueChwcm90KQkocHJvdCkKKyNl
bmRpZgorCiAjaWZuZGVmIHBncHJvdF9ub25jYWNoZWQKICNkZWZpbmUgcGdwcm90X25vbmNhY2hl
ZChwcm90KQkocHJvdCkKICNlbmRpZgpkaWZmIC0tZ2l0IGEvbW0vdm1hbGxvYy5jIGIvbW0vdm1h
bGxvYy5jCmluZGV4IDczNTZiM2YwN2JkOC4uMzM0Yzc1MjUxZGRiIDEwMDY0NAotLS0gYS9tbS92
bWFsbG9jLmMKKysrIGIvbW0vdm1hbGxvYy5jCkBAIC0yMzkwLDcgKzIzOTAsNyBAQCB2b2lkICp2
bWFwKHN0cnVjdCBwYWdlICoqcGFnZXMsIHVuc2lnbmVkIGludCBjb3VudCwKIAlpZiAoIWFyZWEp
CiAJCXJldHVybiBOVUxMOwogCi0JaWYgKG1hcF9rZXJuZWxfcmFuZ2UoKHVuc2lnbmVkIGxvbmcp
YXJlYS0+YWRkciwgc2l6ZSwgcHJvdCwKKwlpZiAobWFwX2tlcm5lbF9yYW5nZSgodW5zaWduZWQg
bG9uZylhcmVhLT5hZGRyLCBzaXplLCBwZ3Byb3RfbngocHJvdCksCiAJCQlwYWdlcykgPCAwKSB7
CiAJCXZ1bm1hcChhcmVhLT5hZGRyKTsKIAkJcmV0dXJuIE5VTEw7Ci0tIAoyLjI1LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

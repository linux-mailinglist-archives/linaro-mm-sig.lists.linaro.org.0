Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA001B6D68
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:42:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BDAF2619D6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:42:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B076B65FC6; Fri, 24 Apr 2020 05:42:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1CA0664DE;
	Fri, 24 Apr 2020 05:29:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7EE3766614
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:01:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 72D216661F; Wed,  8 Apr 2020 12:01:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id CD6E0666D0
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:00:43 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9NV-0004ke-IF; Wed, 08 Apr 2020 12:00:22 +0000
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
Date: Wed,  8 Apr 2020 13:59:12 +0200
Message-Id: <20200408115926.1467567-15-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 14/28] mm: don't return the number of pages
	from map_kernel_range{, _noflush}
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

Tm9uZSBvZiB0aGUgY2FsbGVycyBuZWVkcyB0aGUgbnVtYmVyIG9mIHBhZ2VzLCBhbmQgYSAwIC8g
LWVycm5vIHJldHVybgp2YWx1ZSBpcyBhIGxvdCBtb3JlIGludHVpdGl2ZS4KClNpZ25lZC1vZmYt
Ynk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgotLS0KIG1tL3ZtYWxsb2MuYyB8IDQg
KystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9tbS92bWFsbG9jLmMgYi9tbS92bWFsbG9jLmMKaW5kZXggYTNkODEwZGVmNTY3
Li5jYThkYzVkNDI1ODAgMTAwNjQ0Ci0tLSBhL21tL3ZtYWxsb2MuYworKysgYi9tbS92bWFsbG9j
LmMKQEAgLTI0OSw3ICsyNDksNyBAQCBzdGF0aWMgaW50IHZtYXBfcDRkX3JhbmdlKHBnZF90ICpw
Z2QsIHVuc2lnbmVkIGxvbmcgYWRkciwKICAqIGZ1bmN0aW9uLgogICoKICAqIFJFVFVSTlM6Ci0g
KiBUaGUgbnVtYmVyIG9mIHBhZ2VzIG1hcHBlZCBvbiBzdWNjZXNzLCAtZXJybm8gb24gZmFpbHVy
ZS4KKyAqIDAgb24gc3VjY2VzcywgLWVycm5vIG9uIGZhaWx1cmUuCiAgKi8KIGludCBtYXBfa2Vy
bmVsX3JhbmdlX25vZmx1c2godW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25lZCBsb25nIHNpemUs
CiAJCQkgICAgIHBncHJvdF90IHByb3QsIHN0cnVjdCBwYWdlICoqcGFnZXMpCkBAIC0yNjksNyAr
MjY5LDcgQEAgaW50IG1hcF9rZXJuZWxfcmFuZ2Vfbm9mbHVzaCh1bnNpZ25lZCBsb25nIGFkZHIs
IHVuc2lnbmVkIGxvbmcgc2l6ZSwKIAkJCXJldHVybiBlcnI7CiAJfSB3aGlsZSAocGdkKyssIGFk
ZHIgPSBuZXh0LCBhZGRyICE9IGVuZCk7CiAKLQlyZXR1cm4gbnI7CisJcmV0dXJuIDA7CiB9CiAK
IHN0YXRpYyBpbnQgbWFwX2tlcm5lbF9yYW5nZSh1bnNpZ25lZCBsb25nIHN0YXJ0LCB1bnNpZ25l
ZCBsb25nIHNpemUsCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==

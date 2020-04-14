Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C27F91B6DA4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:57:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7C32619C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:57:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D87CC619F1; Fri, 24 Apr 2020 05:57:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 03F87665AA;
	Fri, 24 Apr 2020 05:30:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 759CF616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 67BD866047; Tue, 14 Apr 2020 13:14:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id C90D6616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:19 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLNu-0006Fe-Le; Tue, 14 Apr 2020 13:13:54 +0000
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
Date: Tue, 14 Apr 2020 15:13:19 +0200
Message-Id: <20200414131348.444715-1-hch@lst.de>
X-Mailer: git-send-email 2.25.1
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
Subject: [Linaro-mm-sig] decruft the vmalloc API v2
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

SGkgYWxsLAoKUGV0ZXIgbm90aWNlZCB0aGF0IHdpdGggc29tZSBkdW1iIGx1Y2sgeW91IGNhbiB0
b2FzdCB0aGUga2VybmVsIGFkZHJlc3MKc3BhY2Ugd2l0aCBleHBvcnRlZCB2bWFsbG9jIHN5bWJv
bHMuCgpJIHVzZWQgdGhpcyBhcyBhbiBvcHBvcnR1bml0eSB0byBkZWNydWZ0IHRoZSB2bWFsbG9j
LmMgQVBJIGFuZCBtYWtlIGl0Cm11Y2ggbW9yZSBzeXN0ZW1hdGljLiAgVGhpcyBhbHNvIHJlbW92
ZXMgYW55IGNoYW5jZSB0byBjcmVhdGUgdm1hbGxvYwptYXBwaW5ncyBvdXRzaWRlIHRoZSBkZXNp
Z25hdGVkIGFyZWFzIG9yIHVzaW5nIGV4ZWN1dGFibGUgcGVybWlzc2lvbnMKZnJvbSBtb2R1bGVz
LiAgQmVzaWRlcyB0aGF0IGl0IHJlbW92ZXMgbW9yZSB0aGFuIDMwMCBsaW5lcyBvZiBjb2RlLgoK
QSBnaXQgdHJlZSBpcyBhbHNvIGF2YWlsYWJsZSBoZXJlOgoKICAgIGdpdDovL2dpdC5pbmZyYWRl
YWQub3JnL3VzZXJzL2hjaC9taXNjLmdpdCBzYW5pdGl6ZS12bWFsbG9jLWFwaS4yCgpHaXR3ZWI6
CgogICAgaHR0cDovL2dpdC5pbmZyYWRlYWQub3JnL3VzZXJzL2hjaC9taXNjLmdpdC9zaG9ydGxv
Zy9yZWZzL2hlYWRzL3Nhbml0aXplLXZtYWxsb2MtYXBpLjIKCkNoYW5nZXMgc2luY2UgdjE6CiAt
IGltcGxlbWVudCBwZ3Byb3RfbnggZm9yIGFybTY0IChNYXJrIFJ1dGxhbmQpCiAtIGZpeCBhIHBh
dGNoIGRlc2NyaXB0aW9uCiAtIHByb3Blcmx5IHBhc3MgcGdwcm90IHRvIHZtYXAgaW4gaW9uCiAt
IGFkZCBhIG5ldyBwYXRjaCB0byBmaXggdm1hcCgpIEFQSSBtaXN1c2UKIC0gZml4IGEgdm1hcCBh
cmd1bWVudCBpbiB4ODYKIC0gdHdvIG1vcmUgdm1hbGxvYyBjbGVhbnVwcwogLSBjbGVhbnVwIHVz
ZSBvZiB0aGUgdW5tYXBfa2VybmVsX3JhbmdlIEFQSQogLSByZW5hbWUgaW9yZW1hcF9wYmggdG8g
aW9yZW1hcF9waGIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK

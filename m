Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E78571B6DA5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:58:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 198D7619EA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:58:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 05880619F1; Fri, 24 Apr 2020 05:58:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 628D8665AF;
	Fri, 24 Apr 2020 05:30:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2051F616DC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 12B7061999; Tue, 14 Apr 2020 13:14:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 2A64461997
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 13:14:20 +0000 (UTC)
Received: from [2001:4bb8:180:384b:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLO0-0006Fi-N0; Tue, 14 Apr 2020 13:13:57 +0000
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
Date: Tue, 14 Apr 2020 15:13:20 +0200
Message-Id: <20200414131348.444715-2-hch@lst.de>
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
 Michael Kelley <mikelley@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH 01/29] x86/hyperv: use vmalloc_exec for the
	hypercall page
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

VXNlIHRoZSBkZXNpZ25hdGVkIGhlbHBlciBmb3IgYWxsb2NhdGluZyBleGVjdXRhYmxlIGtlcm5l
bCBtZW1vcnksIGFuZApyZW1vdmUgdGhlIG5vdyB1bnVzZWQgUEFHRV9LRVJORUxfUlggZGVmaW5l
LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+ClJldmlld2Vk
LWJ5OiBNaWNoYWVsIEtlbGxleSA8bWlrZWxsZXlAbWljcm9zb2Z0LmNvbT4KQWNrZWQtYnk6IFdl
aSBMaXUgPHdlaS5saXVAa2VybmVsLm9yZz4KQWNrZWQtYnk6IFBldGVyIFppamxzdHJhIChJbnRl
bCkgPHBldGVyekBpbmZyYWRlYWQub3JnPgotLS0KIGFyY2gveDg2L2h5cGVydi9odl9pbml0LmMg
ICAgICAgICAgICB8IDIgKy0KIGFyY2gveDg2L2luY2x1ZGUvYXNtL3BndGFibGVfdHlwZXMuaCB8
IDIgLS0KIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvYXJjaC94ODYvaHlwZXJ2L2h2X2luaXQuYyBiL2FyY2gveDg2L2h5cGVydi9o
dl9pbml0LmMKaW5kZXggYjBkYTUzMjBiY2ZmLi41YTRiMzYzYmE2N2IgMTAwNjQ0Ci0tLSBhL2Fy
Y2gveDg2L2h5cGVydi9odl9pbml0LmMKKysrIGIvYXJjaC94ODYvaHlwZXJ2L2h2X2luaXQuYwpA
QCAtMzU1LDcgKzM1NSw3IEBAIHZvaWQgX19pbml0IGh5cGVydl9pbml0KHZvaWQpCiAJZ3Vlc3Rf
aWQgPSBnZW5lcmF0ZV9ndWVzdF9pZCgwLCBMSU5VWF9WRVJTSU9OX0NPREUsIDApOwogCXdybXNy
bChIVl9YNjRfTVNSX0dVRVNUX09TX0lELCBndWVzdF9pZCk7CiAKLQlodl9oeXBlcmNhbGxfcGcg
ID0gX192bWFsbG9jKFBBR0VfU0laRSwgR0ZQX0tFUk5FTCwgUEFHRV9LRVJORUxfUlgpOworCWh2
X2h5cGVyY2FsbF9wZyA9IHZtYWxsb2NfZXhlYyhQQUdFX1NJWkUpOwogCWlmIChodl9oeXBlcmNh
bGxfcGcgPT0gTlVMTCkgewogCQl3cm1zcmwoSFZfWDY0X01TUl9HVUVTVF9PU19JRCwgMCk7CiAJ
CWdvdG8gcmVtb3ZlX2NwdWhwX3N0YXRlOwpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvaW5jbHVkZS9h
c20vcGd0YWJsZV90eXBlcy5oIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0YWJsZV90eXBlcy5o
CmluZGV4IGI2NjA2ZmU2Y2ZkZi4uOTQ3ODY3ZjExMmVhIDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9p
bmNsdWRlL2FzbS9wZ3RhYmxlX3R5cGVzLmgKKysrIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vcGd0
YWJsZV90eXBlcy5oCkBAIC0xOTQsNyArMTk0LDYgQEAgZW51bSBwYWdlX2NhY2hlX21vZGUgewog
I2RlZmluZSBfUEFHRV9UQUJMRV9OT0VOQwkgKF9fUFB8X19SV3xfVVNSfF9fX0F8ICAgMHxfX19E
fCAgIDB8ICAgMCkKICNkZWZpbmUgX1BBR0VfVEFCTEUJCSAoX19QUHxfX1JXfF9VU1J8X19fQXwg
ICAwfF9fX0R8ICAgMHwgICAwfCBfRU5DKQogI2RlZmluZSBfX1BBR0VfS0VSTkVMX1JPCSAoX19Q
UHwgICAwfCAgIDB8X19fQXxfX05YfF9fX0R8ICAgMHxfX19HKQotI2RlZmluZSBfX1BBR0VfS0VS
TkVMX1JYCSAoX19QUHwgICAwfCAgIDB8X19fQXwgICAwfF9fX0R8ICAgMHxfX19HKQogI2RlZmlu
ZSBfX1BBR0VfS0VSTkVMX05PQ0FDSEUJIChfX1BQfF9fUld8ICAgMHxfX19BfF9fTlh8X19fRHwg
ICAwfF9fX0d8IF9fTkMpCiAjZGVmaW5lIF9fUEFHRV9LRVJORUxfVlZBUgkgKF9fUFB8ICAgMHxf
VVNSfF9fX0F8X19OWHxfX19EfCAgIDB8X19fRykKICNkZWZpbmUgX19QQUdFX0tFUk5FTF9MQVJH
RQkgKF9fUFB8X19SV3wgICAwfF9fX0F8X19OWHxfX19EfF9QU0V8X19fRykKQEAgLTIyMCw3ICsy
MTksNiBAQCBlbnVtIHBhZ2VfY2FjaGVfbW9kZSB7CiAjZGVmaW5lIFBBR0VfS0VSTkVMX1JPCQlf
X3BncHJvdF9tYXNrKF9fUEFHRV9LRVJORUxfUk8gICAgICAgICB8IF9FTkMpCiAjZGVmaW5lIFBB
R0VfS0VSTkVMX0VYRUMJX19wZ3Byb3RfbWFzayhfX1BBR0VfS0VSTkVMX0VYRUMgICAgICAgfCBf
RU5DKQogI2RlZmluZSBQQUdFX0tFUk5FTF9FWEVDX05PRU5DCV9fcGdwcm90X21hc2soX19QQUdF
X0tFUk5FTF9FWEVDICAgICAgIHwgICAgMCkKLSNkZWZpbmUgUEFHRV9LRVJORUxfUlgJCV9fcGdw
cm90X21hc2soX19QQUdFX0tFUk5FTF9SWCAgICAgICAgIHwgX0VOQykKICNkZWZpbmUgUEFHRV9L
RVJORUxfTk9DQUNIRQlfX3BncHJvdF9tYXNrKF9fUEFHRV9LRVJORUxfTk9DQUNIRSAgICB8IF9F
TkMpCiAjZGVmaW5lIFBBR0VfS0VSTkVMX0xBUkdFCV9fcGdwcm90X21hc2soX19QQUdFX0tFUk5F
TF9MQVJHRSAgICAgIHwgX0VOQykKICNkZWZpbmUgUEFHRV9LRVJORUxfTEFSR0VfRVhFQwlfX3Bn
cHJvdF9tYXNrKF9fUEFHRV9LRVJORUxfTEFSR0VfRVhFQyB8IF9FTkMpCi0tIAoyLjI1LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

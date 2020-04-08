Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B66D71B6D36
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 07:33:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C75A1619D7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 05:33:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B2F83622F4; Fri, 24 Apr 2020 05:33:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62D4F6601E;
	Fri, 24 Apr 2020 05:29:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 01168665FF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 11:59:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E535166611; Wed,  8 Apr 2020 11:59:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by lists.linaro.org (Postfix) with ESMTPS id 58D3566600
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 11:59:55 +0000 (UTC)
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Mi-0001ZS-2Q; Wed, 08 Apr 2020 11:59:32 +0000
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
Date: Wed,  8 Apr 2020 13:58:59 +0200
Message-Id: <20200408115926.1467567-2-hch@lst.de>
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
Subject: [Linaro-mm-sig] [PATCH 01/28] x86/hyperv: use vmalloc_exec for the
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
LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Ci0tLQogYXJj
aC94ODYvaHlwZXJ2L2h2X2luaXQuYyAgICAgICAgICAgIHwgMiArLQogYXJjaC94ODYvaW5jbHVk
ZS9hc20vcGd0YWJsZV90eXBlcy5oIHwgMiAtLQogMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9oeXBlcnYvaHZfaW5p
dC5jIGIvYXJjaC94ODYvaHlwZXJ2L2h2X2luaXQuYwppbmRleCBiMGRhNTMyMGJjZmYuLjVhNGIz
NjNiYTY3YiAxMDA2NDQKLS0tIGEvYXJjaC94ODYvaHlwZXJ2L2h2X2luaXQuYworKysgYi9hcmNo
L3g4Ni9oeXBlcnYvaHZfaW5pdC5jCkBAIC0zNTUsNyArMzU1LDcgQEAgdm9pZCBfX2luaXQgaHlw
ZXJ2X2luaXQodm9pZCkKIAlndWVzdF9pZCA9IGdlbmVyYXRlX2d1ZXN0X2lkKDAsIExJTlVYX1ZF
UlNJT05fQ09ERSwgMCk7CiAJd3Jtc3JsKEhWX1g2NF9NU1JfR1VFU1RfT1NfSUQsIGd1ZXN0X2lk
KTsKIAotCWh2X2h5cGVyY2FsbF9wZyAgPSBfX3ZtYWxsb2MoUEFHRV9TSVpFLCBHRlBfS0VSTkVM
LCBQQUdFX0tFUk5FTF9SWCk7CisJaHZfaHlwZXJjYWxsX3BnID0gdm1hbGxvY19leGVjKFBBR0Vf
U0laRSk7CiAJaWYgKGh2X2h5cGVyY2FsbF9wZyA9PSBOVUxMKSB7CiAJCXdybXNybChIVl9YNjRf
TVNSX0dVRVNUX09TX0lELCAwKTsKIAkJZ290byByZW1vdmVfY3B1aHBfc3RhdGU7CmRpZmYgLS1n
aXQgYS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlX3R5cGVzLmggYi9hcmNoL3g4Ni9pbmNs
dWRlL2FzbS9wZ3RhYmxlX3R5cGVzLmgKaW5kZXggYjY2MDZmZTZjZmRmLi45NDc4NjdmMTEyZWEg
MTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2luY2x1ZGUvYXNtL3BndGFibGVfdHlwZXMuaAorKysgYi9h
cmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlX3R5cGVzLmgKQEAgLTE5NCw3ICsxOTQsNiBAQCBl
bnVtIHBhZ2VfY2FjaGVfbW9kZSB7CiAjZGVmaW5lIF9QQUdFX1RBQkxFX05PRU5DCSAoX19QUHxf
X1JXfF9VU1J8X19fQXwgICAwfF9fX0R8ICAgMHwgICAwKQogI2RlZmluZSBfUEFHRV9UQUJMRQkJ
IChfX1BQfF9fUld8X1VTUnxfX19BfCAgIDB8X19fRHwgICAwfCAgIDB8IF9FTkMpCiAjZGVmaW5l
IF9fUEFHRV9LRVJORUxfUk8JIChfX1BQfCAgIDB8ICAgMHxfX19BfF9fTlh8X19fRHwgICAwfF9f
X0cpCi0jZGVmaW5lIF9fUEFHRV9LRVJORUxfUlgJIChfX1BQfCAgIDB8ICAgMHxfX19BfCAgIDB8
X19fRHwgICAwfF9fX0cpCiAjZGVmaW5lIF9fUEFHRV9LRVJORUxfTk9DQUNIRQkgKF9fUFB8X19S
V3wgICAwfF9fX0F8X19OWHxfX19EfCAgIDB8X19fR3wgX19OQykKICNkZWZpbmUgX19QQUdFX0tF
Uk5FTF9WVkFSCSAoX19QUHwgICAwfF9VU1J8X19fQXxfX05YfF9fX0R8ICAgMHxfX19HKQogI2Rl
ZmluZSBfX1BBR0VfS0VSTkVMX0xBUkdFCSAoX19QUHxfX1JXfCAgIDB8X19fQXxfX05YfF9fX0R8
X1BTRXxfX19HKQpAQCAtMjIwLDcgKzIxOSw2IEBAIGVudW0gcGFnZV9jYWNoZV9tb2RlIHsKICNk
ZWZpbmUgUEFHRV9LRVJORUxfUk8JCV9fcGdwcm90X21hc2soX19QQUdFX0tFUk5FTF9STyAgICAg
ICAgIHwgX0VOQykKICNkZWZpbmUgUEFHRV9LRVJORUxfRVhFQwlfX3BncHJvdF9tYXNrKF9fUEFH
RV9LRVJORUxfRVhFQyAgICAgICB8IF9FTkMpCiAjZGVmaW5lIFBBR0VfS0VSTkVMX0VYRUNfTk9F
TkMJX19wZ3Byb3RfbWFzayhfX1BBR0VfS0VSTkVMX0VYRUMgICAgICAgfCAgICAwKQotI2RlZmlu
ZSBQQUdFX0tFUk5FTF9SWAkJX19wZ3Byb3RfbWFzayhfX1BBR0VfS0VSTkVMX1JYICAgICAgICAg
fCBfRU5DKQogI2RlZmluZSBQQUdFX0tFUk5FTF9OT0NBQ0hFCV9fcGdwcm90X21hc2soX19QQUdF
X0tFUk5FTF9OT0NBQ0hFICAgIHwgX0VOQykKICNkZWZpbmUgUEFHRV9LRVJORUxfTEFSR0UJX19w
Z3Byb3RfbWFzayhfX1BBR0VfS0VSTkVMX0xBUkdFICAgICAgfCBfRU5DKQogI2RlZmluZSBQQUdF
X0tFUk5FTF9MQVJHRV9FWEVDCV9fcGdwcm90X21hc2soX19QQUdFX0tFUk5FTF9MQVJHRV9FWEVD
IHwgX0VOQykKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK

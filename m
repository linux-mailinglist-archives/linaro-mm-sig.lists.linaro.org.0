Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 340CB340CA9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Mar 2021 19:15:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC56965F8D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Mar 2021 18:15:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DE4CF6604C; Thu, 18 Mar 2021 18:15:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C7C4617A2;
	Thu, 18 Mar 2021 18:15:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 24F566013A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Mar 2021 18:15:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 16DA4617A2; Thu, 18 Mar 2021 18:15:18 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by lists.linaro.org (Postfix) with ESMTPS id 01CE66013A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Mar 2021 18:15:16 +0000 (UTC)
Received: from [2601:1c0:6280:3f0::9757]
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lMxAm-003Kqs-Se; Thu, 18 Mar 2021 18:15:07 +0000
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, airlied@linux.ie,
 daniel@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com,
 chris@chris-wilson.co.uk, tvrtko.ursulin@intel.com,
 mika.kuoppala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org
References: <20210318101932.19894-1-unixbhaskar@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <027de4bd-cefc-0988-bd3b-b0bcc12d93b0@infradead.org>
Date: Thu, 18 Mar 2021 11:15:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210318101932.19894-1-unixbhaskar@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/i915/gt: A typo fix
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

T24gMy8xOC8yMSAzOjE5IEFNLCBCaGFza2FyIENob3dkaHVyeSB3cm90ZToKPiAKPiBzL2Jhcmll
cnMvYmFycmllcnMvCj4gCj4gU2lnbmVkLW9mZi1ieTogQmhhc2thciBDaG93ZGh1cnkgPHVuaXhi
aGFza2FyQGdtYWlsLmNvbT4KCkFja2VkLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFk
ZWFkLm9yZz4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5l
LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGlu
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwo+IGluZGV4IDAz
N2IwZTNjY2JlZC4uMjVmYzdmNDRmZWUwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF90aW1lbGluZS5jCj4gQEAgLTQzNSw3ICs0MzUsNyBAQCB2b2lkIGludGVsX3RpbWVsaW5l
X2V4aXQoc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCkKPiAgCXNwaW5fdW5sb2NrKCZ0aW1lbGlu
ZXMtPmxvY2spOwo+IAo+ICAJLyoKPiAtCSAqIFNpbmNlIHRoaXMgdGltZWxpbmUgaXMgaWRsZSwg
YWxsIGJhcmllcnMgdXBvbiB3aGljaCB3ZSB3ZXJlIHdhaXRpbmcKPiArCSAqIFNpbmNlIHRoaXMg
dGltZWxpbmUgaXMgaWRsZSwgYWxsIGJhcnJpZXJzIHVwb24gd2hpY2ggd2Ugd2VyZSB3YWl0aW5n
Cj4gIAkgKiBtdXN0IGFsc28gYmUgY29tcGxldGUgYW5kIHNvIHdlIGNhbiBkaXNjYXJkIHRoZSBs
YXN0IHVzZWQgYmFycmllcnMKPiAgCSAqIHdpdGhvdXQgbG9zcyBvZiBpbmZvcm1hdGlvbi4KPiAg
CSAqLwo+IC0tCj4gMi4yNi4yCj4gCgoKLS0gCn5SYW5keQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

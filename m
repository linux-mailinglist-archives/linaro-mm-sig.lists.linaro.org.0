Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 385B91BF8FF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Apr 2020 15:13:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5613C619D7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Apr 2020 13:13:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 454A2619F3; Thu, 30 Apr 2020 13:13:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2EF78619E9;
	Thu, 30 Apr 2020 13:13:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7C28D61957
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2020 13:13:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6B904619E9; Thu, 30 Apr 2020 13:13:05 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 1DC4361957
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2020 13:13:04 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id v4so7439109wme.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Apr 2020 06:13:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N8o0WCkgmNcRVLVFgbGXJgHA8SmIuPpmu2c2tbvo+tw=;
 b=LFMIM9EunB5QrpCyooCqDC+DkaWBgDfXofQ+QdI39kvHB2wKclT0Fj5chOZ7ob+IFN
 XT4hSCdgmXusL46Gm6ZxQpKF+7tP2UoUN7pyZAYWnsyun+huSKufwzOrn0PQUgptSGwc
 oHUvhxWgKS6RR5VJ9zfF9J7ozQ1DzvJZDj6NPsJjZFD2AKrsntlsZZuz+DmJFJriTG5J
 B8C5IzOrgXho5d9+YIxmhdsDL1+c5vXLNeJvABzDx1jr0BfWvpnUtFhuJxsyG5PsQWe/
 puht/mla07XQWjwrrhQFQcLTJbXLn3yhjANV4gxSq5I+G2zz5Zm8AMJr3d8Nmkow26YV
 XVsw==
X-Gm-Message-State: AGi0PuYGtVl6537feQwJXGRQK6Em8mxyBBhyfJmOoG5kAB1Q6HRUPT3E
 4/YMuOqWjavxCWgc8Jmm/YaDbhgY3VaGdkj2hIQ=
X-Google-Smtp-Source: APiQypLRoWdeYknVupE+6N8yAi1xDxWATm+stncb9njAtDCMiRIWkFBmlcq9r4s+xdnKcd1PEPCOx2mPQcXe0iWsqp8=
X-Received: by 2002:a7b:cc8e:: with SMTP id p14mr2914876wma.70.1588252383121; 
 Thu, 30 Apr 2020 06:13:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200430085318.114894-1-jian-hong@endlessm.com>
In-Reply-To: <20200430085318.114894-1-jian-hong@endlessm.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 30 Apr 2020 09:12:51 -0400
Message-ID: <CADnq5_MjWEj6UwNZnuz=s+w=Hru7Gyzn8_rWAEDMH16MQZOiDg@mail.gmail.com>
To: Jian-Hong Pan <jian-hong@endlessm.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 David Zhou <David1.Zhou@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>,
 =?UTF-8?B?TWFyZWsgT2zFocOhaw==?= <marek.olsak@amd.com>,
 "Tianci . Yin" <tianci.yin@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>,
 Linux Upstreaming Team <linux@endlessm.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] drm/radeon: drm/amdgpu: Disable
	[1002:6611] in radeon
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

T24gVGh1LCBBcHIgMzAsIDIwMjAgYXQgOTowOCBBTSBKaWFuLUhvbmcgUGFuIDxqaWFuLWhvbmdA
ZW5kbGVzc20uY29tPiB3cm90ZToKPgo+IFRoZSBBTUQvQVRJIE9sYW5kIFsxMDAyOjY2MTFdJ3Mg
SERNSSBvdXRwdXQgc3RhdHVzIGlzIG5vdCBzeW5jaHJvbm91cwo+IGFzIHNob3duIG9uIFVJIGFm
dGVyIGhvdCByZS1wbHVnIHRoZSBIRE1JIGNhYmxlLCBpZiBpdCBpcyByYWRlb24gaW4KPiB1c2Vk
LiBUaGUgYW1kZ3B1IG1vZHVsZSBkb2VzIG5vdCBoaXQgdGhpcyBpc3N1ZS4KPgo+IFRoaXMgcGF0
Y2ggZGlzYWJsZXMgWzEwMDI6NjYxMV0gaW4gcmFkZW9uIGFuZCBlbmFibGVzIGl0IGluIGFtZGdw
dS4KPgo+IEZpeGVzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2FtZC8tL2lz
c3Vlcy8xMTE3Cj4gU2lnbmVkLW9mZi1ieTogSmlhbi1Ib25nIFBhbiA8amlhbi1ob25nQGVuZGxl
c3NtLmNvbT4KCk5hY2suICBBbWRncHUgZG9lcyBub3QgaGF2ZSBzdXBwb3J0IGZvciBWQ0Ugb3Ig
VVZEIHlldCBzbyB5b3UgYXJlIGp1c3QKdHJhZGluZyBvbmUgaXNzdWUgZm9yIGFub3RoZXIuICBJ
dCB3b3VsZCBiZSBiZXR0ZXIgdG8gZmlndXJlIG91dCB3aHkKdGhlIGF1ZGlvIGlzIG5vdCB1cGRh
dGVkIHByb3Blcmx5IGluIHNvbWUgY2FzZXMuCgpBbGV4Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZHJ2LmMgfCAxMSArKysrKysrKysrKwo+ICBpbmNsdWRlL2Ry
bS9kcm1fcGNpaWRzLmggICAgICAgICAgICAgICAgfCAgMSAtCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kcnYuYwo+IGluZGV4IDhlYTg2ZmZkZWEwZC4uMWFkNmYxM2E1YmMwIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYwo+IEBAIC0xMDE3LDYgKzEw
MTcsMTUgQEAgTU9EVUxFX0RFVklDRV9UQUJMRShwY2ksIHBjaWlkbGlzdCk7Cj4KPiAgc3RhdGlj
IHN0cnVjdCBkcm1fZHJpdmVyIGttc19kcml2ZXI7Cj4KPiArc3RhdGljIHZvaWQgYW1kZ3B1X3Bj
aV9maXh1cChzdHJ1Y3QgcGNpX2RldiAqcGRldikKPiArewo+ICsjaWZkZWYgQ09ORklHX0RSTV9B
TURHUFVfU0kKPiArICAgICAgIC8qIFsxMDAyOjY2MTFdIGlzIGRpc2FibGVkIGluIHJhZGVvbiwg
c28gZW5hYmxlIHNpX3N1cHBvcnQgaW4gYW1kZ3B1LiAqLwo+ICsgICAgICAgaWYgKHBkZXYtPnZl
bmRvciA9PSBQQ0lfVkVORE9SX0lEX0FUSSAmJiBwZGV2LT5kZXZpY2UgPT0gMHg2NjExKQo+ICsg
ICAgICAgICAgICAgICBhbWRncHVfc2lfc3VwcG9ydCA9IDE7Cj4gKyNlbmRpZgo+ICt9Cj4gKwo+
ICBzdGF0aWMgaW50IGFtZGdwdV9wY2lfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQp
Cj4gIHsKPiBAQCAtMTAzNiw2ICsxMDQ1LDggQEAgc3RhdGljIGludCBhbWRncHVfcGNpX3Byb2Jl
KHN0cnVjdCBwY2lfZGV2ICpwZGV2LAo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsK
PiAgICAgICAgIH0KPgo+ICsgICAgICAgYW1kZ3B1X3BjaV9maXh1cChwZGV2KTsKPiArCj4gICNp
ZmRlZiBDT05GSUdfRFJNX0FNREdQVV9TSQo+ICAgICAgICAgaWYgKCFhbWRncHVfc2lfc3VwcG9y
dCkgewo+ICAgICAgICAgICAgICAgICBzd2l0Y2ggKGZsYWdzICYgQU1EX0FTSUNfTUFTSykgewo+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fcGNpaWRzLmggYi9pbmNsdWRlL2RybS9kcm1f
cGNpaWRzLmgKPiBpbmRleCBiN2U4OTljZTQ0ZjAuLjU3MzY4YTBmNWI4MiAxMDA2NDQKPiAtLS0g
YS9pbmNsdWRlL2RybS9kcm1fcGNpaWRzLmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1fcGNpaWRz
LmgKPiBAQCAtMTcxLDcgKzE3MSw2IEBACj4gICAgICAgICB7MHgxMDAyLCAweDY2MDcsIFBDSV9B
TllfSUQsIFBDSV9BTllfSUQsIDAsIDAsIENISVBfT0xBTkR8UkFERU9OX0lTX01PQklMSVRZfFJB
REVPTl9ORVdfTUVNTUFQfSwgXAo+ICAgICAgICAgezB4MTAwMiwgMHg2NjA4LCBQQ0lfQU5ZX0lE
LCBQQ0lfQU5ZX0lELCAwLCAwLCBDSElQX09MQU5EfFJBREVPTl9ORVdfTUVNTUFQfSwgXAo+ICAg
ICAgICAgezB4MTAwMiwgMHg2NjEwLCBQQ0lfQU5ZX0lELCBQQ0lfQU5ZX0lELCAwLCAwLCBDSElQ
X09MQU5EfFJBREVPTl9ORVdfTUVNTUFQfSwgXAo+IC0gICAgICAgezB4MTAwMiwgMHg2NjExLCBQ
Q0lfQU5ZX0lELCBQQ0lfQU5ZX0lELCAwLCAwLCBDSElQX09MQU5EfFJBREVPTl9ORVdfTUVNTUFQ
fSwgXAo+ICAgICAgICAgezB4MTAwMiwgMHg2NjEzLCBQQ0lfQU5ZX0lELCBQQ0lfQU5ZX0lELCAw
LCAwLCBDSElQX09MQU5EfFJBREVPTl9ORVdfTUVNTUFQfSwgXAo+ICAgICAgICAgezB4MTAwMiwg
MHg2NjE3LCBQQ0lfQU5ZX0lELCBQQ0lfQU5ZX0lELCAwLCAwLCBDSElQX09MQU5EfFJBREVPTl9J
U19NT0JJTElUWXxSQURFT05fTkVXX01FTU1BUH0sIFwKPiAgICAgICAgIHsweDEwMDIsIDB4NjYy
MCwgUENJX0FOWV9JRCwgUENJX0FOWV9JRCwgMCwgMCwgQ0hJUF9PTEFORHxSQURFT05fSVNfTU9C
SUxJVFl8UkFERU9OX05FV19NRU1NQVB9LCBcCj4gLS0KPiAyLjI2LjIKPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYW1kLWdmeCBtYWlsaW5nIGxp
c3QKPiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vYW1kLWdmeApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

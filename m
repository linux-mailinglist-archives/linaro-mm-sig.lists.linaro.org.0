Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 392863047C5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 20:12:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C4FE619D7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 19:12:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3AFCB66755; Tue, 26 Jan 2021 19:12:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A98116673A;
	Tue, 26 Jan 2021 19:12:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2C11060639
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 19:12:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1D1F06673A; Tue, 26 Jan 2021 19:12:20 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175])
 by lists.linaro.org (Postfix) with ESMTPS id 0F95360639
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 19:12:19 +0000 (UTC)
Received: by mail-pg1-f175.google.com with SMTP id v19so12051727pgj.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 11:12:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=z+Elf6KN7gCVxKH5y5v8VFFxpAzRjoRyqfE2dK5dzCQ=;
 b=c/ailrtiw31PebwShc/KOREJIOE50cG5Cd+WD8/F2eP5Id4OT6X9/5tWXEiDdo2Iy5
 64BoDW3Cj3VL2ShXfILRfniNSHH7a61w5izTL7AsQO5QYQja+YO6Dq8Mx6yJhd0ZiPov
 vXuDCefxVbOLwCcqpRuuoDcooOTOQYoj1TkAFAA+INGD8RrZeJl3efQ0h71ZlSD4Q3om
 X7Mxcpd2Z6nzmkIk/VVy31tu58bmGkGGGqIJQ3nj/Ipmf0X3R9R30mHmM2q+MvbSH9aM
 1kFgnScghRySKZk2M0i4oOTpmoNJ2safl3zyQQJEjOuH25vjE0NW/FYr+wrWslcWhAo3
 w9Zg==
X-Gm-Message-State: AOAM532DyS66eMA/B+QK03u2EqzNgFZ2ey32Jbls8SnKHpmJPNKjve4W
 a5lu2IAcq5GKVrIt5VYpdJU=
X-Google-Smtp-Source: ABdhPJzAeJ2VBQP8Ty12PWfHYgZ3qBVMPcowpow+95wbsOdOdX7sQMm9xF9YxgnjsVF1aa+ITIH1ug==
X-Received: by 2002:a62:7d03:0:b029:1bb:5919:6dec with SMTP id
 y3-20020a627d030000b02901bb59196decmr6759692pfc.76.1611688338278; 
 Tue, 26 Jan 2021 11:12:18 -0800 (PST)
Received: from google.com ([2620:15c:211:201:9dd5:b47b:bb84:dede])
 by smtp.gmail.com with ESMTPSA id b14sm3091649pju.14.2021.01.26.11.12.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 11:12:17 -0800 (PST)
Date: Tue, 26 Jan 2021 11:12:14 -0800
From: Minchan Kim <minchan@kernel.org>
To: Michal Hocko <mhocko@suse.com>
Message-ID: <YBBpjvBRtvi3Rl9F@google.com>
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-2-minchan@kernel.org>
 <20210125130701.GF827@dhcp22.suse.cz> <YA8fKgFLuOi/rSez@google.com>
 <20210126073808.GZ827@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210126073808.GZ827@dhcp22.suse.cz>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, linux-media@vger.kernel.org, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v4 1/4] mm: cma: introduce gfp flag in
 cma_alloc instead of no_warn
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

T24gVHVlLCBKYW4gMjYsIDIwMjEgYXQgMDg6Mzg6MDhBTSArMDEwMCwgTWljaGFsIEhvY2tvIHdy
b3RlOgo+IE9uIE1vbiAyNS0wMS0yMSAxMTo0MjozNCwgTWluY2hhbiBLaW0gd3JvdGU6Cj4gPiBP
biBNb24sIEphbiAyNSwgMjAyMSBhdCAwMjowNzowMVBNICswMTAwLCBNaWNoYWwgSG9ja28gd3Jv
dGU6Cj4gPiA+IE9uIFRodSAyMS0wMS0yMSAwOTo1NDo1OSwgTWluY2hhbiBLaW0gd3JvdGU6Cj4g
PiA+ID4gVGhlIHVwY29taW5nIHBhdGNoIHdpbGwgaW50cm9kdWNlIF9fR0ZQX05PUkVUUlkgc2Vt
YW50aWMKPiA+ID4gPiBpbiBhbGxvY19jb250aWdfcmFuZ2Ugd2hpY2ggaXMgYSBmYWlsZmFzdCBt
b2RlIG9mIHRoZSBBUEkuCj4gPiA+ID4gSW5zdGVhZCBvZiBhZGRpbmcgYSBhZGRpdGlvbmFsIHBh
cmFtZXRlciBmb3IgZ2ZwLCByZXBsYWNlCj4gPiA+ID4gbm9fd2FybiB3aXRoIGdmcCBmbGFnLgo+
ID4gPiA+IAo+ID4gPiA+IFRvIGtlZXAgb2xkIGJlaGF2aW9ycywgaXQgZm9sbG93cyB0aGUgcnVs
ZSBiZWxvdy4KPiA+ID4gPiAKPiA+ID4gPiAgIG5vX3dhcm4gCQkJZ2ZwX2ZsYWdzCj4gPiA+ID4g
Cj4gPiA+ID4gICBmYWxzZSAgICAgICAgIAkJR0ZQX0tFUk5FTAo+ID4gPiA+ICAgdHJ1ZSAgICAg
ICAgICAJCUdGUF9LRVJORUx8X19HRlBfTk9XQVJOCj4gPiA+ID4gICBnZnAgJiBfX0dGUF9OT1dB
Uk4JCUdGUF9LRVJORUwgfCAoZ2ZwICYgX19HRlBfTk9XQVJOKQo+ID4gPiA+IAo+ID4gPiA+IFJl
dmlld2VkLWJ5OiBTdXJlbiBCYWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29nbGUuY29tPgo+ID4gPiA+
IFNpZ25lZC1vZmYtYnk6IE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+Cj4gPiA+IFsu
Li5dCj4gPiA+ID4gZGlmZiAtLWdpdCBhL21tL2NtYS5jIGIvbW0vY21hLmMKPiA+ID4gPiBpbmRl
eCAwYmE2OWNkMTZhZWIuLmQ1MDYyNzY4NmZlYyAxMDA2NDQKPiA+ID4gPiAtLS0gYS9tbS9jbWEu
Ywo+ID4gPiA+ICsrKyBiL21tL2NtYS5jCj4gPiA+ID4gQEAgLTQxOSwxMyArNDE5LDEzIEBAIHN0
YXRpYyBpbmxpbmUgdm9pZCBjbWFfZGVidWdfc2hvd19hcmVhcyhzdHJ1Y3QgY21hICpjbWEpIHsg
fQo+ID4gPiA+ICAgKiBAY21hOiAgIENvbnRpZ3VvdXMgbWVtb3J5IHJlZ2lvbiBmb3Igd2hpY2gg
dGhlIGFsbG9jYXRpb24gaXMgcGVyZm9ybWVkLgo+ID4gPiA+ICAgKiBAY291bnQ6IFJlcXVlc3Rl
ZCBudW1iZXIgb2YgcGFnZXMuCj4gPiA+ID4gICAqIEBhbGlnbjogUmVxdWVzdGVkIGFsaWdubWVu
dCBvZiBwYWdlcyAoaW4gUEFHRV9TSVpFIG9yZGVyKS4KPiA+ID4gPiAtICogQG5vX3dhcm46IEF2
b2lkIHByaW50aW5nIG1lc3NhZ2UgYWJvdXQgZmFpbGVkIGFsbG9jYXRpb24KPiA+ID4gPiArICog
QGdmcF9tYXNrOiBHRlAgbWFzayB0byB1c2UgZHVyaW5nIHRoZSBjbWEgYWxsb2NhdGlvbi4KPiA+
ID4gCj4gPiA+IENhbGwgb3V0IHN1cHBvcnRlZCBnZnAgZmxhZ3MgZXhwbGljaXRseS4gSGF2ZSBh
IGxvb2sgYXQga3ZtYWxsb2Nfbm9kZQo+ID4gPiBmb3IgYSBndWlkYW5jZS4KPiA+IAo+ID4gSG93
IGFib3V0IHRoaXM/Cj4gPiAKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL21tL2NtYS5jIGIvbW0vY21h
LmMKPiA+IGluZGV4IGQ1MDYyNzY4NmZlYy4uYjk0NzI3YjY5NGQ2IDEwMDY0NAo+ID4gLS0tIGEv
bW0vY21hLmMKPiA+ICsrKyBiL21tL2NtYS5jCj4gPiBAQCAtNDIzLDYgKzQyMywxMCBAQCBzdGF0
aWMgaW5saW5lIHZvaWQgY21hX2RlYnVnX3Nob3dfYXJlYXMoc3RydWN0IGNtYSAqY21hKSB7IH0K
PiA+ICAgKgo+ID4gICAqIFRoaXMgZnVuY3Rpb24gYWxsb2NhdGVzIHBhcnQgb2YgY29udGlndW91
cyBtZW1vcnkgb24gc3BlY2lmaWMKPiA+ICAgKiBjb250aWd1b3VzIG1lbW9yeSBhcmVhLgo+ID4g
KyAqCj4gPiArICogRm9yIGdmcF9tYXNrLCBHRlBfS0VSTkVMIGFuZCBfX0dGUF9OT1JFVFJZIGFy
ZSBzdXBwb3J0ZWQuIF9fR0ZQX05PUkVUUlkKPiA+ICsgKiB3aWxsIGF2b2lkIGNvc3RseSBmdW5j
dGlvbnMoZS5nLiwgd2FpdGluZyBvbiBwYWdlX3dyaXRlYmFjayBhbmQgbG9ja2luZykKPiA+ICsg
KiBhdCBjdXJyZW50IGltcGxlbWVudGFpb24gZHVyaW5nIHRoZSBwYWdlIG1pZ3JhdGlvbi4KPiAK
PiByYXRoZXIgdGhhbiBleHBsaWNpdGx5IG1lbnRpb25pbmcgd2hhdCB0aGUgZmxhZyBpbXBsaWVz
IEkgdGhpbmsgaXQgd291bGQKPiBiZSBtb3JlIHVzZWZ1bCB0byBzdGF0ZSB0aGUgaW50ZW5kZWQg
dXNlY2FzZS4gU2VlIGhvdyBrdm1hbGxvY19ub2RlIHNheXMKPiAiX19HRlBfUkVUUllfTUFZRkFJ
TCBpcyBzdXBwb3J0ZWQsIGFuZCBpdCBzaG91bGQgYmUgdXNlZCBvbmx5IGlmIGttYWxsb2MgaXMK
PiBwcmVmZXJhYmxlIHRvIHRoZSB2bWFsbG9jIGZhbGxiYWNrLCBkdWUgdG8gdmlzaWJsZSBwZXJm
b3JtYW5jZQo+IGRyYXdiYWNrcy4KPiBfX0dGUF9OT1dBUk4gaXMgYWxzbyBzdXBwb3J0ZWQgdG8g
c3VwcHJlc3MgYWxsb2NhdGlvbiBmYWlsdXJlIG1lc3NhZ2VzLiIKPiAKPiBUaGlzIHdvdWxkIGhl
bHAgcGVvcGxlIG5vdCBmYW1pbGlhciB3aXRoIGludGVybmFscyB0byBzZWUgd2hldGhlciB0aGlz
Cj4gZmxhZyBpcyBhIGdvb2QgZml0IGZvciB0aGVtLgo+IAo+IEluIHRoaXMgY2FzZSBJIHdvdWwg
Z28gd2l0aAo+ICIKPiBAZmxhZ3M6IGdmcCBtYXNrLiBNdXN0IGJlIGNvbXBhdGlibGUgKHN1cGVy
c2V0KSB3aXRoIEdGUF9LRVJORUwuCj4gWy4uLl0KPiBSZWNsYWltIG1vZGlmaWVycyAoX19HRlBf
UkVUUllfTUFZRkFJTCwgX19HRlBfTk9GQUlMKSBhcmUgbm90IHN1cHBvcnRlZC4KPiBfX0dGUF9O
T1JFVFJZIGlzIHN1cHBvcnRlZCwgYW5kIGl0IHNob3VsZCBiZSB1c2VkIGZvciBvcHBvcnR1bmlz
dGljCj4gYWxsb2NhdGlvbiBhdHRlbXB0cyB0aGF0IHNob3VsZCByYXRoZXIgZmFpbCBxdWlja2x5
IHdoZW4gdGhlIGNhbGxlciBoYXMKPiBhIGZhbGxiYWNrIHN0cmF0ZWd5Lgo+ICIKPiAKPiBPYnZp
b3VzbHkgZm9yIHRoaXMgcGF0Y2ggeW91IHdpbGwgZ28gd2l0aCBhIHNpbXBsZSBzdGF0ZW1lbnQg
dGhhdAo+IFJlY2xhaW0gbW9kaWZpZXJzIGFyZSBub3Qgc3VwcG9ydGVkIGF0IGFsbC4KCkFmdGVy
IG1vcmUgZGlzY3Vzc2lvbiBmb3IgZ2ZwX2ZsYWdzIGluIHRocmVhZCBvZiBuZXh0IHBhdGNoLCBs
ZXQgbWUKY2hhbmdlcyBhIGJpdCBtb3JlIGJhc2VkIG9uIGl0LgoKVGhhbmtzIGZvciB0aGUgc3Vn
Z2VzdGlvbiwgTWljaGFsLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=

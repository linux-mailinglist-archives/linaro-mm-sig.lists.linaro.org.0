Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F11BC30D118
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 02:56:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1282B6604D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 01:56:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F40036601F; Wed,  3 Feb 2021 01:56:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 528C6619D7;
	Wed,  3 Feb 2021 01:56:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6B3BC61786
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 01:56:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5FBB6619D7; Wed,  3 Feb 2021 01:56:04 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by lists.linaro.org (Postfix) with ESMTPS id 010C561786
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 01:56:03 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id e15so3853570wme.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Feb 2021 17:56:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eqb0FQEG710LFOVTd7yEl7tin1eRbeirJikh0ogVzXs=;
 b=nfwum5BQ08EkQjuVVsM3aJtqMm98mb22OhRDqXStnJhyDnhr/U+NuF3jthWoNPddoA
 ETdNTr0xKiTnorOgSiI1hgQCiFZAYeVO1mNEkPD/dA/8Ow7tVft2TNtXHC9mnDmf7a1b
 e1oOufuGZ3twOLAcDWY2Us0qcX4jsNNhZ2TmPaUEDsqf7nrmBD0+EX6L/4ab0xlESiXR
 DBaW9POsZF32guCwe/ayM0TTLaAZ6ESV/j//uJnI2WHEhukthPag0TiBU9Y9t95Bj0RP
 4REwkVxcX4cgdYO0oF9/5/P4ZVElkdpTCVWA8Rxy/A+HZI9yosWSK1OaWO5ca2PPhVaq
 PWpQ==
X-Gm-Message-State: AOAM532XJFzdTNrUQe1PqixPWxnWLKLAdAiaCdEXaAaXp5keROLqJ1UY
 1HVWh5ElraS4jnSqb7mk0DJARlPM+XtYVAKHDW6ulA==
X-Google-Smtp-Source: ABdhPJy8V/ouw2lofMtSb/Jdw++5KWj9ruCBYLUqtDkkx9ZA4byJWPoR5Az0VDn+L4rTDLhOT5LbVZqAi5I9Yc52fww=
X-Received: by 2002:a1c:acc9:: with SMTP id v192mr665311wme.22.1612317361941; 
 Tue, 02 Feb 2021 17:56:01 -0800 (PST)
MIME-Version: 1.0
References: <20210203003134.2422308-1-surenb@google.com>
 <YBn81xAeCqHgudYb@google.com>
In-Reply-To: <YBn81xAeCqHgudYb@google.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Tue, 2 Feb 2021 17:55:50 -0800
Message-ID: <CAJuCfpEirOiisM-xouZB7JRBDpERdvWb2gfaq003+rs0b4M83Q@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Sandeep Patil <sspatil@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 kernel-team <kernel-team@android.com>, James Jones <jajones@nvidia.com>,
 LKML <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 Brian Starkey <Brian.Starkey@arm.com>, Christoph Hellwig <hch@infradead.org>,
 linux-mm <linux-mm@kvack.org>, John Stultz <john.stultz@linaro.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: replace BUG_ON in
 vm_insert_page with a return of an error
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

T24gVHVlLCBGZWIgMiwgMjAyMSBhdCA1OjMxIFBNIE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCBGZWIgMDIsIDIwMjEgYXQgMDQ6MzE6MzNQTSAtMDgw
MCwgU3VyZW4gQmFnaGRhc2FyeWFuIHdyb3RlOgo+ID4gUmVwbGFjZSBCVUdfT04odm1hLT52bV9m
bGFncyAmIFZNX1BGTk1BUCkgaW4gdm1faW5zZXJ0X3BhZ2Ugd2l0aAo+ID4gV0FSTl9PTl9PTkNF
IGFuZCByZXR1cm5pbmcgYW4gZXJyb3IuIFRoaXMgaXMgdG8gZW5zdXJlIHVzZXJzIG9mIHRoZQo+
ID4gdm1faW5zZXJ0X3BhZ2UgdGhhdCBzZXQgVk1fUEZOTUFQIGFyZSBub3RpZmllZCBvZiB0aGUg
d3JvbmcgZmxhZyB1c2FnZQo+ID4gYW5kIGdldCBhbiBpbmRpY2F0aW9uIG9mIGFuIGVycm9yIHdp
dGhvdXQgcGFuaWNpbmcgdGhlIGtlcm5lbC4KPiA+IFRoaXMgd2lsbCBoZWxwIGlkZW50aWZ5aW5n
IGRyaXZlcnMgdGhhdCBuZWVkIHRvIGNsZWFyIFZNX1BGTk1BUCBiZWZvcmUKPiA+IHVzaW5nIGRt
YWJ1ZiBzeXN0ZW0gaGVhcCB3aGljaCBpcyBtb3ZpbmcgdG8gdXNlIHZtX2luc2VydF9wYWdlLgo+
ID4KPiA+IFN1Z2dlc3RlZC1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBpbmZyYWRlYWQub3Jn
Pgo+ID4gU2lnbmVkLW9mZi1ieTogU3VyZW4gQmFnaGRhc2FyeWFuIDxzdXJlbmJAZ29vZ2xlLmNv
bT4KPiA+IC0tLQo+ID4gIG1tL21lbW9yeS5jIHwgMyArKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL21tL21l
bW9yeS5jIGIvbW0vbWVtb3J5LmMKPiA+IGluZGV4IGZlZmY0OGUxNDY1YS4uZTUwM2M5ODAxY2Q5
IDEwMDY0NAo+ID4gLS0tIGEvbW0vbWVtb3J5LmMKPiA+ICsrKyBiL21tL21lbW9yeS5jCj4gPiBA
QCAtMTgyNyw3ICsxODI3LDggQEAgaW50IHZtX2luc2VydF9wYWdlKHN0cnVjdCB2bV9hcmVhX3N0
cnVjdCAqdm1hLCB1bnNpZ25lZCBsb25nIGFkZHIsCj4gPiAgICAgICAgICAgICAgIHJldHVybiAt
RUlOVkFMOwo+ID4gICAgICAgaWYgKCEodm1hLT52bV9mbGFncyAmIFZNX01JWEVETUFQKSkgewo+
ID4gICAgICAgICAgICAgICBCVUdfT04obW1hcF9yZWFkX3RyeWxvY2sodm1hLT52bV9tbSkpOwo+
Cj4gQmV0dGVyIHRvIHJlcGxhY2UgYWJvdmUgQlVHX09OIHdpdGggV0FSTl9PTl9PTkNFLCB0b28/
CgpJZiBub2JvZHkgb2JqZWN0cyBJJ2xsIGRvIHRoYXQgaW4gdGhlIG5leHQgcmVzcGluLiBUaGFu
a3MhCgo+Cj4gLS0KPiBUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVj
ZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIGtlcm5lbC10ZWFtK3Vuc3Vi
c2NyaWJlQGFuZHJvaWQuY29tLgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==

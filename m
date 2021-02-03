Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5943530D59A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 09:53:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A73E66739
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 08:53:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7794866049; Wed,  3 Feb 2021 08:53:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D2FE661081;
	Wed,  3 Feb 2021 08:52:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EB30260C34
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 08:52:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D28FC61081; Wed,  3 Feb 2021 08:52:35 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
 [209.85.210.42])
 by lists.linaro.org (Postfix) with ESMTPS id 084D460C34
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 08:52:34 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id y11so1073588otq.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Feb 2021 00:52:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gXUrCQnAejSUnzy7G5KQj25VP/AJcEkhVg3Q+PK8vz4=;
 b=RnJWbga24IBhS+zk2rRt1FBlhEQjqFtZuoMj7hSR5upAmZe0Acqzj2jQnzk1by9lnw
 12zPpP0k0+f/XaxnZFZZzDvQJ/Wmh7B4xDJnanmTEE/OzIvP/kAyO8qHV5HYsYDccnXD
 36gdrSQIK3dFVOseIlFGqJLBcFueIojgQrEHCkjhjSYFCYOHQGBw5XHVW1L5UWkHELtI
 65e+ViGeFNw3jdI4Ygt/CbgKsSwewo6sqO3irx7TXXOswTnQ6h5ThlpiIAonbhoAMPfZ
 VDLwOgLUMMUas5C92RO+L8Z3qDOIK28vz7CzVAoW9cdW6WZzU/H85uUwJ+59cdKKO0u7
 g1vA==
X-Gm-Message-State: AOAM531sYQZaWleYIL3DrygjTDB2spWC3gXZ7qOYtJSG37CLIVr9x0EO
 k1JI/W0KQ4SNJl0Iq/WG24kP/F4F42SfJU7nBJlGjA==
X-Google-Smtp-Source: ABdhPJxq0ZEI6IC6j0hBli9D1xyK0kKminNBfdIJ8J0cuKUE95JWskdN1yRslq7D4jprmId2dxKIg9w+bU/AkYBdsjY=
X-Received: by 2002:a9d:2265:: with SMTP id o92mr1340983ota.188.1612342353066; 
 Wed, 03 Feb 2021 00:52:33 -0800 (PST)
MIME-Version: 1.0
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203015553.GX308988@casper.infradead.org>
In-Reply-To: <20210203015553.GX308988@casper.infradead.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 3 Feb 2021 09:52:22 +0100
Message-ID: <CAKMK7uHnNdjOYX5Rhj=uGMz7hSz12JhgkZJCfiqgkpjXnMfL4A@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Christoph Hellwig <hch@infradead.org>, Sandeep Patil <sspatil@google.com>,
 Linux MM <linux-mm@kvack.org>, Suren Baghdasaryan <surenb@google.com>,
 James Jones <jajones@nvidia.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Liam Mark <lmark@codeaurora.org>, Brian Starkey <Brian.Starkey@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Minchan Kim <minchan@kernel.org>, John Stultz <john.stultz@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Android Kernel Team <kernel-team@android.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Robin Murphy <robin.murphy@arm.com>
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

T24gV2VkLCBGZWIgMywgMjAyMSBhdCAyOjU3IEFNIE1hdHRoZXcgV2lsY294IDx3aWxseUBpbmZy
YWRlYWQub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgRmViIDAyLCAyMDIxIGF0IDA0OjMxOjMzUE0g
LTA4MDAsIFN1cmVuIEJhZ2hkYXNhcnlhbiB3cm90ZToKPiA+IFJlcGxhY2UgQlVHX09OKHZtYS0+
dm1fZmxhZ3MgJiBWTV9QRk5NQVApIGluIHZtX2luc2VydF9wYWdlIHdpdGgKPiA+IFdBUk5fT05f
T05DRSBhbmQgcmV0dXJuaW5nIGFuIGVycm9yLiBUaGlzIGlzIHRvIGVuc3VyZSB1c2VycyBvZiB0
aGUKPiA+IHZtX2luc2VydF9wYWdlIHRoYXQgc2V0IFZNX1BGTk1BUCBhcmUgbm90aWZpZWQgb2Yg
dGhlIHdyb25nIGZsYWcgdXNhZ2UKPiA+IGFuZCBnZXQgYW4gaW5kaWNhdGlvbiBvZiBhbiBlcnJv
ciB3aXRob3V0IHBhbmljaW5nIHRoZSBrZXJuZWwuCj4gPiBUaGlzIHdpbGwgaGVscCBpZGVudGlm
eWluZyBkcml2ZXJzIHRoYXQgbmVlZCB0byBjbGVhciBWTV9QRk5NQVAgYmVmb3JlCj4gPiB1c2lu
ZyBkbWFidWYgc3lzdGVtIGhlYXAgd2hpY2ggaXMgbW92aW5nIHRvIHVzZSB2bV9pbnNlcnRfcGFn
ZS4KPgo+IE5BQ0suCj4KPiBUaGUgc3lzdGVtIG1heSBub3QgX3BhbmljXywgYnV0IGl0IGlzIGNs
ZWFybHkgbm93IF9icm9rZW5fLiAgVGhlIGRldmljZQo+IGRvZXNuJ3Qgd29yaywgYW5kIHNvIHRo
ZSBzeXN0ZW0gaXMgdXNlbGVzcy4gIFlvdSBoYXZlbid0IHJlYWxseSBpbXByb3ZlZAo+IGFueXRo
aW5nIGhlcmUuICBKdXN0IGJsb2F0ZWQgdGhlIGtlcm5lbCB3aXRoIHlldCBhbm90aGVyIF9PTkNF
IHZhcmlhYmxlCj4gdGhhdCBpbiBhIG5vcm1hbCBzeXN0ZW0gd2lsbCBuZXZlciBldmVyIGV2ZXIg
YmUgdHJpZ2dlcmVkLgoKQWxzbywgd2hhdCB0aGUgaGVjayBhcmUgeW91IGRvaW5nIHdpdGggeW91
ciBkcml2ZXJzPyBkbWEtYnVmIG1tYXAgbXVzdApjYWxsIGRtYV9idWZfbW1hcCgpLCBldmVuIGZv
ciBmb3J3YXJkZWQvcmVkaXJlY3RlZCBtbWFwcyBmcm9tIGRyaXZlcgpjaGFyIG5vZGVzLiBJZiB0
aGF0IGRvZXNuJ3Qgd29yayB3ZSBoYXZlIHNvbWUgaXNzdWVzIHdpdGggdGhlIGNhbGxpbmcKY29u
dHJhY3QgZm9yIHRoYXQgZnVuY3Rpb24sIG5vdCBpbiB2bV9pbnNlcnRfcGFnZS4KCkZpbmFsbHkg
d2h5IGV4YWN0bHkgZG8gd2UgbmVlZCB0byBtYWtlIHRoaXMgc3dpdGNoIGZvciBzeXN0ZW0gaGVh
cD8KSSd2ZSByZWNlbnRseSBsb29rZWQgYXQgZ3VwIHVzYWdlIGJ5IHJhbmRvbSBkcml2ZXJzLCBh
bmQgZm91bmQgYSBsb3QKb2Ygd29ycnlpbmcgdGhpbmdzIHRoZXJlLiBndXAgb24gZG1hLWJ1ZiBp
cyByZWFsbHkgYmFkIGlkZWEgaW4KZ2VuZXJhbC4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpT
b2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFF723C0BF
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Aug 2020 22:27:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A3E36196D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Aug 2020 20:27:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6D59865FCE; Tue,  4 Aug 2020 20:27:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1559061887;
	Tue,  4 Aug 2020 20:27:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A92A460428
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 20:27:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8BD7761887; Tue,  4 Aug 2020 20:27:05 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id 42C5D60428
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 20:27:04 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id e11so7381558otk.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Aug 2020 13:27:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0F8rJxKPxKz2kW50sM0y8YM2E+x9jT63SdZPiQc6zzs=;
 b=PexwCcdIDIuHL/YdpJvLKSVkjgwXKGDtd73o2oJPqFvYCT4gabzZpJNchTM6MvXxJq
 QNPzYTS/S0AFw8JKHY88iD2fbA1/aOBEZ2uaM09BieURKZz6VwFwCO1EkcLQQX3IA5Pa
 tirRfQIp7Na6NvXs8hgMbAPakuhxxL7cyYkzfmmafx3EoubLUWvv9raGDk1qq5ExDS7W
 80d4nauiI4LbJEcGq9pKQFGcZhuyrMEVnde0ypeo0Nub6pjZCWf9kv+0ZsWTp+tNu+Qb
 FkEdsLuvkgOPBNVzHNCwng4+mr+9I+D8N1S1EaGgdi+mBmCAcK+TlgOQVoOq7pS33kh7
 5cFw==
X-Gm-Message-State: AOAM531ZxK9Fq6sNPzsmcMEOWOpafe+OSLMhETuC/5u61anKjG+f/Nni
 1RJRUYhaLgamY2xQlTWWkC+U9N+4x3F0Ly/wLUIVLw==
X-Google-Smtp-Source: ABdhPJxM2ghXnkojx/uwK1Wl/TqwXOe7oku/3H3udwDC+13SefY0iT978E6kQ/Oj5VS0nPAZGxZz1fIHsTOzPTz/qVk=
X-Received: by 2002:a05:6830:1e71:: with SMTP id
 m17mr20159797otr.188.1596572823562; 
 Tue, 04 Aug 2020 13:27:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-3-kaleshsingh@google.com>
 <20200803154125.GA23808@casper.infradead.org>
 <CAJuCfpFLikjaoopvt+vGN3W=m9auoK+DLQNgUf-xUbYfC=83Mw@mail.gmail.com>
 <20200803161230.GB23808@casper.infradead.org>
 <CAJuCfpGot1Lr+eS_AU30gqrrjc0aFWikxySe0667_GTJNsGTMw@mail.gmail.com>
 <20200803222831.GI1236603@ZenIV.linux.org.uk>
In-Reply-To: <20200803222831.GI1236603@ZenIV.linux.org.uk>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 4 Aug 2020 22:26:52 +0200
Message-ID: <CAKMK7uE7V-0=2Z04-vkvFmExeEuKf5zihTO8su1GrHYy=sRKMg@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Jonathan Corbet <corbet@lwn.net>, kernel-team <kernel-team@android.com>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Ioannis Ilkos <ilkos@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Hridya Valsaraju <hridya@google.com>, Ingo Molnar <mingo@redhat.com>,
 John Stultz <john.stultz@linaro.org>, Matthew Wilcox <willy@infradead.org>,
 Kalesh Singh <kaleshsingh@google.com>, linux-fsdevel@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] dmabuf/tracing: Add dma-buf trace
	events
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

T24gVHVlLCBBdWcgNCwgMjAyMCBhdCAxMjoyOCBBTSBBbCBWaXJvIDx2aXJvQHplbml2LmxpbnV4
Lm9yZy51az4gd3JvdGU6Cj4KPiBPbiBNb24sIEF1ZyAwMywgMjAyMCBhdCAwOToyMjo1M0FNIC0w
NzAwLCBTdXJlbiBCYWdoZGFzYXJ5YW4gd3JvdGU6Cj4gPiBPbiBNb24sIEF1ZyAzLCAyMDIwIGF0
IDk6MTIgQU0gTWF0dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+IHdyb3RlOgo+ID4g
Pgo+ID4gPiBPbiBNb24sIEF1ZyAwMywgMjAyMCBhdCAwOTowMDowMEFNIC0wNzAwLCBTdXJlbiBC
YWdoZGFzYXJ5YW4gd3JvdGU6Cj4gPiA+ID4gT24gTW9uLCBBdWcgMywgMjAyMCBhdCA4OjQxIEFN
IE1hdHRoZXcgV2lsY294IDx3aWxseUBpbmZyYWRlYWQub3JnPiB3cm90ZToKPiA+ID4gPiA+Cj4g
PiA+ID4gPiBPbiBNb24sIEF1ZyAwMywgMjAyMCBhdCAwMjo0NzoxOVBNICswMDAwLCBLYWxlc2gg
U2luZ2ggd3JvdGU6Cj4gPiA+ID4gPiA+ICtzdGF0aWMgdm9pZCBkbWFfYnVmX2ZkX2luc3RhbGwo
aW50IGZkLCBzdHJ1Y3QgZmlsZSAqZmlscCkKPiA+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ID4gKyAg
ICAgdHJhY2VfZG1hX2J1Zl9mZF9yZWZfaW5jKGN1cnJlbnQsIGZpbHApOwo+ID4gPiA+ID4gPiAr
fQo+ID4gPiA+ID4KPiA+ID4gPiA+IFlvdSdyZSBhZGRpbmcgYSBuZXcgZmlsZV9vcGVyYXRpb24g
aW4gb3JkZXIgdG8ganVzdCBhZGQgYSBuZXcgdHJhY2Vwb2ludD8KPiA+ID4gPiA+IE5BQ0suCj4g
PiA+ID4KPiA+ID4gPiBIaSBNYXR0aGV3LAo+ID4gPiA+IFRoZSBwbGFuIGlzIHRvIGF0dGFjaCBh
IEJQRiB0byB0aGlzIHRyYWNlcG9pbnQgaW4gb3JkZXIgdG8gdHJhY2sKPiA+ID4gPiBkbWEtYnVm
IHVzZXJzLiBJZiB5b3UgZmVlbCB0aGlzIGlzIGFuIG92ZXJraWxsLCB3aGF0IHdvdWxkIHlvdSBz
dWdnZXN0Cj4gPiA+ID4gYXMgYW4gYWx0ZXJuYXRpdmU/Cj4gPiA+Cj4gPiA+IEknbSBzdXJlIEJQ
RiBjYW4gYXR0YWNoIHRvIGZkX2luc3RhbGwgYW5kIGZpbHRlciBvbiBmaWxlLT5mX29wcyBiZWxv
bmdpbmcKPiA+ID4gdG8gZG1hX2J1ZiwgZm9yIGV4YW1wbGUuCj4gPgo+ID4gU291bmRzIGxpa2Ug
YSB3b3JrYWJsZSBzb2x1dGlvbi4gV2lsbCBleHBsb3JlIHRoYXQgZGlyZWN0aW9uLiBUaGFua3Mg
TWF0dGhldyEKPgo+IE5vLCBpdCBpcyBub3QgYSBzb2x1dGlvbiBhdCBhbGwuCj4KPiBXaGF0IGtp
bmQgb2YgbG9ja2luZyB3b3VsZCB5b3UgdXNlPyAgV2l0aCBfYW55XyBvZiB0aG9zZSBhcHByb2Fj
aGVzLgo+Cj4gSG93IHdvdWxkIHlvdSB1c2UgdGhlIGluZm9ybWF0aW9uIHRoYXQgaXMgaG9wZWxl
c3NseSBvdXQgb2YgZGF0ZS9pbmNvaGVyZW50L3doYXRub3QKPiBhdCB0aGUgdmVyeSBtb21lbnQg
eW91IG9idGFpbiBpdD8KPgo+IElPVywgd2hhdCB0aGUgaGVsbCBpcyB0aGF0IGhvcnJvciBmb3I/
ICBZb3UgZG8gcmVhbGl6ZSwgZm9yIGV4YW1wbGUsIHRoYXQgdGhlcmUncwo+IHN1Y2ggdGhpbmcg
YXMgZHVwKCksIHJpZ2h0PyAgQW5kIGR1cDIoKSBhcyB3ZWxsLiAgQW5kIHdoaWxlIHdlIGFyZSBh
dCBpdCwgaG93Cj4gZG8geW91IGtlZXAgdHJhY2sgb2YgcmVtb3ZhbHMsIGNvbnNpZGVyaW5nIHRo
ZSBmYWN0IHRoYXQgeW91IGNhbiBzdGljayBhIGZpbGUKPiByZWZlcmVuY2UgaW50byBTQ01fUklH
SFRTIGRhdGFncmFtIHNlbnQgdG8geW91cnNlbGYsIGNsb3NlIGRlc2NyaXB0b3JzIGFuZCBhbiBo
b3VyCj4gbGF0ZXIgcGljayB0aGF0IGRhdGFncmFtLCBzdWRkZW5seSBnZXR0aW5nIGRlc2NyaXB0
b3IgYmFjaz8KPgo+IEJlc2lkZXMsICJJIGhhdmUgbm8gZGVzY3JpcHRvcnMgbGVmdCIgIT0gIkkg
Y2FuJ3QgYmUgY3VycmVudGx5IHNpdHRpbmcgaW4gdGhlIG1pZGRsZQo+IG9mIHN5c2NhbGwgb24g
dGhhdCBzdWNrZXIiOyBjbG9zZSgpIGRvZXMgKk5PVCogdGVybWluYXRlIG9uZ29pbmcgb3BlcmF0
aW9ucy4KPgo+IFlvdSBhcmUgbG9va2luZyBhdCB0aGUgZHJhc3RpY2FsbHkgd3JvbmcgYWJzdHJh
Y3Rpb24gbGV2ZWwuICBQbGVhc2UsIGRlc2NyaWJlIHdoYXQKPiBpdCBpcyB0aGF0IHlvdSBhcmUg
dHJ5aW5nIHRvIGFjaGlldmUuCgpGb3IgYWRkZWQgZW50ZXJ0YWlubWVudCAoc2luY2UgdGhpcyBp
cyBzcGVjaWZpY2FsbHkgYWJvdXQgZG1hLWJ1ZikgeW91CmNhbiBzdHVmZiB0aGVtIGludG8gdmFy
aW91cyBncHUgZHJpdmVycywgYW5kIGNvbnZlcnQgdG8gYSBuYXRpdmUgZ3B1CmRyaXZlciBoYW5k
bGUgdGhpbmcuIFRoYXQncyBhY3R1YWxseSB0aGUgZXhwZWN0ZWQgdXNlIGNhc2UsIGZpcnN0IGEK
YnVmZmVyIHNoYXJpbmcgZ2V0cyBlc3RhYmxpc2hlZCB3aXRoIEFGX1VOSVgsIHRoZW4gYm90aCBz
aWRlcyBjbG9zZQp0aGUgZG1hLWJ1ZiBmZCBoYW5kbGUuCgpHUFUgZHJpdmVycyB0aGVuIGludGVy
bmFsbHkgY2FjaGUgdGhlIHN0cnVjdCBmaWxlIHNvIHRoYXQgd2UgY2FuIGhhbmQKb3V0IHRoZSBz
YW1lICh0byBhdm9pZCBjb25mdXNpb24gd2hlbiByZS1pbXBvcnRpbmcgaXQgb24gc29tZSBvdGhl
cgpkcml2ZXIpLCBzbyBmb3IgdGhlIGNhc2Ugb2YgZG1hLWJ1ZiB0aGUgIml0J3Mgbm90IGFjdHVh
bGx5IGFuCmluc3RhbGxlZCBmZCBhbnl3aGVyZSBmb3IgdW5saW1pdGVkIHRpbWUiIGlzIGFjdHVh
bGx5IHRoZSBub3JtYWwKdXNlLWNhc2UsIG5vdCBzb21lIG9kZCBjb3JuZXIuCgpDaGVlcnMsIERh
bmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRp
b24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK

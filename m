Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 751B41BBB59
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 12:38:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 198C3617A5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 10:38:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0AD71617C9; Tue, 28 Apr 2020 10:38:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83A226174E;
	Tue, 28 Apr 2020 10:37:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D105360F5B
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 10:37:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C23036174E; Tue, 28 Apr 2020 10:37:40 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id 8CD9D60F5B
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 10:37:39 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id e20so31751622otk.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 03:37:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/lbZ/o7rViPH+y9TQc0SUKwOd3mSEgmUJullTUqZ1zw=;
 b=tkVmtVBe4jeHgN7PUe6up67EemeZrlqc7ZsB/4NO8ih5AeToATt/34ElWymH5n/ajs
 fyJPurgL8/fhe1v3iTnb12b8CKTqMR9oPNlilk1etdSu8lKjgsNnBpSyDsB1B0S1VO6R
 lc+gWGiS1qg8JohFJs9N41WHIf4PlfqDCv0IzAwj9bIS/CQST1ezZGl64SEqYuQ1xSvM
 R5b+dxpQmNJwLGkLFCHkfcYp7J7ZpQ3bOLQ2Uu0e/FZ28j7MkAn//dDpgSIqJLX0SrOp
 CP7+PpkhEnTM/WG0l9rIgvVKJN/6pr+djvwtiKvdJN2I67wh3QM2YyDp8WQsQLgM2UW5
 aYOQ==
X-Gm-Message-State: AGi0PuZS/kzNOSaxLPkotsJB0+6ylZ1dkXHU6oDSqzfvxT23HKnBPbxk
 Q0bt1LsNNMWfPC2wKAimAqn+uoCieqrEMNOy4oqgVZmv
X-Google-Smtp-Source: APiQypJBytTcB67KweAIRvJkCA/naVwdNTs/27EB0xHKNcKsZvMT52vq5eSodEdlOT00J33uHlOKEpmUvYzvjkOh7QY=
X-Received: by 2002:aca:d885:: with SMTP id p127mr2520841oig.76.1588070258849; 
 Tue, 28 Apr 2020 03:37:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200407133002.3486387-1-daniel.vetter@ffwll.ch>
 <CAO_48GF5jM-L7bqnfvXSvbugAjYsYnE7rGokO7_LWQxHua0=wQ@mail.gmail.com>
 <20200423145122.GA17542@google.com>
In-Reply-To: <20200423145122.GA17542@google.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 28 Apr 2020 16:07:27 +0530
Message-ID: <CAO_48GHcwZC2zisha9JVg5ifDdXrTLFOgrVL+yYyLuxw4j5JMQ@mail.gmail.com>
To: Martin Liu <liumartin@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Todd Kjos <tkjos@android.com>, Chenbo Feng <fengc@google.com>,
 Greg Hackmann <ghackmann@google.com>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>, minchan@kernel.org,
 Jenhao Chen <jenhaochen@google.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Fix SET_NAME ioctl uapi
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

VGhhbmtzIERhbmllbCwgTWFydGluLAoKT24gVGh1LCAyMyBBcHIgMjAyMCBhdCAyMDoyMSwgTWFy
dGluIExpdSA8bGl1bWFydGluQGdvb2dsZS5jb20+IHdyb3RlOgo+Cj4gT24gVGh1LCBBcHIgMDks
IDIwMjAgYXQgMDk6Mjg6MTZBTSArMDUzMCwgU3VtaXQgU2Vtd2FsIHdyb3RlOgo+ID4gVGhhbmtz
IGZvciB0aGUgcGF0Y2gsIERhbmllbCEKPiA+Cj4gPgo+ID4gT24gVHVlLCA3IEFwciAyMDIwIGF0
IDE5OjAwLCBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPiB3cm90ZToKPiA+
ID4KPiA+ID4gVGhlIHVhcGkgaXMgdGhlIHNhbWUgb24gMzIgYW5kIDY0IGJpdCwgYnV0IHRoZSBu
dW1iZXIgaXNudC4gRXZlcnlvbmUKPiA+ID4gd2hvIGJvdGNoZWQgdGhpcyBwbGVhc2UgcmUtcmVh
ZDoKPiA+ID4KPiA+ID4gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC92NS40LXByZXBy
Yy1jcHUvaW9jdGwvYm90Y2hpbmctdXAtaW9jdGxzLmh0bWwKPiA+ID4KPiA+ID4gQWxzbywgdGhl
IHR5cGUgYXJndW1lbnQgZm9yIHRoZSBpb2N0bCBtYWNyb3MgaXMgZm9yIHRoZSB0eXBlIHRoZSB2
b2lkCj4gPiA+IF9fdXNlciAqYXJnIHBvaW50ZXIgcG9pbnRzIGF0LCB3aGljaCBpbiB0aGlzIGNh
c2Ugd291bGQgYmUgdGhlCj4gPiA+IHZhcmlhYmxlLXNpemVkIGNoYXJbXSBvZiBhIDAgdGVybWlu
YXRlZCBzdHJpbmcuIFNvIHRoaXMgd2FzIGJvdGNoZWQgaW4KPiA+ID4gbW9yZSB0aGFuIGp1c3Qg
dGhlIHVzdWFsIHdheXMuCj4gPgo+ID4gWWVzLCBpdCBzaG91bGRuJ3QgaGF2ZSBwYXNzZWQgdGhy
b3VnaCB0aGUgY3JhY2tzOyBteSBhcG9sb2dpZXMhCj4gPgo+ID4gPgo+ID4gPiBDYzogU3VtaXQg
U2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiA+ID4gQ2M6IENoZW5ibyBGZW5nIDxm
ZW5nY0Bnb29nbGUuY29tPgo+ID4gPiBDYzogR3JlZyBIYWNrbWFubiA8Z2hhY2ttYW5uQGdvb2ds
ZS5jb20+Cj4gPiA+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+
ID4gPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gPiA+IENjOiBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKPiA+ID4gQ2M6IG1pbmNoYW5Aa2VybmVsLm9yZwo+ID4gPiBD
Yzogc3VyZW5iQGdvb2dsZS5jb20KPiA+ID4gQ2M6IGplbmhhb2NoZW5AZ29vZ2xlLmNvbQo+ID4g
PiBDYzogTWFydGluIExpdSA8bGl1bWFydGluQGdvb2dsZS5jb20+Cj4gPgo+ID4gTWFydGluLAo+
ID4gQ291bGQgSSByZXF1ZXN0IHlvdSB0byB0ZXN0IHRoaXMgb25lIHdpdGggdGhlIDQgY29tYmlu
YXRpb25zIG9mIDMyLWJpdAo+ID4gLyA2NC1iaXQgdXNlcnNwYWNlIGFuZCBrZXJuZWwsIGFuZCBs
ZXQgdXMga25vdyB0aGF0IGFsbCA0IGFyZSB3b3JraW5nCj4gPiBhbHJpZ2h0PyBJZiB5ZXMsIHBs
ZWFzZSBjb25zaWRlciBnaXZpbmcgeW91ciB0ZXN0ZWQtYnkgaGVyZS4KPiA+Cj4gSGkgU3VtaXQs
IERhbmllbCwKPiBTb3JyeSBmb3IgYmVpbmcgbGF0ZSB0byB0aGUgdGVzdHMuIEkgZmluaXNoZWQg
dGhlIHRlc3RzIG9uIDMyLzY0IGFwcHMKPiB3aXRoIDY0IGJpdCBrZXJuZWwgYW5kIHRoZXkgd2Vy
ZSBmaW5lLiBVbmZvcnR1bmF0ZWx5LCBJIGNvdWxkbid0IGhhdmUgYSAzMgo+IGJpdCBrZXJuZWwg
dG8gcnVuIHRoZSB0ZXN0cyBzb21laG93LiBIb3dldmVyLCB0aGlzIHNob3VsZCB3b3JrIGZyb20g
dGhlCj4gY29kZSBsb2dpYy4gSG9wZSB0aGlzIGlzIG9rYXkgdG8geW91IGFuZCB0aGFua3MgZm9y
IFRvZGQncyBoZWxwLgo+Cj4gVGVzdGVkLWJ5OiBNYXJ0aW4gTGl1IDxsaXVtYXJ0aW5AZ29vZ2xl
LmNvbT4KPiBSZXZpZXdlZC1ieTogTWFydGluIExpdSA8bGl1bWFydGluQGdvb2dsZS5jb20+CgpB
cHBsaWVkIHRvIGRybS1taXNjLWZpeGVzLgo+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMgICAgfCAzICsrLQo+ID4gPiAgaW5jbHVkZS91YXBpL2xpbnV4L2Rt
YS1idWYuaCB8IDQgKysrKwo+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gPiA+IGluZGV4IDU3MGM5MjMw
MjNlNi4uMWQ5MjNiOGU0YzU5IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiA+ID4gQEAgLTM4
OCw3ICszODgsOCBAQCBzdGF0aWMgbG9uZyBkbWFfYnVmX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxl
LAo+ID4gPgo+ID4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ID4KPiA+ID4gLSAg
ICAgICBjYXNlIERNQV9CVUZfU0VUX05BTUU6Cj4gPiA+ICsgICAgICAgY2FzZSBETUFfQlVGX1NF
VF9OQU1FX0E6Cj4gPiA+ICsgICAgICAgY2FzZSBETUFfQlVGX1NFVF9OQU1FX0I6Cj4gPiA+ICAg
ICAgICAgICAgICAgICByZXR1cm4gZG1hX2J1Zl9zZXRfbmFtZShkbWFidWYsIChjb25zdCBjaGFy
IF9fdXNlciAqKWFyZyk7Cj4gPiA+Cj4gPiA+ICAgICAgICAgZGVmYXVsdDoKPiA+ID4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL3VhcGkvbGludXgv
ZG1hLWJ1Zi5oCj4gPiA+IGluZGV4IGRiYzcwOTJlMDRiNS4uMjFkZmFjODE1ZGMwIDEwMDY0NAo+
ID4gPiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oCj4gPiA+ICsrKyBiL2luY2x1
ZGUvdWFwaS9saW51eC9kbWEtYnVmLmgKPiA+ID4gQEAgLTM5LDYgKzM5LDEwIEBAIHN0cnVjdCBk
bWFfYnVmX3N5bmMgewo+ID4gPgo+ID4gPiAgI2RlZmluZSBETUFfQlVGX0JBU0UgICAgICAgICAg
ICdiJwo+ID4gPiAgI2RlZmluZSBETUFfQlVGX0lPQ1RMX1NZTkMgICAgIF9JT1coRE1BX0JVRl9C
QVNFLCAwLCBzdHJ1Y3QgZG1hX2J1Zl9zeW5jKQo+ID4gPiArLyogMzIvNjRiaXRuZXNzIG9mIHRo
aXMgdWFwaSB3YXMgYm90Y2hlZCBpbiBhbmRyb2lkLCB0aGVyZSdzIG5vIGRpZmZlcmVuY2UKPiA+
ID4gKyAqIGJldHdlZW4gdGhlbSBpbiBhY3R1YWwgdWFwaSwgdGhleSdyZSBqdXN0IGRpZmZlcmVu
dCBudW1iZXJzLiAqLwo+ID4gPiAgI2RlZmluZSBETUFfQlVGX1NFVF9OQU1FICAgICAgIF9JT1co
RE1BX0JVRl9CQVNFLCAxLCBjb25zdCBjaGFyICopCj4gPiA+ICsjZGVmaW5lIERNQV9CVUZfU0VU
X05BTUVfQSAgICAgX0lPVyhETUFfQlVGX0JBU0UsIDEsIHUzMikKPiA+ID4gKyNkZWZpbmUgRE1B
X0JVRl9TRVRfTkFNRV9CICAgICBfSU9XKERNQV9CVUZfQkFTRSwgMSwgdTY0KQo+ID4gPgo+ID4g
PiAgI2VuZGlmCj4gPiA+IC0tCj4gPiA+IDIuMjUuMQo+ID4gPgo+ID4gQmVzdCwKPiA+IFN1bWl0
LgpCZXN0LApTdW1pdC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK

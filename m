Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA6F254C27
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Aug 2020 19:24:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 169CE610F9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Aug 2020 17:24:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 09D2461957; Thu, 27 Aug 2020 17:24:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 199A5619AC;
	Thu, 27 Aug 2020 17:22:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E1C8B610F9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Aug 2020 17:22:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D46B6619AC; Thu, 27 Aug 2020 17:22:35 +0000 (UTC)
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by lists.linaro.org (Postfix) with ESMTPS id 581BC610F9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Aug 2020 17:22:28 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id p25so6646667qkp.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Aug 2020 10:22:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LzdfP6LA5gT4sxc5D/mTAUgxcIMZMneFMWeK08iY3Ys=;
 b=tcPaBHZkzuAJiJhAAsJk2N5AhhOR8eC9+JcUyVxrGEnK4WBLoMgVtgqc1P/9Sww93M
 FMKhTI3aXPSreBFec3IUby9ojKxhKqcgxN8dLKkVZPIYvIO5yrMothhQIfmZDpYDzlEG
 f4IxTRBEMcpj0XRzPIWM0KwUArD6JsxJaxCEZy5sWFPcTx0fHvYulNjRnMLCMIkx2vr7
 8e74JoHFb+MlScDvQ6/u70qzpDyg6RalGqwHOG9mUO2cv/4d/jUQhwHPJIKoHwqBEe4V
 uaRHYQ8TeKO2nm9PuTQOwijaY4hwAzwM9ILQFcDacrhrGTy4sFLrjzBSkI3hN3FBrSbd
 yPlQ==
X-Gm-Message-State: AOAM531LBgjA/MbiL3q+BqCVJ8uFYrqZt4WgXh7gHy7k5FXToX2moGGi
 NoE8k2h4FQr0ncjI2Yv4D019nbXYfNYABtBcsfeRvQ==
X-Google-Smtp-Source: ABdhPJwEuYsl6kdz4x5MV1MDd279JzsSlE4TSOAu1/qArH5gHUfvqgzJDC+kYF093anMkIXlN+uDJsUKKYahYaBVsjA=
X-Received: by 2002:a37:74d:: with SMTP id 74mr19814431qkh.147.1598548947537; 
 Thu, 27 Aug 2020 10:22:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200827123627.538189-1-gregkh@linuxfoundation.org>
 <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
 <20200827160506.GC684514@kroah.com>
 <CAMi1Hd1Ch1RWvOTnON3tsrucaKThTuGQnwNFo94GqUjufVmnOg@mail.gmail.com>
 <20200827171745.GA701089@kroah.com>
In-Reply-To: <20200827171745.GA701089@kroah.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Thu, 27 Aug 2020 10:21:51 -0700
Message-ID: <CA+wgaPO-WqMcvsEHZ926eKfvcCwfgDwT+Cg4A-JvEpA5xTwDNA@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Amit Pundir <amit.pundir@linaro.org>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Shuah Khan <shuah@kernel.org>, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Suren Baghdasaryan <surenb@google.com>, Christoph Hellwig <hch@infradead.org>,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 John Stultz <john.stultz@linaro.org>, Joel Fernandes <joel@joelfernandes.org>,
 Laura Abbott <laura@labbott.name>,
 Android Kernel Team <kernel-team@android.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Christian Brauner <christian@brauner.io>
Subject: Re: [Linaro-mm-sig] [PATCH] staging: ion: remove from the tree
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

T24gVGh1LCBBdWcgMjcsIDIwMjAgYXQgMTA6MTcgQU0gR3JlZyBLcm9haC1IYXJ0bWFuCjxncmVn
a2hAbGludXhmb3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIEF1ZyAyNywgMjAyMCBh
dCAxMDozMTo0MVBNICswNTMwLCBBbWl0IFB1bmRpciB3cm90ZToKPiA+IE9uIFRodSwgMjcgQXVn
IDIwMjAgYXQgMjE6MzQsIEdyZWcgS3JvYWgtSGFydG1hbgo+ID4gPGdyZWdraEBsaW51eGZvdW5k
YXRpb24ub3JnPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gVGh1LCBBdWcgMjcsIDIwMjAgYXQgMDk6
MzE6MjdBTSAtMDQwMCwgTGF1cmEgQWJib3R0IHdyb3RlOgo+ID4gPiA+IE9uIDgvMjcvMjAgODoz
NiBBTSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+ID4gPiA+ID4gVGhlIElPTiBhbmRyb2lk
IGNvZGUgaGFzIGxvbmcgYmVlbiBtYXJrZWQgdG8gYmUgcmVtb3ZlZCwgbm93IHRoYXQgd2UKPiA+
ID4gPiA+IGRtYS1idWYgc3VwcG9ydCBtZXJnZWQgaW50byB0aGUgcmVhbCBwYXJ0IG9mIHRoZSBr
ZXJuZWwuCj4gPiA+ID4gPgo+ID4gPiA+ID4gSXQgd2FzIHRob3VnaHQgdGhhdCB3ZSBjb3VsZCB3
YWl0IHRvIHJlbW92ZSB0aGUgaW9uIGtlcm5lbCBhdCBhIGxhdGVyCj4gPiA+ID4gPiB0aW1lLCBi
dXQgYXMgdGhlIG91dC1vZi10cmVlIEFuZHJvaWQgZm9yayBvZiB0aGUgaW9uIGNvZGUgaGFzIGRp
dmVyZ2VkCj4gPiA+ID4gPiBxdWl0ZSBhIGJpdCwgYW5kIGFueSBBbmRyb2lkIGRldmljZSB1c2lu
ZyB0aGUgaW9uIGludGVyZmFjZSB1c2VzIHRoYXQKPiA+ID4gPiA+IGZvcmtlZCB2ZXJzaW9uIGFu
ZCBub3QgdGhpcyBpbi10cmVlIHZlcnNpb24sIHRoZSBpbi10cmVlIGNvcHkgb2YgdGhlCj4gPiA+
ID4gPiBjb2RlIGlzIGFiYW5kb25kZWQgYW5kIG5vdCB1c2VkIGJ5IGFueW9uZS4KPiA+ID4gPiA+
Cj4gPiA+ID4gPiBDb21iaW5lIHRoaXMgYWJhbmRvbmVkIGNvZGViYXNlIHdpdGggdGhlIG5lZWQg
dG8gbWFrZSBjaGFuZ2VzIHRvIGl0IGluCj4gPiA+ID4gPiBvcmRlciB0byBrZWVwIHRoZSBrZXJu
ZWwgYnVpbGRpbmcgcHJvcGVybHksIHdoaWNoIHRoZW4gY2F1c2VzIG1lcmdlCj4gPiA+ID4gPiBp
c3N1ZXMgd2hlbiBtZXJnaW5nIHRob3NlIGNoYW5nZXMgaW50byB0aGUgb3V0LW9mLXRyZWUgQW5k
cm9pZCBjb2RlLCBhbmQKPiA+ID4gPiA+IHlvdSBlbmQgdXAgd2l0aCB0d28gZGlmZmVyZW50IGdy
b3VwcyBvZiBwZW9wbGUgKHRoZSBpbi1rZXJuZWwtdHJlZQo+ID4gPiA+ID4gZGV2ZWxvcGVycywg
YW5kIHRoZSBBbmRyb2lkIGtlcm5lbCBkZXZlbG9wZXJzKSB3aG8gYXJlIGJvdGggYW5ub3llZCBh
dAo+ID4gPiA+ID4gdGhlIGN1cnJlbnQgc2l0dWF0aW9uLiAgQmVjYXVzZSBvZiB0aGlzIHByb2Js
ZW0sIGp1c3QgZHJvcCB0aGUgaW4ta2VybmVsCj4gPiA+ID4gPiBjb3B5IG9mIHRoZSBpb24gY29k
ZSBub3csIGFzIGl0J3Mgbm90IHVzZWQsIGFuZCBpcyBvbmx5IGNhdXNpbmcgcHJvYmxlbXMKPiA+
ID4gPiA+IGZvciBldmVyeW9uZSBpbnZvbHZlZC4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBDYzogIkFy
dmUgSGrDuG5uZXbDpWciIDxhcnZlQGFuZHJvaWQuY29tPgo+ID4gPiA+ID4gQ2M6ICJDaHJpc3Rp
YW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+ID4gPiA+ID4gQ2M6IENocmlz
dGlhbiBCcmF1bmVyIDxjaHJpc3RpYW5AYnJhdW5lci5pbz4KPiA+ID4gPiA+IENjOiBDaHJpc3Rv
cGggSGVsbHdpZyA8aGNoQGluZnJhZGVhZC5vcmc+Cj4gPiA+ID4gPiBDYzogSHJpZHlhIFZhbHNh
cmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+Cj4gPiA+ID4gPiBDYzogSm9lbCBGZXJuYW5kZXMgPGpv
ZWxAam9lbGZlcm5hbmRlcy5vcmc+Cj4gPiA+ID4gPiBDYzogSm9obiBTdHVsdHogPGpvaG4uc3R1
bHR6QGxpbmFyby5vcmc+Cj4gPiA+ID4gPiBDYzogTGF1cmEgQWJib3R0IDxsYXVyYUBsYWJib3R0
Lm5hbWU+Cj4gPiA+ID4gPiBDYzogTWFydGlqbiBDb2VuZW4gPG1hY29AYW5kcm9pZC5jb20+Cj4g
PiA+ID4gPiBDYzogU2h1YWggS2hhbiA8c2h1YWhAa2VybmVsLm9yZz4KPiA+ID4gPiA+IENjOiBT
dW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+ID4gPiA+ID4gQ2M6IFN1cmVu
IEJhZ2hkYXNhcnlhbiA8c3VyZW5iQGdvb2dsZS5jb20+Cj4gPiA+ID4gPiBDYzogVG9kZCBLam9z
IDx0a2pvc0BhbmRyb2lkLmNvbT4KPiA+ID4gPiA+IENjOiBkZXZlbEBkcml2ZXJkZXYub3N1b3Ns
Lm9yZwo+ID4gPiA+ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4g
PiA+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiA+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4g
PiA+ID4KPiA+ID4gPiBXZSBkaXNjdXNzZWQgdGhpcyBhdCB0aGUgQW5kcm9pZCBNQyBvbiBNb25k
YXkgYW5kIHRoZSBwbGFuIHdhcyB0bwo+ID4gPiA+IHJlbW92ZSBpdCBhZnRlciB0aGUgbmV4dCBM
VFMgcmVsZWFzZS4KPiA+ID4KPiA+ID4gSSBrbm93IGl0IHdhcyBkaXNjdXNzZWQsIG15IHBvaW50
IGlzIHRoYXQgaXQgaXMgYWN0dWFsbHkgY2F1c2luZwo+ID4gPiBwcm9ibGVtcyBub3cgKHdpdGgg
ZGV2ZWxvcGVycyB3aG8gd2FudCB0byBjaGFuZ2UgdGhlIGludGVybmFsIGtlcm5lbCBhcGkKPiA+
ID4gaGl0dGluZyBpc3N1ZXMsIGFuZCBuZXdiaWVzIHRyeWluZyB0byBjbGVhbiB1cCBjb2RlIGlu
IHdheXMgdGhhdCBpc24ndAo+ID4gPiBleGFjdGx5IG9wdGltYWwgd2FzdGluZyBtYWludGFpbmVy
IGN5Y2xlcyksIGFuZCB0aGF0IGFueW9uZSB3aG8gdXNlcwo+ID4gPiB0aGlzIGNvZGUsIGlzIG5v
dCBhY3R1YWxseSB1c2luZyB0aGlzIHZlcnNpb24gb2YgdGhlIGNvZGUuICBFdmVyeW9uZSB3aG8K
PiA+ID4gcmVsaWVzIG9uIGlvbiByaWdodCBub3csIGlzIHVzaW5nIHRoZSB2ZXJzaW9uIHRoYXQg
aXMgaW4gdGhlIEFuZHJvaWQKPiA+ID4gY29tbW9uIGtlcm5lbCB0cmVlLCB3aGljaCBoYXMgZGl2
ZXJnZWQgZnJvbSB0aGlzIGluLWtlcm5lbCB3YXkgcXVpdGUgYQo+ID4gPiBiaXQgbm93IGZvciB0
aGUgcmVhc29uIHRoYXQgd2UgZGlkbid0IHdhbnQgdG8gdGFrZSBhbnkgb2YgdGhvc2UgbmV3Cj4g
PiA+IGZlYXR1cmVzIGluIHRoZSBpbi1rZXJuZWwgdmVyc2lvbi4KPiA+ID4KPiA+ID4gU28gdGhp
cyBpcyBhIHByb2JsZW0gdGhhdCB3ZSBoYXZlIGNhdXNlZCBieSBqdXN0IHdhbnRpbmcgdG8gd2Fp
dCwgbm8gb25lCj4gPiA+IGlzIHVzaW5nIHRoaXMgY29kZSwgY29tYmluZWQgd2l0aCBpdCBjYXVz
aW5nIHByb2JsZW1zIGZvciB0aGUgdXBzdHJlYW0KPiA+ID4gZGV2ZWxvcGVycy4KPiA+ID4KPiA+
ID4gVGhlcmUgaXMgbm90aGluZyAibWFnaWMiIGFib3V0IHRoZSBsYXN0IGtlcm5lbCBvZiB0aGUg
eWVhciB0aGF0IHJlcXVpcmVzCj4gPiA+IHRoaXMgY29kZSB0byBzaXQgaGVyZSB1bnRpbCB0aGVu
LiAgQXQgdGhhdCBwb2ludCBpbiB0aW1lLCBhbGwgdXNlcnMKPiA+ID4gd2lsbCwgYWdhaW4sIGJl
IHVzaW5nIHRoZSBmb3JrZWQgQW5kcm9pZCBrZXJuZWwgdmVyc2lvbiwgYW5kIGlmIHdlCj4gPiA+
IGRlbGV0ZSB0aGlzIG5vdyBoZXJlLCB0aGF0IGZvcmsgY2FuIHJlbWFpbiBqdXN0IGZpbmUsIHdp
dGggdGhlIGFkZGVkCj4gPiA+IGJlbmlmaXQgb2YgaXQgcmVkdWNpbmcgZGV2ZWxvcGVyIHdvcmts
b2FkcyBoZXJlIGluLWtlcm5lbC4KPiA+ID4KPiA+ID4gU28gd2h5IHdhaXQ/Cj4gPgo+ID4gSGks
Cj4gPgo+ID4gSSBkb24ndCBrbm93IHdoYXQgaXMgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvIGhlcmUu
IEkganVzdCB3YW50IHRvCj4gPiBoaWdobGlnaHQgdGhhdCBBT1NQJ3MgYXVkaW8gKGNvZGVjMikg
SEFMIGRlcGVuZHMgb24gdGhlIElPTiBzeXN0ZW0KPiA+IGhlYXAgYW5kIGl0IHdpbGwgYnJlYWsg
QU9TUCBmb3IgcGVvcGxlIHdobyBib290IG1haW5saW5lIG9uIHRoZWlyCj4gPiBkZXZpY2VzLCBl
dmVuIGZvciBqdXN0IHRlc3RpbmcgcHVycG9zZSBsaWtlIHdlIGRvIGluIExpbmFyby4gUmlnaHQg
bm93Cj4gPiB3ZSBuZWVkIG9ubHkgMSAoQW5kcm9pZCBzcGVjaWZpYyBvdXQtb2YtdHJlZSkgcGF0
Y2ggdG8gYm9vdCBBT1NQIHdpdGgKPiA+IG1haW5saW5lIGFuZCBTdW1pdCBpcyBhbHJlYWR5IHRy
eWluZyB0byB1cHN0cmVhbSB0aGF0IHZtYSBuYW1pbmcKPiA+IHBhdGNoLiBSZW1vdmFsIG9mIGlu
LWtlcm5lbCBJT04sIHdpbGwganVzdCBhZGQgbW9yZSB0byB0aGF0IGRlbHRhLgo+Cj4gQXMgQU9T
UCB3aWxsIGNvbnRpbnVlIHRvIHJlbHkgb24gSU9OIGFmdGVyIERlY2VtYmVyIG9mIHRoaXMgeWVh
ciwgYWxsCj4geW91IGFyZSBkb2luZyBpcyBwb3N0cG9uaW5nIHRoZSBpbmV2aXRhYmxlIGEgZmV3
IG1vcmUgbW9udGhzLgo+Cj4gUHVzaCBiYWNrIG9uIHRoZSBBbmRyb2lkIHRlYW0gdG8gZml4IHVw
IHRoZSBjb2RlIHRvIG5vdCB1c2UgSU9OLCB0aGV5Cj4ga25vdyB0aGlzIG5lZWRzIHRvIGhhcHBl
bi4KPgoKSGkgYWxsLAoKV2UgYXJlIGN1cnJlbnRseSB3b3JraW5nIHdpdGggdGhlIGNvZGVjMiB0
ZWFtIHRvIHRyYW5zaXRpb24gY29kZWMyIHRvCnVzZSBsaWJkbWFidWZoZWFwIGluc3RlYWQgb2Yg
bGliaW9uLiBJdCB3aWxsIGRlZmluaXRlbHkgaGFwcGVuIGR1cmluZwp0aGUgQW5kcm9pZCBTIHRp
bWVmcmFtZS4KClRoYW5rcywKSHJpZHlhCgo+IHRoYW5rcywKPgo+IGdyZWcgay1oCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

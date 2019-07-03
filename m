Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0ED5ECD2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2019 21:37:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89CF4603C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2019 19:36:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7F16161635; Wed,  3 Jul 2019 19:36:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2 autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9954261636;
	Wed,  3 Jul 2019 19:36:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C06D4603C1
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jul 2019 19:36:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B1D8B61636; Wed,  3 Jul 2019 19:36:26 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 78400603C1
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jul 2019 19:36:25 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id f9so4069049wre.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jul 2019 12:36:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZrIncsFb2XbVt8gYJ6XL/Afg4bsZgxtDJ8pkU7/Fg2o=;
 b=cQi62wbQmtEZY2NvVEtJVN81nll14kOQ2ypK/eoAkspfIcsvgpgMXd6wqh1X1SmVxR
 wK5X6z3xgOlVrFS+rJ+3W31q9/dmubNhN4NTjLRlFM2Dohvqqbm56rfX8PaI2X0k3wAh
 W0u06UOcIJn7wDdbbSeO+GxnYEYQyjS/Mjwo1/D0QNndCgrUbtTxEBNlu0KE/ZX+PrFd
 yxvG3FpXoWAFJmKQ79m3n5k2SI6Fhb/e8Iu0z0OoYt19/PK28UvXIIt7ZDKBrxHgwI1j
 NR0lT3tftgfno16QAY8Oad9uqiK/T8g9qqZj60LBzZQ4u2pKEkaacjgqh/Q6mXkuvFgv
 bmzA==
X-Gm-Message-State: APjAAAUJqNQPgh+WMAWX6dr5PDUKMXJt31M6pR4WnRv7l5DqM+NPZgIX
 KXJ8iZQ+6h5MqI/hDXw+wpgjY86DicIZYK4rmWShxEa2
X-Google-Smtp-Source: APXvYqw1q6SHE/IpfbNzvKq9H4+8uNw+R7FjPQlQRrC7n5MY48KnfoJyYmXEkUg6tRzFiFSyBS2w8aU+Bf3uzd7IdmI=
X-Received: by 2002:adf:afe8:: with SMTP id y40mr28449792wrd.328.1562182584497; 
 Wed, 03 Jul 2019 12:36:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190703081842.22872-1-nishkadg.linux@gmail.com>
 <20190703083745.GB8996@kroah.com>
 <CAKMK7uFAaw3sL_A6gGOeot80fvukjZqprLptLER=riA1_p4zWw@mail.gmail.com>
 <759555d8-98bf-44d3-4fa3-3d927f9a33db@redhat.com>
In-Reply-To: <759555d8-98bf-44d3-4fa3-3d927f9a33db@redhat.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 3 Jul 2019 12:36:13 -0700
Message-ID: <CALAqxLVvEjTbp9P=btOhTugFONWT9wS6Bjmync=WubYknvnE6A@mail.gmail.com>
To: Laura Abbott <labbott@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: driverdevel <devel@driverdev.osuosl.org>, Todd Kjos <tkjos@android.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Daniel Vetter <daniel@ffwll.ch>, Joel Fernandes <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Brian Starkey <Brian.Starkey@arm.com>,
 christian@brauner.io
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] staging: android: ion: Remove file
	ion_carveout_heap.c
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

T24gV2VkLCBKdWwgMywgMjAxOSBhdCA0OjMyIEFNIExhdXJhIEFiYm90dCA8bGFiYm90dEByZWRo
YXQuY29tPiB3cm90ZToKPgo+IE9uIDcvMy8xOSA1OjUwIEFNLCBEYW5pZWwgVmV0dGVyIHdyb3Rl
Ogo+ID4gT24gV2VkLCBKdWwgMywgMjAxOSBhdCAxMDozNyBBTSBHcmVnIEtIIDxncmVna2hAbGlu
dXhmb3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4gPj4KPiA+PiBPbiBXZWQsIEp1bCAwMywgMjAxOSBh
dCAwMTo0ODo0MVBNICswNTMwLCBOaXNoa2EgRGFzZ3VwdGEgd3JvdGU6Cj4gPj4+IFJlbW92ZSBm
aWxlIGlvbl9jYXJ2ZW91dF9oZWFwLmMgYXMgaXRzIGZ1bmN0aW9ucyBhbmQgZGVmaW5pdGlvbnMg
YXJlIG5vdAo+ID4+PiB1c2VkIGFueXdoZXJlLgo+ID4+PiBJc3N1ZSBmb3VuZCB3aXRoIENvY2Np
bmVsbGUuCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IE5pc2hrYSBEYXNndXB0YSA8bmlzaGth
ZGcubGludXhAZ21haWwuY29tPgo+ID4+PiAtLS0KPiA+Pj4gICBkcml2ZXJzL3N0YWdpbmcvYW5k
cm9pZC9pb24vS2NvbmZpZyAgICAgICAgICAgfCAgIDkgLS0KPiA+Pj4gICBkcml2ZXJzL3N0YWdp
bmcvYW5kcm9pZC9pb24vTWFrZWZpbGUgICAgICAgICAgfCAgIDEgLQo+ID4+PiAgIC4uLi9zdGFn
aW5nL2FuZHJvaWQvaW9uL2lvbl9jYXJ2ZW91dF9oZWFwLmMgICB8IDEzMyAtLS0tLS0tLS0tLS0t
LS0tLS0KPiA+Pgo+ID4+IEkga2VlcCB0cnlpbmcgdG8gZG8gdGhpcywgYnV0IG90aGVycyBwb2lu
dCBvdXQgdGhhdCB0aGUgaW9uIGNvZGUgaXMKPiA+PiAiZ29pbmcgdG8gYmUgZml4ZWQgdXAgc29v
biIgYW5kIHRoYXQgcGVvcGxlIHJlbHkgb24gdGhpcyBpbnRlcmZhY2Ugbm93Lgo+ID4+IFdlbGws
ICJjb2RlIG91dHNpZGUgb2YgdGhlIGtlcm5lbCB0cmVlIiByZWxpZXMgb24gdGhpcywgd2hpY2gg
aXMgbm90IG9rLAo+ID4+IGJ1dCB0aGUgInNvb24iIHBlb3BsZSBrZWVwIGluc2lzdGluZyBvbiBp
dC4uLgo+ID4+Cj4gPj4gT2RkcyBhcmUgSSBzaG91bGQganVzdCBkZWxldGUgYWxsIG9mIElPTiwg
YXMgdGhlcmUgaGFzbid0IGJlZW4gYW55Cj4gPj4gZm9yd2FyZCBwcm9ncmVzcyBvbiBpdCBpbiBh
IGxvbmcgdGltZS4KPiA+Pgo+ID4+IEhvcGVmdWxseSB0aGF0IHdha2VzIHNvbWUgcGVvcGxlIHVw
Li4uCj4gPgo+ID4gSm9obiBTdHVsdHogaGFzIGRvbmUgYSBzdGVhZHkgc3RyZWFtIG9uIGlvbiBk
ZXN0YWdpbmcgcGF0Y2ggc2VyaWVzCj4gPiBwYXN0IGZldyBtb250aHMsIHVuZCB0aGUgaGVhZGlu
ZyBvZiAiRE1BLUJVRiBIZWFwcyIsIHRhcmdldGluZwo+ID4gZHJpdmVycy9kbWEtYnVmLiBJJ20g
bm90IGZvbGxvd2luZyB0aGUgZGV0YWlscywgYW5kIGl0IHNlZW1zIGEgYml0IGEKPiA+IGNyYXds
LCBidXQgdGhlcmUncyBkZWZpbml0ZWx5IHdvcmsgZ29pbmcgb24gLi4uIEp1c3QgcHJvYmFibHkg
bm90Cj4gPiBpbi1wbGFjZSBpbiBzdGFnaW5nIEkgdGhpbmsuCj4gPiAtRGFuaWVsCj4gPgo+Cj4K
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9kcmktZGV2ZWwvMjAxOS1K
dW5lLzIyMzcwNS5odG1sCj4KPiBJdCBpcyBtYWtpbmcgc2xvdyBhbmQgc3RlYWR5IHByb2dyZXNz
LiBQYXJ0IG9mIHRoaXMgaXMgdHJ5aW5nIHRvCj4gbWFrZSBzdXJlIHdlIGFjdHVhbGx5IGdldCB0
aGlzIHJpZ2h0IGJlZm9yZSBtb3ZpbmcgYW55dGhpbmcKPiBvdXQgb2Ygc3RhZ2luZy4KCkhvcGVm
dWxseSBub3QgdG9vIG11Y2ggbG9uZ2VyLiBUaGUgcmV2aWV3IGZlZWRiYWNrIGhhcyBnb3R0ZW4g
cXVpZXQKcmVjZW50bHkgc28gaG9wZWZ1bGx5IGV2ZXJ5b25lIGlzIG5vZGRpbmcuCgpOb3RlLCBJ
J2QgYWxzbyBmaW5kIGl0IHVzZWZ1bCB0byAqbm90KiBlamVjdCBJT04gaW1tZWRpYXRlbHkgYWZ0
ZXIKZG1hYnVmIGhlYXBzIGxhbmQsIHNpbmNlIGJlaW5nIGFibGUgdG8gZG8gQS9CIHZhbGlkYXRp
b24gb24gdGhlIHNhbWUKa2VybmVsIGlzIHVzZWZ1bCBpZiBmb2xrcyBydW4gaW50byBhbnkgbmV3
IHBlcmYgcmVncmVzc2lvbnMuIEJ1dApob3BlZnVsbHkgdGhhdCB0cmFuc2l0aW9uIHRpbWUgaXMg
ZmFpcmx5IHNtYWxsLgoKPiBUaGF0IHNhaWQsIEkgdGhpbmsgd2UncmUgYXQgdGhlIHBvaW50IHdo
ZXJlIG5vYm9keSB3YW50cyB0aGUKPiBjYXJ2ZW91dCBhbmQgY2h1bmsgaGVhcHMgc28gSSdkIGFj
dHVhbGx5IGJlIG9rYXkgd2l0aCByZW1vdmluZwo+IHRob3NlIGZpbGVzLiBKdXN0IHRvIGJlIGV4
cGxpY2l0Ogo+Cj4gQWNrZWQtYnk6IExhdXJhIEFiYm90dCA8bGFiYm90dEByZWRoYXQuY29tPgoK
QWdyZWVkLiBJIHRoaW5rIHRoZXJlIGFyZSBzb21lIG91dCBvZiB0cmVlIHVzZXMgYnkgQVJNIGFu
ZCBvdGhlcnMgZm9yCnRoZSBjYXJ2ZW91dCBoZWFwcywgYnV0IEkgZG9uJ3Qga25vdyBpZiBhbnlv
bmUgaXMgdXNpbmcgdGhvc2UKdW5tb2RpZmllZCBhbnl3YXkuICBTbyBubyBvYmplY3Rpb24gZnJv
bSBtZSwgYXMgdGhlcmUgaXMgbm8gd2F5IHRvIHVzZQp0aGVtIHVwc3RyZWFtLgoKdGhhbmtzCi1q
b2huCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

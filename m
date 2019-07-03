Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C0A5E165
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2019 11:51:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28AB0615AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2019 09:51:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1BF0F615AD; Wed,  3 Jul 2019 09:51:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 927446156D;
	Wed,  3 Jul 2019 09:51:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C375D6151F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jul 2019 09:51:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B69336156D; Wed,  3 Jul 2019 09:51:01 +0000 (UTC)
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by lists.linaro.org (Postfix) with ESMTPS id B11776151F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jul 2019 09:51:00 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id l15so1683562otn.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jul 2019 02:51:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H/ehYv/2ak3jZJnHyYTFa/b/nUib6ujuNN4I7eaf8Lw=;
 b=ZpWhOLdEsXV+BUq15hIHixZUj7UzzoB/gYzHSl8kEczlLFhXvvZU8SIaCz0SqmeXDw
 4eajdKVfNiNtuetenpqtURot6vapX9jewAD4Y4Y92Q9yYdgY5R24QpCML7Rd46MrcWqp
 vOJYZEIKQaNvWyvZYDjOHBpdo7nHCqcsrc/kMZlLvRBtRSngjyZCL4rch2A0NkX8B/j5
 K0SAmTlEs/c1qoLwp40AppUla5/9zgwaQ2PLpg0IkLr12EdKw+px+Qm6peoOS2dG1cGT
 jbi8lppnmSILg7gXeZNwyFotXm0AUFa221eJi91wvcHpsZWzwhBtJq5d7Cth8LBbZnIo
 OTZA==
X-Gm-Message-State: APjAAAVn7wDzx7YAoyDrq9bYgekmEG+Rhg/VaF0tiTzQvtQz1V8rObff
 ADPrcBHfpe3xHdrAGQw/roxyHs4VCu3O5Sd40XlMwA==
X-Google-Smtp-Source: APXvYqx/azz/6Vc4WD1pKgY9UXBiehUSQbpKmzO3HsJXJ5Ws2WYqFWnzzr3U7FZPfAcAkjcQu+T8npPeRaqHBsN5fAs=
X-Received: by 2002:a05:6830:4b:: with SMTP id
 d11mr647832otp.106.1562147460149; 
 Wed, 03 Jul 2019 02:51:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190703081842.22872-1-nishkadg.linux@gmail.com>
 <20190703083745.GB8996@kroah.com>
In-Reply-To: <20190703083745.GB8996@kroah.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 3 Jul 2019 11:50:47 +0200
Message-ID: <CAKMK7uFAaw3sL_A6gGOeot80fvukjZqprLptLER=riA1_p4zWw@mail.gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, John Stultz <john.stultz@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: driverdevel <devel@driverdev.osuosl.org>, Todd Kjos <tkjos@android.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, joel@joelfernandes.org,
 maco@android.com, christian@brauner.io
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

T24gV2VkLCBKdWwgMywgMjAxOSBhdCAxMDozNyBBTSBHcmVnIEtIIDxncmVna2hAbGludXhmb3Vu
ZGF0aW9uLm9yZz4gd3JvdGU6Cj4KPiBPbiBXZWQsIEp1bCAwMywgMjAxOSBhdCAwMTo0ODo0MVBN
ICswNTMwLCBOaXNoa2EgRGFzZ3VwdGEgd3JvdGU6Cj4gPiBSZW1vdmUgZmlsZSBpb25fY2FydmVv
dXRfaGVhcC5jIGFzIGl0cyBmdW5jdGlvbnMgYW5kIGRlZmluaXRpb25zIGFyZSBub3QKPiA+IHVz
ZWQgYW55d2hlcmUuCj4gPiBJc3N1ZSBmb3VuZCB3aXRoIENvY2NpbmVsbGUuCj4gPgo+ID4gU2ln
bmVkLW9mZi1ieTogTmlzaGthIERhc2d1cHRhIDxuaXNoa2FkZy5saW51eEBnbWFpbC5jb20+Cj4g
PiAtLS0KPiA+ICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vS2NvbmZpZyAgICAgICAgICAg
fCAgIDkgLS0KPiA+ICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vTWFrZWZpbGUgICAgICAg
ICAgfCAgIDEgLQo+ID4gIC4uLi9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbl9jYXJ2ZW91dF9oZWFw
LmMgICB8IDEzMyAtLS0tLS0tLS0tLS0tLS0tLS0KPgo+IEkga2VlcCB0cnlpbmcgdG8gZG8gdGhp
cywgYnV0IG90aGVycyBwb2ludCBvdXQgdGhhdCB0aGUgaW9uIGNvZGUgaXMKPiAiZ29pbmcgdG8g
YmUgZml4ZWQgdXAgc29vbiIgYW5kIHRoYXQgcGVvcGxlIHJlbHkgb24gdGhpcyBpbnRlcmZhY2Ug
bm93Lgo+IFdlbGwsICJjb2RlIG91dHNpZGUgb2YgdGhlIGtlcm5lbCB0cmVlIiByZWxpZXMgb24g
dGhpcywgd2hpY2ggaXMgbm90IG9rLAo+IGJ1dCB0aGUgInNvb24iIHBlb3BsZSBrZWVwIGluc2lz
dGluZyBvbiBpdC4uLgo+Cj4gT2RkcyBhcmUgSSBzaG91bGQganVzdCBkZWxldGUgYWxsIG9mIElP
TiwgYXMgdGhlcmUgaGFzbid0IGJlZW4gYW55Cj4gZm9yd2FyZCBwcm9ncmVzcyBvbiBpdCBpbiBh
IGxvbmcgdGltZS4KPgo+IEhvcGVmdWxseSB0aGF0IHdha2VzIHNvbWUgcGVvcGxlIHVwLi4uCgpK
b2huIFN0dWx0eiBoYXMgZG9uZSBhIHN0ZWFkeSBzdHJlYW0gb24gaW9uIGRlc3RhZ2luZyBwYXRj
aCBzZXJpZXMKcGFzdCBmZXcgbW9udGhzLCB1bmQgdGhlIGhlYWRpbmcgb2YgIkRNQS1CVUYgSGVh
cHMiLCB0YXJnZXRpbmcKZHJpdmVycy9kbWEtYnVmLiBJJ20gbm90IGZvbGxvd2luZyB0aGUgZGV0
YWlscywgYW5kIGl0IHNlZW1zIGEgYml0IGEKY3Jhd2wsIGJ1dCB0aGVyZSdzIGRlZmluaXRlbHkg
d29yayBnb2luZyBvbiAuLi4gSnVzdCBwcm9iYWJseSBub3QKaW4tcGxhY2UgaW4gc3RhZ2luZyBJ
IHRoaW5rLgotRGFuaWVsCgo+Cj4gdGhhbmtzLAo+Cj4gZ3JlZyBrLWgKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxp
c3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKCgoKLS0KRGFuaWVsIFZldHRl
cgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcg
NDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=

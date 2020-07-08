Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B14AB217DB8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jul 2020 05:44:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E26F0668C4
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Jul 2020 03:44:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D3B38668C5; Wed,  8 Jul 2020 03:44:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86D7C668C3;
	Wed,  8 Jul 2020 03:43:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5CFD6668BA
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2020 03:43:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4272B668C3; Wed,  8 Jul 2020 03:43:43 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id F173B668BA
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Jul 2020 03:43:41 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id e90so5414883ote.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Jul 2020 20:43:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mHwnZGqBxO1eR5fw/gOLrflI6sKMZmZB5dQJW/fz1OI=;
 b=WtY+Q4+ktgD1XwPaaq9Vf+KZKyieTh5OfQ7dJK7Wu4JojGdOF845ZQJfA0Cr4/jIIV
 QDcC+0coqTvUdTCZACbQvjrO8nWtuSnK4Co9G86NvX7JmtifpJQ8gy61DfBF40JkVL30
 kjswkhaNMVBL3IkX8eK7qWmG1Z10BONCKrq09lK1bynBCj8woTneMNE4e3OMOY2crfnp
 EybJwrxMuwtRg3EfQOcQdUaQ8W2Gkst3ur39pwd2bl/7nqQOQ02Jst3uqS5hdOVSvZIY
 gXVL2UOojP6ozgw4S08GZTZFKdgT8e7gbblF21C60A6aOvk2m/9JX6O2m9vzA58Vsx6q
 vk/g==
X-Gm-Message-State: AOAM5302tldMvIWbTE2CAbR4yMScXFj/lkUUuQuIOKnJl2s5GDi3tFVY
 a0dF9t5KuVyanJqaXj3dZQK2xALLv6nRSNBHATduaGq6
X-Google-Smtp-Source: ABdhPJzAu9QJrh4zqPuK1ULgvhkk3S7kmolCzNiGAneauQgVnQWUl8xkvWerju6/BQBeQKcs2e83J8fINMSb4CvYdms=
X-Received: by 2002:a9d:7303:: with SMTP id e3mr40868563otk.221.1594179821275; 
 Tue, 07 Jul 2020 20:43:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200414142810.GA958163@kroah.com>
 <CALAqxLX-SUhHPH6ewt-s9cEMc8DtMTgXem=JruAkLofuJf1syg@mail.gmail.com>
 <20200416102508.GA820251@kroah.com>
 <20200420082207.ui7iyg7dsnred2vv@wittgenstein>
 <CALAqxLW-txNEqW=P_9VTxvOVu_fgpjzHHDbR5BhtpYwhg1SXgw@mail.gmail.com>
 <20200421080544.GA611314@kroah.com> <20200703070403.GB2221524@kroah.com>
In-Reply-To: <20200703070403.GB2221524@kroah.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 7 Jul 2020 20:43:30 -0700
Message-ID: <CALAqxLUHT=CGNxffz+3G-bUNc2FM_TawDrymFN+S=ZiPcM9pkg@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: driverdevel <devel@driverdev.osuosl.org>, nd <nd@arm.com>,
 Todd Kjos <tkjos@android.com>, Lecopzer Chen <lecopzer.chen@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Christian Brauner <christian@brauner.io>,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>,
 Martijn Coenen <maco@android.com>,
 Christian Brauner <christian.brauner@ubuntu.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] staging: android: ion: Skip sync if not
	mapped
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

T24gRnJpLCBKdWwgMywgMjAyMCBhdCAxMjowMyBBTSBHcmVnIEtyb2FoLUhhcnRtYW4KPGdyZWdr
aEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToKPiBPbiBUdWUsIEFwciAyMSwgMjAyMCBhdCAx
MDowNTo0NEFNICswMjAwLCBHcmVnIEtyb2FoLUhhcnRtYW4gd3JvdGU6Cj4gPiBPbiBNb24sIEFw
ciAyMCwgMjAyMCBhdCAwMTowMzozOVBNIC0wNzAwLCBKb2huIFN0dWx0eiB3cm90ZToKPiA+ID4g
VGhlIGRtYWJ1ZiBoZWFwcyBoYXZlIGJlZW4gaW4gYW4gb2ZmaWNpYWwga2VybmVsIG5vdyBmb3Ig
YWxsIG9mIHRocmVlCj4gPiA+IHdlZWtzLiBTbyB5ZWEsIHdlIGNhbiAiZGVsZXRlIFtJT05dIGFu
ZCBzZWUgd2hvIGV2ZW4gbm90aWNlcyIsIGJ1dCBJCj4gPiA+IHdvcnJ5IHRoYXQgbWF5IHNlZW0g
YSBiaXQgbGlrZSBjb250ZW1wdCBmb3IgdGhlIGZvbGtzIGRvaW5nIHRoZSB3b3JrCj4gPiA+IG9u
IHRyYW5zaXRpb25pbmcgb3Zlciwgd2hpY2ggZG9lc24ndCBoZWxwIGdldHRpbmcgdGhlbSB0byBw
YXJ0aWNpcGF0ZQo+ID4gPiB3aXRoaW4gdGhlIGNvbW11bml0eS4KPiA+Cj4gPiBCdXQgdGhleSBh
cmVuJ3QgcGFydGljaXBhdGluZyBpbiB0aGUgY29tbXVuaXR5IHRvZGF5IGFzIG5vIG9uZSBpcwo+
ID4gdG91Y2hpbmcgdGhlIGlvbiBjb2RlLiAgU28gSSBmYWlsIHRvIHNlZSBob3cga2VlcGluZyBh
IGRlYWQtZW5kLXZlcnNpb24KPiA+IG9mIGlvbiBpbiB0aGUga2VybmVsIHRyZWUgcmVhbGx5IGFm
ZmVjdHMgYW55b25lIHRoZXNlIGRheXMuCj4KPiBTbywgYW55IHRob3VnaHRzIGhlcmU/ICBXaGF0
J3MgdGhlIHRpbWVsaW5lIGZvciBpb24gYmVpbmcgYWJsZSB0byBiZQo+IHJlbW92ZWQgdGhhdCB5
b3UgYXJlIGNvbWZvcnRhYmxlIHdpdGg/CgpTb3JyeSBmb3IgdGhlIHNsb3cgcmVwbHkuICBTbyBt
eSBlYXJsaWVyIHBsYW4gd2FzIHRvIGRyb3AgaXQgYWZ0ZXIgdGhlIG5leHQgTFRTPwoKdGhhbmtz
Ci1qb2huCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE2F1B169F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2020 22:04:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6FB460EFE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2020 20:04:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C108C61877; Mon, 20 Apr 2020 20:04:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8E7260EAD;
	Mon, 20 Apr 2020 20:03:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4D5A66064D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2020 20:03:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4009260EAD; Mon, 20 Apr 2020 20:03:51 +0000 (UTC)
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by lists.linaro.org (Postfix) with ESMTPS id 1EC836064D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2020 20:03:50 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id j4so9251822otr.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2020 13:03:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QmIL5crnJ6coQ/xisfoITs7FajvHe0i8ibpe9qH1tOw=;
 b=Jxea7FLKBU0cn0GL67QvwSAXEwQ47f2ueuxMPgRfeFYMrG9FpMNN+I6CtA5aMqeKr+
 x1HNlWCbRblGMM9pWxpqt9qaMRORGDBYQNrX9lf3O2DmsfD8ZZilr8CBRmhhwWD8mrQi
 idIJLL7feQKcnLYWe0Xejh5V2FhOl8NJgLhmv23Sjp4BqzcEGD+jwlX9buCFi2ts3k3b
 4SquBGMzYfqxKzIQGxjMJh9ntwKCuMGFZV1fOIksnw0SNH6VpKX0F1cb6gdDZOpANdnz
 gBSJtWhfjuKVHhG9o6TuTXQY1UCEdSsKhSiHxz5n893LjK0CMLPeN6lL7U3z5NkEeDBw
 5sog==
X-Gm-Message-State: AGi0Pubm2pgilD8prFuryOXdtlYJGPOB3PX/T5U19dOBqB8zxz36Qc6D
 7WkLbdwzH6vQu86YBG4xKPrGObNaGF86J0cni0dcJakr
X-Google-Smtp-Source: APiQypK2nqgSukevEMOkrgEiY+Twkm4ExNtv93iL2MCVA6EiSnE9I0/kG/gRCZfwm2sf3tRai+xV044YMqqalBHAyGM=
X-Received: by 2002:a05:6830:22dc:: with SMTP id
 q28mr10406884otc.221.1587413029451; 
 Mon, 20 Apr 2020 13:03:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200414142810.GA958163@kroah.com>
 <CALAqxLX-SUhHPH6ewt-s9cEMc8DtMTgXem=JruAkLofuJf1syg@mail.gmail.com>
 <20200416102508.GA820251@kroah.com>
 <20200420082207.ui7iyg7dsnred2vv@wittgenstein>
In-Reply-To: <20200420082207.ui7iyg7dsnred2vv@wittgenstein>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 20 Apr 2020 13:03:39 -0700
Message-ID: <CALAqxLW-txNEqW=P_9VTxvOVu_fgpjzHHDbR5BhtpYwhg1SXgw@mail.gmail.com>
To: Christian Brauner <christian.brauner@ubuntu.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: driverdevel <devel@driverdev.osuosl.org>, nd <nd@arm.com>,
 Todd Kjos <tkjos@android.com>, Lecopzer Chen <lecopzer.chen@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 linux-media@vger.kernel.org
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

T24gTW9uLCBBcHIgMjAsIDIwMjAgYXQgMToyMiBBTSBDaHJpc3RpYW4gQnJhdW5lcgo8Y2hyaXN0
aWFuLmJyYXVuZXJAdWJ1bnR1LmNvbT4gd3JvdGU6Cj4gT24gVGh1LCBBcHIgMTYsIDIwMjAgYXQg
MTI6MjU6MDhQTSArMDIwMCwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+ID4gT24gVHVlLCBB
cHIgMTQsIDIwMjAgYXQgMDk6NDE6MzFQTSAtMDcwMCwgSm9obiBTdHVsdHogd3JvdGU6Cj4gPiA+
IEJ1dCBJIGRvIHRoaW5rIHdlIGNhbiBtYXJrIGl0IGFzIGRlcHJlY2F0ZWQgYW5kIGxldCBmb2xr
cyBrbm93IHRoYXQKPiA+ID4gYXJvdW5kIHRoZSBlbmQgb2YgdGhlIHllYXIgaXQgd2lsbCBiZSBk
ZWxldGVkLgo+ID4KPiA+IE5vIG9uZSBldmVyIG5vdGljZXMgImRlcHJlY2lhdGVkIiB0aGluZ3Ms
IHRoZXkgb25seSBub3RpY2UgaWYgdGhlIGNvZGUKPiA+IGlzIG5vIGxvbmdlciB0aGVyZSA6KQo+
ID4KPiA+IFNvIEknbSBhbGwgZm9yIGp1c3QgZGVsZXRpbmcgaXQgYW5kIHNlZWluZyB3aG8gZXZl
biBub3RpY2VzLi4uCj4KPiBBZ3JlZWQuCgpJIG1lYW4sIEkgZ2V0IHRoZXJlJ3Mgbm90IG11Y2gg
bG92ZSBmb3IgSU9OIGluIHN0YWdpbmcsIGFuZCBJIHRvbyBhbQplYWdlciB0byBzZWUgaXQgZ28s
IGJ1dCBJIGFsc28gZmVlbCBsaWtlIGluIHRoZSBkaXNjdXNzaW9ucyBhcm91bmQKc3VibWl0dGlu
ZyB0aGUgZG1hYnVmIGhlYXBzIGF0IHRhbGtzLCBldGMsIHRoYXQgdGhlcmUgd2FzIGNsZWFyIHZh
bHVlCmluIHJlbW92aW5nIElPTiBhZnRlciBhIHNob3J0IHRpbWUgc28gdGhhdCBmb2xrcyBjb3Vs
ZCB0cmFuc2l0aW9uCmJlaW5nIGFibGUgdG8gdGVzdCBib3RoIGltcGxlbWVudGF0aW9ucyBhZ2Fp
bnN0IHRoZSBzYW1lIGtlcm5lbCBzbwpwZXJmb3JtYW5jZSByZWdyZXNzaW9ucywgZXRjIGNvdWxk
IGJlIHdvcmtlZCBvdXQuCgpJIGFtIGFjdGl2ZWx5IGdldHRpbmcgbWFueSByZXF1ZXN0cyBmb3Ig
aGVscCBmb3IgdmVuZG9ycyB3aG8gYXJlCmxvb2tpbmcgYXQgZG1hYnVmIGhlYXBzIGFuZCBhcmUg
c3RhcnRpbmcgdGhlIHRyYW5zaXRpb24gcHJvY2VzcywgYW5kCkknbSB0cnlpbmcgbXkgYmVzdCB0
byBtb3RpdmF0ZSB0aGVtIHRvIGRpcmVjdGx5IHdvcmsgd2l0aGluIHRoZQpjb21tdW5pdHkgc28g
dGhlaXIgbmVlZGVkIGhlYXAgZnVuY3Rpb25hbGl0eSBjYW4gZ28gdXBzdHJlYW0uIEJ1dCBpdCdz
CmdvaW5nIHRvIGJlIGEgcHJvY2VzcywgYW5kIHRoZWlyIGZpcnN0IGF0dGVtcHRzIGFyZW4ndCBn
b2luZyB0bwptYWdpY2FsbHkgbGFuZCB1cHN0cmVhbS4gIEkgdGhpbmsgYmVpbmcgYWJsZSB0byBy
ZWFsbHkgY29tcGFyZSB0aGVpcgppbXBsZW1lbnRhdGlvbnMgYXMgdGhleSBpdGVyYXRlIGFuZCBw
dXNoIHRoaW5ncyB1cHN0cmVhbSB3aWxsIGhlbHAgaW4Kb3JkZXIgdG8gYmUgYWJsZSB0byBoYXZl
IHVwc3RyZWFtIHNvbHV0aW9ucyB0aGF0IGFyZSBhbHNvIHByb3Blcmx5CmZ1bmN0aW9uYWwgZm9y
IHByb2R1Y3Rpb24gdXNhZ2UuCgpUaGUgZG1hYnVmIGhlYXBzIGhhdmUgYmVlbiBpbiBhbiBvZmZp
Y2lhbCBrZXJuZWwgbm93IGZvciBhbGwgb2YgdGhyZWUKd2Vla3MuIFNvIHllYSwgd2UgY2FuICJk
ZWxldGUgW0lPTl0gYW5kIHNlZSB3aG8gZXZlbiBub3RpY2VzIiwgYnV0IEkKd29ycnkgdGhhdCBt
YXkgc2VlbSBhIGJpdCBsaWtlIGNvbnRlbXB0IGZvciB0aGUgZm9sa3MgZG9pbmcgdGhlIHdvcmsK
b24gdHJhbnNpdGlvbmluZyBvdmVyLCB3aGljaCBkb2Vzbid0IGhlbHAgZ2V0dGluZyB0aGVtIHRv
IHBhcnRpY2lwYXRlCndpdGhpbiB0aGUgY29tbXVuaXR5LgoKdGhhbmtzCi1qb2huCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

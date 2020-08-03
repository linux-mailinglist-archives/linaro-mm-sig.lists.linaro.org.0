Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2361224852D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:49:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E3C460E39
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:49:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4152F6601F; Tue, 18 Aug 2020 12:49:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F785666E8;
	Tue, 18 Aug 2020 12:32:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4199B61627
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 16:23:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2DCC861655; Mon,  3 Aug 2020 16:23:07 +0000 (UTC)
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by lists.linaro.org (Postfix) with ESMTPS id 53F5B61627
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 16:23:06 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id l60so119779pjb.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Aug 2020 09:23:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DuAzZZbtTCD/FunpRik00QhyAGnIAetc0b9NRlFShwk=;
 b=FgdjpYraN5oZmzjv9CM1Hd1ytSMPFMijAadNfz4YX/JwJ8izFiiMx/2sM5mjX/LU1s
 pksGdSTuiXLVonppYsKLil7C1LIgThbNtbdFytCiGL7mTiFhvpTtT2c6mFkHQZzkfYBe
 x+0kGvBiFbSIrOGdm32VRm+Owzg3yQ+y9xp+i3ay88euGxJODuuytswuHbjd3JAEi8sq
 0Yy2rAwYBeZE1g/hvNZFrjMWvfXXA8aNtrinMgnEEYWmquJTHEROnH9QUQrFmg5VtG8Z
 nk3OItkvEWak2j/epZo3jJ7Bq72qf8qPOZR1v9s6U0gEB97vDO1IC/+ruLpXY1MJxNkh
 V/zA==
X-Gm-Message-State: AOAM533pP2xyYBauzw2ZjdahMRvodiMB9q3fEfVMlCWVVYJ3NhudRz+1
 L+z6u4XaGXzbMZUe5PK79/I/twylY5UOR/UlTfn5pDWp+IE=
X-Google-Smtp-Source: ABdhPJw4q/ZXP9VLpgKpRjolRWqGRWM7lRrYpiraKWz+WS2rqxzSA2J4h04p9yxEq05Q+UN+KZ6A3bHJZXLviXDzUZw=
X-Received: by 2002:a67:6441:: with SMTP id y62mr12434936vsb.82.1596471784607; 
 Mon, 03 Aug 2020 09:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-3-kaleshsingh@google.com>
 <20200803154125.GA23808@casper.infradead.org>
 <CAJuCfpFLikjaoopvt+vGN3W=m9auoK+DLQNgUf-xUbYfC=83Mw@mail.gmail.com>
 <20200803161230.GB23808@casper.infradead.org>
In-Reply-To: <20200803161230.GB23808@casper.infradead.org>
From: Suren Baghdasaryan <surenb@google.com>
Date: Mon, 3 Aug 2020 09:22:53 -0700
Message-ID: <CAJuCfpGot1Lr+eS_AU30gqrrjc0aFWikxySe0667_GTJNsGTMw@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:32 +0000
Cc: Jonathan Corbet <corbet@lwn.net>,
 DRI mailing list <dri-devel@lists.freedesktop.org>, linux-doc@vger.kernel.org,
 Ioannis Ilkos <ilkos@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, Ingo Molnar <mingo@redhat.com>,
 John Stultz <john.stultz@linaro.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Kalesh Singh <kaleshsingh@google.com>, linux-fsdevel@vger.kernel.org,
 kernel-team <kernel-team@android.com>, linux-media@vger.kernel.org
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

T24gTW9uLCBBdWcgMywgMjAyMCBhdCA5OjEyIEFNIE1hdHRoZXcgV2lsY294IDx3aWxseUBpbmZy
YWRlYWQub3JnPiB3cm90ZToKPgo+IE9uIE1vbiwgQXVnIDAzLCAyMDIwIGF0IDA5OjAwOjAwQU0g
LTA3MDAsIFN1cmVuIEJhZ2hkYXNhcnlhbiB3cm90ZToKPiA+IE9uIE1vbiwgQXVnIDMsIDIwMjAg
YXQgODo0MSBBTSBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFkLm9yZz4gd3JvdGU6Cj4g
PiA+Cj4gPiA+IE9uIE1vbiwgQXVnIDAzLCAyMDIwIGF0IDAyOjQ3OjE5UE0gKzAwMDAsIEthbGVz
aCBTaW5naCB3cm90ZToKPiA+ID4gPiArc3RhdGljIHZvaWQgZG1hX2J1Zl9mZF9pbnN0YWxsKGlu
dCBmZCwgc3RydWN0IGZpbGUgKmZpbHApCj4gPiA+ID4gK3sKPiA+ID4gPiArICAgICB0cmFjZV9k
bWFfYnVmX2ZkX3JlZl9pbmMoY3VycmVudCwgZmlscCk7Cj4gPiA+ID4gK30KPiA+ID4KPiA+ID4g
WW91J3JlIGFkZGluZyBhIG5ldyBmaWxlX29wZXJhdGlvbiBpbiBvcmRlciB0byBqdXN0IGFkZCBh
IG5ldyB0cmFjZXBvaW50Pwo+ID4gPiBOQUNLLgo+ID4KPiA+IEhpIE1hdHRoZXcsCj4gPiBUaGUg
cGxhbiBpcyB0byBhdHRhY2ggYSBCUEYgdG8gdGhpcyB0cmFjZXBvaW50IGluIG9yZGVyIHRvIHRy
YWNrCj4gPiBkbWEtYnVmIHVzZXJzLiBJZiB5b3UgZmVlbCB0aGlzIGlzIGFuIG92ZXJraWxsLCB3
aGF0IHdvdWxkIHlvdSBzdWdnZXN0Cj4gPiBhcyBhbiBhbHRlcm5hdGl2ZT8KPgo+IEknbSBzdXJl
IEJQRiBjYW4gYXR0YWNoIHRvIGZkX2luc3RhbGwgYW5kIGZpbHRlciBvbiBmaWxlLT5mX29wcyBi
ZWxvbmdpbmcKPiB0byBkbWFfYnVmLCBmb3IgZXhhbXBsZS4KClNvdW5kcyBsaWtlIGEgd29ya2Fi
bGUgc29sdXRpb24uIFdpbGwgZXhwbG9yZSB0aGF0IGRpcmVjdGlvbi4gVGhhbmtzIE1hdHRoZXch
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F250E248569
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:53:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2542B6162C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:53:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 167EE619B1; Tue, 18 Aug 2020 12:53:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33130666FB;
	Tue, 18 Aug 2020 12:32:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 022EB60785
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 02:11:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D1CCD61653; Tue,  4 Aug 2020 02:11:11 +0000 (UTC)
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com
 [209.85.222.66])
 by lists.linaro.org (Postfix) with ESMTPS id 0475C60785
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 02:11:11 +0000 (UTC)
Received: by mail-ua1-f66.google.com with SMTP id x19so6323377uap.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Aug 2020 19:11:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k9EPoA/TZ6oFdobQPbI92mloUpSocVCmYhmgQ9XTICk=;
 b=j+PtX12MjvIGZx610VzmW2GllJN+h8A7GyJj6vypQ35gq/DDeU4rDSdcKfzc/Xp4vc
 e8jHsmCzOPNcuUIhkV0r4fOwwVvGCdTD8Us6IzOUtg/SSceolQQO7nzpiJ7EAIlX1tUk
 s8yiRWacivxaJk77Zk2IoxyOQI4FDO8vl8+YGMlNyHB/XxyKQBD4ntjcm0rL7Qj+WNyB
 +uX6b7AXA2y9ZkxlzArKrHJBN5bJJOsHeQoTsCPByliFwPgnTjcujFZ+Lr2xuwIfbNBG
 mr5wlIUfelKBmKBCGjGD+nnBD4NZAJY+HfNrvfaHirCGyJzeGdTf2A3PMpPhZTXthLG6
 YRHA==
X-Gm-Message-State: AOAM530Q4AmldbDYMRkSFq9WDrzQF7B8QvPtDpVbOoUBGfgrqdo8c4rG
 isU8PkAPGbgxVOMQ2YkYDf1E0fNc1oejl3UAfzWBfw==
X-Google-Smtp-Source: ABdhPJxsSSJwioh1fipswY2Sg0TuZ8kexPdrIAJWw0UnM4xG9WSpH2NU05FlGdWBuHZgMZ+Mu0VvpeSV2QDEBT1mDD8=
X-Received: by 2002:ab0:5eaa:: with SMTP id y42mr13300969uag.118.1596507070267; 
 Mon, 03 Aug 2020 19:11:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-3-kaleshsingh@google.com>
 <20200803154125.GA23808@casper.infradead.org>
 <CAJuCfpFLikjaoopvt+vGN3W=m9auoK+DLQNgUf-xUbYfC=83Mw@mail.gmail.com>
 <20200803161230.GB23808@casper.infradead.org>
 <CAJuCfpGot1Lr+eS_AU30gqrrjc0aFWikxySe0667_GTJNsGTMw@mail.gmail.com>
 <20200803222831.GI1236603@ZenIV.linux.org.uk>
 <20200804010913.GA2096725@ZenIV.linux.org.uk>
In-Reply-To: <20200804010913.GA2096725@ZenIV.linux.org.uk>
From: Suren Baghdasaryan <surenb@google.com>
Date: Mon, 3 Aug 2020 19:10:59 -0700
Message-ID: <CAJuCfpE3fqCDfNmKphg6ZkHVb-B07_jvhquVgwgPHPi1CTupmw@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:32 +0000
Cc: Jonathan Corbet <corbet@lwn.net>,
 DRI mailing list <dri-devel@lists.freedesktop.org>, linux-doc@vger.kernel.org,
 Ioannis Ilkos <ilkos@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, Ingo Molnar <mingo@redhat.com>,
 John Stultz <john.stultz@linaro.org>, Matthew Wilcox <willy@infradead.org>,
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

T24gTW9uLCBBdWcgMywgMjAyMCBhdCA2OjA5IFBNIEFsIFZpcm8gPHZpcm9AemVuaXYubGludXgu
b3JnLnVrPiB3cm90ZToKPgo+IE9uIE1vbiwgQXVnIDAzLCAyMDIwIGF0IDExOjI4OjMxUE0gKzAx
MDAsIEFsIFZpcm8gd3JvdGU6Cj4KPiA+IElPVywgd2hhdCB0aGUgaGVsbCBpcyB0aGF0IGhvcnJv
ciBmb3I/ICBZb3UgZG8gcmVhbGl6ZSwgZm9yIGV4YW1wbGUsIHRoYXQgdGhlcmUncwo+ID4gc3Vj
aCB0aGluZyBhcyBkdXAoKSwgcmlnaHQ/ICBBbmQgZHVwMigpIGFzIHdlbGwuICBBbmQgd2hpbGUg
d2UgYXJlIGF0IGl0LCBob3cKPiA+IGRvIHlvdSBrZWVwIHRyYWNrIG9mIHJlbW92YWxzLCBjb25z
aWRlcmluZyB0aGUgZmFjdCB0aGF0IHlvdSBjYW4gc3RpY2sgYSBmaWxlCj4gPiByZWZlcmVuY2Ug
aW50byBTQ01fUklHSFRTIGRhdGFncmFtIHNlbnQgdG8geW91cnNlbGYsIGNsb3NlIGRlc2NyaXB0
b3JzIGFuZCBhbiBob3VyCj4gPiBsYXRlciBwaWNrIHRoYXQgZGF0YWdyYW0sIHN1ZGRlbmx5IGdl
dHRpbmcgZGVzY3JpcHRvciBiYWNrPwo+ID4KPiA+IEJlc2lkZXMsICJJIGhhdmUgbm8gZGVzY3Jp
cHRvcnMgbGVmdCIgIT0gIkkgY2FuJ3QgYmUgY3VycmVudGx5IHNpdHRpbmcgaW4gdGhlIG1pZGRs
ZQo+ID4gb2Ygc3lzY2FsbCBvbiB0aGF0IHN1Y2tlciI7IGNsb3NlKCkgZG9lcyAqTk9UKiB0ZXJt
aW5hdGUgb25nb2luZyBvcGVyYXRpb25zLgoKVGhhbmtzIGZvciB5b3VyIGZlZWRiYWNrLCBBbC4g
SSBzZWUgeW91ciBwb2ludHMgYW5kIHNvcnJ5IGZvciBub3QKcmVhbGl6aW5nIHRoZXNlIHNob3J0
Y29taW5ncy4KCj4gPgo+ID4gWW91IGFyZSBsb29raW5nIGF0IHRoZSBkcmFzdGljYWxseSB3cm9u
ZyBhYnN0cmFjdGlvbiBsZXZlbC4gIFBsZWFzZSwgZGVzY3JpYmUgd2hhdAo+ID4gaXQgaXMgdGhh
dCB5b3UgYXJlIHRyeWluZyB0byBhY2hpZXZlLgo+Cj4gX0lGXyBpdCdzICJ3aG8ga2VlcHMgYSBw
YXJ0aWN1bGFybHkgbG9uZy1saXZlZCBzdWNrZXIgcGlubmVkIiwgSSB3b3VsZCBzdWdnZXN0Cj4g
ZnVzZXIoMSkgcnVuIHdoZW4geW91IGRldGVjdCB0aGF0IGtpbmQgb2YgbG9uZy1saXZlZCBkbWFi
dWYuICBXaXRoIGV2ZW50cyBnZW5lcmF0ZWQKPiBieSB0aGVpciBjb25zdHJ1Y3RvcnMgYW5kIGRl
c3RydWN0b3JzLCBhbmQgZGV0ZWN0aW9uIG9mIGxvbmdldml0eSBkb25lIGJhc2VkIG9uCj4gdGhh
dC4KClRoYXQgaXMgdGhlIGludGVudGlvbiBoZXJlLiBJSVVDIGZ1c2VyKDEpIHdvdWxkIHJlcXVp
cmUgcm9vdCBhY2Nlc3MgdG8KY29sbGVjdCB0aGlzIGluZm9ybWF0aW9uIGZyb20gYSBwcm9jZXNz
IG90aGVyIHRoYW4gdGhlIGNhbGxlci4gSWRlYWxseQp3aGF0IHdlIHdvdWxkIGxpa2UgdG8gaGF2
ZSBpcyBhIG5vbi1yb290IHByb2Nlc3Mgd2l0aCBzcGVjaWZpYwpjYXBhYmlsaXRpZXMgKGluIG91
ciBjYXNlIGEgcHJvY2VzcyB0aGF0IGNhbiBhY2Nlc3MgQlBGIG1hcHMpIHRvIGJlCmFibGUgdG8g
b2J0YWluIHRoZSBpbmZvcm1hdGlvbiBvbiBkbWEtYnVmIHVzZXJzLgpIb3dldmVyLCBpdCBtaWdo
dCBtYWtlIG1vcmUgc2Vuc2UgdG8gdHJhY2sgZG1hLWJ1ZiB1c2FnZSBmcm9tCmRtYV9idWZfZ2V0
ZmlsZSwgZG1hX2J1Zl9nZXQgYW5kIGRtYV9idWZfcHV0IHNpbmNlIHRoZXNlIGNhbGxzIGFyZSB0
aGUKb25lcyB0aGF0IGFmZmVjdCBmaWxlIHJlZmNvdW50LiBXaWxsIGRpZyBzb21lIG1vcmUgaW50
byB0aGlzLgpUaGFua3MgZm9yIHlvdXIgdGltZSBhbmQgc29ycnkgZm9yIG5vdCB0aGlua2luZyBp
dCB0aHJvdWdoIGJlZm9yZWhhbmQuCgo+Cj4gQnV0IHRoYXQncyBvbmx5IGEgc2VtaS1ibGluZCBn
dWVzcyBhdCB0aGUgdGhpbmdzIHlvdSBhcmUgdHJ5aW5nIHRvIGFjaGlldmU7IHBsZWFzZSwKPiBk
ZXNjcmliZSB3aGF0IGl0IHJlYWxseSBpcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK

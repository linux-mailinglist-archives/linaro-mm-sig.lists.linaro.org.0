Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 55624248553
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:52:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A98660428
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:52:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 58E0565FD7; Tue, 18 Aug 2020 12:52:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC1C6666F6;
	Tue, 18 Aug 2020 12:32:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0C65A61507
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 22:29:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EFB6D616DE; Mon,  3 Aug 2020 22:29:09 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by lists.linaro.org (Postfix) with ESMTPS id 8D94061507
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 22:28:47 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1k2iwZ-008hXp-IY; Mon, 03 Aug 2020 22:28:31 +0000
Date: Mon, 3 Aug 2020 23:28:31 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Suren Baghdasaryan <surenb@google.com>
Message-ID: <20200803222831.GI1236603@ZenIV.linux.org.uk>
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-3-kaleshsingh@google.com>
 <20200803154125.GA23808@casper.infradead.org>
 <CAJuCfpFLikjaoopvt+vGN3W=m9auoK+DLQNgUf-xUbYfC=83Mw@mail.gmail.com>
 <20200803161230.GB23808@casper.infradead.org>
 <CAJuCfpGot1Lr+eS_AU30gqrrjc0aFWikxySe0667_GTJNsGTMw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJuCfpGot1Lr+eS_AU30gqrrjc0aFWikxySe0667_GTJNsGTMw@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
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

T24gTW9uLCBBdWcgMDMsIDIwMjAgYXQgMDk6MjI6NTNBTSAtMDcwMCwgU3VyZW4gQmFnaGRhc2Fy
eWFuIHdyb3RlOgo+IE9uIE1vbiwgQXVnIDMsIDIwMjAgYXQgOToxMiBBTSBNYXR0aGV3IFdpbGNv
eCA8d2lsbHlAaW5mcmFkZWFkLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gTW9uLCBBdWcgMDMsIDIw
MjAgYXQgMDk6MDA6MDBBTSAtMDcwMCwgU3VyZW4gQmFnaGRhc2FyeWFuIHdyb3RlOgo+ID4gPiBP
biBNb24sIEF1ZyAzLCAyMDIwIGF0IDg6NDEgQU0gTWF0dGhldyBXaWxjb3ggPHdpbGx5QGluZnJh
ZGVhZC5vcmc+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gTW9uLCBBdWcgMDMsIDIwMjAgYXQg
MDI6NDc6MTlQTSArMDAwMCwgS2FsZXNoIFNpbmdoIHdyb3RlOgo+ID4gPiA+ID4gK3N0YXRpYyB2
b2lkIGRtYV9idWZfZmRfaW5zdGFsbChpbnQgZmQsIHN0cnVjdCBmaWxlICpmaWxwKQo+ID4gPiA+
ID4gK3sKPiA+ID4gPiA+ICsgICAgIHRyYWNlX2RtYV9idWZfZmRfcmVmX2luYyhjdXJyZW50LCBm
aWxwKTsKPiA+ID4gPiA+ICt9Cj4gPiA+ID4KPiA+ID4gPiBZb3UncmUgYWRkaW5nIGEgbmV3IGZp
bGVfb3BlcmF0aW9uIGluIG9yZGVyIHRvIGp1c3QgYWRkIGEgbmV3IHRyYWNlcG9pbnQ/Cj4gPiA+
ID4gTkFDSy4KPiA+ID4KPiA+ID4gSGkgTWF0dGhldywKPiA+ID4gVGhlIHBsYW4gaXMgdG8gYXR0
YWNoIGEgQlBGIHRvIHRoaXMgdHJhY2Vwb2ludCBpbiBvcmRlciB0byB0cmFjawo+ID4gPiBkbWEt
YnVmIHVzZXJzLiBJZiB5b3UgZmVlbCB0aGlzIGlzIGFuIG92ZXJraWxsLCB3aGF0IHdvdWxkIHlv
dSBzdWdnZXN0Cj4gPiA+IGFzIGFuIGFsdGVybmF0aXZlPwo+ID4KPiA+IEknbSBzdXJlIEJQRiBj
YW4gYXR0YWNoIHRvIGZkX2luc3RhbGwgYW5kIGZpbHRlciBvbiBmaWxlLT5mX29wcyBiZWxvbmdp
bmcKPiA+IHRvIGRtYV9idWYsIGZvciBleGFtcGxlLgo+IAo+IFNvdW5kcyBsaWtlIGEgd29ya2Fi
bGUgc29sdXRpb24uIFdpbGwgZXhwbG9yZSB0aGF0IGRpcmVjdGlvbi4gVGhhbmtzIE1hdHRoZXch
CgpObywgaXQgaXMgbm90IGEgc29sdXRpb24gYXQgYWxsLgoKV2hhdCBraW5kIG9mIGxvY2tpbmcg
d291bGQgeW91IHVzZT8gIFdpdGggX2FueV8gb2YgdGhvc2UgYXBwcm9hY2hlcy4KCkhvdyB3b3Vs
ZCB5b3UgdXNlIHRoZSBpbmZvcm1hdGlvbiB0aGF0IGlzIGhvcGVsZXNzbHkgb3V0IG9mIGRhdGUv
aW5jb2hlcmVudC93aGF0bm90CmF0IHRoZSB2ZXJ5IG1vbWVudCB5b3Ugb2J0YWluIGl0PwoKSU9X
LCB3aGF0IHRoZSBoZWxsIGlzIHRoYXQgaG9ycm9yIGZvcj8gIFlvdSBkbyByZWFsaXplLCBmb3Ig
ZXhhbXBsZSwgdGhhdCB0aGVyZSdzCnN1Y2ggdGhpbmcgYXMgZHVwKCksIHJpZ2h0PyAgQW5kIGR1
cDIoKSBhcyB3ZWxsLiAgQW5kIHdoaWxlIHdlIGFyZSBhdCBpdCwgaG93CmRvIHlvdSBrZWVwIHRy
YWNrIG9mIHJlbW92YWxzLCBjb25zaWRlcmluZyB0aGUgZmFjdCB0aGF0IHlvdSBjYW4gc3RpY2sg
YSBmaWxlCnJlZmVyZW5jZSBpbnRvIFNDTV9SSUdIVFMgZGF0YWdyYW0gc2VudCB0byB5b3Vyc2Vs
ZiwgY2xvc2UgZGVzY3JpcHRvcnMgYW5kIGFuIGhvdXIKbGF0ZXIgcGljayB0aGF0IGRhdGFncmFt
LCBzdWRkZW5seSBnZXR0aW5nIGRlc2NyaXB0b3IgYmFjaz8KCkJlc2lkZXMsICJJIGhhdmUgbm8g
ZGVzY3JpcHRvcnMgbGVmdCIgIT0gIkkgY2FuJ3QgYmUgY3VycmVudGx5IHNpdHRpbmcgaW4gdGhl
IG1pZGRsZQpvZiBzeXNjYWxsIG9uIHRoYXQgc3Vja2VyIjsgY2xvc2UoKSBkb2VzICpOT1QqIHRl
cm1pbmF0ZSBvbmdvaW5nIG9wZXJhdGlvbnMuCgpZb3UgYXJlIGxvb2tpbmcgYXQgdGhlIGRyYXN0
aWNhbGx5IHdyb25nIGFic3RyYWN0aW9uIGxldmVsLiAgUGxlYXNlLCBkZXNjcmliZSB3aGF0Cml0
IGlzIHRoYXQgeW91IGFyZSB0cnlpbmcgdG8gYWNoaWV2ZS4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

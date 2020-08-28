Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 934752555F1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Aug 2020 10:06:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4CFE60628
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Aug 2020 08:06:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A26E86062F; Fri, 28 Aug 2020 08:06:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E600060B02;
	Fri, 28 Aug 2020 08:05:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ABFBC6086F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Aug 2020 08:05:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9C9CB619AC; Fri, 28 Aug 2020 08:05:17 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 48D4A6086F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Aug 2020 08:05:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D511E2098B;
 Fri, 28 Aug 2020 08:05:14 +0000 (UTC)
Date: Fri, 28 Aug 2020 10:05:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <20200828080527.GA1005274@kroah.com>
References: <20200827123627.538189-1-gregkh@linuxfoundation.org>
 <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
 <20200827160506.GC684514@kroah.com>
 <CAMi1Hd1Ch1RWvOTnON3tsrucaKThTuGQnwNFo94GqUjufVmnOg@mail.gmail.com>
 <20200827171745.GA701089@kroah.com>
 <CALAqxLVOEBaLtkbL-OENYSK0dUc_PBo-oC=BOBFQbPh-bkWTgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLVOEBaLtkbL-OENYSK0dUc_PBo-oC=BOBFQbPh-bkWTgQ@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Amit Pundir <amit.pundir@linaro.org>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Shuah Khan <shuah@kernel.org>, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Suren Baghdasaryan <surenb@google.com>, Christoph Hellwig <hch@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Hridya Valsaraju <hridya@google.com>,
 Laura Abbott <laura@labbott.name>,
 Android Kernel Team <kernel-team@android.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
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

T24gVGh1LCBBdWcgMjcsIDIwMjAgYXQgMTE6NTQ6MTJBTSAtMDcwMCwgSm9obiBTdHVsdHogd3Jv
dGU6Cj4gT24gVGh1LCBBdWcgMjcsIDIwMjAgYXQgMTA6MTcgQU0gR3JlZyBLcm9haC1IYXJ0bWFu
Cj4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToKPiA+IE9uIFRodSwgQXVnIDI3
LCAyMDIwIGF0IDEwOjMxOjQxUE0gKzA1MzAsIEFtaXQgUHVuZGlyIHdyb3RlOgo+ID4gPiBJIGRv
bid0IGtub3cgd2hhdCBpcyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8gaGVyZS4gSSBqdXN0IHdhbnQg
dG8KPiA+ID4gaGlnaGxpZ2h0IHRoYXQgQU9TUCdzIGF1ZGlvIChjb2RlYzIpIEhBTCBkZXBlbmRz
IG9uIHRoZSBJT04gc3lzdGVtCj4gPiA+IGhlYXAgYW5kIGl0IHdpbGwgYnJlYWsgQU9TUCBmb3Ig
cGVvcGxlIHdobyBib290IG1haW5saW5lIG9uIHRoZWlyCj4gPiA+IGRldmljZXMsIGV2ZW4gZm9y
IGp1c3QgdGVzdGluZyBwdXJwb3NlIGxpa2Ugd2UgZG8gaW4gTGluYXJvLiBSaWdodCBub3cKPiA+
ID4gd2UgbmVlZCBvbmx5IDEgKEFuZHJvaWQgc3BlY2lmaWMgb3V0LW9mLXRyZWUpIHBhdGNoIHRv
IGJvb3QgQU9TUCB3aXRoCj4gPiA+IG1haW5saW5lIGFuZCBTdW1pdCBpcyBhbHJlYWR5IHRyeWlu
ZyB0byB1cHN0cmVhbSB0aGF0IHZtYSBuYW1pbmcKPiA+ID4gcGF0Y2guIFJlbW92YWwgb2YgaW4t
a2VybmVsIElPTiwgd2lsbCBqdXN0IGFkZCBtb3JlIHRvIHRoYXQgZGVsdGEuCj4gPgo+ID4gQXMg
QU9TUCB3aWxsIGNvbnRpbnVlIHRvIHJlbHkgb24gSU9OIGFmdGVyIERlY2VtYmVyIG9mIHRoaXMg
eWVhciwgYWxsCj4gPiB5b3UgYXJlIGRvaW5nIGlzIHBvc3Rwb25pbmcgdGhlIGluZXZpdGFibGUg
YSBmZXcgbW9yZSBtb250aHMuCj4gPgo+ID4gUHVzaCBiYWNrIG9uIHRoZSBBbmRyb2lkIHRlYW0g
dG8gZml4IHVwIHRoZSBjb2RlIHRvIG5vdCB1c2UgSU9OLCB0aGV5Cj4gPiBrbm93IHRoaXMgbmVl
ZHMgdG8gaGFwcGVuLgo+IAo+IFRoZSBwb2ludCB0aG91Z2gsIGlzIHlvdXIgbWFpbiBwcmVtaXNl
IHRoYXQgbm8gb25lIGlzIHVzaW5nIHRoaXMgaXNuJ3QgdHJ1ZS4KClRoZXkgYXJlIHVzaW5nIHRo
ZSB2ZXJzaW9uIG9mIGlvbiBpbiB0aGUgQW5kcm9pZCBrZXJuZWwgdHJlZSwgeWVzLCBhcyBpdApo
YXMgbmV3IGZlYXR1cmVzIHRoYXQgbWFueSBwZW9wbGUgYXJlIHJlbHlpbmcgb24uCgpUaGUgdmVy
c2lvbiB0aGF0IGlzIGN1cnJlbnRseSBpbiB0aGUga2VybmVsIHRyZWUgaXMgY3JpcHBsZWQsIGFu
ZCBtYXliZQp3b3JrcyBmb3Igc29tZSB1c2UgY2FzZXMsIGJ1dCBub3QgdGhlIG1ham9yaXR5LCBy
aWdodD8KCj4gSSdtIGFjdGl2ZWx5IHdvcmtpbmcgd2l0aCBIcmlkeWEgYW5kIGZvbGtzIG9uIHRo
ZSBjb2RlYzIgSEFMIHNpZGUgdG8KPiB0cmFuc2l0aW9uIHRoaXMgb24gdGhlIHVzZXJsYW5kIHNp
ZGU6Cj4gICBodHRwczovL2FuZHJvaWQtcmV2aWV3Lmdvb2dsZXNvdXJjZS5jb20vYy9wbGF0Zm9y
bS9mcmFtZXdvcmtzL2F2LysvMTM2ODkxOC8zCj4gCj4gSSdkIGxpa2UgQU9TUCB0byBub3QgdXNl
IElPTiBhZnRlciBTZXB0ZW1iZXIgKHRob3VnaCBiZWluZyBleHRlcm5hbCBJCj4gY2FuJ3QgcHJv
bWlzZSBhbnl0aGluZyksIG11Y2ggbGVzcyBjb250aW51aW5nIGFmdGVyIERlY2VtYmVyLgoKVGhl
IGFuZHJvaWQgdGVhbSBoYXMgc2FpZCB0aGV5IHdpbGwgYmUgZHJvcHBpbmcgSU9OIHVzZSBmb3Ig
dGhlICJuZXh0IgpBbmRyb2lkIHJlbGVhc2UsIHdoaWNoIGlzIHNvbWV0aW1lIG5leHQgeWVhciBm
cm9tIHdoYXQgSSByZWNhbGwuCkRlY2VtYmVyIGlzIHByb2JhYmx5IG5vdCBnb2luZyB0byBoYXBw
ZW4gOikKCj4gSSB3YW50IHRoaXMgbWlncmF0aW9uIHRvIGhhcHBlbiBhcyBtdWNoIGFzIGFueW9u
ZS4gIEJ1dCBJJ2QgcHJlZmVyIHRvCj4ga2VlcCBJT04gaW4gc3RhZ2luZyB1bnRpbCBhZnRlciB0
aGUgTFRTIGlzIGFubm91bmNlZC4gSGF2aW5nIGJvdGgKPiBhcm91bmQgaGVscHMgZGV2ZWxvcG1l
bnQgZm9yIHRoZSB0cmFuc2l0aW9uLCB3aGljaCBoZWxwcyB1cyBoYXZlIGEKPiByZWxpYWJsZSBz
b2x1dGlvbiwgd2hpY2ggaGVscHMgdmVuZG9ycyB0byBtaWdyYXRlIGFuZCBiZSBhYmxlIHRvIGRv
Cj4gY29tcGFyYXRpdmUgcGVyZm9ybWFuY2UgdGVzdGluZy4KCkkgZG9uJ3QgdW5kZXJzdGFuZCB3
aGF0IGhhdmluZyB0aGlzIGluIHRoZSAibmV4dCIga2VybmVsIGhlbHBzIHVzIHdpdGgKaGVyZS4g
IEFuZCBJIHdvdWxkIHJlYWxseSByZWFsbHkgcHJlZmVyIHRvIE5PVCBoYXZlIGFuIG91dGRhdGVk
IHZlcnNpb24Kb2YgdGhpcyBjb2RlIGluIGEga2VybmVsIHRyZWUgdGhhdCBJIGFtIGdvaW5nIHRv
IGhhdmUgdG8gc3VwcG9ydCBmb3IgdGhlCm5leHQgWCBudW1iZXIgb2YgeWVhcnMsIHdoZW4gbm8g
b25lIGlzIHVzaW5nIHRoYXQgdmVyc2lvbiBvZiB0aGUgZHJpdmVyLgoKV2hhdCBpcyB0aGlzIExU
UyBmaXhhdGlvbiB0byBrZWVwIHRoaXMgY29kZSBhcm91bmQgZm9yPyAgV2hvIGRvZXMgaXQKaGVs
cD8KCj4gSSBkbyBhcHByZWNpYXRlIHRoYXQga2VlcGluZyBpdCBpc24ndCBmcmVlLCBidXQgSSBh
bHNvIGRvbid0IGZlZWwgdGhlCj4gY2hhb3MtbW9ua2V5IGFwcHJvYWNoIGhlcmUgaXMgcmVhbGx5
IG1vdGl2YXRpb25hbCBpbiB0aGUgd2F5IHlvdQo+IGludGVuZC4KCkkgZG9uJ3Qgc2VlIGl0IGhl
bHBpbmcgYW55b25lIHRvIGxlYXZlIHRoaXMgYXJvdW5kLCBleGNlcHQgdG8gY2F1c2UKbWVyZ2Ug
aXNzdWVzIGZvciBtZSwgYW5kIGRldmVsb3BtZW50IGlzc3VlcyBmb3Igb3RoZXIgZGV2ZWxvcGVy
cy4KCkFueW9uZSB3aG8gcmVhbGx5IHdhbnRzIHRoaXMgY29kZSwgY2FuIGVhc2lseSByZXZlcnQg
dGhlIGRlbGV0aW9uIGFuZAptb3ZlIG9uIGFuZCBncmFiIHRoZSBBT1NQIGNvcHkgb2YgdGhlIGNv
ZGUuICBUaGF0J3Mgd2hhdCB0aGV5IGRpZCB3aGVuCndlIGRlbGV0ZWQgb3RoZXIgQW5kcm9pZCBm
ZWF0dXJlcyB0aGF0IGFyZSBzdGlsbCByZWxpZWQgb24uCgpHaXZlbiB0aGF0IHRoZSAiaXNuJ3Qg
ZnJlZSIgaXMgY2F1c2luZyBfbWVfIHJlYWwgcGFpbiwgYW5kIG5vdCB0aGUKYWN0dWFsIHVzZXJz
IG9mIHRoaXMgY29kZSwgSSBhbSBsZWFuaW5nIHRvd2FyZCB3YW50aW5nIHRvIG1vdmUgdGhhdApw
YWluL2Nvc3QgdG8gdGhvc2UgdXNlcnMsIGZvciBvYnZpb3VzIHJlYXNvbnMuCgp0aGFua3MsCgpn
cmVnIGstaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

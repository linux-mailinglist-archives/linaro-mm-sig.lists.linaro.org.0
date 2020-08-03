Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD55248520
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:48:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EEC660428
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:48:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3C47965F8C; Tue, 18 Aug 2020 12:48:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 590A9666E4;
	Tue, 18 Aug 2020 12:32:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 02CDE61513
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 16:12:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E9E1661653; Mon,  3 Aug 2020 16:12:43 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by lists.linaro.org (Postfix) with ESMTPS id 336C961513
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 16:12:42 +0000 (UTC)
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1k2d4g-0002EU-MF; Mon, 03 Aug 2020 16:12:30 +0000
Date: Mon, 3 Aug 2020 17:12:30 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Suren Baghdasaryan <surenb@google.com>
Message-ID: <20200803161230.GB23808@casper.infradead.org>
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-3-kaleshsingh@google.com>
 <20200803154125.GA23808@casper.infradead.org>
 <CAJuCfpFLikjaoopvt+vGN3W=m9auoK+DLQNgUf-xUbYfC=83Mw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJuCfpFLikjaoopvt+vGN3W=m9auoK+DLQNgUf-xUbYfC=83Mw@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
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

T24gTW9uLCBBdWcgMDMsIDIwMjAgYXQgMDk6MDA6MDBBTSAtMDcwMCwgU3VyZW4gQmFnaGRhc2Fy
eWFuIHdyb3RlOgo+IE9uIE1vbiwgQXVnIDMsIDIwMjAgYXQgODo0MSBBTSBNYXR0aGV3IFdpbGNv
eCA8d2lsbHlAaW5mcmFkZWFkLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gTW9uLCBBdWcgMDMsIDIw
MjAgYXQgMDI6NDc6MTlQTSArMDAwMCwgS2FsZXNoIFNpbmdoIHdyb3RlOgo+ID4gPiArc3RhdGlj
IHZvaWQgZG1hX2J1Zl9mZF9pbnN0YWxsKGludCBmZCwgc3RydWN0IGZpbGUgKmZpbHApCj4gPiA+
ICt7Cj4gPiA+ICsgICAgIHRyYWNlX2RtYV9idWZfZmRfcmVmX2luYyhjdXJyZW50LCBmaWxwKTsK
PiA+ID4gK30KPiA+Cj4gPiBZb3UncmUgYWRkaW5nIGEgbmV3IGZpbGVfb3BlcmF0aW9uIGluIG9y
ZGVyIHRvIGp1c3QgYWRkIGEgbmV3IHRyYWNlcG9pbnQ/Cj4gPiBOQUNLLgo+IAo+IEhpIE1hdHRo
ZXcsCj4gVGhlIHBsYW4gaXMgdG8gYXR0YWNoIGEgQlBGIHRvIHRoaXMgdHJhY2Vwb2ludCBpbiBv
cmRlciB0byB0cmFjawo+IGRtYS1idWYgdXNlcnMuIElmIHlvdSBmZWVsIHRoaXMgaXMgYW4gb3Zl
cmtpbGwsIHdoYXQgd291bGQgeW91IHN1Z2dlc3QKPiBhcyBhbiBhbHRlcm5hdGl2ZT8KCkknbSBz
dXJlIEJQRiBjYW4gYXR0YWNoIHRvIGZkX2luc3RhbGwgYW5kIGZpbHRlciBvbiBmaWxlLT5mX29w
cyBiZWxvbmdpbmcKdG8gZG1hX2J1ZiwgZm9yIGV4YW1wbGUuCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

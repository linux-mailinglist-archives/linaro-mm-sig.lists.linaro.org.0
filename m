Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C0F307448
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 12:01:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DC5165FC3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 11:01:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8287966759; Thu, 28 Jan 2021 11:01:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3444A61719;
	Thu, 28 Jan 2021 11:01:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 76255614FF
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 11:01:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 67CB661719; Thu, 28 Jan 2021 11:01:13 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by lists.linaro.org (Postfix) with ESMTPS id CDEF6614FF
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 11:01:11 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id f11so5773777ljm.8
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 03:01:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5XLGbbRInjNpFaYOyf93b/4KiboBjefE69X6aMvc2Gc=;
 b=WziXwJjpbjJ0JqPBXyqDikzKlwKwxVv+2OBCC/r2V1jHztm+nOGTC1nSZ19n9yMCL/
 y9aX94PBpY+yH9fPyHPn7gPC8ISW53od6HfQIk0lXiTxIZJ5EEvElhbAzfbQ0c30LQc2
 +lWvFPUDjGVnq8/gNyx+3roKiemSD3ogStkFJkq+GEnkJKRjCCWwxMXej1ARHrKyymqU
 NSc3sseRV9l9VGmb/1OLiquwH0YAi0h93OqymECzbMoCK9GXUyn1IQijRATIfyFZp5pS
 OMyNFkJMh4F0EXxRnDIfI+OThu14kIEOAeYineRsbaWhrFKtlBVnYh7PYjrmL6kuscfJ
 6dTg==
X-Gm-Message-State: AOAM530RR9llpsofeqq0VoPnmNgarDD5kvNt6wxAfNt9BcrU++2M662w
 mBbDCfo/Jht60MQpifT58cj4cr3V7oiU6CPAEtYnQNKL
X-Google-Smtp-Source: ABdhPJzr6xhUoaZmrh7rcdzCdBohPH7cYxvThi3xo4VCv2zMgI+T5v3TTFrGQa1YGe7klfK6WcuJsrW9BY1syMtY59I=
X-Received: by 2002:a05:651c:1206:: with SMTP id
 i6mr6913016lja.460.1611831670558; 
 Thu, 28 Jan 2021 03:01:10 -0800 (PST)
MIME-Version: 1.0
References: <20210126204240.418297-1-hridya@google.com>
 <YBFXPbePURupbe+y@kroah.com>
In-Reply-To: <YBFXPbePURupbe+y@kroah.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 28 Jan 2021 16:30:59 +0530
Message-ID: <CAO_48GHrpi9XxPhP2evwH_ZJmbVSWqxCvsYg6S2Syh-mrWBHzA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel test robot <lkp@intel.com>, Suren Baghdasaryan <surenb@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>, hyesoo.yu@samsung.com,
 John Stultz <john.stultz@linaro.org>, Greg KH <gregkh@linuxfoundation.org>,
 Hridya Valsaraju <hridya@google.com>,
 Android Kernel Team <kernel-team@android.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v3] dmabuf: Add the capability to expose
	DMA-BUF stats in sysfs
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

SGkgSHJpZHlhLAoKT24gV2VkLCAyNyBKYW4gMjAyMSBhdCAxNzozNiwgR3JlZyBLSCA8Z3JlZ2to
QGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCBKYW4gMjYsIDIwMjEgYXQg
MTI6NDI6MzZQTSAtMDgwMCwgSHJpZHlhIFZhbHNhcmFqdSB3cm90ZToKPiA+IFRoaXMgcGF0Y2gg
YWxsb3dzIHN0YXRpc3RpY3MgdG8gYmUgZW5hYmxlZCBmb3IgZWFjaCBETUEtQlVGIGluCj4gPiBz
eXNmcyBieSBlbmFibGluZyB0aGUgY29uZmlnIENPTkZJR19ETUFCVUZfU1lTRlNfU1RBVFMuCj4g
Pgo+ID4gVGhlIGZvbGxvd2luZyBzdGF0cyB3aWxsIGJlIGV4cG9zZWQgYnkgdGhlIGludGVyZmFj
ZToKPiA+Cj4gPiAvc3lzL2tlcm5lbC9kbWFidWYvYnVmZmVycy88aW5vZGVfbnVtYmVyPi9leHBv
cnRlcl9uYW1lCj4gPiAvc3lzL2tlcm5lbC9kbWFidWYvYnVmZmVycy88aW5vZGVfbnVtYmVyPi9z
aXplCj4gPiAvc3lzL2tlcm5lbC9kbWFidWYvYnVmZmVycy88aW5vZGVfbnVtYmVyPi9hdHRhY2ht
ZW50cy88YXR0YWNoX3VpZD4vZGV2aWNlCj4gPiAvc3lzL2tlcm5lbC9kbWFidWYvYnVmZmVycy88
aW5vZGVfbnVtYmVyPi9hdHRhY2htZW50cy88YXR0YWNoX3VpZD4vbWFwX2NvdW50ZXIKPiA+Cj4g
PiBUaGUgaW5vZGVfbnVtYmVyIGlzIHVuaXF1ZSBmb3IgZWFjaCBETUEtQlVGIGFuZCB3YXMgYWRk
ZWQgZWFybGllciBbMV0KPiA+IGluIG9yZGVyIHRvIGFsbG93IHVzZXJzcGFjZSB0byB0cmFjayBE
TUEtQlVGIHVzYWdlIGFjcm9zcyBkaWZmZXJlbnQKPiA+IHByb2Nlc3Nlcy4KPiA+Cj4gPiBDdXJy
ZW50bHksIHRoaXMgaW5mb3JtYXRpb24gaXMgZXhwb3NlZCBpbgo+ID4gL3N5cy9rZXJuZWwvZGVi
dWcvZG1hX2J1Zi9idWZpbmZvLgo+ID4gSG93ZXZlciwgc2luY2UgZGVidWdmcyBpcyBjb25zaWRl
cmVkIHVuc2FmZSB0byBiZSBtb3VudGVkIGluIHByb2R1Y3Rpb24sCj4gPiBpdCBpcyBiZWluZyBk
dXBsaWNhdGVkIGluIHN5c2ZzLgo+ID4KPiA+IFRoaXMgaW5mb3JtYXRpb24gd2lsbCBiZSB1c2Vk
IHRvIGRlcml2ZSBETUEtQlVGCj4gPiBwZXItZXhwb3J0ZXIgc3RhdHMgYW5kIHBlci1kZXZpY2Ug
dXNhZ2Ugc3RhdHMgZm9yIEFuZHJvaWQgQnVnIHJlcG9ydHMuCj4gPiBUaGUgY29ycmVzcG9uZGlu
ZyB1c2Vyc3BhY2UgY2hhbmdlcyBjYW4gYmUgZm91bmQgYXQgWzJdLgo+ID4gVGVsZW1ldHJ5IHRv
b2xzIHdpbGwgYWxzbyBjYXB0dXJlIHRoaXMgaW5mb3JtYXRpb24oYWxvbmcgd2l0aCBvdGhlcgo+
ID4gbWVtb3J5IG1ldHJpY3MpIHBlcmlvZGljYWxseSBhcyB3ZWxsIGFzIG9uIGltcG9ydGFudCBl
dmVudHMgbGlrZSBhCj4gPiBmb3JlZ3JvdW5kIGFwcCBraWxsICh3aGljaCBtaWdodCBoYXZlIGJl
ZW4gdHJpZ2dlcmVkIGJ5IExvdyBNZW1vcnkKPiA+IEtpbGxlcikuIEl0IHdpbGwgYWxzbyBjb250
cmlidXRlIHRvIHByb3ZpZGUgYSBzbmFwc2hvdCBvZiB0aGUgc3lzdGVtCj4gPiBtZW1vcnkgdXNh
Z2Ugb24gb3RoZXIgZXZlbnRzIHN1Y2ggYXMgT09NIGtpbGxzIGFuZCBBcHBsaWNhdGlvbiBOb3QK
PiA+IFJlc3BvbmRpbmcgZXZlbnRzLgo+ID4KPiA+IEEgc2hlbGwgc2NyaXB0IHRoYXQgY2FuIGJl
IHJ1biBvbiBhIGNsYXNzaWMgTGludXggZW52aXJvbm1lbnQgdG8gcmVhZAo+ID4gb3V0IHRoZSBE
TUEtQlVGIHN0YXRpc3RpY3MgY2FuIGJlIGZvdW5kIGF0IFszXShzdWdnZXN0ZWQgYnkgSm9obgo+
ID4gU3R1bHR6KS4KPiA+Cj4gPiBUaGUgcGF0Y2ggY29udGFpbnMgdGhlIGZvbGxvd2luZyBpbXBy
b3ZlbWVudHMgb3ZlciB0aGUgcHJldmlvdXMgdmVyc2lvbjoKPiA+IDEpIEVhY2ggYXR0YWNobWVu
dCBpcyByZXByZXNlbnRlZCBieSBpdHMgb3duIGRpcmVjdG9yeSB0byBhbGxvdyBjcmVhdGluZwo+
ID4gYSBzeW1saW5rIHRvIHRoZSBpbXBvcnRpbmcgZGV2aWNlIGFuZCB0byBhbHNvIHByb3ZpZGUg
cm9vbSBmb3IgZnV0dXJlCj4gPiBleHBhbnNpb24uCj4gPiAyKSBUaGUgbnVtYmVyIG9mIGRpc3Rp
bmN0IG1hcHBpbmdzIG9mIGVhY2ggYXR0YWNobWVudCBpcyBleHBvc2VkIGluIGEKPiA+IHNlcGFy
YXRlIGZpbGUuCj4gPiAzKSBUaGUgcGVyLWJ1ZmZlciBzdGF0aXN0aWNzIGFyZSBub3cgaW4gL3N5
cy9rZXJuZWwvZG1hYnVmL2J1ZmZlcnMKPiA+IGlub3JkZXIgdG8gbWFrZSB0aGUgaW50ZXJmYWNl
IGV4cGFuZGFibGUgaW4gZnV0dXJlLgo+ID4KPiA+IEFsbCBvZiB0aGUgaW1wcm92ZW1lbnRzIGFi
b3ZlIGFyZSBiYXNlZCBvbiBzdWdnZXN0aW9ucy9mZWVkYmFjayBmcm9tCj4gPiBEYW5pZWwgVmV0
dGVyIGFuZCBDaHJpc3RpYW4gS8O2bmlnLgo+ID4KPiA+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEwODg3OTEvCj4gPiBbMl06IGh0dHBzOi8vYW5kcm9pZC1y
ZXZpZXcuZ29vZ2xlc291cmNlLmNvbS9xL3RvcGljOiUyMmRtYWJ1Zi1zeXNmcyUyMisoc3RhdHVz
Om9wZW4lMjBPUiUyMHN0YXR1czptZXJnZWQpCj4gPiBbM106IGh0dHBzOi8vYW5kcm9pZC1yZXZp
ZXcuZ29vZ2xlc291cmNlLmNvbS9jL3BsYXRmb3JtL3N5c3RlbS9tZW1vcnkvbGlibWVtaW5mby8r
LzE1NDk3MzQKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFA
Z29vZ2xlLmNvbT4KPiA+IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVs
LmNvbT4KClRoYW5rcyBmb3IgdGhlIHBhdGNoIQoKQ2hyaXN0aWFuOiBJZiB5b3UncmUgc2F0aXNm
aWVkIHdpdGggdGhlIGV4cGxhbmF0aW9uIGFyb3VuZCBub3QKZGlyZWN0bHkgZW1iZWRkaW5nIGtv
YmplY3RzIGludG8gdGhlIGRtYV9idWYgYW5kIGRtYV9idWZfYXR0YWNobWVudApzdHJ1Y3RzLCB0
aGVuIHdpdGggR3JlZydzIHItYiBmcm9tIHN5c2ZzIFBvViwgSSB0aGluayB3ZSBjYW4gbWVyZ2Ug
aXQuClBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3UgZmVlbCBvdGhlcndpc2UhCgo+ID4gLS0tCj4g
PiBDaGFuZ2VzIGluIHYzOgo+ID4gRml4IGEgd2FybmluZyByZXBvcnRlZCBieSB0aGUga2VybmVs
IHRlc3Qgcm9ib3QuCj4gPgo+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+IC1Nb3ZlIHN0YXRpc3RpY3Mg
dG8gL3N5cy9rZXJuZWwvZG1hYnVmL2J1ZmZlcnMgaW4gb2RlciB0byBhbGxvdyBhZGRpdGlvbgo+
ID4gb2Ygb3RoZXIgRE1BLUJVRi1yZWxhdGVkIHN5c2ZzIHN0YXRzIGluIGZ1dHVyZS4gQmFzZWQg
b24gZmVlZGJhY2sgZnJvbQo+ID4gRGFuaWVsIFZldHRlci4KPiA+IC1FYWNoIGF0dGFjaG1lbnQg
aGFzIGl0cyBvd24gZGlyZWN0b3J5IHRvIHJlcHJlc2VudCBhdHRhY2hpbmcgZGV2aWNlcyBhcwo+
ID4gc3ltbGlua3MgYW5kIHRvIGludHJvZHVjZSBtYXBfY291bnQgYXMgYSBzZXBhcmF0ZSBmaWxl
LiBCYXNlZCBvbgo+ID4gZmVlZGJhY2sgZnJvbSBEYW5pZWwgVmV0dGVyIGFuZCBDaHJpc3RpYW4g
S8O2bmlnLiBUaGFuayB5b3UgYm90aCEKPiA+IC1Db21taXQgbWVzc2FnZXMgdXBkYXRlZCB0byBw
b2ludCB0byB1c2Vyc3BhY2UgY29kZSBpbiBBT1NQIHRoYXQgd2lsbAo+ID4gcmVhZCB0aGUgRE1B
LUJVRiBzeXNmcyBzdGF0cy4KPiA+Cj4gPgo+ID4gIC4uLi9BQkkvdGVzdGluZy9zeXNmcy1rZXJu
ZWwtZG1hYnVmLWJ1ZmZlcnMgICB8ICA1MiArKysrCj4gPiAgZHJpdmVycy9kbWEtYnVmL0tjb25m
aWcgICAgICAgICAgICAgICAgICAgICAgIHwgIDExICsKPiA+ICBkcml2ZXJzL2RtYS1idWYvTWFr
ZWZpbGUgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLXN5c2ZzLXN0YXRzLmMgICAgICAgICB8IDI4NSArKysrKysrKysrKysrKysrKysKPiA+
ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi1zeXNmcy1zdGF0cy5oICAgICAgICAgfCAgNjIgKysr
Kwo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAgICAgICB8ICAz
NyArKysKPiA+ICBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgICAgICAgICAgICAgICAgICAgICAg
fCAgMjAgKysKPiA+ICA3IGZpbGVzIGNoYW5nZWQsIDQ2OCBpbnNlcnRpb25zKCspCj4gPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMta2VybmVsLWRt
YWJ1Zi1idWZmZXJzCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLXN5c2ZzLXN0YXRzLmMKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYtc3lzZnMtc3RhdHMuaAo+Cj4gSSBkb24ndCBrbm93IHRoZSBkbWEtYnVmIGNvZGUg
YXQgYWxsLCBidXQgZnJvbSBhIHN5c2ZzL2tvYmplY3QgcG9pbnQgb2YKPiB2aWV3LCB0aGlzIHBh
dGNoIGxvb2tzIGdvb2QgdG8gbWU6Cj4KPiBSZXZpZXdlZC1ieTogR3JlZyBLcm9haC1IYXJ0bWFu
IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KCkJlc3QsClN1bWl0LgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

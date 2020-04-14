Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5791C1A7FC0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2020 16:28:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8054961873
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2020 14:28:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 73A1E6600F; Tue, 14 Apr 2020 14:28:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B99E8617A5;
	Tue, 14 Apr 2020 14:28:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 089F260795
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 14:28:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EFA48617A5; Tue, 14 Apr 2020 14:28:13 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id B188160795
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 14:28:12 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 911E7206D5;
 Tue, 14 Apr 2020 14:28:11 +0000 (UTC)
Date: Tue, 14 Apr 2020 16:28:10 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?Q?=D8rjan?= Eide <orjan.eide@arm.com>
Message-ID: <20200414142810.GA958163@kroah.com>
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414141849.55654-1-orjan.eide@arm.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, nd@arm.com, Todd Kjos <tkjos@android.com>,
 Lecopzer Chen <lecopzer.chen@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, john.stultz@linaro.org,
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

T24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgMDQ6MTg6NDdQTSArMDIwMCwgw5hyamFuIEVpZGUgd3Jv
dGU6Cj4gT25seSBzeW5jIHRoZSBzZy1saXN0IG9mIGFuIElvbiBkbWEtYnVmIGF0dGFjaG1lbnQg
d2hlbiB0aGUgYXR0YWNobWVudAo+IGlzIGFjdHVhbGx5IG1hcHBlZCBvbiB0aGUgZGV2aWNlLgo+
IAo+IGRtYS1idWZzIG1heSBiZSBzeW5jZWQgYXQgYW55IHRpbWUuIEl0IGNhbiBiZSByZWFjaGVk
IGZyb20gdXNlciBzcGFjZQo+IHZpYSBETUFfQlVGX0lPQ1RMX1NZTkMsIHNvIHRoZXJlIGFyZSBu
byBndWFyYW50ZWVzIGZyb20gY2FsbGVycyBvbiB3aGVuCj4gc3luY3MgbWF5IGJlIGF0dGVtcHRl
ZCwgYW5kIGRtYV9idWZfZW5kX2NwdV9hY2Nlc3MoKSBhbmQKPiBkbWFfYnVmX2JlZ2luX2NwdV9h
Y2Nlc3MoKSBtYXkgbm90IGJlIHBhaXJlZC4KPiAKPiBTaW5jZSB0aGUgc2dfbGlzdCdzIGRtYV9h
ZGRyZXNzIGlzbid0IHNldCB1cCB1bnRpbCB0aGUgYnVmZmVyIGlzIHVzZWQKPiBvbiB0aGUgZGV2
aWNlLCBhbmQgZG1hX21hcF9zZygpIGlzIGNhbGxlZCBvbiBpdCwgdGhlIGRtYV9hZGRyZXNzIHdp
bGwgYmUKPiBOVUxMIGlmIHN5bmMgaXMgYXR0ZW1wdGVkIG9uIHRoZSBkbWEtYnVmIGJlZm9yZSBp
dCdzIG1hcHBlZCBvbiBhIGRldmljZS4KPiAKPiBCZWZvcmUgdjUuMCAoY29tbWl0IDU1ODk3YWY2
MzA5MSAoImRtYS1kaXJlY3Q6IG1lcmdlIHN3aW90bGJfZG1hX29wcwo+IGludG8gdGhlIGRtYV9k
aXJlY3QgY29kZSIpKSB0aGlzIHdhcyBhIHByb2JsZW0gYXMgdGhlIGRtYS1hcGkgKGF0IGxlYXN0
Cj4gdGhlIHN3aW90bGJfZG1hX29wcyBvbiBhcm02NCkgd291bGQgdXNlIHRoZSBwb3RlbnRpYWxs
eSBpbnZhbGlkCj4gZG1hX2FkZHJlc3MuIEhvdyB0aGF0IGZhaWxlZCBkZXBlbmRlZCBvbiBob3cg
dGhlIGRldmljZSBoYW5kbGVkIHBoeXNpY2FsCj4gYWRkcmVzcyAwLiBJZiAwIHdhcyBhIHZhbGlk
IGFkZHJlc3MgdG8gcGh5c2ljYWwgcmFtLCB0aGF0IHBhZ2Ugd291bGQgZ2V0Cj4gZmx1c2hlZCBh
IGxvdCwgd2hpbGUgdGhlIGFjdHVhbCBwYWdlcyBpbiB0aGUgYnVmZmVyIHdvdWxkIG5vdCBnZXQg
c3luY2VkCj4gY29ycmVjdGx5LiBXaGlsZSBpZiAwIGlzIGFuIGludmFsaWQgcGh5c2ljYWwgYWRk
cmVzcyBpdCBtYXkgY2F1c2UgYQo+IGZhdWx0IGFuZCB0cmlnZ2VyIGEgY3Jhc2guCj4gCj4gSW4g
djUuMCB0aGlzIHdhcyBpbmNpZGVudGFsbHkgZml4ZWQgYnkgY29tbWl0IDU1ODk3YWY2MzA5MSAo
ImRtYS1kaXJlY3Q6Cj4gbWVyZ2Ugc3dpb3RsYl9kbWFfb3BzIGludG8gdGhlIGRtYV9kaXJlY3Qg
Y29kZSIpLCBhcyB0aGlzIG1vdmVkIHRoZQo+IGRtYS1hcGkgdG8gdXNlIHRoZSBwYWdlIHBvaW50
ZXIgaW4gdGhlIHNnX2xpc3QsIGFuZCAoZm9yIElvbiBidWZmZXJzIGF0Cj4gbGVhc3QpIHRoaXMg
d2lsbCBhbHdheXMgYmUgdmFsaWQgaWYgdGhlIHNnX2xpc3QgZXhpc3RzIGF0IGFsbC4KPiAKPiBC
dXQsIHRoaXMgaXNzdWUgaXMgcmUtaW50cm9kdWNlZCBpbiB2NS4zIHdpdGgKPiBjb21taXQgNDQ5
ZmE1NGQ2ODE1ICgiZG1hLWRpcmVjdDogY29ycmVjdCB0aGUgcGh5c2ljYWwgYWRkciBpbgo+IGRt
YV9kaXJlY3Rfc3luY19zZ19mb3JfY3B1L2RldmljZSIpIG1vdmVzIHRoZSBkbWEtYXBpIGJhY2sg
dG8gdGhlIG9sZAo+IGJlaGF2aW91ciBhbmQgcGlja3MgdGhlIGRtYV9hZGRyZXNzIHRoYXQgbWF5
IGJlIGludmFsaWQuCj4gCj4gZG1hLWJ1ZiBjb3JlIGRvZXNuJ3QgZW5zdXJlIHRoYXQgdGhlIGJ1
ZmZlciBpcyBtYXBwZWQgb24gdGhlIGRldmljZSwgYW5kCj4gdGh1cyBoYXZlIGEgdmFsaWQgc2df
bGlzdCwgYmVmb3JlIGNhbGxpbmcgdGhlIGV4cG9ydGVyJ3MKPiBiZWdpbl9jcHVfYWNjZXNzLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IMOYcmphbiBFaWRlIDxvcmphbi5laWRlQGFybS5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyB8IDEyICsrKysrKysrKysrKwo+
ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+IAo+IFJlc3VibWl0IHdpdGhvdXQg
ZGlzY2xhaW1lciwgc29ycnkgYWJvdXQgdGhhdC4KPiAKPiBUaGlzIHNlZW1zIHRvIGJlIHBhcnQg
b2YgYSBiaWdnZXIgaXNzdWUgd2hlcmUgZG1hLWJ1ZiBleHBvcnRlcnMgYXNzdW1lCj4gdGhhdCB0
aGVpciBkbWEtYnVmIGJlZ2luX2NwdV9hY2Nlc3MgYW5kIGVuZF9jcHVfYWNjZXNzIGNhbGxiYWNr
cyBoYXZlIGEKPiBjZXJ0YWluIGd1YXJhbnRlZWQgYmVoYXZpb3IsIHdoaWNoIGlzbid0IGVuc3Vy
ZWQgYnkgZG1hLWJ1ZiBjb3JlLgo+IAo+IFRoaXMgcGF0Y2ggZml4ZXMgdGhpcyBpbiBpb24gb25s
eSwgYnV0IGl0IGFsc28gbmVlZHMgdG8gYmUgZml4ZWQgZm9yCj4gb3RoZXIgZXhwb3J0ZXJzLCBl
aXRoZXIgaGFuZGxlZCBsaWtlIHRoaXMgaW4gZWFjaCBleHBvcnRlciwgb3IgaW4KPiBkbWEtYnVm
IGNvcmUgYmVmb3JlIGNhbGxpbmcgaW50byB0aGUgZXhwb3J0ZXJzLgo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMgYi9kcml2ZXJzL3N0YWdpbmcvYW5k
cm9pZC9pb24vaW9uLmMKPiBpbmRleCAzOGI1MWVhY2U0ZjkuLjdiNzUyYmEwY2I2ZCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMKPiArKysgYi9kcml2ZXJz
L3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMKCk5vdyB0aGF0IHdlIGhhdmUgdGhlIGRtYS1idWZm
IHN0dWZmIGluIHRoZSB0cmVlLCBkbyB3ZSBldmVuIG5lZWQgdGhlCmlvbiBjb2RlIGluIHRoZSBr
ZXJuZWwgYW55bW9yZT8gIENhbid0IHdlIGRlbGV0ZSBpdCBub3c/Cgp0aGFua3MsCgpncmVnIGst
aApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

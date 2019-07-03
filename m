Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 015645E097
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2019 11:11:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13A546079C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2019 09:11:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 08A6B60C31; Wed,  3 Jul 2019 09:11:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EAE1A60E09;
	Wed,  3 Jul 2019 09:10:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AFE6C6079C
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jul 2019 09:10:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A49EC60E09; Wed,  3 Jul 2019 09:10:38 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id C63F66079C
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jul 2019 09:10:37 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A219E2189E;
 Wed,  3 Jul 2019 09:10:36 +0000 (UTC)
Date: Wed, 3 Jul 2019 11:10:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <20190703091034.GA12289@kroah.com>
References: <20190703081842.22872-1-nishkadg.linux@gmail.com>
 <20190703083745.GB8996@kroah.com>
 <380a7fb4-d299-a3ee-43ae-0822ec25ece6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <380a7fb4-d299-a3ee-43ae-0822ec25ece6@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, tkjos@android.com,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
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

T24gV2VkLCBKdWwgMDMsIDIwMTkgYXQgMDI6MTQ6MjFQTSArMDUzMCwgTmlzaGthIERhc2d1cHRh
IHdyb3RlOgo+IE9uIDAzLzA3LzE5IDI6MDcgUE0sIEdyZWcgS0ggd3JvdGU6Cj4gPiBPbiBXZWQs
IEp1bCAwMywgMjAxOSBhdCAwMTo0ODo0MVBNICswNTMwLCBOaXNoa2EgRGFzZ3VwdGEgd3JvdGU6
Cj4gPiA+IFJlbW92ZSBmaWxlIGlvbl9jYXJ2ZW91dF9oZWFwLmMgYXMgaXRzIGZ1bmN0aW9ucyBh
bmQgZGVmaW5pdGlvbnMgYXJlIG5vdAo+ID4gPiB1c2VkIGFueXdoZXJlLgo+ID4gPiBJc3N1ZSBm
b3VuZCB3aXRoIENvY2NpbmVsbGUuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBOaXNoa2Eg
RGFzZ3VwdGEgPG5pc2hrYWRnLmxpbnV4QGdtYWlsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICAgZHJp
dmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL0tjb25maWcgICAgICAgICAgIHwgICA5IC0tCj4gPiA+
ICAgZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL01ha2VmaWxlICAgICAgICAgIHwgICAxIC0K
PiA+ID4gICAuLi4vc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25fY2FydmVvdXRfaGVhcC5jICAgfCAx
MzMgLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAKPiA+IEkga2VlcCB0cnlpbmcgdG8gZG8gdGhpcywg
YnV0IG90aGVycyBwb2ludCBvdXQgdGhhdCB0aGUgaW9uIGNvZGUgaXMKPiA+ICJnb2luZyB0byBi
ZSBmaXhlZCB1cCBzb29uIiBhbmQgdGhhdCBwZW9wbGUgcmVseSBvbiB0aGlzIGludGVyZmFjZSBu
b3cuCj4gPiBXZWxsLCAiY29kZSBvdXRzaWRlIG9mIHRoZSBrZXJuZWwgdHJlZSIgcmVsaWVzIG9u
IHRoaXMsIHdoaWNoIGlzIG5vdCBvaywKPiA+IGJ1dCB0aGUgInNvb24iIHBlb3BsZSBrZWVwIGlu
c2lzdGluZyBvbiBpdC4uLgo+ID4gCj4gPiBPZGRzIGFyZSBJIHNob3VsZCBqdXN0IGRlbGV0ZSBh
bGwgb2YgSU9OLCBhcyB0aGVyZSBoYXNuJ3QgYmVlbiBhbnkKPiA+IGZvcndhcmQgcHJvZ3Jlc3Mg
b24gaXQgaW4gYSBsb25nIHRpbWUuCj4gCj4gSSdtIHNvcnJ5LCBJIGRvbid0IHRoaW5rIEkgdW5k
ZXJzdGFuZC4gU2hvdWxkIEkgZHJvcCB0aGVzZSBwYXRjaGVzIGZyb20gbXkKPiB0cmVlIHRoZW4/
CgpXaGF0ICJ0cmVlIj8gIExldCdzIHNlZSB3aGF0IHRoZSBJT04gbWFpbnRhaW5lciBhbmQgZGV2
ZWxvcGVycyBzYXkKYmVmb3JlIHJ1c2hpbmcgdG8gYW55dGhpbmcuCgp0aGFua3MsCgpncmVnIGst
aApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

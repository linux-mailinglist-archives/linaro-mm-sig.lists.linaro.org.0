Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E1D5DFFD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2019 10:38:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 586CF6079C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2019 08:38:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4808A60C15; Wed,  3 Jul 2019 08:38:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D73360C31;
	Wed,  3 Jul 2019 08:37:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 68A846079C
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jul 2019 08:37:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 51AA860C31; Wed,  3 Jul 2019 08:37:49 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 85A926079C
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jul 2019 08:37:48 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D375218A0;
 Wed,  3 Jul 2019 08:37:47 +0000 (UTC)
Date: Wed, 3 Jul 2019 10:37:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <20190703083745.GB8996@kroah.com>
References: <20190703081842.22872-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703081842.22872-1-nishkadg.linux@gmail.com>
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

T24gV2VkLCBKdWwgMDMsIDIwMTkgYXQgMDE6NDg6NDFQTSArMDUzMCwgTmlzaGthIERhc2d1cHRh
IHdyb3RlOgo+IFJlbW92ZSBmaWxlIGlvbl9jYXJ2ZW91dF9oZWFwLmMgYXMgaXRzIGZ1bmN0aW9u
cyBhbmQgZGVmaW5pdGlvbnMgYXJlIG5vdAo+IHVzZWQgYW55d2hlcmUuCj4gSXNzdWUgZm91bmQg
d2l0aCBDb2NjaW5lbGxlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pc2hrYSBEYXNndXB0YSA8bmlz
aGthZGcubGludXhAZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9p
b24vS2NvbmZpZyAgICAgICAgICAgfCAgIDkgLS0KPiAgZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQv
aW9uL01ha2VmaWxlICAgICAgICAgIHwgICAxIC0KPiAgLi4uL3N0YWdpbmcvYW5kcm9pZC9pb24v
aW9uX2NhcnZlb3V0X2hlYXAuYyAgIHwgMTMzIC0tLS0tLS0tLS0tLS0tLS0tLQoKSSBrZWVwIHRy
eWluZyB0byBkbyB0aGlzLCBidXQgb3RoZXJzIHBvaW50IG91dCB0aGF0IHRoZSBpb24gY29kZSBp
cwoiZ29pbmcgdG8gYmUgZml4ZWQgdXAgc29vbiIgYW5kIHRoYXQgcGVvcGxlIHJlbHkgb24gdGhp
cyBpbnRlcmZhY2Ugbm93LgpXZWxsLCAiY29kZSBvdXRzaWRlIG9mIHRoZSBrZXJuZWwgdHJlZSIg
cmVsaWVzIG9uIHRoaXMsIHdoaWNoIGlzIG5vdCBvaywKYnV0IHRoZSAic29vbiIgcGVvcGxlIGtl
ZXAgaW5zaXN0aW5nIG9uIGl0Li4uCgpPZGRzIGFyZSBJIHNob3VsZCBqdXN0IGRlbGV0ZSBhbGwg
b2YgSU9OLCBhcyB0aGVyZSBoYXNuJ3QgYmVlbiBhbnkKZm9yd2FyZCBwcm9ncmVzcyBvbiBpdCBp
biBhIGxvbmcgdGltZS4KCkhvcGVmdWxseSB0aGF0IHdha2VzIHNvbWUgcGVvcGxlIHVwLi4uCgp0
aGFua3MsCgpncmVnIGstaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=

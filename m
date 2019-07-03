Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFBD5E8BD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2019 18:25:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C94A6156D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2019 16:25:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0E78961624; Wed,  3 Jul 2019 16:25:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9673561617;
	Wed,  3 Jul 2019 16:24:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 73667608B0
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jul 2019 16:24:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 65F0461617; Wed,  3 Jul 2019 16:24:40 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 69A37608B0
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jul 2019 16:24:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 333AE2187F;
 Wed,  3 Jul 2019 16:24:38 +0000 (UTC)
Date: Wed, 3 Jul 2019 18:24:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Laura Abbott <labbott@redhat.com>
Message-ID: <20190703162435.GA21449@kroah.com>
References: <20190703081842.22872-1-nishkadg.linux@gmail.com>
 <20190703083745.GB8996@kroah.com>
 <CAKMK7uFAaw3sL_A6gGOeot80fvukjZqprLptLER=riA1_p4zWw@mail.gmail.com>
 <759555d8-98bf-44d3-4fa3-3d927f9a33db@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <759555d8-98bf-44d3-4fa3-3d927f9a33db@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: driverdevel <devel@driverdev.osuosl.org>, Todd Kjos <tkjos@android.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel@ffwll.ch>,
 joel@joelfernandes.org, maco@android.com, christian@brauner.io
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

T24gV2VkLCBKdWwgMDMsIDIwMTkgYXQgMDc6MzI6MjdBTSAtMDQwMCwgTGF1cmEgQWJib3R0IHdy
b3RlOgo+IE9uIDcvMy8xOSA1OjUwIEFNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gT24gV2Vk
LCBKdWwgMywgMjAxOSBhdCAxMDozNyBBTSBHcmVnIEtIIDxncmVna2hAbGludXhmb3VuZGF0aW9u
Lm9yZz4gd3JvdGU6Cj4gPiA+IAo+ID4gPiBPbiBXZWQsIEp1bCAwMywgMjAxOSBhdCAwMTo0ODo0
MVBNICswNTMwLCBOaXNoa2EgRGFzZ3VwdGEgd3JvdGU6Cj4gPiA+ID4gUmVtb3ZlIGZpbGUgaW9u
X2NhcnZlb3V0X2hlYXAuYyBhcyBpdHMgZnVuY3Rpb25zIGFuZCBkZWZpbml0aW9ucyBhcmUgbm90
Cj4gPiA+ID4gdXNlZCBhbnl3aGVyZS4KPiA+ID4gPiBJc3N1ZSBmb3VuZCB3aXRoIENvY2NpbmVs
bGUuCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTmlzaGthIERhc2d1cHRhIDxuaXNo
a2FkZy5saW51eEBnbWFpbC5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gICBkcml2ZXJzL3N0YWdp
bmcvYW5kcm9pZC9pb24vS2NvbmZpZyAgICAgICAgICAgfCAgIDkgLS0KPiA+ID4gPiAgIGRyaXZl
cnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9NYWtlZmlsZSAgICAgICAgICB8ICAgMSAtCj4gPiA+ID4g
ICAuLi4vc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25fY2FydmVvdXRfaGVhcC5jICAgfCAxMzMgLS0t
LS0tLS0tLS0tLS0tLS0tCj4gPiA+IAo+ID4gPiBJIGtlZXAgdHJ5aW5nIHRvIGRvIHRoaXMsIGJ1
dCBvdGhlcnMgcG9pbnQgb3V0IHRoYXQgdGhlIGlvbiBjb2RlIGlzCj4gPiA+ICJnb2luZyB0byBi
ZSBmaXhlZCB1cCBzb29uIiBhbmQgdGhhdCBwZW9wbGUgcmVseSBvbiB0aGlzIGludGVyZmFjZSBu
b3cuCj4gPiA+IFdlbGwsICJjb2RlIG91dHNpZGUgb2YgdGhlIGtlcm5lbCB0cmVlIiByZWxpZXMg
b24gdGhpcywgd2hpY2ggaXMgbm90IG9rLAo+ID4gPiBidXQgdGhlICJzb29uIiBwZW9wbGUga2Vl
cCBpbnNpc3Rpbmcgb24gaXQuLi4KPiA+ID4gCj4gPiA+IE9kZHMgYXJlIEkgc2hvdWxkIGp1c3Qg
ZGVsZXRlIGFsbCBvZiBJT04sIGFzIHRoZXJlIGhhc24ndCBiZWVuIGFueQo+ID4gPiBmb3J3YXJk
IHByb2dyZXNzIG9uIGl0IGluIGEgbG9uZyB0aW1lLgo+ID4gPiAKPiA+ID4gSG9wZWZ1bGx5IHRo
YXQgd2FrZXMgc29tZSBwZW9wbGUgdXAuLi4KPiA+IAo+ID4gSm9obiBTdHVsdHogaGFzIGRvbmUg
YSBzdGVhZHkgc3RyZWFtIG9uIGlvbiBkZXN0YWdpbmcgcGF0Y2ggc2VyaWVzCj4gPiBwYXN0IGZl
dyBtb250aHMsIHVuZCB0aGUgaGVhZGluZyBvZiAiRE1BLUJVRiBIZWFwcyIsIHRhcmdldGluZwo+
ID4gZHJpdmVycy9kbWEtYnVmLiBJJ20gbm90IGZvbGxvd2luZyB0aGUgZGV0YWlscywgYW5kIGl0
IHNlZW1zIGEgYml0IGEKPiA+IGNyYXdsLCBidXQgdGhlcmUncyBkZWZpbml0ZWx5IHdvcmsgZ29p
bmcgb24gLi4uIEp1c3QgcHJvYmFibHkgbm90Cj4gPiBpbi1wbGFjZSBpbiBzdGFnaW5nIEkgdGhp
bmsuCj4gPiAtRGFuaWVsCj4gPiAKPiAKPiAKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9hcmNoaXZlcy9kcmktZGV2ZWwvMjAxOS1KdW5lLzIyMzcwNS5odG1sCj4gCj4gSXQgaXMgbWFr
aW5nIHNsb3cgYW5kIHN0ZWFkeSBwcm9ncmVzcy4gUGFydCBvZiB0aGlzIGlzIHRyeWluZyB0bwo+
IG1ha2Ugc3VyZSB3ZSBhY3R1YWxseSBnZXQgdGhpcyByaWdodCBiZWZvcmUgbW92aW5nIGFueXRo
aW5nCj4gb3V0IG9mIHN0YWdpbmcuCj4gCj4gVGhhdCBzYWlkLCBJIHRoaW5rIHdlJ3JlIGF0IHRo
ZSBwb2ludCB3aGVyZSBub2JvZHkgd2FudHMgdGhlCj4gY2FydmVvdXQgYW5kIGNodW5rIGhlYXBz
IHNvIEknZCBhY3R1YWxseSBiZSBva2F5IHdpdGggcmVtb3ZpbmcKPiB0aG9zZSBmaWxlcy4gSnVz
dCB0byBiZSBleHBsaWNpdDoKPiAKPiBBY2tlZC1ieTogTGF1cmEgQWJib3R0IDxsYWJib3R0QHJl
ZGhhdC5jb20+CgpIZXksIGlmIHlvdSBhZ3JlZSB0byBkZWxldGUgdGhlc2UsIEknbGwgbm90IG9i
amVjdCBhdCBhbGwhCgp0aGFua3MsCgpncmVnIGstaApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

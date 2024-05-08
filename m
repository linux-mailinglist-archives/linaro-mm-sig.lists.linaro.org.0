Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C25638C0698
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 23:53:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BEA4944763
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 21:53:00 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id 182B340F77
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 21:52:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=cW5C1t21;
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=none
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4D5DE16D4;
	Wed,  8 May 2024 23:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715205167;
	bh=Dxw4QBBH0nAYXVaZlwEHYuCWDqlxanntOuSV3i2WstU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cW5C1t21+DNX+W0Qle3A1H5aeRn5hikYb4VkZ1Sy5FWaJXMaDjUM3pTHPzgHjfpZu
	 x0i+YdJRiuFijAViuVu85CtAj4z7erVcm635jCkHcuosl0/lVkSCl9r9WKxHwSKC50
	 NnkF1sYJ3PRzdU5uJWd95R+uCGVCwrf8YWTE7QY8=
Date: Thu, 9 May 2024 00:52:42 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20240508215242.GB24860@pendragon.ideasonboard.com>
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <ojduxo54lpcbfg2wfuhqhy7k3phncamtklh65z7gvttcwztmhk@zkifewcy4ovi>
 <3c0c7e7e-1530-411b-b7a4-9f13e0ff1f9e@redhat.com>
 <e7ilwp3vc32xze3iu2ejgqlgz44codsktnvyiufjhuf2zxcnnf@tnwzgzoxvbg2>
 <d2a512b2-e6b1-4675-b406-478074bbbe95@linaro.org>
 <Zjpmu_Xj6BPdkDPa@phenom.ffwll.local>
 <20240507183613.GB20390@pendragon.ideasonboard.com>
 <4f59a9d78662831123cc7e560218fa422e1c5eca.camel@collabora.com>
 <Zjs5eM-rRoh6WYYu@phenom.ffwll.local>
 <20240508215106.GA24860@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240508215106.GA24860@pendragon.ideasonboard.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 182B340F77
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[perceval.ideasonboard.com:rdns,perceval.ideasonboard.com:helo];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[ideasonboard.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[collabora.com,linaro.org,redhat.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: SYPLTEBII2IJ3WNKBKZIBICEPU35L6KV
X-Message-ID-Hash: SYPLTEBII2IJ3WNKBKZIBICEPU35L6KV
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Nicolas Dufresne <nicolas.dufresne@collabora.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Maxime Ripard <mripard@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SYPLTEBII2IJ3WNKBKZIBICEPU35L6KV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXkgMDksIDIwMjQgYXQgMTI6NTE6MDhBTSArMDMwMCwgTGF1cmVudCBQaW5jaGFy
dCB3cm90ZToNCj4gT24gV2VkLCBNYXkgMDgsIDIwMjQgYXQgMTA6MzY6MDhBTSArMDIwMCwgRGFu
aWVsIFZldHRlciB3cm90ZToNCj4gPiBPbiBUdWUsIE1heSAwNywgMjAyNCBhdCAwNDowNzozOVBN
IC0wNDAwLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOg0KPiA+ID4gTGUgbWFyZGkgMDcgbWFpIDIw
MjQgw6AgMjE6MzYgKzAzMDAsIExhdXJlbnQgUGluY2hhcnQgYSDDqWNyaXTCoDoNCj4gPiA+ID4g
U2hvcnRlciB0ZXJtLCB3ZSBoYXZlIGEgcHJvYmxlbSB0byBzb2x2ZSwgYW5kIHRoZSBiZXN0IG9w
dGlvbiB3ZSBoYXZlDQo+ID4gPiA+IGZvdW5kIHNvIGZhciBpcyB0byByZWx5IG9uIGRtYS1idWYg
aGVhcHMgYXMgYSBiYWNrZW5kIGZvciB0aGUgZnJhbWUNCj4gPiA+ID4gYnVmZmVyIGFsbG9jYXRy
byBoZWxwZXIgaW4gbGliY2FtZXJhIGZvciB0aGUgdXNlIGNhc2UgZGVzY3JpYmVkIGFib3ZlLg0K
PiA+ID4gPiBUaGlzIHdvbid0IHdvcmsgaW4gMTAwJSBvZiB0aGUgY2FzZXMsIGNsZWFybHkuIEl0
J3MgYSBzdG9wLWdhcCBtZWFzdXJlDQo+ID4gPiA+IHVudGlsIHdlIGNhbiBkbyBiZXR0ZXIuDQo+
ID4gPiANCj4gPiA+IENvbnNpZGVyaW5nIHRoZSBzZWN1cml0eSBjb25jZXJuZWQgcmFpc2VkIG9u
IHRoaXMgdGhyZWFkIHdpdGggZG1hYnVmIGhlYXANCj4gPiA+IGFsbG9jYXRpb24gbm90IGJlIHJl
c3RyaWN0ZWQgYnkgcXVvdGFzLCB5b3UnZCBnZXQgd2hhdCB5b3Ugd2FudCBxdWlja2x5IHdpdGgN
Cj4gPiA+IG1lbWZkICsgdWRtYWJ1ZiBpbnN0ZWFkICh3aGljaCBpcyBhY2NvdW50ZWQgYWxyZWFk
eSkuDQo+ID4gPiANCj4gPiA+IEl0IHdhcyByYWlzZWQgdGhhdCBkaXN0cm8gZG9uJ3QgZW5hYmxl
IHVkbWFidWYsIGJ1dCBhcyBzdGF0ZWQgdGhlcmUgYnkgSGFucywgaW4NCj4gPiA+IGFueSBjYXNl
cyBkaXN0cm8gbmVlZHMgdG8gdGFrZSBhY3Rpb24gdG8gbWFrZSB0aGUgc29mdElTUCB3b3Jrcy4g
VGhpcw0KPiA+ID4gYWx0ZXJuYXRpdmUgaXMgZWFzeSBhbmQgZG9lcyBub3QgaW50ZXJmZXJlIGlu
IGFueXdheSB3aXRoIHlvdXIgZnV0dXJlIHBsYW4gb3INCj4gPiA+IHRoZSBsaWJjYW1lcmEgQVBJ
LiBZb3UgY291bGQgZXZlbiBoYXZlIGJvdGggZG1hYnVmIGhlYXAgKGZvciBSYXNwYmlhbikgYW5k
IHRoZQ0KPiA+ID4gc2FmZXIgbWVtZmQrdWRtYWJ1ZiBmb3IgdGhlIGRpc3RybyB3aXRoIHNlY3Vy
aXR5IGNvbmNlcm5zLg0KPiA+ID4gDQo+ID4gPiBBbmQgZm9yIHRoZSBsb25nIHRlcm0gcGxhbiwg
d2UgY2FuIGNlcnRhaW5seSBnZXQgY2xvc2VyIGJ5IGZpeGluZyB0aGF0IGlzc3VlDQo+ID4gPiB3
aXRoIGFjY291bnRpbmcuIFRoaXMgaXNzdWUgYWxzbyBhcHBsaWVkIHRvIHY0bDIgaW8tb3BzLCBz
byBpdCB3b3VsZCBiZSBuaWNlIHRvDQo+ID4gPiBmaW5kIGNvbW1vbiBzZXQgb2YgaGVscGVycyB0
byBmaXggdGhlc2UgZXhwb3J0ZXJzLg0KPiA+IA0KPiA+IFllYWggaWYgdGhpcyBpcyBqdXN0IGZv
ciBzb2Z0aXNwLCB0aGVuIG1lbWZkICsgdWRtYWJ1ZiBpcyBhbHNvIHdoYXQgSSB3YXMNCj4gPiBh
Ym91dCB0byBzdWdnZXN0LiBOb3QganVzdCBhcyBhIHN0b3BnYXAsIGJ1dCBhcyB0aGUgcmVhbCBv
ZmZpY2lhbCB0aGluZy4NCj4gDQo+IExvbmcgdGVybSBJIHN0aWxsIHdhbnQgYSBjZW50cmFsaXpl
ZCBtZW1vcnkgYWxsb2NhdG9yLCBhdCB3aGljaCBwb2ludA0KPiBsaWJjYW1lcmEgc2hvdWxkIHN0
b3AgYWxsb2NhdGluZyBidWZmZXJzIGF0IGFsbC4NCg0KQW5kIHRvIGJlIGNsZWFyLCB1ZG1hYnVm
IGNvdWxkIGJlIGZpbmUgZm9yIHRoZSB0aW1lIGJlaW5nLiBBdCBsZWFzdCBhcw0KbG9uZyBhcyB3
ZSBkb24ndCBmaW5kIGFueSBzaG9ydGNvbWluZyB3aGlsZSB0ZXN0aW5nIGl0IDotKQ0KDQo+ID4g
dWRtYWJ1ZiBkb2VzIGtpbmRhIGFsbG93IHlvdSB0byBwaW4gbWVtb3J5LCBidXQgd2UgY2FuIGVh
c2lseSBmaXggdGhhdCBieQ0KPiA+IGFkZGluZyB0aGUgcmlnaHQgYWNjb3VudGluZyBhbmQgdGhl
biBlaXRoZXIgbGV0IG1sb2NrIHJsaW1pdHMgb3IgY2dyb3Vwcw0KPiA+IGtlcm5lbCBtZW1vcnkg
bGltaXRzIGVuZm9yY2UgZ29vZCBiZWhhdmlvci4NCg0KLS0gDQpSZWdhcmRzLA0KDQpMYXVyZW50
IFBpbmNoYXJ0DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK

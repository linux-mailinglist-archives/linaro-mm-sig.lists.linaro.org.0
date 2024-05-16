Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0039B8C7534
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 13:27:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04BF2443D6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 11:27:40 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id C538D3F672
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 11:27:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=DazUIU2R;
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=none
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2F16227C;
	Thu, 16 May 2024 13:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715858840;
	bh=XWllrDJgXCsAZy9Z5sDYfrb6ed2DyF9I1Pdx9ZRRR5A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DazUIU2RgiGQFEFJXxUSK4kgQ7916AjDz6UDMMDf0sUg66jj5Ief2/k3l4SiOJY1T
	 rnHjgLlRS6wvNnIMFzrdrSkJHjaCdyXVUCwUf8P5s0pkAOp2ewDQr3QjnyAWqL8z+l
	 1Zj0EfYQsxWsbAn5eGUALpLIoiKGKibN5/TJpyPQ=
Date: Thu, 16 May 2024 14:27:20 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: nicolas.dufresne@collabora.corp-partner.google.com
Message-ID: <20240516112720.GA12714@pendragon.ideasonboard.com>
References: <d2a512b2-e6b1-4675-b406-478074bbbe95@linaro.org>
 <Zjpmu_Xj6BPdkDPa@phenom.ffwll.local>
 <20240507183613.GB20390@pendragon.ideasonboard.com>
 <4f59a9d78662831123cc7e560218fa422e1c5eca.camel@collabora.com>
 <Zjs5eM-rRoh6WYYu@phenom.ffwll.local>
 <20240513-heretic-didactic-newt-1d6daf@penduick>
 <20240513083417.GA18630@pendragon.ideasonboard.com>
 <c4db22ad94696ed22282bf8dad15088d94ade5d6.camel@collabora.com>
 <20240514204223.GN32013@pendragon.ideasonboard.com>
 <a3428b0c352c24d43a2d458d41819fbf4b6cce0f.camel@collabora.corp-partner.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a3428b0c352c24d43a2d458d41819fbf4b6cce0f.camel@collabora.corp-partner.google.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C538D3F672
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	FREEMAIL_CC(0.00)[redhat.com,linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	RCVD_TLS_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[ideasonboard.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-0.999];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: ENSVFJV5GM7NIHGM7FBVOA5ZIR5SBBON
X-Message-ID-Hash: ENSVFJV5GM7NIHGM7FBVOA5ZIR5SBBON
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@redhat.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ENSVFJV5GM7NIHGM7FBVOA5ZIR5SBBON/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTmljb2xhcywNCg0KT24gV2VkLCBNYXkgMTUsIDIwMjQgYXQgMDE6NDM6NThQTSAtMDQwMCwg
bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29ycC1wYXJ0bmVyLmdvb2dsZS5jb20gd3JvdGU6
DQo+IExlIG1hcmRpIDE0IG1haSAyMDI0IMOgIDIzOjQyICswMzAwLCBMYXVyZW50IFBpbmNoYXJ0
IGEgw6ljcml0wqA6DQo+ID4gPiBZb3UnbGwgaGl0IHRoZSBzYW1lIGxpbWl0YXRpb24gYXMgd2Ug
aGl0IGluIEdTdHJlYW1lciwgd2hpY2ggaXMgdGhhdCBLTVMgZHJpdmVyDQo+ID4gPiBvbmx5IG9m
ZmVyIGFsbG9jYXRpb24gZm9yIHJlbmRlciBidWZmZXJzIGFuZCBtb3N0IG9mIHRoZW0gYXJlIG1p
c3NpbmcgYWxsb2NhdG9ycw0KPiA+ID4gZm9yIFlVViBidWZmZXJzLCBldmVuIHRob3VnaCB0aGV5
IGNhbiBpbXBvcnQgaW4gdGhlc2UgZm9ybWF0cy4gKGttcyBhbGxvY2F0b3JzLA0KPiA+ID4gZXhj
ZXB0IGR1bWIsIHdoaWNoIGhhcyBvdGhlciBpc3N1ZXMsIGFyZSBmb3JtYXQgYXdhcmUpLg0KPiA+
IA0KPiA+IE15IGV4cGVyaWVuY2Ugb24gQXJtIHBsYXRmb3JtcyBpcyB0aGF0IHRoZSBLTVMgZHJp
dmVycyBvZmZlciBhbGxvY2F0aW9uDQo+ID4gZm9yIHNjYW5vdXQgYnVmZmVycywgbm90IHJlbmRl
ciBidWZmZXJzLCBhbmQgbW9zdGx5IHVzaW5nIHRoZSBkdW1iDQo+ID4gYWxsb2NhdG9yIEFQSS4g
SWYgdGhlIEtNUyBkZXZpY2UgY2FuIHNjYW4gb3V0IFlVViBuYXRpdmVseSwgWVVWIGJ1ZmZlcg0K
PiA+IGFsbG9jYXRpb24gc2hvdWxkIGJlIHN1cHBvcnRlZC4gQW0gSSBtaXNzaW5nIHNvbWV0aGlu
ZyBoZXJlID8NCj4gDQo+IFRoZXJlIGlzIHR3byBBUElzLCBEdW1iIGlzIHRoZSBsZWdhY3kgYWxs
b2NhdGlvbiBBUEksIG9ubHkgdXNlZCBieSBkaXNwbGF5DQoNCklzIGl0IGxlZ2FjeSBvbmx5ID8g
SSB1bmRlcnN0YW5kIHRoZSBkdW1iIGJ1ZmZlcnMgQVBJIHRvIGJlIG9mZmljaWFsbHkNCnN1cHBv
cnRlZCwgdG8gYWxsb2NhdGUgc2Nhbm91dCBidWZmZXJzIHN1aXRhYmxlIGZvciBzb2Z0d2FyZSBy
ZW5kZXJpbmcuDQoNCj4gZHJpdmVycyBpbmRlZWQsIGFuZCB0aGUgQVBJIGRvZXMgbm90IGluY2x1
ZGUgYSBwaXhlbCBmb3JtYXQgb3IgYSBtb2RpZmllci4gVGhlDQo+IGFsbG9jYXRpb24gb2YgWVVW
IGJ1ZmZlciBoYXMgYmVlbiBtYWRlIHRocm91Z2ggYSBzbWFsbCBoYWNrLCANCj4gDQo+ICAgYnBw
ID0gbnVtYmVyIG9mIGJpdHMgcGVyIGNvbXBvbmVudCAob2YgbHVtYSBwbGFuZSBpZiBtdWx0aXBs
ZSBwbGFuZXMpDQo+ICAgd2lkdGggPSB3aWR0aA0KPiAgIGhlaWdodCA9IGhlaWdodCAqIFgNCj4g
DQo+IFdoZXJlIFggd2lsbCB2YXJ5LCAiMyAvIDIiIGlzIHVzZWQgZm9yIDQyMCBzdWJzYW1wbGlu
ZywgIjIiIGZvciA0MjIgYW5kICIzIiBmb3INCj4gNDQ0LiBJdCBpcyBmYXIgZnJvbSBpZGVhLCBy
ZXF1aXJlcyBkZWVwIGtub3dsZWRnZSBvZiBlYWNoIGZvcm1hdHMgaW4gdGhlDQo+IGFwcGxpY2F0
aW9uDQoNCkknbSBub3Qgc3VyZSBJIHNlZSB0aGF0IGFzIGFuIGlzc3VlLCBidXQgb3VyIGV4cGVy
aWVuY2VzIGFuZCB1c2VzIGNhc2VzDQptYXkgdmFyeSA6LSkNCg0KPiBhbmQgY2Fubm90IGFsbG9j
YXRlIGVhY2ggcGxhbmVzIHNlcGVyYXRseS4NCg0KRm9yIHNlbWktcGxhbmFyIG9yIHBsYW5hciBm
b3JtYXRzLCB1bmxlc3MgSSdtIG1pc3Rha2VuLCB5b3UgY2FuIGVpdGhlcg0KYWxsb2NhdGUgYSBz
aW5nbGUgYnVmZmVyIGFuZCB1c2UgaXQgd2l0aCBhcHByb3ByaWF0ZSBvZmZzZXRzIHdoZW4NCmNv
bnN0cnVjdGluZyB5b3VyIGZyYW1lYnVmZmVyICh3aXRoIERSTV9JT0NUTF9NT0RFX0FEREZCMiks
IG9yIGFsbG9jYXRlDQpvbmUgYnVmZmVyIHBlciBwbGFuZS4NCg0KPiBUaGUgc2Vjb25kIGlzIHRv
IHVzZSB0aGUgZHJpdmVyIHNwZWNpZmljIGFsbG9jYXRpb24gQVBJLiBUaGlzIGlzIHRoZW4gYWJz
dHJhY3RlZA0KPiBieSBHQk0uIFRoaXMgYWxsb3dzIGFsbG9jYXRpbmcgcmVuZGVyIGJ1ZmZlcnMg
d2l0aCBub3RhYmx5IG1vZGlmaWVycyBhbmQvb3IgdXNlDQo+IGNhc2VzLiBCdXQgbm8gc3VwcG9y
dCBmb3IgWVVWIGZvcm1hdHMgb3IgbXVsdGktcGxhbmFyIGZvcm1hdHMuDQoNCkdCTSBpcyB0aGUg
d2F5IHRvIGdvIGZvciByZW5kZXIgYnVmZmVycyBpbmRlZWQuIEl0IGhhcyBiZWVuIGRlc2lnbmVk
DQp3aXRoIG9ubHkgZ3JhcGhpY3MgYnVmZmVyIG1hbmFnZW1lbnQgdXNlIGNhc2VzIGluIG1pbmQs
IHNvIGl0J3MNCnVuZm9ydHVuYXRlbHkgbm90IGFuIG9wdGlvbiBhcyBhIGdlbmVyaWMgYWxsb2Nh
dG9yLCBhdCBsZWFzdCBpbiBpdHMNCmN1cnJlbnQgZm9ybS4NCg0KLS0gDQpSZWdhcmRzLA0KDQpM
YXVyZW50IFBpbmNoYXJ0DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

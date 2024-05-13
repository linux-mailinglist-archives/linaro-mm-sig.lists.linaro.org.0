Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E86F68C3D5A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 May 2024 10:34:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9EEB044801
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 May 2024 08:34:38 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id 82137410C1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 May 2024 08:34:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=XVgit3Hi;
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=none
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C0B7A25B;
	Mon, 13 May 2024 10:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715589260;
	bh=3+JpsjijNwVfhIgxFFClxLN3MWbkLfvCjawwwkKMzyc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XVgit3HiXv0r/DEgZjewkKpcLVKH45rkn4krxw+Z/vm6ly+fsEJ+xG45xgXw3E8Fr
	 dEcilM+p9aGwMzSv3GMRBLs+RS0wiKQf+P5ekg6WNiLW7Z3gh/BZePedompb19Xf1d
	 kLq4vYcQp/hxlWdEeRkBzSdKbJYZms20li2q9TiU=
Date: Mon, 13 May 2024 11:34:17 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Maxime Ripard <mripard@redhat.com>
Message-ID: <20240513083417.GA18630@pendragon.ideasonboard.com>
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <ojduxo54lpcbfg2wfuhqhy7k3phncamtklh65z7gvttcwztmhk@zkifewcy4ovi>
 <3c0c7e7e-1530-411b-b7a4-9f13e0ff1f9e@redhat.com>
 <e7ilwp3vc32xze3iu2ejgqlgz44codsktnvyiufjhuf2zxcnnf@tnwzgzoxvbg2>
 <d2a512b2-e6b1-4675-b406-478074bbbe95@linaro.org>
 <Zjpmu_Xj6BPdkDPa@phenom.ffwll.local>
 <20240507183613.GB20390@pendragon.ideasonboard.com>
 <4f59a9d78662831123cc7e560218fa422e1c5eca.camel@collabora.com>
 <Zjs5eM-rRoh6WYYu@phenom.ffwll.local>
 <20240513-heretic-didactic-newt-1d6daf@penduick>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240513-heretic-didactic-newt-1d6daf@penduick>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 82137410C1
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	FREEMAIL_CC(0.00)[collabora.com,linaro.org,redhat.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	RCVD_TLS_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[ideasonboard.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 34GSU7MJVYBDCDY4TF4YYQER6KCIX3DB
X-Message-ID-Hash: 34GSU7MJVYBDCDY4TF4YYQER6KCIX3DB
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Nicolas Dufresne <nicolas.dufresne@collabora.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/34GSU7MJVYBDCDY4TF4YYQER6KCIX3DB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgMTMsIDIwMjQgYXQgMTA6Mjk6MjJBTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3
cm90ZToNCj4gT24gV2VkLCBNYXkgMDgsIDIwMjQgYXQgMTA6MzY6MDhBTSArMDIwMCwgRGFuaWVs
IFZldHRlciB3cm90ZToNCj4gPiBPbiBUdWUsIE1heSAwNywgMjAyNCBhdCAwNDowNzozOVBNIC0w
NDAwLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOg0KPiA+ID4gSGksDQo+ID4gPiANCj4gPiA+IExl
IG1hcmRpIDA3IG1haSAyMDI0IMOgIDIxOjM2ICswMzAwLCBMYXVyZW50IFBpbmNoYXJ0IGEgw6lj
cml0wqA6DQo+ID4gPiA+IFNob3J0ZXIgdGVybSwgd2UgaGF2ZSBhIHByb2JsZW0gdG8gc29sdmUs
IGFuZCB0aGUgYmVzdCBvcHRpb24gd2UgaGF2ZQ0KPiA+ID4gPiBmb3VuZCBzbyBmYXIgaXMgdG8g
cmVseSBvbiBkbWEtYnVmIGhlYXBzIGFzIGEgYmFja2VuZCBmb3IgdGhlIGZyYW1lDQo+ID4gPiA+
IGJ1ZmZlciBhbGxvY2F0cm8gaGVscGVyIGluIGxpYmNhbWVyYSBmb3IgdGhlIHVzZSBjYXNlIGRl
c2NyaWJlZCBhYm92ZS4NCj4gPiA+ID4gVGhpcyB3b24ndCB3b3JrIGluIDEwMCUgb2YgdGhlIGNh
c2VzLCBjbGVhcmx5LiBJdCdzIGEgc3RvcC1nYXAgbWVhc3VyZQ0KPiA+ID4gPiB1bnRpbCB3ZSBj
YW4gZG8gYmV0dGVyLg0KPiA+ID4gDQo+ID4gPiBDb25zaWRlcmluZyB0aGUgc2VjdXJpdHkgY29u
Y2VybmVkIHJhaXNlZCBvbiB0aGlzIHRocmVhZCB3aXRoIGRtYWJ1ZiBoZWFwDQo+ID4gPiBhbGxv
Y2F0aW9uIG5vdCBiZSByZXN0cmljdGVkIGJ5IHF1b3RhcywgeW91J2QgZ2V0IHdoYXQgeW91IHdh
bnQgcXVpY2tseSB3aXRoDQo+ID4gPiBtZW1mZCArIHVkbWFidWYgaW5zdGVhZCAod2hpY2ggaXMg
YWNjb3VudGVkIGFscmVhZHkpLg0KPiA+ID4gDQo+ID4gPiBJdCB3YXMgcmFpc2VkIHRoYXQgZGlz
dHJvIGRvbid0IGVuYWJsZSB1ZG1hYnVmLCBidXQgYXMgc3RhdGVkIHRoZXJlIGJ5IEhhbnMsIGlu
DQo+ID4gPiBhbnkgY2FzZXMgZGlzdHJvIG5lZWRzIHRvIHRha2UgYWN0aW9uIHRvIG1ha2UgdGhl
IHNvZnRJU1Agd29ya3MuIFRoaXMNCj4gPiA+IGFsdGVybmF0aXZlIGlzIGVhc3kgYW5kIGRvZXMg
bm90IGludGVyZmVyZSBpbiBhbnl3YXkgd2l0aCB5b3VyIGZ1dHVyZSBwbGFuIG9yDQo+ID4gPiB0
aGUgbGliY2FtZXJhIEFQSS4gWW91IGNvdWxkIGV2ZW4gaGF2ZSBib3RoIGRtYWJ1ZiBoZWFwIChm
b3IgUmFzcGJpYW4pIGFuZCB0aGUNCj4gPiA+IHNhZmVyIG1lbWZkK3VkbWFidWYgZm9yIHRoZSBk
aXN0cm8gd2l0aCBzZWN1cml0eSBjb25jZXJucy4NCj4gPiA+IA0KPiA+ID4gQW5kIGZvciB0aGUg
bG9uZyB0ZXJtIHBsYW4sIHdlIGNhbiBjZXJ0YWlubHkgZ2V0IGNsb3NlciBieSBmaXhpbmcgdGhh
dCBpc3N1ZQ0KPiA+ID4gd2l0aCBhY2NvdW50aW5nLiBUaGlzIGlzc3VlIGFsc28gYXBwbGllZCB0
byB2NGwyIGlvLW9wcywgc28gaXQgd291bGQgYmUgbmljZSB0bw0KPiA+ID4gZmluZCBjb21tb24g
c2V0IG9mIGhlbHBlcnMgdG8gZml4IHRoZXNlIGV4cG9ydGVycy4NCj4gPiANCj4gPiBZZWFoIGlm
IHRoaXMgaXMganVzdCBmb3Igc29mdGlzcCwgdGhlbiBtZW1mZCArIHVkbWFidWYgaXMgYWxzbyB3
aGF0IEkgd2FzDQo+ID4gYWJvdXQgdG8gc3VnZ2VzdC4gTm90IGp1c3QgYXMgYSBzdG9wZ2FwLCBi
dXQgYXMgdGhlIHJlYWwgb2ZmaWNpYWwgdGhpbmcuDQo+ID4gDQo+ID4gdWRtYWJ1ZiBkb2VzIGtp
bmRhIGFsbG93IHlvdSB0byBwaW4gbWVtb3J5LCBidXQgd2UgY2FuIGVhc2lseSBmaXggdGhhdCBi
eQ0KPiA+IGFkZGluZyB0aGUgcmlnaHQgYWNjb3VudGluZyBhbmQgdGhlbiBlaXRoZXIgbGV0IG1s
b2NrIHJsaW1pdHMgb3IgY2dyb3Vwcw0KPiA+IGtlcm5lbCBtZW1vcnkgbGltaXRzIGVuZm9yY2Ug
Z29vZCBiZWhhdmlvci4NCj4gDQo+IEkgdGhpbmsgdGhlIG1haW4gZHJhd2JhY2sgd2l0aCBtZW1m
ZCBpcyB0aGF0IGl0J2xsIGJlIGJyb2tlbiBmb3IgZGV2aWNlcw0KPiB3aXRob3V0IGFuIElPTU1V
LCBhbmQgd2hpbGUgeW91IHNhaWQgdGhhdCBpdCdzIHVuY29tbW9uIGZvciBHUFVzLCBpdCdzDQo+
IGRlZmluaXRlbHkgbm90IGZvciBjb2RlY3MgYW5kIGRpc3BsYXkgZW5naW5lcy4NCg0KSWYgdGhl
IGFwcGxpY2F0aW9uIHdhbnRzIHRvIHNoYXJlIGJ1ZmZlcnMgYmV0d2VlbiB0aGUgY2FtZXJhIGFu
ZCBhDQpkaXNwbGF5IGVuZ2luZSBvciBjb2RlYywgaXQgc2hvdWxkIGFyZ3VhYmx5IG5vdCB1c2Ug
dGhlIGxpYmNhbWVyYQ0KRnJhbWVCdWZmZXJBbGxvY2F0b3IsIGJ1dCBhbGxvY2F0ZSB0aGUgYnVm
ZmVycyBmcm9tIHRoZSBkaXNwbGF5IG9yIHRoZQ0KZW5jb2Rlci4gbWVtZmQgd291bGRuJ3QgYmUg
dXNlZCBpbiB0aGF0IGNhc2UuDQoNCldlIG5lZWQgdG8gZWF0IG91ciBvd24gZG9nZm9vZCB0aG91
Z2guIElmIHdlIHdhbnQgdG8gcHVzaCB0aGUNCnJlc3BvbnNpYmlsaXR5IGZvciBidWZmZXIgYWxs
b2NhdGlvbiBpbiB0aGUgYnVmZmVyIHNoYXJpbmcgY2FzZSB0byB0aGUNCmFwcGxpY2F0aW9uLCB3
ZSBuZWVkIHRvIG1vZGlmeSB0aGUgY2FtIGFwcGxpY2F0aW9uIHRvIGRvIHNvIHdoZW4gdXNpbmcN
CnRoZSBLTVMgYmFja2VuZC4NCg0KLS0gDQpSZWdhcmRzLA0KDQpMYXVyZW50IFBpbmNoYXJ0DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK

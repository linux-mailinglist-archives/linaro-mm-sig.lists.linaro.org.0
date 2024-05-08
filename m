Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 367A98C0690
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 23:51:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 120B644765
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 May 2024 21:51:29 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id 7C15F3F460
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 May 2024 21:51:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b="K8gt/jer";
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=none
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id EAD5916D4;
	Wed,  8 May 2024 23:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715205072;
	bh=IdgHgaZdPcCXFSJGhhONFbwqejjGF4oKLW1+TyIjdGk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K8gt/jeri0bkXEDe3kXbJ7A0PhkdE0GTmUVOr1cZWm/xQqOUM8l2aRy5P5oCOB8zp
	 pu0k/PidVMCYjfxZy70PN0pzgULxqT3UqKF7dJJcEFSBgKCLTdMQKXkNdsykFUBggZ
	 PN4pnMgaieoRRUxFKddxdt+nJpP7kLaKYlSynubo=
Date: Thu, 9 May 2024 00:51:06 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20240508215106.GA24860@pendragon.ideasonboard.com>
References: <bb372250-e8b8-4458-bc99-dd8365b06991@redhat.com>
 <ojduxo54lpcbfg2wfuhqhy7k3phncamtklh65z7gvttcwztmhk@zkifewcy4ovi>
 <3c0c7e7e-1530-411b-b7a4-9f13e0ff1f9e@redhat.com>
 <e7ilwp3vc32xze3iu2ejgqlgz44codsktnvyiufjhuf2zxcnnf@tnwzgzoxvbg2>
 <d2a512b2-e6b1-4675-b406-478074bbbe95@linaro.org>
 <Zjpmu_Xj6BPdkDPa@phenom.ffwll.local>
 <20240507183613.GB20390@pendragon.ideasonboard.com>
 <4f59a9d78662831123cc7e560218fa422e1c5eca.camel@collabora.com>
 <Zjs5eM-rRoh6WYYu@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zjs5eM-rRoh6WYYu@phenom.ffwll.local>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7C15F3F460
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.89 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.99)[99.96%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	URIBL_BLOCKED(0.00)[perceval.ideasonboard.com:rdns,perceval.ideasonboard.com:helo];
	DMARC_NA(0.00)[ideasonboard.com];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,linaro.org,redhat.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: H47X6UDRY5N6L3HLWBXAVVBENWN4IOTL
X-Message-ID-Hash: H47X6UDRY5N6L3HLWBXAVVBENWN4IOTL
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Nicolas Dufresne <nicolas.dufresne@collabora.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Maxime Ripard <mripard@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H47X6UDRY5N6L3HLWBXAVVBENWN4IOTL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMDgsIDIwMjQgYXQgMTA6MzY6MDhBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToNCj4gT24gVHVlLCBNYXkgMDcsIDIwMjQgYXQgMDQ6MDc6MzlQTSAtMDQwMCwgTmljb2xh
cyBEdWZyZXNuZSB3cm90ZToNCj4gPiBMZSBtYXJkaSAwNyBtYWkgMjAyNCDDoCAyMTozNiArMDMw
MCwgTGF1cmVudCBQaW5jaGFydCBhIMOpY3JpdMKgOg0KPiA+ID4gU2hvcnRlciB0ZXJtLCB3ZSBo
YXZlIGEgcHJvYmxlbSB0byBzb2x2ZSwgYW5kIHRoZSBiZXN0IG9wdGlvbiB3ZSBoYXZlDQo+ID4g
PiBmb3VuZCBzbyBmYXIgaXMgdG8gcmVseSBvbiBkbWEtYnVmIGhlYXBzIGFzIGEgYmFja2VuZCBm
b3IgdGhlIGZyYW1lDQo+ID4gPiBidWZmZXIgYWxsb2NhdHJvIGhlbHBlciBpbiBsaWJjYW1lcmEg
Zm9yIHRoZSB1c2UgY2FzZSBkZXNjcmliZWQgYWJvdmUuDQo+ID4gPiBUaGlzIHdvbid0IHdvcmsg
aW4gMTAwJSBvZiB0aGUgY2FzZXMsIGNsZWFybHkuIEl0J3MgYSBzdG9wLWdhcCBtZWFzdXJlDQo+
ID4gPiB1bnRpbCB3ZSBjYW4gZG8gYmV0dGVyLg0KPiA+IA0KPiA+IENvbnNpZGVyaW5nIHRoZSBz
ZWN1cml0eSBjb25jZXJuZWQgcmFpc2VkIG9uIHRoaXMgdGhyZWFkIHdpdGggZG1hYnVmIGhlYXAN
Cj4gPiBhbGxvY2F0aW9uIG5vdCBiZSByZXN0cmljdGVkIGJ5IHF1b3RhcywgeW91J2QgZ2V0IHdo
YXQgeW91IHdhbnQgcXVpY2tseSB3aXRoDQo+ID4gbWVtZmQgKyB1ZG1hYnVmIGluc3RlYWQgKHdo
aWNoIGlzIGFjY291bnRlZCBhbHJlYWR5KS4NCj4gPiANCj4gPiBJdCB3YXMgcmFpc2VkIHRoYXQg
ZGlzdHJvIGRvbid0IGVuYWJsZSB1ZG1hYnVmLCBidXQgYXMgc3RhdGVkIHRoZXJlIGJ5IEhhbnMs
IGluDQo+ID4gYW55IGNhc2VzIGRpc3RybyBuZWVkcyB0byB0YWtlIGFjdGlvbiB0byBtYWtlIHRo
ZSBzb2Z0SVNQIHdvcmtzLiBUaGlzDQo+ID4gYWx0ZXJuYXRpdmUgaXMgZWFzeSBhbmQgZG9lcyBu
b3QgaW50ZXJmZXJlIGluIGFueXdheSB3aXRoIHlvdXIgZnV0dXJlIHBsYW4gb3INCj4gPiB0aGUg
bGliY2FtZXJhIEFQSS4gWW91IGNvdWxkIGV2ZW4gaGF2ZSBib3RoIGRtYWJ1ZiBoZWFwIChmb3Ig
UmFzcGJpYW4pIGFuZCB0aGUNCj4gPiBzYWZlciBtZW1mZCt1ZG1hYnVmIGZvciB0aGUgZGlzdHJv
IHdpdGggc2VjdXJpdHkgY29uY2VybnMuDQo+ID4gDQo+ID4gQW5kIGZvciB0aGUgbG9uZyB0ZXJt
IHBsYW4sIHdlIGNhbiBjZXJ0YWlubHkgZ2V0IGNsb3NlciBieSBmaXhpbmcgdGhhdCBpc3N1ZQ0K
PiA+IHdpdGggYWNjb3VudGluZy4gVGhpcyBpc3N1ZSBhbHNvIGFwcGxpZWQgdG8gdjRsMiBpby1v
cHMsIHNvIGl0IHdvdWxkIGJlIG5pY2UgdG8NCj4gPiBmaW5kIGNvbW1vbiBzZXQgb2YgaGVscGVy
cyB0byBmaXggdGhlc2UgZXhwb3J0ZXJzLg0KPiANCj4gWWVhaCBpZiB0aGlzIGlzIGp1c3QgZm9y
IHNvZnRpc3AsIHRoZW4gbWVtZmQgKyB1ZG1hYnVmIGlzIGFsc28gd2hhdCBJIHdhcw0KPiBhYm91
dCB0byBzdWdnZXN0LiBOb3QganVzdCBhcyBhIHN0b3BnYXAsIGJ1dCBhcyB0aGUgcmVhbCBvZmZp
Y2lhbCB0aGluZy4NCg0KTG9uZyB0ZXJtIEkgc3RpbGwgd2FudCBhIGNlbnRyYWxpemVkIG1lbW9y
eSBhbGxvY2F0b3IsIGF0IHdoaWNoIHBvaW50DQpsaWJjYW1lcmEgc2hvdWxkIHN0b3AgYWxsb2Nh
dGluZyBidWZmZXJzIGF0IGFsbC4NCg0KPiB1ZG1hYnVmIGRvZXMga2luZGEgYWxsb3cgeW91IHRv
IHBpbiBtZW1vcnksIGJ1dCB3ZSBjYW4gZWFzaWx5IGZpeCB0aGF0IGJ5DQo+IGFkZGluZyB0aGUg
cmlnaHQgYWNjb3VudGluZyBhbmQgdGhlbiBlaXRoZXIgbGV0IG1sb2NrIHJsaW1pdHMgb3IgY2dy
b3Vwcw0KPiBrZXJuZWwgbWVtb3J5IGxpbWl0cyBlbmZvcmNlIGdvb2QgYmVoYXZpb3IuDQoNCi0t
IA0KUmVnYXJkcywNCg0KTGF1cmVudCBQaW5jaGFydA0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

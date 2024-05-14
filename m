Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 222538C5C6E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 May 2024 22:45:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FCAA3F3ED
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 May 2024 20:45:22 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id 6203B3F3ED
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 May 2024 20:45:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=ZKCeN1KY;
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=none
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 67BDB593;
	Tue, 14 May 2024 22:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715719501;
	bh=7eNU9RHOlvYz9X+A7ir7zV3mJIxGAuNlcZEw26tqzm0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZKCeN1KYkhnhY66NAPmiMzYSQv5LFSqkmeYl1k1qb/GRN9aUpl7rMKrEU+j7Cm41Q
	 zXPYNpFuuQHtCdgIB2YCll7gp29X8vuKMcZV3ud1ZyOIqFdL5sdSZAemoY7hCHXGJM
	 lFaSkTekTJXRBsv4JP2xf+TsKGCPrHKQJjY8jZ24=
Date: Tue, 14 May 2024 23:45:00 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Message-ID: <20240514204500.GO32013@pendragon.ideasonboard.com>
References: <e7ilwp3vc32xze3iu2ejgqlgz44codsktnvyiufjhuf2zxcnnf@tnwzgzoxvbg2>
 <d2a512b2-e6b1-4675-b406-478074bbbe95@linaro.org>
 <Zjpmu_Xj6BPdkDPa@phenom.ffwll.local>
 <20240507183613.GB20390@pendragon.ideasonboard.com>
 <4f59a9d78662831123cc7e560218fa422e1c5eca.camel@collabora.com>
 <Zjs5eM-rRoh6WYYu@phenom.ffwll.local>
 <20240513-heretic-didactic-newt-1d6daf@penduick>
 <dacacb862275cd7a588c5fcc56fd6c1d85538d12.camel@collabora.com>
 <20240513-auspicious-toucanet-from-heaven-f313af@penduick>
 <643c6d3da9c7f45c32e01dd7179681117557ed4d.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <643c6d3da9c7f45c32e01dd7179681117557ed4d.camel@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6203B3F3ED
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+mx:c];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[redhat.com,linaro.org,collabora.com,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[ideasonboard.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[20];
	NEURAL_HAM(-0.00)[-0.999];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[ideasonboard.com:dkim];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 5IFRPEP62NSTGLBRKHAHPPABAJMY3HRV
X-Message-ID-Hash: 5IFRPEP62NSTGLBRKHAHPPABAJMY3HRV
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@redhat.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5IFRPEP62NSTGLBRKHAHPPABAJMY3HRV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgMTMsIDIwMjQgYXQgMTE6MDY6MjRBTSAtMDQwMCwgTmljb2xhcyBEdWZyZXNu
ZSB3cm90ZToNCj4gTGUgbHVuZGkgMTMgbWFpIDIwMjQgw6AgMTU6NTEgKzAyMDAsIE1heGltZSBS
aXBhcmQgYSDDqWNyaXTCoDoNCj4gPiBPbiBNb24sIE1heSAxMywgMjAyNCBhdCAwOTo0MjowMEFN
IC0wNDAwLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOg0KPiA+ID4gTGUgbHVuZGkgMTMgbWFpIDIw
MjQgw6AgMTA6MjkgKzAyMDAsIE1heGltZSBSaXBhcmQgYSDDqWNyaXTCoDoNCj4gPiA+ID4gT24g
V2VkLCBNYXkgMDgsIDIwMjQgYXQgMTA6MzY6MDhBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90
ZToNCj4gPiA+ID4gPiBPbiBUdWUsIE1heSAwNywgMjAyNCBhdCAwNDowNzozOVBNIC0wNDAwLCBO
aWNvbGFzIER1ZnJlc25lIHdyb3RlOg0KPiA+ID4gPiA+ID4gTGUgbWFyZGkgMDcgbWFpIDIwMjQg
w6AgMjE6MzYgKzAzMDAsIExhdXJlbnQgUGluY2hhcnQgYSDDqWNyaXTCoDoNCj4gPiA+ID4gPiA+
ID4gU2hvcnRlciB0ZXJtLCB3ZSBoYXZlIGEgcHJvYmxlbSB0byBzb2x2ZSwgYW5kIHRoZSBiZXN0
IG9wdGlvbiB3ZSBoYXZlDQo+ID4gPiA+ID4gPiA+IGZvdW5kIHNvIGZhciBpcyB0byByZWx5IG9u
IGRtYS1idWYgaGVhcHMgYXMgYSBiYWNrZW5kIGZvciB0aGUgZnJhbWUNCj4gPiA+ID4gPiA+ID4g
YnVmZmVyIGFsbG9jYXRybyBoZWxwZXIgaW4gbGliY2FtZXJhIGZvciB0aGUgdXNlIGNhc2UgZGVz
Y3JpYmVkIGFib3ZlLg0KPiA+ID4gPiA+ID4gPiBUaGlzIHdvbid0IHdvcmsgaW4gMTAwJSBvZiB0
aGUgY2FzZXMsIGNsZWFybHkuIEl0J3MgYSBzdG9wLWdhcCBtZWFzdXJlDQo+ID4gPiA+ID4gPiA+
IHVudGlsIHdlIGNhbiBkbyBiZXR0ZXIuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IENvbnNp
ZGVyaW5nIHRoZSBzZWN1cml0eSBjb25jZXJuZWQgcmFpc2VkIG9uIHRoaXMgdGhyZWFkIHdpdGgg
ZG1hYnVmIGhlYXANCj4gPiA+ID4gPiA+IGFsbG9jYXRpb24gbm90IGJlIHJlc3RyaWN0ZWQgYnkg
cXVvdGFzLCB5b3UnZCBnZXQgd2hhdCB5b3Ugd2FudCBxdWlja2x5IHdpdGgNCj4gPiA+ID4gPiA+
IG1lbWZkICsgdWRtYWJ1ZiBpbnN0ZWFkICh3aGljaCBpcyBhY2NvdW50ZWQgYWxyZWFkeSkuDQo+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEl0IHdhcyByYWlzZWQgdGhhdCBkaXN0cm8gZG9uJ3Qg
ZW5hYmxlIHVkbWFidWYsIGJ1dCBhcyBzdGF0ZWQgdGhlcmUgYnkgSGFucywgaW4NCj4gPiA+ID4g
PiA+IGFueSBjYXNlcyBkaXN0cm8gbmVlZHMgdG8gdGFrZSBhY3Rpb24gdG8gbWFrZSB0aGUgc29m
dElTUCB3b3Jrcy4gVGhpcw0KPiA+ID4gPiA+ID4gYWx0ZXJuYXRpdmUgaXMgZWFzeSBhbmQgZG9l
cyBub3QgaW50ZXJmZXJlIGluIGFueXdheSB3aXRoIHlvdXIgZnV0dXJlIHBsYW4gb3INCj4gPiA+
ID4gPiA+IHRoZSBsaWJjYW1lcmEgQVBJLiBZb3UgY291bGQgZXZlbiBoYXZlIGJvdGggZG1hYnVm
IGhlYXAgKGZvciBSYXNwYmlhbikgYW5kIHRoZQ0KPiA+ID4gPiA+ID4gc2FmZXIgbWVtZmQrdWRt
YWJ1ZiBmb3IgdGhlIGRpc3RybyB3aXRoIHNlY3VyaXR5IGNvbmNlcm5zLg0KPiA+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gPiBBbmQgZm9yIHRoZSBsb25nIHRlcm0gcGxhbiwgd2UgY2FuIGNlcnRhaW5s
eSBnZXQgY2xvc2VyIGJ5IGZpeGluZyB0aGF0IGlzc3VlDQo+ID4gPiA+ID4gPiB3aXRoIGFjY291
bnRpbmcuIFRoaXMgaXNzdWUgYWxzbyBhcHBsaWVkIHRvIHY0bDIgaW8tb3BzLCBzbyBpdCB3b3Vs
ZCBiZSBuaWNlIHRvDQo+ID4gPiA+ID4gPiBmaW5kIGNvbW1vbiBzZXQgb2YgaGVscGVycyB0byBm
aXggdGhlc2UgZXhwb3J0ZXJzLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFllYWggaWYgdGhpcyBp
cyBqdXN0IGZvciBzb2Z0aXNwLCB0aGVuIG1lbWZkICsgdWRtYWJ1ZiBpcyBhbHNvIHdoYXQgSSB3
YXMNCj4gPiA+ID4gPiBhYm91dCB0byBzdWdnZXN0LiBOb3QganVzdCBhcyBhIHN0b3BnYXAsIGJ1
dCBhcyB0aGUgcmVhbCBvZmZpY2lhbCB0aGluZy4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiB1ZG1h
YnVmIGRvZXMga2luZGEgYWxsb3cgeW91IHRvIHBpbiBtZW1vcnksIGJ1dCB3ZSBjYW4gZWFzaWx5
IGZpeCB0aGF0IGJ5DQo+ID4gPiA+ID4gYWRkaW5nIHRoZSByaWdodCBhY2NvdW50aW5nIGFuZCB0
aGVuIGVpdGhlciBsZXQgbWxvY2sgcmxpbWl0cyBvciBjZ3JvdXBzDQo+ID4gPiA+ID4ga2VybmVs
IG1lbW9yeSBsaW1pdHMgZW5mb3JjZSBnb29kIGJlaGF2aW9yLg0KPiA+ID4gPiANCj4gPiA+ID4g
SSB0aGluayB0aGUgbWFpbiBkcmF3YmFjayB3aXRoIG1lbWZkIGlzIHRoYXQgaXQnbGwgYmUgYnJv
a2VuIGZvciBkZXZpY2VzDQo+ID4gPiA+IHdpdGhvdXQgYW4gSU9NTVUsIGFuZCB3aGlsZSB5b3Ug
c2FpZCB0aGF0IGl0J3MgdW5jb21tb24gZm9yIEdQVXMsIGl0J3MNCj4gPiA+ID4gZGVmaW5pdGVs
eSBub3QgZm9yIGNvZGVjcyBhbmQgZGlzcGxheSBlbmdpbmVzLg0KPiA+ID4gDQo+ID4gPiBJbiB0
aGUgY29udGV4dCBvZiBsaWJjYW1lcmEsIHRoZSBhbGxvY2F0aW9uIGFuZCB0aGUgYWxpZ25tZW50
IGRvbmUgdG8gdGhlIHZpZGVvDQo+ID4gPiBmcmFtZSBpcyBkb25lIGNvbXBsZXRlbHkgYmxpbmRs
eS4gSW4gdGhhdCBjb250ZXh0LCB0aGVyZSBpcyBhIGxvdCBtb3JlIHRoZW4ganVzdA0KPiA+ID4g
dGhlIGFsbG9jYXRpb24gdHlwZSB0aGF0IGNhbiBnbyB3cm9uZyBhbmQgd2lsbCBsZWFkIHRvIGEg
bWVtb3J5IGNvcHkuIFRoZSB1cHNpZGUNCj4gPiA+IG9mIG1lbWZkLCBpcyB0aGF0IHRoZSByZWFk
IGNhY2hlIHdpbGwgaGVscCBzcGVlZGluZyB1cCB0aGUgY29waWVzIGlmIHRoZXkgYXJlDQo+ID4g
PiBuZWVkZWQuDQo+ID4gDQo+ID4gZG1hLWhlYXBzIHByb3ZpZGUgY2FjaGVhYmxlIGJ1ZmZlcnMg
dG9vLi4uDQo+IA0KPiBZZXMsIGFuZCB3aHkgd2UgaGF2ZSBjYWNoZSBoaW50cyBpbiBWNEwyIG5v
dy4gVGhlcmUgaXMgbm8gY2x1ZSB0aGF0IHNvZnRJU1AgY29kZQ0KPiBjYW4gcmVhZCB0byBtYWtl
IHRoZSByaWdodCBjYWxsLiBUaGUgcmVxdWlyZWQgY2FjaGUgbWFuYWdlbWVudCBpbiB1bmRlZmlu
ZWQNCj4gdW50aWwgYWxsIHRoZSBpbXBvcnRlciBhcmUga25vd24uIEkgYWxzbyBkb24ndCB0aGlu
ayBoZWFwcyBjdXJyZW50bHkgY2FyZSB0bw0KPiBhZGFwdCB0aGUgZG1hYnVmIHN5bmMgYmVoYXZp
b3VyIGJhc2VkIG9uIHRoZSBkaWZmZXJlbnQgaW1wb3J0ZXJzLCBvciB0aGUNCj4gYWRkaXRpb24g
b2YgYSBuZXcgaW1wb3J0ZXIuIE9uIHRvcCBvZiB3aGljaCwgdGhlcmUgaXMgaW5zdWZmaWNpZW50
IGluZm9ybWF0aW9uDQo+IG9uIHRoZSBkZXZpY2UgdG8gcmVhbGx5IGRlZHVjZSB3aGF0IGlzIG5l
ZWRlZC4NCj4gDQo+ID4gPiBBbm90aGVyIGltcG9ydGFudCBwb2ludCBpcyB0aGF0IHRoaXMgaXMg
b25seSB1c2VkIGlmIHRoZSBhcHBsaWNhdGlvbiBoYXZlbid0DQo+ID4gPiBwcm92aWRlZCBmcmFt
ZXMuIElmIHlvdXIgZW1iZWRkZWQgYXBwbGljYXRpb24gaXMgbm9uLWdlbmVyaWMsIGFuZCB5b3Ug
aGF2ZQ0KPiA+ID4gcGVybWlzc2lvbnMgdG8gYWNjZXNzIHRoZSByaWdodCBoZWFwLCB0aGUgYXBw
bGljYXRpb24gY2FuIHNvbHZlIHlvdXIgc3BlY2lmaWMNCj4gPiA+IGlzc3VlLiBCdXQgaW4gdGhl
IGdlbmVyaWMgTGludXggc3BhY2UsIExpbnV4IGtlcm5lbCBBUEkgYXJlIGp1c3QgaW5zdWZmaWNp
ZW50DQo+ID4gPiBmb3IgdGhlICJqdXN0IHdvcmsiIHNjZW5hcmlvLg0KPiA+IA0KPiA+IC4uLiBi
dXQgdGhleSBhbHNvIHByb3ZpZGUgc2VtYW50aWNzIGFyb3VuZCB0aGUgbWVtb3J5IGJ1ZmZlcnMg
dGhhdCBubw0KPiA+IG90aGVyIGFsbG9jYXRpb24gQVBJIGRvLiBUaGVyZSdzIGF0IGxlYXN0IHRo
ZSBtZWRpYXRlayBzZWN1cmUgcGxheWJhY2sNCj4gPiBzZXJpZXMgYW5kIGFub3RoZXIgb25lIHRo
YXQgSSd2ZSBzdGFydGVkIHRvIHdvcmsgb24gdG8gYWxsb2NhdGUgRUNDDQo+ID4gcHJvdGVjdGVk
IG9yIHVucHJvdGVjdGVkIGJ1ZmZlcnMgdGhhdCBhcmUganVzdCB0aGUgcmlnaHQgdXNlIGNhc2Ug
Zm9yDQo+ID4gdGhlIGhlYXBzLCBhbmQgdGhlIHRhcmdldCBmcmFtZXdvcmtzIGFyZW4ndC4NCj4g
DQo+IExldCdzIGFncmVlIHdlIGFyZSBib3RoIG9mZiB0b3BpYyBub3cuIFRoZSBsaWJjYW1lcmEg
c29mdElTUCBpcyBjdXJyZW50bHkgcHVyZWx5DQo+IHNvZnR3YXJlLCBhbmQgY2Fubm90IHdyaXRl
IHRvIGFueSBmb3JtIG9mIHByb3RlY3RlZCBtZW1vcnkuIEFzIGZvciBFQ0MsIEkgd291bGQNCj4g
aG9wZSB0aGlzIHVzYWdlIHdpbGwgYmUgY29kZWQgaW4gdGhlIGFwcGxpY2F0aW9uIGFuZCB0aGF0
IHRoaXMgYXBwbGljYXRpb24gaGFzDQo+IGJlZW4gYXV0aG9yaXplZCB0byBhY2Nlc3MgdGhlIGFw
cHJvcHJpYXRlIGhlYXBzLg0KPiANCj4gQW5kIGZpbmFsbHksIG5vbmUgb2YgdGhpcyBmaXhlcyB0
aGUgaXNzdWUgdGhhdCB0aGUgaGVhcCBhbGxvY2F0aW9uIGFyZSBub3QgYmVpbmcNCj4gYWNjb3Vu
dGVkIHByb3Blcmx5IGFuZCBhbGxvdyBvZiBhbiBlYXN5IG1lbW9yeSBEb1MuIFNvIHVhY2Nlc3Mg
c2hvdWxkIGJlIGdyYW50ZWQNCj4gd2l0aCBjYXJlLCBtZWFuaW5nIHRoYXQgZGVmYXVsdGluZyBh
ICJkZXNrdG9wIiBsaWJyYXJ5IHRvIHRoYXQsIG1lYW5zIGl0IHdpbGwNCj4gbW9zdCBvZiB0aGUg
dGltZSBub3Qgd29yayBhdCBhbGwuDQoNCkkgdGhpbmsgdGhhdCBpc3N1ZSBzaG91bGQgYmUgZml4
ZWQsIHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciBvciBub3Qgd2UgZW5kDQp1cCB1c2luZyBkbWEgaGVh
cHMgZm9yIGxpYmNhbWVyYS4gSWYgd2UgZG8gdXNlIHRoZW0sIG1heWJlIHRoZXJlIHdpbGwgYmUN
CmEgaGlnaGVyIGluY2VudGl2ZSBmb3Igc29tZWJvZHkgaW52b2x2ZWQgaW4gdGhpcyBjb252ZXJz
YXRpb24gdG8gdGFja2xlDQp0aGF0IHByb2JsZW0gZmlyc3QgOi0pIEFuZCBtYXliZSwgYXMgYSBy
ZXN1bHQsIHRoZSByZXN0IG9mIHRoZSBMaW51eA0KY29tbXVuaXR5IHdpbGwgY29uc2lkZXIgd2l0
aCBhIG1vcmUgb3BlbiBtaW5kIHVzYWdlIG9mIGRtYSBoZWFwcyBvbg0KZGVza3RvcCBzeXN0ZW1z
Lg0KDQotLSANClJlZ2FyZHMsDQoNCkxhdXJlbnQgUGluY2hhcnQNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
